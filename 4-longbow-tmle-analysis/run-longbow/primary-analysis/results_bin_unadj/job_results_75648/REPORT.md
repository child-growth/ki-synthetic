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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |hhwealth_quart | ever_swasted| n_cell|     n|
|:-----------|:--------------|:------------|:--------------|------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |            0|     81|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |            1|     32|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |            0|     67|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |            1|     23|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |            0|     64|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |            1|     16|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |            0|     69|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |            1|     21|   373|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ4       |            0|    453|  1276|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ4       |            1|     32|  1276|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ1       |            0|    258|  1276|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ1       |            1|     18|  1276|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ2       |            0|    217|  1276|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ2       |            1|     16|  1276|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ3       |            0|    254|  1276|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ3       |            1|     28|  1276|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ4       |            0|    774|  3042|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ4       |            1|     97|  3042|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ1       |            0|    582|  3042|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ1       |            1|     93|  3042|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ2       |            0|    480|  3042|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ2       |            1|     61|  3042|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ3       |            0|    824|  3042|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ3       |            1|    131|  3042|
|0-24 months |CONTENT        |PERU         |WealthQ4       |            0|     47|   215|
|0-24 months |CONTENT        |PERU         |WealthQ4       |            1|      0|   215|
|0-24 months |CONTENT        |PERU         |WealthQ1       |            0|     66|   215|
|0-24 months |CONTENT        |PERU         |WealthQ1       |            1|      0|   215|
|0-24 months |CONTENT        |PERU         |WealthQ2       |            0|     49|   215|
|0-24 months |CONTENT        |PERU         |WealthQ2       |            1|      1|   215|
|0-24 months |CONTENT        |PERU         |WealthQ3       |            0|     52|   215|
|0-24 months |CONTENT        |PERU         |WealthQ3       |            1|      0|   215|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ4       |            0|    128|   686|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ4       |            1|     39|   686|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ1       |            0|    125|   686|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ1       |            1|     43|   686|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ2       |            0|    125|   686|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ2       |            1|     48|   686|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ3       |            0|    131|   686|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ3       |            1|     47|   686|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |            0|   6735| 26930|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |            1|    401| 26930|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |            0|   6063| 26930|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |            1|    424| 26930|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |            0|   6167| 26930|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |            1|    414| 26930|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |            0|   6322| 26930|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |            1|    404| 26930|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |            0|   1304|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |            1|     69|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |            0|   1284|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |            1|     90|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |            0|   1216|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |            1|     95|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |            0|   1292|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |            1|     89|  5439|
|0-24 months |LCNI-5         |MALAWI       |WealthQ4       |            0|    198|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ4       |            1|      4|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ1       |            0|    216|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ1       |            1|      2|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ2       |            0|    199|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ2       |            1|      1|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ3       |            0|    207|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ3       |            1|      1|   828|
|0-24 months |MAL-ED         |INDIA        |WealthQ4       |            0|     43|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ4       |            1|      4|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ1       |            0|     62|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ1       |            1|      7|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ2       |            0|     60|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ2       |            1|      9|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ3       |            0|     51|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ3       |            1|      4|   240|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ4       |            0|     51|   243|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ4       |            1|      5|   243|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ1       |            0|     69|   243|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ1       |            1|      6|   243|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ2       |            0|     44|   243|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ2       |            1|      6|   243|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ3       |            0|     60|   243|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ3       |            1|      2|   243|
|0-24 months |MAL-ED         |PERU         |WealthQ4       |            0|     76|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ4       |            1|      0|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ1       |            0|     56|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ1       |            1|      1|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ2       |            0|     70|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ2       |            1|      1|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ3       |            0|     78|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ3       |            1|      2|   284|
|0-24 months |MAL-ED         |NEPAL        |WealthQ4       |            0|     72|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ4       |            1|      2|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ1       |            0|     55|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ1       |            1|      3|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ2       |            0|     57|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ2       |            1|      4|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ3       |            0|     42|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ3       |            1|      0|   235|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ4       |            0|     44|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ4       |            1|      1|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ1       |            0|     61|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ1       |            1|      1|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ2       |            0|     49|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ2       |            1|      0|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ3       |            0|     49|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ3       |            1|      2|   207|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ4       |            0|     56|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ4       |            1|      2|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ1       |            0|     71|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ1       |            1|      0|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ2       |            0|     56|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ2       |            1|      3|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ3       |            0|     59|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ3       |            1|      4|   251|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |            0|     61|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |            1|      2|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |            0|     73|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |            1|      7|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |            0|     47|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |            1|      4|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |            0|     74|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |            1|      1|   269|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ4       |            0|    149|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ4       |            1|     12|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ1       |            0|    164|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ1       |            1|     10|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ2       |            0|    169|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ2       |            1|      7|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ3       |            0|    176|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ3       |            1|     13|   700|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |            0|    572|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |            1|     44|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |            0|    635|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |            1|     39|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |            0|    452|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |            1|     29|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |            0|    576|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |            1|     46|  2393|
|0-24 months |Vellore Crypto |INDIA        |WealthQ4       |            0|     62|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ4       |            1|     32|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ1       |            0|     85|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ1       |            1|     47|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ2       |            0|     77|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ2       |            1|     36|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ3       |            0|     46|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ3       |            1|     25|   410|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |            0|     87|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |            1|     25|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |            0|     72|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |            1|     16|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |            0|     66|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |            1|     13|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |            0|     76|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |            1|     13|   368|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ4       |            0|    348|  1019|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ4       |            1|     26|  1019|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ1       |            0|    204|  1019|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ1       |            1|     15|  1019|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ2       |            0|    171|  1019|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ2       |            1|      8|  1019|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ3       |            0|    232|  1019|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ3       |            1|     15|  1019|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |            0|    797|  3041|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |            1|     74|  3041|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |            0|    628|  3041|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |            1|     46|  3041|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |            0|    514|  3041|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |            1|     27|  3041|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |            0|    891|  3041|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |            1|     64|  3041|
|0-6 months  |CONTENT        |PERU         |WealthQ4       |            0|     47|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ4       |            1|      0|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ1       |            0|     66|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ1       |            1|      0|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ2       |            0|     49|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ2       |            1|      1|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ3       |            0|     52|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ3       |            1|      0|   215|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |            0|    149|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |            1|     18|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |            0|    152|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |            1|     16|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |            0|    152|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |            1|     21|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |            0|    154|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |            1|     24|   686|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |            0|   6837| 26834|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |            1|    266| 26834|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |            0|   6176| 26834|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |            1|    292| 26834|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |            0|   6269| 26834|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |            1|    284| 26834|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |            0|   6443| 26834|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |            1|    267| 26834|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |            0|   1269|  5092|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |            1|     26|  5092|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |            0|   1250|  5092|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |            1|     23|  5092|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |            0|   1191|  5092|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |            1|     35|  5092|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |            0|   1271|  5092|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |            1|     27|  5092|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ4       |            0|     63|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ4       |            1|      0|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ1       |            0|     65|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ1       |            1|      0|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ2       |            0|     64|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ2       |            1|      0|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ3       |            0|     74|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ3       |            1|      0|   266|
|0-6 months  |MAL-ED         |INDIA        |WealthQ4       |            0|     44|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ4       |            1|      3|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ1       |            0|     64|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ1       |            1|      5|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ2       |            0|     62|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ2       |            1|      7|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ3       |            0|     51|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ3       |            1|      4|   240|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |            0|     52|   243|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |            1|      4|   243|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |            0|     71|   243|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |            1|      4|   243|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |            0|     45|   243|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |            1|      5|   243|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |            0|     61|   243|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |            1|      1|   243|
|0-6 months  |MAL-ED         |PERU         |WealthQ4       |            0|     76|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ4       |            1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ1       |            0|     57|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ1       |            1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ2       |            0|     71|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ2       |            1|      0|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ3       |            0|     79|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ3       |            1|      1|   284|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ4       |            0|     72|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ4       |            1|      2|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ1       |            0|     56|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ1       |            1|      2|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ2       |            0|     58|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ2       |            1|      3|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ3       |            0|     42|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ3       |            1|      0|   235|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ4       |            0|     44|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ4       |            1|      1|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ1       |            0|     61|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ1       |            1|      1|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ2       |            0|     49|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ2       |            1|      0|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ3       |            0|     50|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ3       |            1|      1|   207|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ4       |            0|     58|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ4       |            1|      0|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ1       |            0|     71|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ1       |            1|      0|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ2       |            0|     56|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ2       |            1|      3|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ3       |            0|     62|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ3       |            1|      1|   251|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |            0|     63|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |            1|      0|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |            0|     76|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |            1|      4|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |            0|     50|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |            1|      1|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |            0|     75|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |            1|      0|   269|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |            0|    152|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |            1|      9|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |            0|    168|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |            1|      6|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |            0|    171|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |            1|      5|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |            0|    180|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |            1|      9|   700|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |            0|    592|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |            1|     24|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |            0|    658|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |            1|     16|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |            0|    465|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |            1|     16|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |            0|    599|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |            1|     23|  2393|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ4       |            0|     65|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ4       |            1|     29|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ1       |            0|     90|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ1       |            1|     42|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ2       |            0|     78|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ2       |            1|     35|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ3       |            0|     51|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ3       |            1|     20|   410|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |            0|    104|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |            1|      9|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |            0|     80|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |            1|     10|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |            0|     77|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |            1|      3|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |            0|     82|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |            1|      8|   373|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ4       |            0|    432|  1164|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ4       |            1|      6|  1164|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ1       |            0|    253|  1164|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ1       |            1|      3|  1164|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ2       |            0|    212|  1164|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ2       |            1|      8|  1164|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ3       |            0|    237|  1164|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ3       |            1|     13|  1164|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ4       |            0|    774|  2807|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ4       |            1|     24|  2807|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ1       |            0|    546|  2807|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ1       |            1|     56|  2807|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ2       |            0|    472|  2807|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ2       |            1|     34|  2807|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ3       |            0|    827|  2807|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ3       |            1|     74|  2807|
|6-24 months |CONTENT        |PERU         |WealthQ4       |            0|     47|   215|
|6-24 months |CONTENT        |PERU         |WealthQ4       |            1|      0|   215|
|6-24 months |CONTENT        |PERU         |WealthQ1       |            0|     66|   215|
|6-24 months |CONTENT        |PERU         |WealthQ1       |            1|      0|   215|
|6-24 months |CONTENT        |PERU         |WealthQ2       |            0|     50|   215|
|6-24 months |CONTENT        |PERU         |WealthQ2       |            1|      0|   215|
|6-24 months |CONTENT        |PERU         |WealthQ3       |            0|     52|   215|
|6-24 months |CONTENT        |PERU         |WealthQ3       |            1|      0|   215|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ4       |            0|    123|   590|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ4       |            1|     25|   590|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ1       |            0|    113|   590|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ1       |            1|     29|   590|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ2       |            0|    124|   590|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ2       |            1|     31|   590|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ3       |            0|    118|   590|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ3       |            1|     27|   590|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |            0|   4788| 17288|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |            1|    139| 17288|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |            0|   3697| 17288|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |            1|    139| 17288|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |            0|   4024| 17288|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |            1|    133| 17288|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |            0|   4226| 17288|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |            1|    142| 17288|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |            0|   1322|  5426|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |            1|     45|  5426|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |            0|   1302|  5426|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |            1|     69|  5426|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |            0|   1246|  5426|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |            1|     62|  5426|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |            0|   1317|  5426|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |            1|     63|  5426|
|6-24 months |LCNI-5         |MALAWI       |WealthQ4       |            0|    193|   814|
|6-24 months |LCNI-5         |MALAWI       |WealthQ4       |            1|      4|   814|
|6-24 months |LCNI-5         |MALAWI       |WealthQ1       |            0|    211|   814|
|6-24 months |LCNI-5         |MALAWI       |WealthQ1       |            1|      2|   814|
|6-24 months |LCNI-5         |MALAWI       |WealthQ2       |            0|    198|   814|
|6-24 months |LCNI-5         |MALAWI       |WealthQ2       |            1|      1|   814|
|6-24 months |LCNI-5         |MALAWI       |WealthQ3       |            0|    204|   814|
|6-24 months |LCNI-5         |MALAWI       |WealthQ3       |            1|      1|   814|
|6-24 months |MAL-ED         |INDIA        |WealthQ4       |            0|     44|   226|
|6-24 months |MAL-ED         |INDIA        |WealthQ4       |            1|      1|   226|
|6-24 months |MAL-ED         |INDIA        |WealthQ1       |            0|     62|   226|
|6-24 months |MAL-ED         |INDIA        |WealthQ1       |            1|      3|   226|
|6-24 months |MAL-ED         |INDIA        |WealthQ2       |            0|     63|   226|
|6-24 months |MAL-ED         |INDIA        |WealthQ2       |            1|      2|   226|
|6-24 months |MAL-ED         |INDIA        |WealthQ3       |            0|     51|   226|
|6-24 months |MAL-ED         |INDIA        |WealthQ3       |            1|      0|   226|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ4       |            0|     48|   222|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ4       |            1|      1|   222|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ1       |            0|     69|   222|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ1       |            1|      2|   222|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ2       |            0|     45|   222|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ2       |            1|      1|   222|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ3       |            0|     55|   222|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ3       |            1|      1|   222|
|6-24 months |MAL-ED         |PERU         |WealthQ4       |            0|     65|   252|
|6-24 months |MAL-ED         |PERU         |WealthQ4       |            1|      0|   252|
|6-24 months |MAL-ED         |PERU         |WealthQ1       |            0|     50|   252|
|6-24 months |MAL-ED         |PERU         |WealthQ1       |            1|      1|   252|
|6-24 months |MAL-ED         |PERU         |WealthQ2       |            0|     62|   252|
|6-24 months |MAL-ED         |PERU         |WealthQ2       |            1|      1|   252|
|6-24 months |MAL-ED         |PERU         |WealthQ3       |            0|     72|   252|
|6-24 months |MAL-ED         |PERU         |WealthQ3       |            1|      1|   252|
|6-24 months |MAL-ED         |NEPAL        |WealthQ4       |            0|     72|   231|
|6-24 months |MAL-ED         |NEPAL        |WealthQ4       |            1|      0|   231|
|6-24 months |MAL-ED         |NEPAL        |WealthQ1       |            0|     57|   231|
|6-24 months |MAL-ED         |NEPAL        |WealthQ1       |            1|      1|   231|
|6-24 months |MAL-ED         |NEPAL        |WealthQ2       |            0|     59|   231|
|6-24 months |MAL-ED         |NEPAL        |WealthQ2       |            1|      1|   231|
|6-24 months |MAL-ED         |NEPAL        |WealthQ3       |            0|     41|   231|
|6-24 months |MAL-ED         |NEPAL        |WealthQ3       |            1|      0|   231|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ4       |            0|     41|   185|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ4       |            1|      0|   185|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ1       |            0|     55|   185|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ1       |            1|      0|   185|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ2       |            0|     46|   185|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ2       |            1|      0|   185|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ3       |            0|     42|   185|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ3       |            1|      1|   185|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ4       |            0|     54|   239|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ4       |            1|      2|   239|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ1       |            0|     67|   239|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ1       |            1|      0|   239|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ2       |            0|     57|   239|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ2       |            1|      0|   239|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ3       |            0|     56|   239|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ3       |            1|      3|   239|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |            0|     54|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |            1|      2|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |            0|     67|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |            1|      3|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |            0|     41|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |            1|      3|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |            0|     62|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |            1|      1|   233|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ4       |            0|    133|   615|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ4       |            1|      3|   615|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ1       |            0|    147|   615|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ1       |            1|      4|   615|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ2       |            0|    161|   615|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ2       |            1|      2|   615|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ3       |            0|    161|   615|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ3       |            1|      4|   615|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |            0|    503|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |            1|     20|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |            0|    548|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |            1|     24|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |            0|    386|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |            1|     15|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |            0|    496|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |            1|     24|  2016|
|6-24 months |Vellore Crypto |INDIA        |WealthQ4       |            0|     90|   410|
|6-24 months |Vellore Crypto |INDIA        |WealthQ4       |            1|      4|   410|
|6-24 months |Vellore Crypto |INDIA        |WealthQ1       |            0|    125|   410|
|6-24 months |Vellore Crypto |INDIA        |WealthQ1       |            1|      7|   410|
|6-24 months |Vellore Crypto |INDIA        |WealthQ2       |            0|    104|   410|
|6-24 months |Vellore Crypto |INDIA        |WealthQ2       |            1|      9|   410|
|6-24 months |Vellore Crypto |INDIA        |WealthQ3       |            0|     65|   410|
|6-24 months |Vellore Crypto |INDIA        |WealthQ3       |            1|      6|   410|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
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


