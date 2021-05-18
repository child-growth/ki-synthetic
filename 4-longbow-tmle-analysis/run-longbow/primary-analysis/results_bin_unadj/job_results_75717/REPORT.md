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

**Intervention Variable:** nrooms

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |nrooms | pers_wast| n_cell|     n|
|:-----------|:--------------|:------------|:------|---------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4+     |         0|     12|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |4+     |         1|      2|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1      |         0|    182|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1      |         1|     15|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2      |         0|     94|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |2      |         1|      4|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3      |         0|     62|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |3      |         1|      2|   373|
|0-24 months |COHORTS        |INDIA        |4+     |         0|     84|  4573|
|0-24 months |COHORTS        |INDIA        |4+     |         1|      8|  4573|
|0-24 months |COHORTS        |INDIA        |1      |         0|   2179|  4573|
|0-24 months |COHORTS        |INDIA        |1      |         1|    232|  4573|
|0-24 months |COHORTS        |INDIA        |2      |         0|   1751|  4573|
|0-24 months |COHORTS        |INDIA        |2      |         1|    184|  4573|
|0-24 months |COHORTS        |INDIA        |3      |         0|    125|  4573|
|0-24 months |COHORTS        |INDIA        |3      |         1|     10|  4573|
|0-24 months |CONTENT        |PERU         |4+     |         0|     66|   215|
|0-24 months |CONTENT        |PERU         |4+     |         1|      0|   215|
|0-24 months |CONTENT        |PERU         |1      |         0|     44|   215|
|0-24 months |CONTENT        |PERU         |1      |         1|      0|   215|
|0-24 months |CONTENT        |PERU         |2      |         0|     60|   215|
|0-24 months |CONTENT        |PERU         |2      |         1|      0|   215|
|0-24 months |CONTENT        |PERU         |3      |         0|     45|   215|
|0-24 months |CONTENT        |PERU         |3      |         1|      0|   215|
|0-24 months |GMS-Nepal      |NEPAL        |4+     |         0|    240|   597|
|0-24 months |GMS-Nepal      |NEPAL        |4+     |         1|     33|   597|
|0-24 months |GMS-Nepal      |NEPAL        |1      |         0|     37|   597|
|0-24 months |GMS-Nepal      |NEPAL        |1      |         1|      7|   597|
|0-24 months |GMS-Nepal      |NEPAL        |2      |         0|    106|   597|
|0-24 months |GMS-Nepal      |NEPAL        |2      |         1|     18|   597|
|0-24 months |GMS-Nepal      |NEPAL        |3      |         0|    134|   597|
|0-24 months |GMS-Nepal      |NEPAL        |3      |         1|     22|   597|
|0-24 months |JiVitA-3       |BANGLADESH   |4+     |         0|    645| 15796|
|0-24 months |JiVitA-3       |BANGLADESH   |4+     |         1|     34| 15796|
|0-24 months |JiVitA-3       |BANGLADESH   |1      |         0|   8615| 15796|
|0-24 months |JiVitA-3       |BANGLADESH   |1      |         1|    552| 15796|
|0-24 months |JiVitA-3       |BANGLADESH   |2      |         0|   4133| 15796|
|0-24 months |JiVitA-3       |BANGLADESH   |2      |         1|    235| 15796|
|0-24 months |JiVitA-3       |BANGLADESH   |3      |         0|   1505| 15796|
|0-24 months |JiVitA-3       |BANGLADESH   |3      |         1|     77| 15796|
|0-24 months |JiVitA-4       |BANGLADESH   |4+     |         0|    250|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |4+     |         1|     23|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |         0|   2873|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |         1|    257|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |2      |         0|   1202|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |2      |         1|    122|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |3      |         0|    527|  5278|
|0-24 months |JiVitA-4       |BANGLADESH   |3      |         1|     24|  5278|
|0-24 months |MAL-ED         |INDIA        |4+     |         0|     14|   235|
|0-24 months |MAL-ED         |INDIA        |4+     |         1|      0|   235|
|0-24 months |MAL-ED         |INDIA        |1      |         0|     63|   235|
|0-24 months |MAL-ED         |INDIA        |1      |         1|      8|   235|
|0-24 months |MAL-ED         |INDIA        |2      |         0|     86|   235|
|0-24 months |MAL-ED         |INDIA        |2      |         1|      6|   235|
|0-24 months |MAL-ED         |INDIA        |3      |         0|     51|   235|
|0-24 months |MAL-ED         |INDIA        |3      |         1|      7|   235|
|0-24 months |MAL-ED         |BANGLADESH   |4+     |         0|      8|   239|
|0-24 months |MAL-ED         |BANGLADESH   |4+     |         1|      0|   239|
|0-24 months |MAL-ED         |BANGLADESH   |1      |         0|    122|   239|
|0-24 months |MAL-ED         |BANGLADESH   |1      |         1|      7|   239|
|0-24 months |MAL-ED         |BANGLADESH   |2      |         0|     69|   239|
|0-24 months |MAL-ED         |BANGLADESH   |2      |         1|      3|   239|
|0-24 months |MAL-ED         |BANGLADESH   |3      |         0|     28|   239|
|0-24 months |MAL-ED         |BANGLADESH   |3      |         1|      2|   239|
|0-24 months |MAL-ED         |PERU         |4+     |         0|    110|   276|
|0-24 months |MAL-ED         |PERU         |4+     |         1|      1|   276|
|0-24 months |MAL-ED         |PERU         |1      |         0|     16|   276|
|0-24 months |MAL-ED         |PERU         |1      |         1|      0|   276|
|0-24 months |MAL-ED         |PERU         |2      |         0|     46|   276|
|0-24 months |MAL-ED         |PERU         |2      |         1|      0|   276|
|0-24 months |MAL-ED         |PERU         |3      |         0|    103|   276|
|0-24 months |MAL-ED         |PERU         |3      |         1|      0|   276|
|0-24 months |MAL-ED         |NEPAL        |4+     |         0|    136|   234|
|0-24 months |MAL-ED         |NEPAL        |4+     |         1|      3|   234|
|0-24 months |MAL-ED         |NEPAL        |1      |         0|      8|   234|
|0-24 months |MAL-ED         |NEPAL        |1      |         1|      0|   234|
|0-24 months |MAL-ED         |NEPAL        |2      |         0|     66|   234|
|0-24 months |MAL-ED         |NEPAL        |2      |         1|      1|   234|
|0-24 months |MAL-ED         |NEPAL        |3      |         0|     20|   234|
|0-24 months |MAL-ED         |NEPAL        |3      |         1|      0|   234|
|0-24 months |MAL-ED         |BRAZIL       |4+     |         0|     94|   198|
|0-24 months |MAL-ED         |BRAZIL       |4+     |         1|      0|   198|
|0-24 months |MAL-ED         |BRAZIL       |1      |         0|      3|   198|
|0-24 months |MAL-ED         |BRAZIL       |1      |         1|      0|   198|
|0-24 months |MAL-ED         |BRAZIL       |2      |         0|     19|   198|
|0-24 months |MAL-ED         |BRAZIL       |2      |         1|      0|   198|
|0-24 months |MAL-ED         |BRAZIL       |3      |         0|     80|   198|
|0-24 months |MAL-ED         |BRAZIL       |3      |         1|      2|   198|
|0-24 months |MAL-ED         |TANZANIA     |4+     |         0|    105|   250|
|0-24 months |MAL-ED         |TANZANIA     |4+     |         1|      0|   250|
|0-24 months |MAL-ED         |TANZANIA     |1      |         0|      9|   250|
|0-24 months |MAL-ED         |TANZANIA     |1      |         1|      0|   250|
|0-24 months |MAL-ED         |TANZANIA     |2      |         0|     43|   250|
|0-24 months |MAL-ED         |TANZANIA     |2      |         1|      0|   250|
|0-24 months |MAL-ED         |TANZANIA     |3      |         0|     93|   250|
|0-24 months |MAL-ED         |TANZANIA     |3      |         1|      0|   250|
|0-24 months |MAL-ED         |SOUTH AFRICA |4+     |         0|    182|   243|
|0-24 months |MAL-ED         |SOUTH AFRICA |4+     |         1|      2|   243|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |         0|      8|   243|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |         1|      0|   243|
|0-24 months |MAL-ED         |SOUTH AFRICA |2      |         0|     23|   243|
|0-24 months |MAL-ED         |SOUTH AFRICA |2      |         1|      0|   243|
|0-24 months |MAL-ED         |SOUTH AFRICA |3      |         0|     28|   243|
|0-24 months |MAL-ED         |SOUTH AFRICA |3      |         1|      0|   243|
|0-24 months |NIH-Crypto     |BANGLADESH   |4+     |         0|    107|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |4+     |         1|      3|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |1      |         0|    305|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |1      |         1|     14|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |2      |         0|    195|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |2      |         1|      7|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |3      |         0|     97|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |3      |         1|      2|   730|
|0-24 months |PROVIDE        |BANGLADESH   |4+     |         0|     26|   641|
|0-24 months |PROVIDE        |BANGLADESH   |4+     |         1|      0|   641|
|0-24 months |PROVIDE        |BANGLADESH   |1      |         0|    443|   641|
|0-24 months |PROVIDE        |BANGLADESH   |1      |         1|     11|   641|
|0-24 months |PROVIDE        |BANGLADESH   |2      |         0|     96|   641|
|0-24 months |PROVIDE        |BANGLADESH   |2      |         1|      3|   641|
|0-24 months |PROVIDE        |BANGLADESH   |3      |         0|     61|   641|
|0-24 months |PROVIDE        |BANGLADESH   |3      |         1|      1|   641|
|0-24 months |Vellore Crypto |INDIA        |4+     |         0|     11|   408|
|0-24 months |Vellore Crypto |INDIA        |4+     |         1|      1|   408|
|0-24 months |Vellore Crypto |INDIA        |1      |         0|    178|   408|
|0-24 months |Vellore Crypto |INDIA        |1      |         1|     26|   408|
|0-24 months |Vellore Crypto |INDIA        |2      |         0|    143|   408|
|0-24 months |Vellore Crypto |INDIA        |2      |         1|     16|   408|
|0-24 months |Vellore Crypto |INDIA        |3      |         0|     28|   408|
|0-24 months |Vellore Crypto |INDIA        |3      |         1|      5|   408|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4+     |         0|     11|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |4+     |         1|      2|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1      |         0|    158|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1      |         1|     33|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2      |         0|     84|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |2      |         1|      9|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3      |         0|     55|   358|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |3      |         1|      6|   358|
|0-6 months  |CONTENT        |PERU         |4+     |         0|     66|   215|
|0-6 months  |CONTENT        |PERU         |4+     |         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |1      |         0|     44|   215|
|0-6 months  |CONTENT        |PERU         |1      |         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |2      |         0|     60|   215|
|0-6 months  |CONTENT        |PERU         |2      |         1|      0|   215|
|0-6 months  |CONTENT        |PERU         |3      |         0|     45|   215|
|0-6 months  |CONTENT        |PERU         |3      |         1|      0|   215|
|0-6 months  |GMS-Nepal      |NEPAL        |4+     |         0|    229|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |4+     |         1|     33|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |1      |         0|     39|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |1      |         1|      3|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |2      |         0|    108|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |2      |         1|     12|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |3      |         0|    129|   567|
|0-6 months  |GMS-Nepal      |NEPAL        |3      |         1|     14|   567|
|0-6 months  |JiVitA-3       |BANGLADESH   |4+     |         0|      1|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |4+     |         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |1      |         0|     33|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |1      |         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |2      |         0|     10|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |2      |         1|      2|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |3      |         0|      4|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |3      |         1|      0|    50|
|0-6 months  |MAL-ED         |INDIA        |4+     |         0|     13|   234|
|0-6 months  |MAL-ED         |INDIA        |4+     |         1|      1|   234|
|0-6 months  |MAL-ED         |INDIA        |1      |         0|     64|   234|
|0-6 months  |MAL-ED         |INDIA        |1      |         1|      6|   234|
|0-6 months  |MAL-ED         |INDIA        |2      |         0|     84|   234|
|0-6 months  |MAL-ED         |INDIA        |2      |         1|      8|   234|
|0-6 months  |MAL-ED         |INDIA        |3      |         0|     55|   234|
|0-6 months  |MAL-ED         |INDIA        |3      |         1|      3|   234|
|0-6 months  |MAL-ED         |BANGLADESH   |4+     |         0|      8|   239|
|0-6 months  |MAL-ED         |BANGLADESH   |4+     |         1|      0|   239|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |         0|    126|   239|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |         1|      3|   239|
|0-6 months  |MAL-ED         |BANGLADESH   |2      |         0|     70|   239|
|0-6 months  |MAL-ED         |BANGLADESH   |2      |         1|      2|   239|
|0-6 months  |MAL-ED         |BANGLADESH   |3      |         0|     29|   239|
|0-6 months  |MAL-ED         |BANGLADESH   |3      |         1|      1|   239|
|0-6 months  |MAL-ED         |PERU         |4+     |         0|    111|   276|
|0-6 months  |MAL-ED         |PERU         |4+     |         1|      0|   276|
|0-6 months  |MAL-ED         |PERU         |1      |         0|     16|   276|
|0-6 months  |MAL-ED         |PERU         |1      |         1|      0|   276|
|0-6 months  |MAL-ED         |PERU         |2      |         0|     46|   276|
|0-6 months  |MAL-ED         |PERU         |2      |         1|      0|   276|
|0-6 months  |MAL-ED         |PERU         |3      |         0|    103|   276|
|0-6 months  |MAL-ED         |PERU         |3      |         1|      0|   276|
|0-6 months  |MAL-ED         |NEPAL        |4+     |         0|    134|   234|
|0-6 months  |MAL-ED         |NEPAL        |4+     |         1|      5|   234|
|0-6 months  |MAL-ED         |NEPAL        |1      |         0|      8|   234|
|0-6 months  |MAL-ED         |NEPAL        |1      |         1|      0|   234|
|0-6 months  |MAL-ED         |NEPAL        |2      |         0|     65|   234|
|0-6 months  |MAL-ED         |NEPAL        |2      |         1|      2|   234|
|0-6 months  |MAL-ED         |NEPAL        |3      |         0|     20|   234|
|0-6 months  |MAL-ED         |NEPAL        |3      |         1|      0|   234|
|0-6 months  |MAL-ED         |BRAZIL       |4+     |         0|     94|   198|
|0-6 months  |MAL-ED         |BRAZIL       |4+     |         1|      0|   198|
|0-6 months  |MAL-ED         |BRAZIL       |1      |         0|      3|   198|
|0-6 months  |MAL-ED         |BRAZIL       |1      |         1|      0|   198|
|0-6 months  |MAL-ED         |BRAZIL       |2      |         0|     19|   198|
|0-6 months  |MAL-ED         |BRAZIL       |2      |         1|      0|   198|
|0-6 months  |MAL-ED         |BRAZIL       |3      |         0|     81|   198|
|0-6 months  |MAL-ED         |BRAZIL       |3      |         1|      1|   198|
|0-6 months  |MAL-ED         |TANZANIA     |4+     |         0|    105|   250|
|0-6 months  |MAL-ED         |TANZANIA     |4+     |         1|      0|   250|
|0-6 months  |MAL-ED         |TANZANIA     |1      |         0|      9|   250|
|0-6 months  |MAL-ED         |TANZANIA     |1      |         1|      0|   250|
|0-6 months  |MAL-ED         |TANZANIA     |2      |         0|     43|   250|
|0-6 months  |MAL-ED         |TANZANIA     |2      |         1|      0|   250|
|0-6 months  |MAL-ED         |TANZANIA     |3      |         0|     93|   250|
|0-6 months  |MAL-ED         |TANZANIA     |3      |         1|      0|   250|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4+     |         0|    182|   242|
|0-6 months  |MAL-ED         |SOUTH AFRICA |4+     |         1|      1|   242|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |         0|      8|   242|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |         1|      0|   242|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2      |         0|     22|   242|
|0-6 months  |MAL-ED         |SOUTH AFRICA |2      |         1|      1|   242|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3      |         0|     28|   242|
|0-6 months  |MAL-ED         |SOUTH AFRICA |3      |         1|      0|   242|
|0-6 months  |NIH-Crypto     |BANGLADESH   |4+     |         0|     37|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |4+     |         1|      2|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1      |         0|    117|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1      |         1|      3|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |2      |         0|     62|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |2      |         1|      0|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |3      |         0|     29|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |3      |         1|      0|   250|
|0-6 months  |PROVIDE        |BANGLADESH   |4+     |         0|     26|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |4+     |         1|      0|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |1      |         0|    440|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |1      |         1|     11|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |2      |         0|     96|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |2      |         1|      3|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |3      |         0|     62|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |3      |         1|      0|   638|
|0-6 months  |Vellore Crypto |INDIA        |4+     |         0|     10|   400|
|0-6 months  |Vellore Crypto |INDIA        |4+     |         1|      2|   400|
|0-6 months  |Vellore Crypto |INDIA        |1      |         0|    169|   400|
|0-6 months  |Vellore Crypto |INDIA        |1      |         1|     31|   400|
|0-6 months  |Vellore Crypto |INDIA        |2      |         0|    128|   400|
|0-6 months  |Vellore Crypto |INDIA        |2      |         1|     28|   400|
|0-6 months  |Vellore Crypto |INDIA        |3      |         0|     29|   400|
|0-6 months  |Vellore Crypto |INDIA        |3      |         1|      3|   400|
|6-24 months |CMC-V-BCS-2002 |INDIA        |4+     |         0|     12|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |4+     |         1|      2|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1      |         0|    182|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1      |         1|     15|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |2      |         0|     94|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |2      |         1|      4|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |3      |         0|     62|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA        |3      |         1|      2|   373|
|6-24 months |COHORTS        |INDIA        |4+     |         0|     84|  4573|
|6-24 months |COHORTS        |INDIA        |4+     |         1|      8|  4573|
|6-24 months |COHORTS        |INDIA        |1      |         0|   2179|  4573|
|6-24 months |COHORTS        |INDIA        |1      |         1|    232|  4573|
|6-24 months |COHORTS        |INDIA        |2      |         0|   1751|  4573|
|6-24 months |COHORTS        |INDIA        |2      |         1|    184|  4573|
|6-24 months |COHORTS        |INDIA        |3      |         0|    125|  4573|
|6-24 months |COHORTS        |INDIA        |3      |         1|     10|  4573|
|6-24 months |CONTENT        |PERU         |4+     |         0|     66|   215|
|6-24 months |CONTENT        |PERU         |4+     |         1|      0|   215|
|6-24 months |CONTENT        |PERU         |1      |         0|     44|   215|
|6-24 months |CONTENT        |PERU         |1      |         1|      0|   215|
|6-24 months |CONTENT        |PERU         |2      |         0|     60|   215|
|6-24 months |CONTENT        |PERU         |2      |         1|      0|   215|
|6-24 months |CONTENT        |PERU         |3      |         0|     45|   215|
|6-24 months |CONTENT        |PERU         |3      |         1|      0|   215|
|6-24 months |GMS-Nepal      |NEPAL        |4+     |         0|    240|   597|
|6-24 months |GMS-Nepal      |NEPAL        |4+     |         1|     33|   597|
|6-24 months |GMS-Nepal      |NEPAL        |1      |         0|     37|   597|
|6-24 months |GMS-Nepal      |NEPAL        |1      |         1|      7|   597|
|6-24 months |GMS-Nepal      |NEPAL        |2      |         0|    106|   597|
|6-24 months |GMS-Nepal      |NEPAL        |2      |         1|     18|   597|
|6-24 months |GMS-Nepal      |NEPAL        |3      |         0|    134|   597|
|6-24 months |GMS-Nepal      |NEPAL        |3      |         1|     22|   597|
|6-24 months |JiVitA-3       |BANGLADESH   |4+     |         0|    645| 15796|
|6-24 months |JiVitA-3       |BANGLADESH   |4+     |         1|     34| 15796|
|6-24 months |JiVitA-3       |BANGLADESH   |1      |         0|   8615| 15796|
|6-24 months |JiVitA-3       |BANGLADESH   |1      |         1|    552| 15796|
|6-24 months |JiVitA-3       |BANGLADESH   |2      |         0|   4133| 15796|
|6-24 months |JiVitA-3       |BANGLADESH   |2      |         1|    235| 15796|
|6-24 months |JiVitA-3       |BANGLADESH   |3      |         0|   1505| 15796|
|6-24 months |JiVitA-3       |BANGLADESH   |3      |         1|     77| 15796|
|6-24 months |JiVitA-4       |BANGLADESH   |4+     |         0|    250|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |4+     |         1|     23|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |1      |         0|   2873|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |1      |         1|    257|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |2      |         0|   1202|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |2      |         1|    122|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |3      |         0|    527|  5278|
|6-24 months |JiVitA-4       |BANGLADESH   |3      |         1|     24|  5278|
|6-24 months |MAL-ED         |INDIA        |4+     |         0|     14|   235|
|6-24 months |MAL-ED         |INDIA        |4+     |         1|      0|   235|
|6-24 months |MAL-ED         |INDIA        |1      |         0|     63|   235|
|6-24 months |MAL-ED         |INDIA        |1      |         1|      8|   235|
|6-24 months |MAL-ED         |INDIA        |2      |         0|     86|   235|
|6-24 months |MAL-ED         |INDIA        |2      |         1|      6|   235|
|6-24 months |MAL-ED         |INDIA        |3      |         0|     51|   235|
|6-24 months |MAL-ED         |INDIA        |3      |         1|      7|   235|
|6-24 months |MAL-ED         |BANGLADESH   |4+     |         0|      8|   239|
|6-24 months |MAL-ED         |BANGLADESH   |4+     |         1|      0|   239|
|6-24 months |MAL-ED         |BANGLADESH   |1      |         0|    122|   239|
|6-24 months |MAL-ED         |BANGLADESH   |1      |         1|      7|   239|
|6-24 months |MAL-ED         |BANGLADESH   |2      |         0|     69|   239|
|6-24 months |MAL-ED         |BANGLADESH   |2      |         1|      3|   239|
|6-24 months |MAL-ED         |BANGLADESH   |3      |         0|     28|   239|
|6-24 months |MAL-ED         |BANGLADESH   |3      |         1|      2|   239|
|6-24 months |MAL-ED         |PERU         |4+     |         0|    110|   276|
|6-24 months |MAL-ED         |PERU         |4+     |         1|      1|   276|
|6-24 months |MAL-ED         |PERU         |1      |         0|     16|   276|
|6-24 months |MAL-ED         |PERU         |1      |         1|      0|   276|
|6-24 months |MAL-ED         |PERU         |2      |         0|     46|   276|
|6-24 months |MAL-ED         |PERU         |2      |         1|      0|   276|
|6-24 months |MAL-ED         |PERU         |3      |         0|    103|   276|
|6-24 months |MAL-ED         |PERU         |3      |         1|      0|   276|
|6-24 months |MAL-ED         |NEPAL        |4+     |         0|    136|   234|
|6-24 months |MAL-ED         |NEPAL        |4+     |         1|      3|   234|
|6-24 months |MAL-ED         |NEPAL        |1      |         0|      8|   234|
|6-24 months |MAL-ED         |NEPAL        |1      |         1|      0|   234|
|6-24 months |MAL-ED         |NEPAL        |2      |         0|     66|   234|
|6-24 months |MAL-ED         |NEPAL        |2      |         1|      1|   234|
|6-24 months |MAL-ED         |NEPAL        |3      |         0|     20|   234|
|6-24 months |MAL-ED         |NEPAL        |3      |         1|      0|   234|
|6-24 months |MAL-ED         |BRAZIL       |4+     |         0|     94|   198|
|6-24 months |MAL-ED         |BRAZIL       |4+     |         1|      0|   198|
|6-24 months |MAL-ED         |BRAZIL       |1      |         0|      3|   198|
|6-24 months |MAL-ED         |BRAZIL       |1      |         1|      0|   198|
|6-24 months |MAL-ED         |BRAZIL       |2      |         0|     19|   198|
|6-24 months |MAL-ED         |BRAZIL       |2      |         1|      0|   198|
|6-24 months |MAL-ED         |BRAZIL       |3      |         0|     80|   198|
|6-24 months |MAL-ED         |BRAZIL       |3      |         1|      2|   198|
|6-24 months |MAL-ED         |TANZANIA     |4+     |         0|    105|   250|
|6-24 months |MAL-ED         |TANZANIA     |4+     |         1|      0|   250|
|6-24 months |MAL-ED         |TANZANIA     |1      |         0|      9|   250|
|6-24 months |MAL-ED         |TANZANIA     |1      |         1|      0|   250|
|6-24 months |MAL-ED         |TANZANIA     |2      |         0|     43|   250|
|6-24 months |MAL-ED         |TANZANIA     |2      |         1|      0|   250|
|6-24 months |MAL-ED         |TANZANIA     |3      |         0|     93|   250|
|6-24 months |MAL-ED         |TANZANIA     |3      |         1|      0|   250|
|6-24 months |MAL-ED         |SOUTH AFRICA |4+     |         0|    182|   243|
|6-24 months |MAL-ED         |SOUTH AFRICA |4+     |         1|      2|   243|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |         0|      8|   243|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |         1|      0|   243|
|6-24 months |MAL-ED         |SOUTH AFRICA |2      |         0|     23|   243|
|6-24 months |MAL-ED         |SOUTH AFRICA |2      |         1|      0|   243|
|6-24 months |MAL-ED         |SOUTH AFRICA |3      |         0|     28|   243|
|6-24 months |MAL-ED         |SOUTH AFRICA |3      |         1|      0|   243|
|6-24 months |NIH-Crypto     |BANGLADESH   |4+     |         0|    107|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |4+     |         1|      3|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |1      |         0|    305|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |1      |         1|     14|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |2      |         0|    195|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |2      |         1|      7|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |3      |         0|     97|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |3      |         1|      2|   730|
|6-24 months |PROVIDE        |BANGLADESH   |4+     |         0|     26|   641|
|6-24 months |PROVIDE        |BANGLADESH   |4+     |         1|      0|   641|
|6-24 months |PROVIDE        |BANGLADESH   |1      |         0|    443|   641|
|6-24 months |PROVIDE        |BANGLADESH   |1      |         1|     11|   641|
|6-24 months |PROVIDE        |BANGLADESH   |2      |         0|     96|   641|
|6-24 months |PROVIDE        |BANGLADESH   |2      |         1|      3|   641|
|6-24 months |PROVIDE        |BANGLADESH   |3      |         0|     61|   641|
|6-24 months |PROVIDE        |BANGLADESH   |3      |         1|      1|   641|
|6-24 months |Vellore Crypto |INDIA        |4+     |         0|     11|   408|
|6-24 months |Vellore Crypto |INDIA        |4+     |         1|      1|   408|
|6-24 months |Vellore Crypto |INDIA        |1      |         0|    178|   408|
|6-24 months |Vellore Crypto |INDIA        |1      |         1|     26|   408|
|6-24 months |Vellore Crypto |INDIA        |2      |         0|    143|   408|
|6-24 months |Vellore Crypto |INDIA        |2      |         1|     16|   408|
|6-24 months |Vellore Crypto |INDIA        |3      |         0|     28|   408|
|6-24 months |Vellore Crypto |INDIA        |3      |         1|      5|   408|


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
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
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


