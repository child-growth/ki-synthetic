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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |hhwealth_quart | pers_wast| n_cell|     n|
|:-----------|:--------------|:------------|:--------------|---------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |         0|    103|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |         1|     10|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |         0|     84|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |         1|      6|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |         0|     79|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |         1|      1|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |         0|     84|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |         1|      6|   373|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ4       |         0|    372|  1023|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ4       |         1|     12|  1023|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ1       |         0|    222|  1023|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ1       |         1|      4|  1023|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ2       |         0|    179|  1023|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ2       |         1|     10|  1023|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ3       |         0|    215|  1023|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ3       |         1|      9|  1023|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ4       |         0|    779|  2809|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ4       |         1|     21|  2809|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ1       |         0|    551|  2809|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ1       |         1|     48|  2809|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ2       |         0|    482|  2809|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ2       |         1|     23|  2809|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ3       |         0|    853|  2809|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ3       |         1|     52|  2809|
|0-24 months |CONTENT        |PERU         |WealthQ4       |         0|     47|   215|
|0-24 months |CONTENT        |PERU         |WealthQ4       |         1|      0|   215|
|0-24 months |CONTENT        |PERU         |WealthQ1       |         0|     66|   215|
|0-24 months |CONTENT        |PERU         |WealthQ1       |         1|      0|   215|
|0-24 months |CONTENT        |PERU         |WealthQ2       |         0|     50|   215|
|0-24 months |CONTENT        |PERU         |WealthQ2       |         1|      0|   215|
|0-24 months |CONTENT        |PERU         |WealthQ3       |         0|     52|   215|
|0-24 months |CONTENT        |PERU         |WealthQ3       |         1|      0|   215|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ4       |         0|    128|   597|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ4       |         1|     22|   597|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ1       |         0|    121|   597|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ1       |         1|     23|   597|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ2       |         0|    137|   597|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ2       |         1|     19|   597|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ3       |         0|    131|   597|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ3       |         1|     16|   597|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |         0|   4296| 15795|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |         1|    230| 15795|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |         0|   3261| 15795|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |         1|    220| 15795|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |         0|   3569| 15795|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |         1|    222| 15795|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |         0|   3771| 15795|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |         1|    226| 15795|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |         0|   1241|  5277|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |         1|     87|  5277|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |         0|   1211|  5277|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |         1|    113|  5277|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |         0|   1160|  5277|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |         1|    118|  5277|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |         0|   1239|  5277|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |         1|    108|  5277|
|0-24 months |LCNI-5         |MALAWI       |WealthQ4       |         0|    168|   709|
|0-24 months |LCNI-5         |MALAWI       |WealthQ4       |         1|      4|   709|
|0-24 months |LCNI-5         |MALAWI       |WealthQ1       |         0|    177|   709|
|0-24 months |LCNI-5         |MALAWI       |WealthQ1       |         1|      1|   709|
|0-24 months |LCNI-5         |MALAWI       |WealthQ2       |         0|    176|   709|
|0-24 months |LCNI-5         |MALAWI       |WealthQ2       |         1|      0|   709|
|0-24 months |LCNI-5         |MALAWI       |WealthQ3       |         0|    182|   709|
|0-24 months |LCNI-5         |MALAWI       |WealthQ3       |         1|      1|   709|
|0-24 months |MAL-ED         |INDIA        |WealthQ4       |         0|     44|   231|
|0-24 months |MAL-ED         |INDIA        |WealthQ4       |         1|      3|   231|
|0-24 months |MAL-ED         |INDIA        |WealthQ1       |         0|     60|   231|
|0-24 months |MAL-ED         |INDIA        |WealthQ1       |         1|      7|   231|
|0-24 months |MAL-ED         |INDIA        |WealthQ2       |         0|     60|   231|
|0-24 months |MAL-ED         |INDIA        |WealthQ2       |         1|      5|   231|
|0-24 months |MAL-ED         |INDIA        |WealthQ3       |         0|     47|   231|
|0-24 months |MAL-ED         |INDIA        |WealthQ3       |         1|      5|   231|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ4       |         0|     51|   230|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ4       |         1|      1|   230|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ1       |         0|     69|   230|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ1       |         1|      3|   230|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ2       |         0|     41|   230|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ2       |         1|      6|   230|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ3       |         0|     57|   230|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ3       |         1|      2|   230|
|0-24 months |MAL-ED         |PERU         |WealthQ4       |         0|     70|   266|
|0-24 months |MAL-ED         |PERU         |WealthQ4       |         1|      0|   266|
|0-24 months |MAL-ED         |PERU         |WealthQ1       |         0|     53|   266|
|0-24 months |MAL-ED         |PERU         |WealthQ1       |         1|      0|   266|
|0-24 months |MAL-ED         |PERU         |WealthQ2       |         0|     68|   266|
|0-24 months |MAL-ED         |PERU         |WealthQ2       |         1|      0|   266|
|0-24 months |MAL-ED         |PERU         |WealthQ3       |         0|     74|   266|
|0-24 months |MAL-ED         |PERU         |WealthQ3       |         1|      1|   266|
|0-24 months |MAL-ED         |NEPAL        |WealthQ4       |         0|     71|   233|
|0-24 months |MAL-ED         |NEPAL        |WealthQ4       |         1|      2|   233|
|0-24 months |MAL-ED         |NEPAL        |WealthQ1       |         0|     57|   233|
|0-24 months |MAL-ED         |NEPAL        |WealthQ1       |         1|      1|   233|
|0-24 months |MAL-ED         |NEPAL        |WealthQ2       |         0|     59|   233|
|0-24 months |MAL-ED         |NEPAL        |WealthQ2       |         1|      1|   233|
|0-24 months |MAL-ED         |NEPAL        |WealthQ3       |         0|     42|   233|
|0-24 months |MAL-ED         |NEPAL        |WealthQ3       |         1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ4       |         0|     42|   194|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ4       |         1|      2|   194|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ1       |         0|     59|   194|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ1       |         1|      0|   194|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ2       |         0|     47|   194|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ2       |         1|      0|   194|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ3       |         0|     44|   194|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ3       |         1|      0|   194|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ4       |         0|     57|   246|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ4       |         1|      0|   246|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ1       |         0|     69|   246|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ1       |         1|      0|   246|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ2       |         0|     59|   246|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ2       |         1|      0|   246|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ3       |         0|     61|   246|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ3       |         1|      0|   246|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |         0|     61|   243|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |         1|      0|   243|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |         0|     71|   243|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |         1|      1|   243|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |         0|     43|   243|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |         1|      1|   243|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |         0|     66|   243|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |         1|      0|   243|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ4       |         0|    139|   641|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ4       |         1|      6|   641|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ1       |         0|    152|   641|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ1       |         1|      3|   641|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ2       |         0|    168|   641|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ2       |         1|      2|   641|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ3       |         0|    167|   641|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ3       |         1|      4|   641|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |         0|    534|  2164|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |         1|     21|  2164|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |         0|    599|  2164|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |         1|     12|  2164|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |         0|    425|  2164|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |         1|     11|  2164|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |         0|    548|  2164|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |         1|     14|  2164|
|0-24 months |Vellore Crypto |INDIA        |WealthQ4       |         0|     86|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ4       |         1|      8|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ1       |         0|    113|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ1       |         1|     19|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ2       |         0|     99|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ2       |         1|     14|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ3       |         0|     64|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ3       |         1|      7|   410|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |         0|     88|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |         1|     20|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |         0|     81|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |         1|      7|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |         0|     67|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |         1|     11|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |         0|     72|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |         1|     12|   358|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |         0|    223|   852|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |         1|     12|   852|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |         0|    168|   852|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |         1|     15|   852|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |         0|    146|   852|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |         1|     10|   852|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |         0|    263|   852|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |         1|     15|   852|
|0-6 months  |CONTENT        |PERU         |WealthQ4       |         0|     47|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ4       |         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ1       |         0|     66|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ1       |         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ2       |         0|     50|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ2       |         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ3       |         0|     52|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ3       |         1|      0|   215|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |         0|    120|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |         1|     20|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |         0|    124|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |         1|     12|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |         0|    131|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |         1|     20|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |         0|    130|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |         1|     10|   567|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |         0|     13|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |         0|     10|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |         0|     10|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |         1|      1|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |         0|     15|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |         1|      1|    50|
|0-6 months  |MAL-ED         |INDIA        |WealthQ4       |         0|     45|   230|
|0-6 months  |MAL-ED         |INDIA        |WealthQ4       |         1|      2|   230|
|0-6 months  |MAL-ED         |INDIA        |WealthQ1       |         0|     63|   230|
|0-6 months  |MAL-ED         |INDIA        |WealthQ1       |         1|      3|   230|
|0-6 months  |MAL-ED         |INDIA        |WealthQ2       |         0|     59|   230|
|0-6 months  |MAL-ED         |INDIA        |WealthQ2       |         1|      6|   230|
|0-6 months  |MAL-ED         |INDIA        |WealthQ3       |         0|     46|   230|
|0-6 months  |MAL-ED         |INDIA        |WealthQ3       |         1|      6|   230|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |         0|     50|   230|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |         1|      2|   230|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |         0|     72|   230|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |         1|      0|   230|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |         0|     45|   230|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |         1|      2|   230|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |         0|     57|   230|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |         1|      2|   230|
|0-6 months  |MAL-ED         |PERU         |WealthQ4       |         0|     70|   266|
|0-6 months  |MAL-ED         |PERU         |WealthQ4       |         1|      0|   266|
|0-6 months  |MAL-ED         |PERU         |WealthQ1       |         0|     53|   266|
|0-6 months  |MAL-ED         |PERU         |WealthQ1       |         1|      0|   266|
|0-6 months  |MAL-ED         |PERU         |WealthQ2       |         0|     68|   266|
|0-6 months  |MAL-ED         |PERU         |WealthQ2       |         1|      0|   266|
|0-6 months  |MAL-ED         |PERU         |WealthQ3       |         0|     75|   266|
|0-6 months  |MAL-ED         |PERU         |WealthQ3       |         1|      0|   266|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ4       |         0|     70|   233|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ4       |         1|      3|   233|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ1       |         0|     57|   233|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ1       |         1|      1|   233|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ2       |         0|     58|   233|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ2       |         1|      2|   233|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ3       |         0|     41|   233|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ3       |         1|      1|   233|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ4       |         0|     43|   194|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ4       |         1|      1|   194|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ1       |         0|     59|   194|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ1       |         1|      0|   194|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ2       |         0|     47|   194|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ2       |         1|      0|   194|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ3       |         0|     44|   194|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ3       |         1|      0|   194|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ4       |         0|     57|   246|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ4       |         1|      0|   246|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ1       |         0|     69|   246|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ1       |         1|      0|   246|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ2       |         0|     59|   246|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ2       |         1|      0|   246|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ3       |         0|     61|   246|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ3       |         1|      0|   246|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |         0|     61|   242|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |         1|      0|   242|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |         0|     71|   242|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |         1|      1|   242|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |         0|     43|   242|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |         1|      1|   242|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |         0|     65|   242|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |         1|      0|   242|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |         0|    141|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |         1|      4|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |         0|    152|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |         1|      3|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |         0|    166|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |         1|      1|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |         0|    165|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |         1|      6|   638|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |         0|    515|  2059|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |         1|     21|  2059|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |         0|    574|  2059|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |         1|      8|  2059|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |         0|    404|  2059|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |         1|     10|  2059|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |         0|    514|  2059|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |         1|     13|  2059|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ4       |         0|     76|   402|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ4       |         1|     15|   402|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ1       |         0|    106|   402|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ1       |         1|     24|   402|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ2       |         0|     94|   402|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ2       |         1|     16|   402|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ3       |         0|     62|   402|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ3       |         1|      9|   402|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |         0|    103|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |         1|     10|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |         0|     84|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |         1|      6|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |         0|     79|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |         1|      1|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |         0|     84|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |         1|      6|   373|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ4       |         0|    372|  1023|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ4       |         1|     12|  1023|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ1       |         0|    222|  1023|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ1       |         1|      4|  1023|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ2       |         0|    179|  1023|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ2       |         1|     10|  1023|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ3       |         0|    215|  1023|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ3       |         1|      9|  1023|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ4       |         0|    779|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ4       |         1|     21|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ1       |         0|    551|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ1       |         1|     48|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ2       |         0|    482|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ2       |         1|     23|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ3       |         0|    853|  2809|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ3       |         1|     52|  2809|
|6-24 months |CONTENT        |PERU         |WealthQ4       |         0|     47|   215|
|6-24 months |CONTENT        |PERU         |WealthQ4       |         1|      0|   215|
|6-24 months |CONTENT        |PERU         |WealthQ1       |         0|     66|   215|
|6-24 months |CONTENT        |PERU         |WealthQ1       |         1|      0|   215|
|6-24 months |CONTENT        |PERU         |WealthQ2       |         0|     50|   215|
|6-24 months |CONTENT        |PERU         |WealthQ2       |         1|      0|   215|
|6-24 months |CONTENT        |PERU         |WealthQ3       |         0|     52|   215|
|6-24 months |CONTENT        |PERU         |WealthQ3       |         1|      0|   215|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ4       |         0|    128|   597|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ4       |         1|     22|   597|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ1       |         0|    121|   597|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ1       |         1|     23|   597|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ2       |         0|    137|   597|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ2       |         1|     19|   597|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ3       |         0|    131|   597|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ3       |         1|     16|   597|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |         0|   4296| 15795|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |         1|    230| 15795|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |         0|   3261| 15795|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |         1|    220| 15795|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |         0|   3569| 15795|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |         1|    222| 15795|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |         0|   3771| 15795|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |         1|    226| 15795|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |         0|   1241|  5277|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |         1|     87|  5277|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |         0|   1211|  5277|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |         1|    113|  5277|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |         0|   1160|  5277|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |         1|    118|  5277|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |         0|   1239|  5277|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |         1|    108|  5277|
|6-24 months |LCNI-5         |MALAWI       |WealthQ4       |         0|    168|   709|
|6-24 months |LCNI-5         |MALAWI       |WealthQ4       |         1|      4|   709|
|6-24 months |LCNI-5         |MALAWI       |WealthQ1       |         0|    177|   709|
|6-24 months |LCNI-5         |MALAWI       |WealthQ1       |         1|      1|   709|
|6-24 months |LCNI-5         |MALAWI       |WealthQ2       |         0|    176|   709|
|6-24 months |LCNI-5         |MALAWI       |WealthQ2       |         1|      0|   709|
|6-24 months |LCNI-5         |MALAWI       |WealthQ3       |         0|    182|   709|
|6-24 months |LCNI-5         |MALAWI       |WealthQ3       |         1|      1|   709|
|6-24 months |MAL-ED         |INDIA        |WealthQ4       |         0|     44|   231|
|6-24 months |MAL-ED         |INDIA        |WealthQ4       |         1|      3|   231|
|6-24 months |MAL-ED         |INDIA        |WealthQ1       |         0|     60|   231|
|6-24 months |MAL-ED         |INDIA        |WealthQ1       |         1|      7|   231|
|6-24 months |MAL-ED         |INDIA        |WealthQ2       |         0|     60|   231|
|6-24 months |MAL-ED         |INDIA        |WealthQ2       |         1|      5|   231|
|6-24 months |MAL-ED         |INDIA        |WealthQ3       |         0|     47|   231|
|6-24 months |MAL-ED         |INDIA        |WealthQ3       |         1|      5|   231|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ4       |         0|     51|   230|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ4       |         1|      1|   230|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ1       |         0|     69|   230|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ1       |         1|      3|   230|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ2       |         0|     41|   230|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ2       |         1|      6|   230|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ3       |         0|     57|   230|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ3       |         1|      2|   230|
|6-24 months |MAL-ED         |PERU         |WealthQ4       |         0|     70|   266|
|6-24 months |MAL-ED         |PERU         |WealthQ4       |         1|      0|   266|
|6-24 months |MAL-ED         |PERU         |WealthQ1       |         0|     53|   266|
|6-24 months |MAL-ED         |PERU         |WealthQ1       |         1|      0|   266|
|6-24 months |MAL-ED         |PERU         |WealthQ2       |         0|     68|   266|
|6-24 months |MAL-ED         |PERU         |WealthQ2       |         1|      0|   266|
|6-24 months |MAL-ED         |PERU         |WealthQ3       |         0|     74|   266|
|6-24 months |MAL-ED         |PERU         |WealthQ3       |         1|      1|   266|
|6-24 months |MAL-ED         |NEPAL        |WealthQ4       |         0|     71|   233|
|6-24 months |MAL-ED         |NEPAL        |WealthQ4       |         1|      2|   233|
|6-24 months |MAL-ED         |NEPAL        |WealthQ1       |         0|     57|   233|
|6-24 months |MAL-ED         |NEPAL        |WealthQ1       |         1|      1|   233|
|6-24 months |MAL-ED         |NEPAL        |WealthQ2       |         0|     59|   233|
|6-24 months |MAL-ED         |NEPAL        |WealthQ2       |         1|      1|   233|
|6-24 months |MAL-ED         |NEPAL        |WealthQ3       |         0|     42|   233|
|6-24 months |MAL-ED         |NEPAL        |WealthQ3       |         1|      0|   233|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ4       |         0|     42|   194|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ4       |         1|      2|   194|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ1       |         0|     59|   194|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ1       |         1|      0|   194|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ2       |         0|     47|   194|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ2       |         1|      0|   194|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ3       |         0|     44|   194|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ3       |         1|      0|   194|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ4       |         0|     57|   246|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ4       |         1|      0|   246|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ1       |         0|     69|   246|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ1       |         1|      0|   246|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ2       |         0|     59|   246|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ2       |         1|      0|   246|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ3       |         0|     61|   246|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ3       |         1|      0|   246|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |         0|     61|   243|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |         1|      0|   243|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |         0|     71|   243|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |         1|      1|   243|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |         0|     43|   243|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |         1|      1|   243|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |         0|     66|   243|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |         1|      0|   243|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ4       |         0|    139|   641|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ4       |         1|      6|   641|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ1       |         0|    152|   641|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ1       |         1|      3|   641|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ2       |         0|    168|   641|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ2       |         1|      2|   641|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ3       |         0|    167|   641|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ3       |         1|      4|   641|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |         0|    534|  2164|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |         1|     21|  2164|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |         0|    599|  2164|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |         1|     12|  2164|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |         0|    425|  2164|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |         1|     11|  2164|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |         0|    548|  2164|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |         1|     14|  2164|
|6-24 months |Vellore Crypto |INDIA        |WealthQ4       |         0|     86|   410|
|6-24 months |Vellore Crypto |INDIA        |WealthQ4       |         1|      8|   410|
|6-24 months |Vellore Crypto |INDIA        |WealthQ1       |         0|    113|   410|
|6-24 months |Vellore Crypto |INDIA        |WealthQ1       |         1|     19|   410|
|6-24 months |Vellore Crypto |INDIA        |WealthQ2       |         0|     99|   410|
|6-24 months |Vellore Crypto |INDIA        |WealthQ2       |         1|     14|   410|
|6-24 months |Vellore Crypto |INDIA        |WealthQ3       |         0|     64|   410|
|6-24 months |Vellore Crypto |INDIA        |WealthQ3       |         1|      7|   410|


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
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
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

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
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





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


