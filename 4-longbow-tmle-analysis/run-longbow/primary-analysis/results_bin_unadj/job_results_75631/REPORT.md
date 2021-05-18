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

**Outcome Variable:** ever_wasted

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

|agecat      |studyid        |country      |hhwealth_quart | ever_wasted| n_cell|     n|
|:-----------|:--------------|:------------|:--------------|-----------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |           0|     43|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |           1|     70|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |           0|     32|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |           1|     58|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |           0|     31|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |           1|     49|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |           0|     39|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |           1|     51|   373|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ4       |           0|    377|  1276|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ4       |           1|    108|  1276|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ1       |           0|    189|  1276|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ1       |           1|     87|  1276|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ2       |           0|    175|  1276|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ2       |           1|     58|  1276|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ3       |           0|    206|  1276|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ3       |           1|     76|  1276|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ4       |           0|    557|  3042|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ4       |           1|    314|  3042|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ1       |           0|    362|  3042|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ1       |           1|    313|  3042|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ2       |           0|    330|  3042|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ2       |           1|    211|  3042|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ3       |           0|    565|  3042|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ3       |           1|    390|  3042|
|0-24 months |CONTENT        |PERU         |WealthQ4       |           0|     47|   215|
|0-24 months |CONTENT        |PERU         |WealthQ4       |           1|      0|   215|
|0-24 months |CONTENT        |PERU         |WealthQ1       |           0|     64|   215|
|0-24 months |CONTENT        |PERU         |WealthQ1       |           1|      2|   215|
|0-24 months |CONTENT        |PERU         |WealthQ2       |           0|     48|   215|
|0-24 months |CONTENT        |PERU         |WealthQ2       |           1|      2|   215|
|0-24 months |CONTENT        |PERU         |WealthQ3       |           0|     51|   215|
|0-24 months |CONTENT        |PERU         |WealthQ3       |           1|      1|   215|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ4       |           0|     67|   686|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ4       |           1|    100|   686|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ1       |           0|     72|   686|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ1       |           1|     96|   686|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ2       |           0|     64|   686|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ2       |           1|    109|   686|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ3       |           0|     78|   686|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ3       |           1|    100|   686|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |           0|   5327| 26930|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |           1|   1809| 26930|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |           0|   4786| 26930|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |           1|   1701| 26930|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |           0|   4872| 26930|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |           1|   1709| 26930|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |           0|   4995| 26930|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |           1|   1731| 26930|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |           0|    987|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |           1|    386|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |           0|    931|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |           1|    443|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |           0|    881|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |           1|    430|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |           0|    952|  5439|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |           1|    429|  5439|
|0-24 months |LCNI-5         |MALAWI       |WealthQ4       |           0|    181|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ4       |           1|     21|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ1       |           0|    206|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ1       |           1|     12|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ2       |           0|    185|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ2       |           1|     15|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ3       |           0|    190|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ3       |           1|     18|   828|
|0-24 months |MAL-ED         |INDIA        |WealthQ4       |           0|     29|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ4       |           1|     18|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ1       |           0|     39|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ1       |           1|     30|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ2       |           0|     33|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ2       |           1|     36|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ3       |           0|     26|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ3       |           1|     29|   240|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ4       |           0|     37|   243|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ4       |           1|     19|   243|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ1       |           0|     50|   243|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ1       |           1|     25|   243|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ2       |           0|     31|   243|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ2       |           1|     19|   243|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ3       |           0|     45|   243|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ3       |           1|     17|   243|
|0-24 months |MAL-ED         |PERU         |WealthQ4       |           0|     68|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ4       |           1|      8|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ1       |           0|     53|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ1       |           1|      4|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ2       |           0|     65|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ2       |           1|      6|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ3       |           0|     73|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ3       |           1|      7|   284|
|0-24 months |MAL-ED         |NEPAL        |WealthQ4       |           0|     38|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ4       |           1|     36|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ1       |           0|     44|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ1       |           1|     14|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ2       |           0|     46|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ2       |           1|     15|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ3       |           0|     34|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ3       |           1|      8|   235|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ4       |           0|     39|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ4       |           1|      6|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ1       |           0|     57|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ1       |           1|      5|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ2       |           0|     48|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ2       |           1|      1|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ3       |           0|     45|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ3       |           1|      6|   207|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ4       |           0|     50|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ4       |           1|      8|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ1       |           0|     66|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ1       |           1|      5|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ2       |           0|     48|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ2       |           1|     11|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ3       |           0|     51|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ3       |           1|     12|   251|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |           0|     52|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |           1|     11|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |           0|     58|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |           1|     22|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |           0|     41|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |           1|     10|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |           0|     63|   269|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |           1|     12|   269|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ4       |           0|     99|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ4       |           1|     62|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ1       |           0|    113|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ1       |           1|     61|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ2       |           0|    114|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ2       |           1|     62|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ3       |           0|    128|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ3       |           1|     61|   700|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |           0|    474|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |           1|    142|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |           0|    523|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |           1|    151|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |           0|    362|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |           1|    119|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |           0|    468|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |           1|    154|  2393|
|0-24 months |Vellore Crypto |INDIA        |WealthQ4       |           0|     32|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ4       |           1|     62|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ1       |           0|     43|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ1       |           1|     89|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ2       |           0|     39|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ2       |           1|     74|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ3       |           0|     27|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ3       |           1|     44|   410|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |           0|     47|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |           1|     65|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |           0|     42|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |           1|     46|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |           0|     41|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |           1|     38|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |           0|     48|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |           1|     41|   368|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ4       |           0|    302|  1019|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ4       |           1|     72|  1019|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ1       |           0|    164|  1019|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ1       |           1|     55|  1019|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ2       |           0|    150|  1019|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ2       |           1|     29|  1019|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ3       |           0|    197|  1019|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ3       |           1|     50|  1019|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |           0|    658|  3041|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |           1|    213|  3041|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |           0|    493|  3041|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |           1|    181|  3041|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |           0|    422|  3041|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |           1|    119|  3041|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |           0|    752|  3041|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |           1|    203|  3041|
|0-6 months  |CONTENT        |PERU         |WealthQ4       |           0|     47|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ4       |           1|      0|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ1       |           0|     65|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ1       |           1|      1|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ2       |           0|     48|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ2       |           1|      2|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ3       |           0|     51|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ3       |           1|      1|   215|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |           0|    105|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |           1|     62|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |           0|    106|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |           1|     62|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |           0|    102|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |           1|     71|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |           0|    115|   686|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |           1|     63|   686|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |           0|   5896| 26834|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |           1|   1207| 26834|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |           0|   5281| 26834|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |           1|   1187| 26834|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |           0|   5405| 26834|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |           1|   1148| 26834|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |           0|   5524| 26834|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |           1|   1186| 26834|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |           0|   1155|  5092|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |           1|    140|  5092|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |           0|   1140|  5092|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |           1|    133|  5092|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |           0|   1087|  5092|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |           1|    139|  5092|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |           0|   1157|  5092|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |           1|    141|  5092|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ4       |           0|     63|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ4       |           1|      0|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ1       |           0|     64|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ1       |           1|      1|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ2       |           0|     63|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ2       |           1|      1|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ3       |           0|     72|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ3       |           1|      2|   266|
|0-6 months  |MAL-ED         |INDIA        |WealthQ4       |           0|     35|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ4       |           1|     12|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ1       |           0|     52|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ1       |           1|     17|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ2       |           0|     45|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ2       |           1|     24|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ3       |           0|     32|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ3       |           1|     23|   240|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |           0|     44|   243|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |           1|     12|   243|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |           0|     59|   243|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |           1|     16|   243|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |           0|     34|   243|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |           1|     16|   243|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |           0|     51|   243|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |           1|     11|   243|
|0-6 months  |MAL-ED         |PERU         |WealthQ4       |           0|     72|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ4       |           1|      4|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ1       |           0|     56|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ1       |           1|      1|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ2       |           0|     69|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ2       |           1|      2|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ3       |           0|     76|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ3       |           1|      4|   284|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ4       |           0|     50|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ4       |           1|     24|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ1       |           0|     48|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ1       |           1|     10|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ2       |           0|     53|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ2       |           1|      8|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ3       |           0|     37|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ3       |           1|      5|   235|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ4       |           0|     41|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ4       |           1|      4|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ1       |           0|     57|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ1       |           1|      5|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ2       |           0|     48|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ2       |           1|      1|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ3       |           0|     47|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ3       |           1|      4|   207|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ4       |           0|     57|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ4       |           1|      1|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ1       |           0|     69|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ1       |           1|      2|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ2       |           0|     52|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ2       |           1|      7|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ3       |           0|     60|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ3       |           1|      3|   251|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |           0|     58|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |           1|      5|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |           0|     67|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |           1|     13|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |           0|     46|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |           1|      5|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |           0|     69|   269|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |           1|      6|   269|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |           0|    114|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |           1|     47|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |           0|    128|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |           1|     46|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |           0|    134|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |           1|     42|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |           0|    143|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |           1|     46|   700|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |           0|    523|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |           1|     93|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |           0|    593|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |           1|     81|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |           0|    410|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |           1|     71|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |           0|    534|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |           1|     88|  2393|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ4       |           0|     43|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ4       |           1|     51|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ1       |           0|     58|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ1       |           1|     74|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ2       |           0|     48|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ2       |           1|     65|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ3       |           0|     38|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ3       |           1|     33|   410|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |           0|     88|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |           1|     25|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |           0|     58|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |           1|     32|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |           0|     59|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |           1|     21|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |           0|     69|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |           1|     21|   373|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ4       |           0|    393|  1164|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ4       |           1|     45|  1164|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ1       |           0|    217|  1164|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ1       |           1|     39|  1164|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ2       |           0|    186|  1164|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ2       |           1|     34|  1164|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ3       |           0|    220|  1164|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ3       |           1|     30|  1164|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ4       |           0|    644|  2807|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ4       |           1|    154|  2807|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ1       |           0|    401|  2807|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ1       |           1|    201|  2807|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ2       |           0|    374|  2807|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ2       |           1|    132|  2807|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ3       |           0|    639|  2807|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ3       |           1|    262|  2807|
|6-24 months |CONTENT        |PERU         |WealthQ4       |           0|     47|   215|
|6-24 months |CONTENT        |PERU         |WealthQ4       |           1|      0|   215|
|6-24 months |CONTENT        |PERU         |WealthQ1       |           0|     65|   215|
|6-24 months |CONTENT        |PERU         |WealthQ1       |           1|      1|   215|
|6-24 months |CONTENT        |PERU         |WealthQ2       |           0|     49|   215|
|6-24 months |CONTENT        |PERU         |WealthQ2       |           1|      1|   215|
|6-24 months |CONTENT        |PERU         |WealthQ3       |           0|     52|   215|
|6-24 months |CONTENT        |PERU         |WealthQ3       |           1|      0|   215|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ4       |           0|     82|   590|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ4       |           1|     66|   590|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ1       |           0|     75|   590|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ1       |           1|     67|   590|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ2       |           0|     79|   590|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ2       |           1|     76|   590|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ3       |           0|     75|   590|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ3       |           1|     70|   590|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |           0|   4151| 17288|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |           1|    776| 17288|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |           0|   3174| 17288|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |           1|    662| 17288|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |           0|   3449| 17288|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |           1|    708| 17288|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |           0|   3678| 17288|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |           1|    690| 17288|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |           0|   1076|  5426|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |           1|    291|  5426|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |           0|   1004|  5426|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |           1|    367|  5426|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |           0|    956|  5426|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |           1|    352|  5426|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |           0|   1048|  5426|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |           1|    332|  5426|
|6-24 months |LCNI-5         |MALAWI       |WealthQ4       |           0|    176|   814|
|6-24 months |LCNI-5         |MALAWI       |WealthQ4       |           1|     21|   814|
|6-24 months |LCNI-5         |MALAWI       |WealthQ1       |           0|    202|   814|
|6-24 months |LCNI-5         |MALAWI       |WealthQ1       |           1|     11|   814|
|6-24 months |LCNI-5         |MALAWI       |WealthQ2       |           0|    185|   814|
|6-24 months |LCNI-5         |MALAWI       |WealthQ2       |           1|     14|   814|
|6-24 months |LCNI-5         |MALAWI       |WealthQ3       |           0|    188|   814|
|6-24 months |LCNI-5         |MALAWI       |WealthQ3       |           1|     17|   814|
|6-24 months |MAL-ED         |INDIA        |WealthQ4       |           0|     36|   226|
|6-24 months |MAL-ED         |INDIA        |WealthQ4       |           1|      9|   226|
|6-24 months |MAL-ED         |INDIA        |WealthQ1       |           0|     43|   226|
|6-24 months |MAL-ED         |INDIA        |WealthQ1       |           1|     22|   226|
|6-24 months |MAL-ED         |INDIA        |WealthQ2       |           0|     45|   226|
|6-24 months |MAL-ED         |INDIA        |WealthQ2       |           1|     20|   226|
|6-24 months |MAL-ED         |INDIA        |WealthQ3       |           0|     40|   226|
|6-24 months |MAL-ED         |INDIA        |WealthQ3       |           1|     11|   226|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ4       |           0|     40|   222|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ4       |           1|      9|   222|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ1       |           0|     59|   222|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ1       |           1|     12|   222|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ2       |           0|     36|   222|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ2       |           1|     10|   222|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ3       |           0|     47|   222|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ3       |           1|      9|   222|
|6-24 months |MAL-ED         |PERU         |WealthQ4       |           0|     61|   252|
|6-24 months |MAL-ED         |PERU         |WealthQ4       |           1|      4|   252|
|6-24 months |MAL-ED         |PERU         |WealthQ1       |           0|     48|   252|
|6-24 months |MAL-ED         |PERU         |WealthQ1       |           1|      3|   252|
|6-24 months |MAL-ED         |PERU         |WealthQ2       |           0|     58|   252|
|6-24 months |MAL-ED         |PERU         |WealthQ2       |           1|      5|   252|
|6-24 months |MAL-ED         |PERU         |WealthQ3       |           0|     69|   252|
|6-24 months |MAL-ED         |PERU         |WealthQ3       |           1|      4|   252|
|6-24 months |MAL-ED         |NEPAL        |WealthQ4       |           0|     54|   231|
|6-24 months |MAL-ED         |NEPAL        |WealthQ4       |           1|     18|   231|
|6-24 months |MAL-ED         |NEPAL        |WealthQ1       |           0|     52|   231|
|6-24 months |MAL-ED         |NEPAL        |WealthQ1       |           1|      6|   231|
|6-24 months |MAL-ED         |NEPAL        |WealthQ2       |           0|     52|   231|
|6-24 months |MAL-ED         |NEPAL        |WealthQ2       |           1|      8|   231|
|6-24 months |MAL-ED         |NEPAL        |WealthQ3       |           0|     37|   231|
|6-24 months |MAL-ED         |NEPAL        |WealthQ3       |           1|      4|   231|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ4       |           0|     39|   185|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ4       |           1|      2|   185|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ1       |           0|     55|   185|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ1       |           1|      0|   185|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ2       |           0|     46|   185|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ2       |           1|      0|   185|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ3       |           0|     40|   185|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ3       |           1|      3|   185|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ4       |           0|     48|   239|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ4       |           1|      8|   239|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ1       |           0|     64|   239|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ1       |           1|      3|   239|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ2       |           0|     50|   239|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ2       |           1|      7|   239|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ3       |           0|     49|   239|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ3       |           1|     10|   239|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |           0|     49|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |           1|      7|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |           0|     57|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |           1|     13|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |           0|     38|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |           1|      6|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |           0|     55|   233|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |           1|      8|   233|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ4       |           0|    110|   615|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ4       |           1|     26|   615|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ1       |           0|    124|   615|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ1       |           1|     27|   615|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ2       |           0|    141|   615|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ2       |           1|     22|   615|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ3       |           0|    141|   615|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ3       |           1|     24|   615|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |           0|    448|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |           1|     75|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |           0|    483|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |           1|     89|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |           0|    331|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |           1|     70|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |           0|    430|  2016|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |           1|     90|  2016|
|6-24 months |Vellore Crypto |INDIA        |WealthQ4       |           0|     58|   410|
|6-24 months |Vellore Crypto |INDIA        |WealthQ4       |           1|     36|   410|
|6-24 months |Vellore Crypto |INDIA        |WealthQ1       |           0|     93|   410|
|6-24 months |Vellore Crypto |INDIA        |WealthQ1       |           1|     39|   410|
|6-24 months |Vellore Crypto |INDIA        |WealthQ2       |           0|     81|   410|
|6-24 months |Vellore Crypto |INDIA        |WealthQ2       |           1|     32|   410|
|6-24 months |Vellore Crypto |INDIA        |WealthQ3       |           0|     51|   410|
|6-24 months |Vellore Crypto |INDIA        |WealthQ3       |           1|     20|   410|


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
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


