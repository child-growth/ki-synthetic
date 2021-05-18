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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |meducyrs | pers_wast| n_cell|     n|
|:-----------|:--------------|:------------|:--------|---------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Low      |         0|    105|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Low      |         1|      6|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Medium   |         0|     96|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Medium   |         1|      5|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |High     |         0|    149|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |High     |         1|     12|   373|
|0-24 months |COHORTS        |INDIA        |Low      |         0|   1162|  5137|
|0-24 months |COHORTS        |INDIA        |Low      |         1|    126|  5137|
|0-24 months |COHORTS        |INDIA        |Medium   |         0|   2603|  5137|
|0-24 months |COHORTS        |INDIA        |Medium   |         1|    279|  5137|
|0-24 months |COHORTS        |INDIA        |High     |         0|    882|  5137|
|0-24 months |COHORTS        |INDIA        |High     |         1|     85|  5137|
|0-24 months |COHORTS        |GUATEMALA    |Low      |         0|    476|  1048|
|0-24 months |COHORTS        |GUATEMALA    |Low      |         1|     19|  1048|
|0-24 months |COHORTS        |GUATEMALA    |Medium   |         0|    340|  1048|
|0-24 months |COHORTS        |GUATEMALA    |Medium   |         1|     13|  1048|
|0-24 months |COHORTS        |GUATEMALA    |High     |         0|    196|  1048|
|0-24 months |COHORTS        |GUATEMALA    |High     |         1|      4|  1048|
|0-24 months |COHORTS        |PHILIPPINES  |Low      |         0|    989|  2811|
|0-24 months |COHORTS        |PHILIPPINES  |Low      |         1|     74|  2811|
|0-24 months |COHORTS        |PHILIPPINES  |Medium   |         0|    487|  2811|
|0-24 months |COHORTS        |PHILIPPINES  |Medium   |         1|     23|  2811|
|0-24 months |COHORTS        |PHILIPPINES  |High     |         0|   1191|  2811|
|0-24 months |COHORTS        |PHILIPPINES  |High     |         1|     47|  2811|
|0-24 months |EE             |PAKISTAN     |Low      |         0|    292|   373|
|0-24 months |EE             |PAKISTAN     |Low      |         1|     24|   373|
|0-24 months |EE             |PAKISTAN     |Medium   |         0|     30|   373|
|0-24 months |EE             |PAKISTAN     |Medium   |         1|      5|   373|
|0-24 months |EE             |PAKISTAN     |High     |         0|     18|   373|
|0-24 months |EE             |PAKISTAN     |High     |         1|      4|   373|
|0-24 months |GMS-Nepal      |NEPAL        |Low      |         0|    348|   597|
|0-24 months |GMS-Nepal      |NEPAL        |Low      |         1|     66|   597|
|0-24 months |GMS-Nepal      |NEPAL        |Medium   |         0|    107|   597|
|0-24 months |GMS-Nepal      |NEPAL        |Medium   |         1|      8|   597|
|0-24 months |GMS-Nepal      |NEPAL        |High     |         0|     62|   597|
|0-24 months |GMS-Nepal      |NEPAL        |High     |         1|      6|   597|
|0-24 months |Guatemala BSC  |GUATEMALA    |Low      |         0|     81|   246|
|0-24 months |Guatemala BSC  |GUATEMALA    |Low      |         1|      1|   246|
|0-24 months |Guatemala BSC  |GUATEMALA    |Medium   |         0|     69|   246|
|0-24 months |Guatemala BSC  |GUATEMALA    |Medium   |         1|      1|   246|
|0-24 months |Guatemala BSC  |GUATEMALA    |High     |         0|     93|   246|
|0-24 months |Guatemala BSC  |GUATEMALA    |High     |         1|      1|   246|
|0-24 months |JiVitA-3       |BANGLADESH   |Low      |         0|   5154| 15796|
|0-24 months |JiVitA-3       |BANGLADESH   |Low      |         1|    331| 15796|
|0-24 months |JiVitA-3       |BANGLADESH   |Medium   |         0|   4618| 15796|
|0-24 months |JiVitA-3       |BANGLADESH   |Medium   |         1|    268| 15796|
|0-24 months |JiVitA-3       |BANGLADESH   |High     |         0|   5126| 15796|
|0-24 months |JiVitA-3       |BANGLADESH   |High     |         1|    299| 15796|
|0-24 months |JiVitA-4       |BANGLADESH   |Low      |         0|   1586|  5272|
|0-24 months |JiVitA-4       |BANGLADESH   |Low      |         1|    137|  5272|
|0-24 months |JiVitA-4       |BANGLADESH   |Medium   |         0|   1517|  5272|
|0-24 months |JiVitA-4       |BANGLADESH   |Medium   |         1|    136|  5272|
|0-24 months |JiVitA-4       |BANGLADESH   |High     |         0|   1744|  5272|
|0-24 months |JiVitA-4       |BANGLADESH   |High     |         1|    152|  5272|
|0-24 months |LCNI-5         |MALAWI       |Low      |         0|    213|   706|
|0-24 months |LCNI-5         |MALAWI       |Low      |         1|      2|   706|
|0-24 months |LCNI-5         |MALAWI       |Medium   |         0|    240|   706|
|0-24 months |LCNI-5         |MALAWI       |Medium   |         1|      1|   706|
|0-24 months |LCNI-5         |MALAWI       |High     |         0|    247|   706|
|0-24 months |LCNI-5         |MALAWI       |High     |         1|      3|   706|
|0-24 months |MAL-ED         |INDIA        |Low      |         0|     75|   202|
|0-24 months |MAL-ED         |INDIA        |Low      |         1|      7|   202|
|0-24 months |MAL-ED         |INDIA        |Medium   |         0|     46|   202|
|0-24 months |MAL-ED         |INDIA        |Medium   |         1|      2|   202|
|0-24 months |MAL-ED         |INDIA        |High     |         0|     65|   202|
|0-24 months |MAL-ED         |INDIA        |High     |         1|      7|   202|
|0-24 months |MAL-ED         |BANGLADESH   |Low      |         0|     68|   240|
|0-24 months |MAL-ED         |BANGLADESH   |Low      |         1|      5|   240|
|0-24 months |MAL-ED         |BANGLADESH   |Medium   |         0|     52|   240|
|0-24 months |MAL-ED         |BANGLADESH   |Medium   |         1|      2|   240|
|0-24 months |MAL-ED         |BANGLADESH   |High     |         0|    108|   240|
|0-24 months |MAL-ED         |BANGLADESH   |High     |         1|      5|   240|
|0-24 months |MAL-ED         |PERU         |Low      |         0|    112|   283|
|0-24 months |MAL-ED         |PERU         |Low      |         1|      0|   283|
|0-24 months |MAL-ED         |PERU         |Medium   |         0|     88|   283|
|0-24 months |MAL-ED         |PERU         |Medium   |         1|      0|   283|
|0-24 months |MAL-ED         |PERU         |High     |         0|     82|   283|
|0-24 months |MAL-ED         |PERU         |High     |         1|      1|   283|
|0-24 months |MAL-ED         |NEPAL        |Low      |         0|    107|   228|
|0-24 months |MAL-ED         |NEPAL        |Low      |         1|      3|   228|
|0-24 months |MAL-ED         |NEPAL        |Medium   |         0|     55|   228|
|0-24 months |MAL-ED         |NEPAL        |Medium   |         1|      1|   228|
|0-24 months |MAL-ED         |NEPAL        |High     |         0|     62|   228|
|0-24 months |MAL-ED         |NEPAL        |High     |         1|      0|   228|
|0-24 months |MAL-ED         |BRAZIL       |Low      |         0|     92|   218|
|0-24 months |MAL-ED         |BRAZIL       |Low      |         1|      0|   218|
|0-24 months |MAL-ED         |BRAZIL       |Medium   |         0|     89|   218|
|0-24 months |MAL-ED         |BRAZIL       |Medium   |         1|      2|   218|
|0-24 months |MAL-ED         |BRAZIL       |High     |         0|     35|   218|
|0-24 months |MAL-ED         |BRAZIL       |High     |         1|      0|   218|
|0-24 months |MAL-ED         |TANZANIA     |Low      |         0|     63|   205|
|0-24 months |MAL-ED         |TANZANIA     |Low      |         1|      0|   205|
|0-24 months |MAL-ED         |TANZANIA     |Medium   |         0|     77|   205|
|0-24 months |MAL-ED         |TANZANIA     |Medium   |         1|      0|   205|
|0-24 months |MAL-ED         |TANZANIA     |High     |         0|     65|   205|
|0-24 months |MAL-ED         |TANZANIA     |High     |         1|      0|   205|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low      |         0|    151|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low      |         1|      1|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |Medium   |         0|     36|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |Medium   |         1|      0|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |High     |         0|     86|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA |High     |         1|      1|   275|
|0-24 months |NIH-Birth      |BANGLADESH   |Low      |         0|    203|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |Low      |         1|     18|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |Medium   |         0|    158|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |Medium   |         1|     16|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |High     |         0|    126|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |High     |         1|     13|   534|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low      |         0|    223|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low      |         1|     10|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |Medium   |         0|    152|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |Medium   |         1|      9|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |High     |         0|    329|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |High     |         1|      7|   730|
|0-24 months |PROBIT         |BELARUS      |Low      |         0|   5327| 16583|
|0-24 months |PROBIT         |BELARUS      |Low      |         1|     48| 16583|
|0-24 months |PROBIT         |BELARUS      |Medium   |         0|   8300| 16583|
|0-24 months |PROBIT         |BELARUS      |Medium   |         1|     70| 16583|
|0-24 months |PROBIT         |BELARUS      |High     |         0|   2822| 16583|
|0-24 months |PROBIT         |BELARUS      |High     |         1|     16| 16583|
|0-24 months |PROVIDE        |BANGLADESH   |Low      |         0|    185|   641|
|0-24 months |PROVIDE        |BANGLADESH   |Low      |         1|      9|   641|
|0-24 months |PROVIDE        |BANGLADESH   |Medium   |         0|    244|   641|
|0-24 months |PROVIDE        |BANGLADESH   |Medium   |         1|      4|   641|
|0-24 months |PROVIDE        |BANGLADESH   |High     |         0|    197|   641|
|0-24 months |PROVIDE        |BANGLADESH   |High     |         1|      2|   641|
|0-24 months |SAS-CompFeed   |INDIA        |Low      |         0|    549|  1365|
|0-24 months |SAS-CompFeed   |INDIA        |Low      |         1|     57|  1365|
|0-24 months |SAS-CompFeed   |INDIA        |Medium   |         0|    422|  1365|
|0-24 months |SAS-CompFeed   |INDIA        |Medium   |         1|     38|  1365|
|0-24 months |SAS-CompFeed   |INDIA        |High     |         0|    280|  1365|
|0-24 months |SAS-CompFeed   |INDIA        |High     |         1|     19|  1365|
|0-24 months |SAS-FoodSuppl  |INDIA        |Low      |         0|    244|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |Low      |         1|     52|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |Medium   |         0|     32|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |Medium   |         1|      7|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |High     |         0|     34|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |High     |         1|      6|   375|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low      |         0|     91|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low      |         1|      3|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |Medium   |         0|   1454|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |Medium   |         1|     45|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |High     |         0|    563|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |High     |         1|     10|  2166|
|0-24 months |Vellore Crypto |INDIA        |Low      |         0|    133|   410|
|0-24 months |Vellore Crypto |INDIA        |Low      |         1|     14|   410|
|0-24 months |Vellore Crypto |INDIA        |Medium   |         0|    133|   410|
|0-24 months |Vellore Crypto |INDIA        |Medium   |         1|     19|   410|
|0-24 months |Vellore Crypto |INDIA        |High     |         0|     96|   410|
|0-24 months |Vellore Crypto |INDIA        |High     |         1|     15|   410|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low      |         0|   1679|  9523|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low      |         1|     27|  9523|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |         0|   2412|  9523|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |         1|     44|  9523|
|0-24 months |ZVITAMBO       |ZIMBABWE     |High     |         0|   5264|  9523|
|0-24 months |ZVITAMBO       |ZIMBABWE     |High     |         1|     97|  9523|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Low      |         0|     83|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Low      |         1|     22|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |         0|     86|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |         1|      9|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |High     |         0|    139|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |High     |         1|     19|   358|
|0-6 months  |COHORTS        |PHILIPPINES  |Low      |         0|    305|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |Low      |         1|     23|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |Medium   |         0|    143|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |Medium   |         1|     14|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |High     |         0|    353|   853|
|0-6 months  |COHORTS        |PHILIPPINES  |High     |         1|     15|   853|
|0-6 months  |EE             |PAKISTAN     |Low      |         0|    289|   367|
|0-6 months  |EE             |PAKISTAN     |Low      |         1|     22|   367|
|0-6 months  |EE             |PAKISTAN     |Medium   |         0|     33|   367|
|0-6 months  |EE             |PAKISTAN     |Medium   |         1|      1|   367|
|0-6 months  |EE             |PAKISTAN     |High     |         0|     20|   367|
|0-6 months  |EE             |PAKISTAN     |High     |         1|      2|   367|
|0-6 months  |GMS-Nepal      |NEPAL        |Low      |         0|    346|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |Low      |         1|     49|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |Medium   |         0|     99|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |Medium   |         1|      8|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |High     |         0|     60|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |High     |         1|      5|   567|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low      |         0|     21|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low      |         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |Medium   |         0|     18|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |Medium   |         1|      1|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |High     |         0|      9|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |High     |         1|      1|    50|
|0-6 months  |MAL-ED         |INDIA        |Low      |         0|     76|   201|
|0-6 months  |MAL-ED         |INDIA        |Low      |         1|      6|   201|
|0-6 months  |MAL-ED         |INDIA        |Medium   |         0|     46|   201|
|0-6 months  |MAL-ED         |INDIA        |Medium   |         1|      1|   201|
|0-6 months  |MAL-ED         |INDIA        |High     |         0|     65|   201|
|0-6 months  |MAL-ED         |INDIA        |High     |         1|      7|   201|
|0-6 months  |MAL-ED         |BANGLADESH   |Low      |         0|     72|   240|
|0-6 months  |MAL-ED         |BANGLADESH   |Low      |         1|      1|   240|
|0-6 months  |MAL-ED         |BANGLADESH   |Medium   |         0|     53|   240|
|0-6 months  |MAL-ED         |BANGLADESH   |Medium   |         1|      1|   240|
|0-6 months  |MAL-ED         |BANGLADESH   |High     |         0|    108|   240|
|0-6 months  |MAL-ED         |BANGLADESH   |High     |         1|      5|   240|
|0-6 months  |MAL-ED         |PERU         |Low      |         0|    112|   283|
|0-6 months  |MAL-ED         |PERU         |Low      |         1|      0|   283|
|0-6 months  |MAL-ED         |PERU         |Medium   |         0|     88|   283|
|0-6 months  |MAL-ED         |PERU         |Medium   |         1|      0|   283|
|0-6 months  |MAL-ED         |PERU         |High     |         0|     83|   283|
|0-6 months  |MAL-ED         |PERU         |High     |         1|      0|   283|
|0-6 months  |MAL-ED         |NEPAL        |Low      |         0|    105|   228|
|0-6 months  |MAL-ED         |NEPAL        |Low      |         1|      5|   228|
|0-6 months  |MAL-ED         |NEPAL        |Medium   |         0|     55|   228|
|0-6 months  |MAL-ED         |NEPAL        |Medium   |         1|      1|   228|
|0-6 months  |MAL-ED         |NEPAL        |High     |         0|     61|   228|
|0-6 months  |MAL-ED         |NEPAL        |High     |         1|      1|   228|
|0-6 months  |MAL-ED         |BRAZIL       |Low      |         0|     92|   218|
|0-6 months  |MAL-ED         |BRAZIL       |Low      |         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |Medium   |         0|     90|   218|
|0-6 months  |MAL-ED         |BRAZIL       |Medium   |         1|      1|   218|
|0-6 months  |MAL-ED         |BRAZIL       |High     |         0|     35|   218|
|0-6 months  |MAL-ED         |BRAZIL       |High     |         1|      0|   218|
|0-6 months  |MAL-ED         |TANZANIA     |Low      |         0|     63|   205|
|0-6 months  |MAL-ED         |TANZANIA     |Low      |         1|      0|   205|
|0-6 months  |MAL-ED         |TANZANIA     |Medium   |         0|     77|   205|
|0-6 months  |MAL-ED         |TANZANIA     |Medium   |         1|      0|   205|
|0-6 months  |MAL-ED         |TANZANIA     |High     |         0|     65|   205|
|0-6 months  |MAL-ED         |TANZANIA     |High     |         1|      0|   205|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low      |         0|    151|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low      |         1|      1|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Medium   |         0|     36|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Medium   |         1|      0|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |High     |         0|     85|   274|
|0-6 months  |MAL-ED         |SOUTH AFRICA |High     |         1|      1|   274|
|0-6 months  |NIH-Birth      |BANGLADESH   |Low      |         0|     73|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |Low      |         1|      4|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |Medium   |         0|     53|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |Medium   |         1|      5|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |High     |         0|     32|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |High     |         1|      2|   169|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low      |         0|     86|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low      |         1|      1|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Medium   |         0|     59|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Medium   |         1|      2|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |High     |         0|    100|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |High     |         1|      2|   250|
|0-6 months  |PROBIT         |BELARUS      |Low      |         0|   3997| 13534|
|0-6 months  |PROBIT         |BELARUS      |Low      |         1|    337| 13534|
|0-6 months  |PROBIT         |BELARUS      |Medium   |         0|   6320| 13534|
|0-6 months  |PROBIT         |BELARUS      |Medium   |         1|    598| 13534|
|0-6 months  |PROBIT         |BELARUS      |High     |         0|   2120| 13534|
|0-6 months  |PROBIT         |BELARUS      |High     |         1|    162| 13534|
|0-6 months  |PROVIDE        |BANGLADESH   |Low      |         0|    185|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |Low      |         1|      9|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |Medium   |         0|    245|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |Medium   |         1|      2|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |High     |         0|    194|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |High     |         1|      3|   638|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low      |         0|     88|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low      |         1|      2|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Medium   |         0|   1391|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Medium   |         1|     38|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |High     |         0|    530|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |High     |         1|     12|  2061|
|0-6 months  |Vellore Crypto |INDIA        |Low      |         0|    126|   402|
|0-6 months  |Vellore Crypto |INDIA        |Low      |         1|     17|   402|
|0-6 months  |Vellore Crypto |INDIA        |Medium   |         0|    125|   402|
|0-6 months  |Vellore Crypto |INDIA        |Medium   |         1|     26|   402|
|0-6 months  |Vellore Crypto |INDIA        |High     |         0|     87|   402|
|0-6 months  |Vellore Crypto |INDIA        |High     |         1|     21|   402|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low      |         0|     99|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low      |         1|      4|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |         0|    176|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |         1|      3|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |High     |         0|    343|   632|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |High     |         1|      7|   632|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Low      |         0|    105|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Low      |         1|      6|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Medium   |         0|     96|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Medium   |         1|      5|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |High     |         0|    149|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |High     |         1|     12|   373|
|6-24 months |COHORTS        |INDIA        |Low      |         0|   1162|  5137|
|6-24 months |COHORTS        |INDIA        |Low      |         1|    126|  5137|
|6-24 months |COHORTS        |INDIA        |Medium   |         0|   2603|  5137|
|6-24 months |COHORTS        |INDIA        |Medium   |         1|    279|  5137|
|6-24 months |COHORTS        |INDIA        |High     |         0|    882|  5137|
|6-24 months |COHORTS        |INDIA        |High     |         1|     85|  5137|
|6-24 months |COHORTS        |GUATEMALA    |Low      |         0|    476|  1048|
|6-24 months |COHORTS        |GUATEMALA    |Low      |         1|     19|  1048|
|6-24 months |COHORTS        |GUATEMALA    |Medium   |         0|    340|  1048|
|6-24 months |COHORTS        |GUATEMALA    |Medium   |         1|     13|  1048|
|6-24 months |COHORTS        |GUATEMALA    |High     |         0|    196|  1048|
|6-24 months |COHORTS        |GUATEMALA    |High     |         1|      4|  1048|
|6-24 months |COHORTS        |PHILIPPINES  |Low      |         0|    989|  2811|
|6-24 months |COHORTS        |PHILIPPINES  |Low      |         1|     74|  2811|
|6-24 months |COHORTS        |PHILIPPINES  |Medium   |         0|    487|  2811|
|6-24 months |COHORTS        |PHILIPPINES  |Medium   |         1|     23|  2811|
|6-24 months |COHORTS        |PHILIPPINES  |High     |         0|   1191|  2811|
|6-24 months |COHORTS        |PHILIPPINES  |High     |         1|     47|  2811|
|6-24 months |EE             |PAKISTAN     |Low      |         0|    292|   373|
|6-24 months |EE             |PAKISTAN     |Low      |         1|     24|   373|
|6-24 months |EE             |PAKISTAN     |Medium   |         0|     30|   373|
|6-24 months |EE             |PAKISTAN     |Medium   |         1|      5|   373|
|6-24 months |EE             |PAKISTAN     |High     |         0|     18|   373|
|6-24 months |EE             |PAKISTAN     |High     |         1|      4|   373|
|6-24 months |GMS-Nepal      |NEPAL        |Low      |         0|    348|   597|
|6-24 months |GMS-Nepal      |NEPAL        |Low      |         1|     66|   597|
|6-24 months |GMS-Nepal      |NEPAL        |Medium   |         0|    107|   597|
|6-24 months |GMS-Nepal      |NEPAL        |Medium   |         1|      8|   597|
|6-24 months |GMS-Nepal      |NEPAL        |High     |         0|     62|   597|
|6-24 months |GMS-Nepal      |NEPAL        |High     |         1|      6|   597|
|6-24 months |Guatemala BSC  |GUATEMALA    |Low      |         0|     81|   246|
|6-24 months |Guatemala BSC  |GUATEMALA    |Low      |         1|      1|   246|
|6-24 months |Guatemala BSC  |GUATEMALA    |Medium   |         0|     69|   246|
|6-24 months |Guatemala BSC  |GUATEMALA    |Medium   |         1|      1|   246|
|6-24 months |Guatemala BSC  |GUATEMALA    |High     |         0|     93|   246|
|6-24 months |Guatemala BSC  |GUATEMALA    |High     |         1|      1|   246|
|6-24 months |JiVitA-3       |BANGLADESH   |Low      |         0|   5154| 15796|
|6-24 months |JiVitA-3       |BANGLADESH   |Low      |         1|    331| 15796|
|6-24 months |JiVitA-3       |BANGLADESH   |Medium   |         0|   4618| 15796|
|6-24 months |JiVitA-3       |BANGLADESH   |Medium   |         1|    268| 15796|
|6-24 months |JiVitA-3       |BANGLADESH   |High     |         0|   5126| 15796|
|6-24 months |JiVitA-3       |BANGLADESH   |High     |         1|    299| 15796|
|6-24 months |JiVitA-4       |BANGLADESH   |Low      |         0|   1586|  5272|
|6-24 months |JiVitA-4       |BANGLADESH   |Low      |         1|    137|  5272|
|6-24 months |JiVitA-4       |BANGLADESH   |Medium   |         0|   1517|  5272|
|6-24 months |JiVitA-4       |BANGLADESH   |Medium   |         1|    136|  5272|
|6-24 months |JiVitA-4       |BANGLADESH   |High     |         0|   1744|  5272|
|6-24 months |JiVitA-4       |BANGLADESH   |High     |         1|    152|  5272|
|6-24 months |LCNI-5         |MALAWI       |Low      |         0|    213|   706|
|6-24 months |LCNI-5         |MALAWI       |Low      |         1|      2|   706|
|6-24 months |LCNI-5         |MALAWI       |Medium   |         0|    240|   706|
|6-24 months |LCNI-5         |MALAWI       |Medium   |         1|      1|   706|
|6-24 months |LCNI-5         |MALAWI       |High     |         0|    247|   706|
|6-24 months |LCNI-5         |MALAWI       |High     |         1|      3|   706|
|6-24 months |MAL-ED         |INDIA        |Low      |         0|     75|   202|
|6-24 months |MAL-ED         |INDIA        |Low      |         1|      7|   202|
|6-24 months |MAL-ED         |INDIA        |Medium   |         0|     46|   202|
|6-24 months |MAL-ED         |INDIA        |Medium   |         1|      2|   202|
|6-24 months |MAL-ED         |INDIA        |High     |         0|     65|   202|
|6-24 months |MAL-ED         |INDIA        |High     |         1|      7|   202|
|6-24 months |MAL-ED         |BANGLADESH   |Low      |         0|     68|   240|
|6-24 months |MAL-ED         |BANGLADESH   |Low      |         1|      5|   240|
|6-24 months |MAL-ED         |BANGLADESH   |Medium   |         0|     52|   240|
|6-24 months |MAL-ED         |BANGLADESH   |Medium   |         1|      2|   240|
|6-24 months |MAL-ED         |BANGLADESH   |High     |         0|    108|   240|
|6-24 months |MAL-ED         |BANGLADESH   |High     |         1|      5|   240|
|6-24 months |MAL-ED         |PERU         |Low      |         0|    112|   283|
|6-24 months |MAL-ED         |PERU         |Low      |         1|      0|   283|
|6-24 months |MAL-ED         |PERU         |Medium   |         0|     88|   283|
|6-24 months |MAL-ED         |PERU         |Medium   |         1|      0|   283|
|6-24 months |MAL-ED         |PERU         |High     |         0|     82|   283|
|6-24 months |MAL-ED         |PERU         |High     |         1|      1|   283|
|6-24 months |MAL-ED         |NEPAL        |Low      |         0|    107|   228|
|6-24 months |MAL-ED         |NEPAL        |Low      |         1|      3|   228|
|6-24 months |MAL-ED         |NEPAL        |Medium   |         0|     55|   228|
|6-24 months |MAL-ED         |NEPAL        |Medium   |         1|      1|   228|
|6-24 months |MAL-ED         |NEPAL        |High     |         0|     62|   228|
|6-24 months |MAL-ED         |NEPAL        |High     |         1|      0|   228|
|6-24 months |MAL-ED         |BRAZIL       |Low      |         0|     92|   218|
|6-24 months |MAL-ED         |BRAZIL       |Low      |         1|      0|   218|
|6-24 months |MAL-ED         |BRAZIL       |Medium   |         0|     89|   218|
|6-24 months |MAL-ED         |BRAZIL       |Medium   |         1|      2|   218|
|6-24 months |MAL-ED         |BRAZIL       |High     |         0|     35|   218|
|6-24 months |MAL-ED         |BRAZIL       |High     |         1|      0|   218|
|6-24 months |MAL-ED         |TANZANIA     |Low      |         0|     63|   205|
|6-24 months |MAL-ED         |TANZANIA     |Low      |         1|      0|   205|
|6-24 months |MAL-ED         |TANZANIA     |Medium   |         0|     77|   205|
|6-24 months |MAL-ED         |TANZANIA     |Medium   |         1|      0|   205|
|6-24 months |MAL-ED         |TANZANIA     |High     |         0|     65|   205|
|6-24 months |MAL-ED         |TANZANIA     |High     |         1|      0|   205|
|6-24 months |MAL-ED         |SOUTH AFRICA |Low      |         0|    151|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |Low      |         1|      1|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |Medium   |         0|     36|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |Medium   |         1|      0|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |High     |         0|     86|   275|
|6-24 months |MAL-ED         |SOUTH AFRICA |High     |         1|      1|   275|
|6-24 months |NIH-Birth      |BANGLADESH   |Low      |         0|    203|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |Low      |         1|     18|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |Medium   |         0|    158|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |Medium   |         1|     16|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |High     |         0|    126|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |High     |         1|     13|   534|
|6-24 months |NIH-Crypto     |BANGLADESH   |Low      |         0|    223|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Low      |         1|     10|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Medium   |         0|    152|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Medium   |         1|      9|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |High     |         0|    329|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |High     |         1|      7|   730|
|6-24 months |PROBIT         |BELARUS      |Low      |         0|   5327| 16583|
|6-24 months |PROBIT         |BELARUS      |Low      |         1|     48| 16583|
|6-24 months |PROBIT         |BELARUS      |Medium   |         0|   8300| 16583|
|6-24 months |PROBIT         |BELARUS      |Medium   |         1|     70| 16583|
|6-24 months |PROBIT         |BELARUS      |High     |         0|   2822| 16583|
|6-24 months |PROBIT         |BELARUS      |High     |         1|     16| 16583|
|6-24 months |PROVIDE        |BANGLADESH   |Low      |         0|    185|   641|
|6-24 months |PROVIDE        |BANGLADESH   |Low      |         1|      9|   641|
|6-24 months |PROVIDE        |BANGLADESH   |Medium   |         0|    244|   641|
|6-24 months |PROVIDE        |BANGLADESH   |Medium   |         1|      4|   641|
|6-24 months |PROVIDE        |BANGLADESH   |High     |         0|    197|   641|
|6-24 months |PROVIDE        |BANGLADESH   |High     |         1|      2|   641|
|6-24 months |SAS-CompFeed   |INDIA        |Low      |         0|    549|  1365|
|6-24 months |SAS-CompFeed   |INDIA        |Low      |         1|     57|  1365|
|6-24 months |SAS-CompFeed   |INDIA        |Medium   |         0|    422|  1365|
|6-24 months |SAS-CompFeed   |INDIA        |Medium   |         1|     38|  1365|
|6-24 months |SAS-CompFeed   |INDIA        |High     |         0|    280|  1365|
|6-24 months |SAS-CompFeed   |INDIA        |High     |         1|     19|  1365|
|6-24 months |SAS-FoodSuppl  |INDIA        |Low      |         0|    244|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |Low      |         1|     52|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |Medium   |         0|     32|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |Medium   |         1|      7|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |High     |         0|     34|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |High     |         1|      6|   375|
|6-24 months |TanzaniaChild2 |TANZANIA     |Low      |         0|     91|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |Low      |         1|      3|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |Medium   |         0|   1454|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |Medium   |         1|     45|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |High     |         0|    563|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |High     |         1|     10|  2166|
|6-24 months |Vellore Crypto |INDIA        |Low      |         0|    133|   410|
|6-24 months |Vellore Crypto |INDIA        |Low      |         1|     14|   410|
|6-24 months |Vellore Crypto |INDIA        |Medium   |         0|    133|   410|
|6-24 months |Vellore Crypto |INDIA        |Medium   |         1|     19|   410|
|6-24 months |Vellore Crypto |INDIA        |High     |         0|     96|   410|
|6-24 months |Vellore Crypto |INDIA        |High     |         1|     15|   410|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Low      |         0|   1679|  9523|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Low      |         1|     27|  9523|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |         0|   2412|  9523|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |         1|     44|  9523|
|6-24 months |ZVITAMBO       |ZIMBABWE     |High     |         0|   5264|  9523|
|6-24 months |ZVITAMBO       |ZIMBABWE     |High     |         1|     97|  9523|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
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
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
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
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


