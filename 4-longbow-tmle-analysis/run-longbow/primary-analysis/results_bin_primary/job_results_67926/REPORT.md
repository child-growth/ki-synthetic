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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_sex
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |nrooms | ever_stunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:------|------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |4+     |            0|      2|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |4+     |            1|     12|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1      |            0|     11|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1      |            1|    191|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |2      |            0|      8|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |2      |            1|     98|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |3      |            0|      7|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |3      |            1|     44|   373|
|0-24 months |COHORTS        |INDIA                        |4+     |            0|     87|  5374|
|0-24 months |COHORTS        |INDIA                        |4+     |            1|     19|  5374|
|0-24 months |COHORTS        |INDIA                        |1      |            0|   1943|  5374|
|0-24 months |COHORTS        |INDIA                        |1      |            1|   1576|  5374|
|0-24 months |COHORTS        |INDIA                        |2      |            0|   1116|  5374|
|0-24 months |COHORTS        |INDIA                        |2      |            1|    438|  5374|
|0-24 months |COHORTS        |INDIA                        |3      |            0|    143|  5374|
|0-24 months |COHORTS        |INDIA                        |3      |            1|     52|  5374|
|0-24 months |CONTENT        |PERU                         |4+     |            0|     62|   215|
|0-24 months |CONTENT        |PERU                         |4+     |            1|     16|   215|
|0-24 months |CONTENT        |PERU                         |1      |            0|     32|   215|
|0-24 months |CONTENT        |PERU                         |1      |            1|     12|   215|
|0-24 months |CONTENT        |PERU                         |2      |            0|     39|   215|
|0-24 months |CONTENT        |PERU                         |2      |            1|     15|   215|
|0-24 months |CONTENT        |PERU                         |3      |            0|     29|   215|
|0-24 months |CONTENT        |PERU                         |3      |            1|     10|   215|
|0-24 months |GMS-Nepal      |NEPAL                        |4+     |            0|    113|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |4+     |            1|    210|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |            0|     20|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |            1|     29|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |2      |            0|     49|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |2      |            1|     96|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |3      |            0|     70|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |3      |            1|    111|   698|
|0-24 months |IRC            |INDIA                        |4+     |            0|      4|   408|
|0-24 months |IRC            |INDIA                        |4+     |            1|     13|   408|
|0-24 months |IRC            |INDIA                        |1      |            0|     65|   408|
|0-24 months |IRC            |INDIA                        |1      |            1|    120|   408|
|0-24 months |IRC            |INDIA                        |2      |            0|     66|   408|
|0-24 months |IRC            |INDIA                        |2      |            1|    104|   408|
|0-24 months |IRC            |INDIA                        |3      |            0|     10|   408|
|0-24 months |IRC            |INDIA                        |3      |            1|     26|   408|
|0-24 months |JiVitA-3       |BANGLADESH                   |4+     |            0|    769| 27197|
|0-24 months |JiVitA-3       |BANGLADESH                   |4+     |            1|    370| 27197|
|0-24 months |JiVitA-3       |BANGLADESH                   |1      |            0|   7848| 27197|
|0-24 months |JiVitA-3       |BANGLADESH                   |1      |            1|   8275| 27197|
|0-24 months |JiVitA-3       |BANGLADESH                   |2      |            0|   3624| 27197|
|0-24 months |JiVitA-3       |BANGLADESH                   |2      |            1|   3696| 27197|
|0-24 months |JiVitA-3       |BANGLADESH                   |3      |            0|   1481| 27197|
|0-24 months |JiVitA-3       |BANGLADESH                   |3      |            1|   1134| 27197|
|0-24 months |JiVitA-4       |BANGLADESH                   |4+     |            0|    143|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |4+     |            1|    143|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |1      |            0|   1253|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |1      |            1|   1938|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |2      |            0|    610|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |2      |            1|    777|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |3      |            0|    263|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |3      |            1|    299|  5426|
|0-24 months |MAL-ED         |BANGLADESH                   |4+     |            0|      8|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |4+     |            1|      4|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |1      |            0|     56|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |1      |            1|     96|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |2      |            0|     18|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |2      |            1|     32|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |3      |            0|     11|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |3      |            1|     17|   242|
|0-24 months |MAL-ED         |BRAZIL                       |4+     |            0|     97|   210|
|0-24 months |MAL-ED         |BRAZIL                       |4+     |            1|     30|   210|
|0-24 months |MAL-ED         |BRAZIL                       |1      |            0|      4|   210|
|0-24 months |MAL-ED         |BRAZIL                       |1      |            1|      0|   210|
|0-24 months |MAL-ED         |BRAZIL                       |2      |            0|     16|   210|
|0-24 months |MAL-ED         |BRAZIL                       |2      |            1|      4|   210|
|0-24 months |MAL-ED         |BRAZIL                       |3      |            0|     37|   210|
|0-24 months |MAL-ED         |BRAZIL                       |3      |            1|     22|   210|
|0-24 months |MAL-ED         |INDIA                        |4+     |            0|      9|   235|
|0-24 months |MAL-ED         |INDIA                        |4+     |            1|     16|   235|
|0-24 months |MAL-ED         |INDIA                        |1      |            0|     38|   235|
|0-24 months |MAL-ED         |INDIA                        |1      |            1|     46|   235|
|0-24 months |MAL-ED         |INDIA                        |2      |            0|     21|   235|
|0-24 months |MAL-ED         |INDIA                        |2      |            1|     57|   235|
|0-24 months |MAL-ED         |INDIA                        |3      |            0|     21|   235|
|0-24 months |MAL-ED         |INDIA                        |3      |            1|     27|   235|
|0-24 months |MAL-ED         |NEPAL                        |4+     |            0|     87|   236|
|0-24 months |MAL-ED         |NEPAL                        |4+     |            1|     44|   236|
|0-24 months |MAL-ED         |NEPAL                        |1      |            0|     33|   236|
|0-24 months |MAL-ED         |NEPAL                        |1      |            1|     19|   236|
|0-24 months |MAL-ED         |NEPAL                        |2      |            0|     22|   236|
|0-24 months |MAL-ED         |NEPAL                        |2      |            1|      9|   236|
|0-24 months |MAL-ED         |NEPAL                        |3      |            0|     12|   236|
|0-24 months |MAL-ED         |NEPAL                        |3      |            1|     10|   236|
|0-24 months |MAL-ED         |PERU                         |4+     |            0|     47|   272|
|0-24 months |MAL-ED         |PERU                         |4+     |            1|     92|   272|
|0-24 months |MAL-ED         |PERU                         |1      |            0|      4|   272|
|0-24 months |MAL-ED         |PERU                         |1      |            1|     15|   272|
|0-24 months |MAL-ED         |PERU                         |2      |            0|     15|   272|
|0-24 months |MAL-ED         |PERU                         |2      |            1|     37|   272|
|0-24 months |MAL-ED         |PERU                         |3      |            0|     25|   272|
|0-24 months |MAL-ED         |PERU                         |3      |            1|     37|   272|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |4+     |            0|     78|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |4+     |            1|    118|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1      |            0|      5|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1      |            1|      9|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |2      |            0|      8|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |2      |            1|     14|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |3      |            0|      7|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |3      |            1|     18|   257|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+     |            0|     12|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+     |            1|     96|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |            0|      5|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |            1|      8|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2      |            0|      8|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2      |            1|     55|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3      |            0|      9|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3      |            1|     57|   250|
|0-24 months |NIH-Crypto     |BANGLADESH                   |4+     |            0|     56|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |4+     |            1|     39|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1      |            0|    174|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1      |            1|    194|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2      |            0|     98|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2      |            1|     93|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |3      |            0|     68|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |3      |            1|     36|   758|
|0-24 months |PROVIDE        |BANGLADESH                   |4+     |            0|     16|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |4+     |            1|      7|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |            0|    278|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |            1|    229|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2      |            0|     65|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2      |            1|     43|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |3      |            0|     36|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |3      |            1|     26|   700|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |4+     |            0|      7|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |4+     |            1|      7|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |1      |            0|     93|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |1      |            1|    106|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |2      |            0|     51|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |2      |            1|     53|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |3      |            0|     29|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |3      |            1|     22|   368|
|0-6 months  |COHORTS        |INDIA                        |4+     |            0|     91|  5193|
|0-6 months  |COHORTS        |INDIA                        |4+     |            1|     10|  5193|
|0-6 months  |COHORTS        |INDIA                        |1      |            0|   2654|  5193|
|0-6 months  |COHORTS        |INDIA                        |1      |            1|    749|  5193|
|0-6 months  |COHORTS        |INDIA                        |2      |            0|   1294|  5193|
|0-6 months  |COHORTS        |INDIA                        |2      |            1|    207|  5193|
|0-6 months  |COHORTS        |INDIA                        |3      |            0|    164|  5193|
|0-6 months  |COHORTS        |INDIA                        |3      |            1|     24|  5193|
|0-6 months  |CONTENT        |PERU                         |4+     |            0|     68|   215|
|0-6 months  |CONTENT        |PERU                         |4+     |            1|     10|   215|
|0-6 months  |CONTENT        |PERU                         |1      |            0|     40|   215|
|0-6 months  |CONTENT        |PERU                         |1      |            1|      4|   215|
|0-6 months  |CONTENT        |PERU                         |2      |            0|     47|   215|
|0-6 months  |CONTENT        |PERU                         |2      |            1|      7|   215|
|0-6 months  |CONTENT        |PERU                         |3      |            0|     33|   215|
|0-6 months  |CONTENT        |PERU                         |3      |            1|      6|   215|
|0-6 months  |GMS-Nepal      |NEPAL                        |4+     |            0|    227|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |4+     |            1|     96|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |1      |            0|     34|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |1      |            1|     15|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |2      |            0|     97|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |2      |            1|     48|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |3      |            0|    118|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |3      |            1|     63|   698|
|0-6 months  |IRC            |INDIA                        |4+     |            0|      6|   408|
|0-6 months  |IRC            |INDIA                        |4+     |            1|     11|   408|
|0-6 months  |IRC            |INDIA                        |1      |            0|    108|   408|
|0-6 months  |IRC            |INDIA                        |1      |            1|     77|   408|
|0-6 months  |IRC            |INDIA                        |2      |            0|     97|   408|
|0-6 months  |IRC            |INDIA                        |2      |            1|     73|   408|
|0-6 months  |IRC            |INDIA                        |3      |            0|     23|   408|
|0-6 months  |IRC            |INDIA                        |3      |            1|     13|   408|
|0-6 months  |JiVitA-3       |BANGLADESH                   |4+     |            0|    826| 27131|
|0-6 months  |JiVitA-3       |BANGLADESH                   |4+     |            1|    307| 27131|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1      |            0|   9222| 27131|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1      |            1|   6872| 27131|
|0-6 months  |JiVitA-3       |BANGLADESH                   |2      |            0|   4198| 27131|
|0-6 months  |JiVitA-3       |BANGLADESH                   |2      |            1|   3102| 27131|
|0-6 months  |JiVitA-3       |BANGLADESH                   |3      |            0|   1677| 27131|
|0-6 months  |JiVitA-3       |BANGLADESH                   |3      |            1|    927| 27131|
|0-6 months  |JiVitA-4       |BANGLADESH                   |4+     |            0|    189|  5117|
|0-6 months  |JiVitA-4       |BANGLADESH                   |4+     |            1|     79|  5117|
|0-6 months  |JiVitA-4       |BANGLADESH                   |1      |            0|   1901|  5117|
|0-6 months  |JiVitA-4       |BANGLADESH                   |1      |            1|   1117|  5117|
|0-6 months  |JiVitA-4       |BANGLADESH                   |2      |            0|    878|  5117|
|0-6 months  |JiVitA-4       |BANGLADESH                   |2      |            1|    422|  5117|
|0-6 months  |JiVitA-4       |BANGLADESH                   |3      |            0|    371|  5117|
|0-6 months  |JiVitA-4       |BANGLADESH                   |3      |            1|    160|  5117|
|0-6 months  |MAL-ED         |BANGLADESH                   |4+     |            0|     10|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |4+     |            1|      2|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |1      |            0|     95|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |1      |            1|     57|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |2      |            0|     33|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |2      |            1|     17|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |3      |            0|     22|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |3      |            1|      6|   242|
|0-6 months  |MAL-ED         |BRAZIL                       |4+     |            0|    103|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |4+     |            1|     24|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |1      |            0|      4|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |1      |            1|      0|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |2      |            0|     16|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |2      |            1|      4|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |3      |            0|     42|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |3      |            1|     17|   210|
|0-6 months  |MAL-ED         |INDIA                        |4+     |            0|     18|   235|
|0-6 months  |MAL-ED         |INDIA                        |4+     |            1|      7|   235|
|0-6 months  |MAL-ED         |INDIA                        |1      |            0|     58|   235|
|0-6 months  |MAL-ED         |INDIA                        |1      |            1|     26|   235|
|0-6 months  |MAL-ED         |INDIA                        |2      |            0|     45|   235|
|0-6 months  |MAL-ED         |INDIA                        |2      |            1|     33|   235|
|0-6 months  |MAL-ED         |INDIA                        |3      |            0|     33|   235|
|0-6 months  |MAL-ED         |INDIA                        |3      |            1|     15|   235|
|0-6 months  |MAL-ED         |NEPAL                        |4+     |            0|    108|   236|
|0-6 months  |MAL-ED         |NEPAL                        |4+     |            1|     23|   236|
|0-6 months  |MAL-ED         |NEPAL                        |1      |            0|     43|   236|
|0-6 months  |MAL-ED         |NEPAL                        |1      |            1|      9|   236|
|0-6 months  |MAL-ED         |NEPAL                        |2      |            0|     28|   236|
|0-6 months  |MAL-ED         |NEPAL                        |2      |            1|      3|   236|
|0-6 months  |MAL-ED         |NEPAL                        |3      |            0|     16|   236|
|0-6 months  |MAL-ED         |NEPAL                        |3      |            1|      6|   236|
|0-6 months  |MAL-ED         |PERU                         |4+     |            0|     79|   272|
|0-6 months  |MAL-ED         |PERU                         |4+     |            1|     60|   272|
|0-6 months  |MAL-ED         |PERU                         |1      |            0|      7|   272|
|0-6 months  |MAL-ED         |PERU                         |1      |            1|     12|   272|
|0-6 months  |MAL-ED         |PERU                         |2      |            0|     27|   272|
|0-6 months  |MAL-ED         |PERU                         |2      |            1|     25|   272|
|0-6 months  |MAL-ED         |PERU                         |3      |            0|     37|   272|
|0-6 months  |MAL-ED         |PERU                         |3      |            1|     25|   272|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |4+     |            0|    119|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |4+     |            1|     77|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |1      |            0|      9|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |1      |            1|      5|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |2      |            0|     14|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |2      |            1|      8|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |3      |            0|     14|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |3      |            1|     11|   257|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+     |            0|     64|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+     |            1|     44|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |            0|      8|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |            1|      5|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2      |            0|     31|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2      |            1|     32|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3      |            0|     44|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3      |            1|     22|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |4+     |            0|     68|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |4+     |            1|     27|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |1      |            0|    254|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |1      |            1|    114|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |2      |            0|    128|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |2      |            1|     63|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |3      |            0|     79|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |3      |            1|     25|   758|
|0-6 months  |PROVIDE        |BANGLADESH                   |4+     |            0|     19|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |4+     |            1|      4|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |1      |            0|    381|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |1      |            1|    126|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |2      |            0|     85|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |2      |            1|     23|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |3      |            0|     47|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |3      |            1|     15|   700|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |4+     |            0|      2|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |4+     |            1|      5|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |1      |            0|     11|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |1      |            1|     85|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |2      |            0|      8|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |2      |            1|     45|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |3      |            0|      7|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |3      |            1|     22|   185|
|6-24 months |COHORTS        |INDIA                        |4+     |            0|     77|  4108|
|6-24 months |COHORTS        |INDIA                        |4+     |            1|      9|  4108|
|6-24 months |COHORTS        |INDIA                        |1      |            0|   1740|  4108|
|6-24 months |COHORTS        |INDIA                        |1      |            1|    827|  4108|
|6-24 months |COHORTS        |INDIA                        |2      |            0|   1059|  4108|
|6-24 months |COHORTS        |INDIA                        |2      |            1|    231|  4108|
|6-24 months |COHORTS        |INDIA                        |3      |            0|    137|  4108|
|6-24 months |COHORTS        |INDIA                        |3      |            1|     28|  4108|
|6-24 months |CONTENT        |PERU                         |4+     |            0|     62|   188|
|6-24 months |CONTENT        |PERU                         |4+     |            1|      6|   188|
|6-24 months |CONTENT        |PERU                         |1      |            0|     32|   188|
|6-24 months |CONTENT        |PERU                         |1      |            1|      8|   188|
|6-24 months |CONTENT        |PERU                         |2      |            0|     39|   188|
|6-24 months |CONTENT        |PERU                         |2      |            1|      8|   188|
|6-24 months |CONTENT        |PERU                         |3      |            0|     29|   188|
|6-24 months |CONTENT        |PERU                         |3      |            1|      4|   188|
|6-24 months |GMS-Nepal      |NEPAL                        |4+     |            0|     82|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |4+     |            1|    114|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |1      |            0|     11|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |1      |            1|     14|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |2      |            0|     36|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |2      |            1|     48|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |3      |            0|     44|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |3      |            1|     48|   397|
|6-24 months |IRC            |INDIA                        |4+     |            0|      4|   234|
|6-24 months |IRC            |INDIA                        |4+     |            1|      2|   234|
|6-24 months |IRC            |INDIA                        |1      |            0|     65|   234|
|6-24 months |IRC            |INDIA                        |1      |            1|     43|   234|
|6-24 months |IRC            |INDIA                        |2      |            0|     66|   234|
|6-24 months |IRC            |INDIA                        |2      |            1|     31|   234|
|6-24 months |IRC            |INDIA                        |3      |            0|     10|   234|
|6-24 months |IRC            |INDIA                        |3      |            1|     13|   234|
|6-24 months |JiVitA-3       |BANGLADESH                   |4+     |            0|    503| 10486|
|6-24 months |JiVitA-3       |BANGLADESH                   |4+     |            1|     63| 10486|
|6-24 months |JiVitA-3       |BANGLADESH                   |1      |            0|   4479| 10486|
|6-24 months |JiVitA-3       |BANGLADESH                   |1      |            1|   1403| 10486|
|6-24 months |JiVitA-3       |BANGLADESH                   |2      |            0|   2301| 10486|
|6-24 months |JiVitA-3       |BANGLADESH                   |2      |            1|    594| 10486|
|6-24 months |JiVitA-3       |BANGLADESH                   |3      |            0|    936| 10486|
|6-24 months |JiVitA-3       |BANGLADESH                   |3      |            1|    207| 10486|
|6-24 months |JiVitA-4       |BANGLADESH                   |4+     |            0|    142|  3644|
|6-24 months |JiVitA-4       |BANGLADESH                   |4+     |            1|     64|  3644|
|6-24 months |JiVitA-4       |BANGLADESH                   |1      |            0|   1252|  3644|
|6-24 months |JiVitA-4       |BANGLADESH                   |1      |            1|    821|  3644|
|6-24 months |JiVitA-4       |BANGLADESH                   |2      |            0|    609|  3644|
|6-24 months |JiVitA-4       |BANGLADESH                   |2      |            1|    355|  3644|
|6-24 months |JiVitA-4       |BANGLADESH                   |3      |            0|    262|  3644|
|6-24 months |JiVitA-4       |BANGLADESH                   |3      |            1|    139|  3644|
|6-24 months |MAL-ED         |BANGLADESH                   |4+     |            0|      8|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |4+     |            1|      2|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |1      |            0|     55|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |1      |            1|     39|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |2      |            0|     17|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |2      |            1|     15|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |3      |            0|     11|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |3      |            1|     11|   158|
|6-24 months |MAL-ED         |BRAZIL                       |4+     |            0|     96|   163|
|6-24 months |MAL-ED         |BRAZIL                       |4+     |            1|      6|   163|
|6-24 months |MAL-ED         |BRAZIL                       |1      |            0|      4|   163|
|6-24 months |MAL-ED         |BRAZIL                       |1      |            1|      0|   163|
|6-24 months |MAL-ED         |BRAZIL                       |2      |            0|     15|   163|
|6-24 months |MAL-ED         |BRAZIL                       |2      |            1|      0|   163|
|6-24 months |MAL-ED         |BRAZIL                       |3      |            0|     37|   163|
|6-24 months |MAL-ED         |BRAZIL                       |3      |            1|      5|   163|
|6-24 months |MAL-ED         |INDIA                        |4+     |            0|      9|   154|
|6-24 months |MAL-ED         |INDIA                        |4+     |            1|      9|   154|
|6-24 months |MAL-ED         |INDIA                        |1      |            0|     38|   154|
|6-24 months |MAL-ED         |INDIA                        |1      |            1|     20|   154|
|6-24 months |MAL-ED         |INDIA                        |2      |            0|     21|   154|
|6-24 months |MAL-ED         |INDIA                        |2      |            1|     24|   154|
|6-24 months |MAL-ED         |INDIA                        |3      |            0|     21|   154|
|6-24 months |MAL-ED         |INDIA                        |3      |            1|     12|   154|
|6-24 months |MAL-ED         |NEPAL                        |4+     |            0|     87|   194|
|6-24 months |MAL-ED         |NEPAL                        |4+     |            1|     21|   194|
|6-24 months |MAL-ED         |NEPAL                        |1      |            0|     32|   194|
|6-24 months |MAL-ED         |NEPAL                        |1      |            1|     10|   194|
|6-24 months |MAL-ED         |NEPAL                        |2      |            0|     22|   194|
|6-24 months |MAL-ED         |NEPAL                        |2      |            1|      6|   194|
|6-24 months |MAL-ED         |NEPAL                        |3      |            0|     12|   194|
|6-24 months |MAL-ED         |NEPAL                        |3      |            1|      4|   194|
|6-24 months |MAL-ED         |PERU                         |4+     |            0|     47|   149|
|6-24 months |MAL-ED         |PERU                         |4+     |            1|     32|   149|
|6-24 months |MAL-ED         |PERU                         |1      |            0|      4|   149|
|6-24 months |MAL-ED         |PERU                         |1      |            1|      3|   149|
|6-24 months |MAL-ED         |PERU                         |2      |            0|     14|   149|
|6-24 months |MAL-ED         |PERU                         |2      |            1|     12|   149|
|6-24 months |MAL-ED         |PERU                         |3      |            0|     25|   149|
|6-24 months |MAL-ED         |PERU                         |3      |            1|     12|   149|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |4+     |            0|     78|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |4+     |            1|     41|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |1      |            0|      5|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |1      |            1|      4|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |2      |            0|      8|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |2      |            1|      6|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |3      |            0|      6|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |3      |            1|      7|   155|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+     |            0|     12|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+     |            1|     52|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |            0|      4|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |            1|      3|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2      |            0|      7|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2      |            1|     23|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3      |            0|      8|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3      |            1|     35|   144|
|6-24 months |NIH-Crypto     |BANGLADESH                   |4+     |            0|     52|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |4+     |            1|     12|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |1      |            0|    157|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |1      |            1|     80|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |2      |            0|     96|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |2      |            1|     30|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |3      |            0|     68|   506|
|6-24 months |NIH-Crypto     |BANGLADESH                   |3      |            1|     11|   506|
|6-24 months |PROVIDE        |BANGLADESH                   |4+     |            0|     15|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |4+     |            1|      3|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |1      |            0|    217|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |1      |            1|    103|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |2      |            0|     55|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |2      |            1|     20|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |3      |            0|     32|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |3      |            1|     11|   456|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/3d209918-d193-4fd8-b2d8-e765e9088e2e/e559f39c-04ca-4b61-b7f8-4441c01c325e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3d209918-d193-4fd8-b2d8-e765e9088e2e/e559f39c-04ca-4b61-b7f8-4441c01c325e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3d209918-d193-4fd8-b2d8-e765e9088e2e/e559f39c-04ca-4b61-b7f8-4441c01c325e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3d209918-d193-4fd8-b2d8-e765e9088e2e/e559f39c-04ca-4b61-b7f8-4441c01c325e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |INDIA                        |4+                 |NA             | 0.2477637| 0.1952020| 0.3003255|
|0-24 months |COHORTS        |INDIA                        |1                  |NA             | 0.4230905| 0.4062688| 0.4399122|
|0-24 months |COHORTS        |INDIA                        |2                  |NA             | 0.3269595| 0.2997277| 0.3541913|
|0-24 months |COHORTS        |INDIA                        |3                  |NA             | 0.3431939| 0.2827563| 0.4036315|
|0-24 months |CONTENT        |PERU                         |4+                 |NA             | 0.2024530| 0.1125463| 0.2923598|
|0-24 months |CONTENT        |PERU                         |1                  |NA             | 0.2712086| 0.1362303| 0.4061869|
|0-24 months |CONTENT        |PERU                         |2                  |NA             | 0.2769516| 0.1571970| 0.3967062|
|0-24 months |CONTENT        |PERU                         |3                  |NA             | 0.2719791| 0.1278033| 0.4161550|
|0-24 months |GMS-Nepal      |NEPAL                        |4+                 |NA             | 0.6613411| 0.6097987| 0.7128834|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             | 0.5887496| 0.4485921| 0.7289070|
|0-24 months |GMS-Nepal      |NEPAL                        |2                  |NA             | 0.6553431| 0.5768653| 0.7338209|
|0-24 months |GMS-Nepal      |NEPAL                        |3                  |NA             | 0.6079644| 0.5357284| 0.6802003|
|0-24 months |JiVitA-3       |BANGLADESH                   |4+                 |NA             | 0.4171362| 0.4010279| 0.4332445|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.4985427| 0.4872934| 0.5097919|
|0-24 months |JiVitA-3       |BANGLADESH                   |2                  |NA             | 0.4938562| 0.4765337| 0.5111787|
|0-24 months |JiVitA-3       |BANGLADESH                   |3                  |NA             | 0.4746514| 0.4523766| 0.4969263|
|0-24 months |JiVitA-4       |BANGLADESH                   |4+                 |NA             | 0.6803865| 0.6269236| 0.7338494|
|0-24 months |JiVitA-4       |BANGLADESH                   |1                  |NA             | 0.5758047| 0.5501281| 0.6014813|
|0-24 months |JiVitA-4       |BANGLADESH                   |2                  |NA             | 0.5629020| 0.5129097| 0.6128942|
|0-24 months |JiVitA-4       |BANGLADESH                   |3                  |NA             | 0.5820706| 0.5352159| 0.6289252|
|0-24 months |MAL-ED         |INDIA                        |4+                 |NA             | 0.6400000| 0.4514418| 0.8285582|
|0-24 months |MAL-ED         |INDIA                        |1                  |NA             | 0.5476190| 0.4409531| 0.6542850|
|0-24 months |MAL-ED         |INDIA                        |2                  |NA             | 0.7307692| 0.6321233| 0.8294152|
|0-24 months |MAL-ED         |INDIA                        |3                  |NA             | 0.5625000| 0.4218616| 0.7031384|
|0-24 months |MAL-ED         |NEPAL                        |4+                 |NA             | 0.3358779| 0.2548286| 0.4169271|
|0-24 months |MAL-ED         |NEPAL                        |1                  |NA             | 0.3653846| 0.2342254| 0.4965439|
|0-24 months |MAL-ED         |NEPAL                        |2                  |NA             | 0.2903226| 0.1301972| 0.4504480|
|0-24 months |MAL-ED         |NEPAL                        |3                  |NA             | 0.4545455| 0.2460355| 0.6630554|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |4+                 |NA             | 0.6020408| 0.5333816| 0.6707000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1                  |NA             | 0.6428571| 0.3913740| 0.8943403|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |2                  |NA             | 0.6363636| 0.4349589| 0.8377684|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |3                  |NA             | 0.7200000| 0.5436522| 0.8963478|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+                 |NA             | 0.8888889| 0.8294995| 0.9482783|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.6153846| 0.3503922| 0.8803770|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2                  |NA             | 0.8730159| 0.7906336| 0.9553982|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3                  |NA             | 0.8636364| 0.7806778| 0.9465949|
|0-24 months |NIH-Crypto     |BANGLADESH                   |4+                 |NA             | 0.4773284| 0.3772607| 0.5773961|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.5039852| 0.4540279| 0.5539425|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2                  |NA             | 0.4812341| 0.4105699| 0.5518983|
|0-24 months |NIH-Crypto     |BANGLADESH                   |3                  |NA             | 0.3533910| 0.2636332| 0.4431487|
|0-24 months |PROVIDE        |BANGLADESH                   |4+                 |NA             | 0.3043478| 0.1161668| 0.4925288|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.4516765| 0.4083268| 0.4950263|
|0-24 months |PROVIDE        |BANGLADESH                   |2                  |NA             | 0.3981481| 0.3057605| 0.4905358|
|0-24 months |PROVIDE        |BANGLADESH                   |3                  |NA             | 0.4193548| 0.2964387| 0.5422710|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |4+                 |NA             | 0.5000000| 0.2377322| 0.7622678|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |1                  |NA             | 0.5326633| 0.4632482| 0.6020784|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |2                  |NA             | 0.5096154| 0.4134072| 0.6058236|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |3                  |NA             | 0.4313725| 0.2952613| 0.5674838|
|0-6 months  |COHORTS        |INDIA                        |4+                 |NA             | 0.1285565| 0.0855170| 0.1715961|
|0-6 months  |COHORTS        |INDIA                        |1                  |NA             | 0.2078257| 0.1939401| 0.2217113|
|0-6 months  |COHORTS        |INDIA                        |2                  |NA             | 0.1498878| 0.1285182| 0.1712574|
|0-6 months  |COHORTS        |INDIA                        |3                  |NA             | 0.1629699| 0.1115574| 0.2143824|
|0-6 months  |GMS-Nepal      |NEPAL                        |4+                 |NA             | 0.3047543| 0.2534114| 0.3560972|
|0-6 months  |GMS-Nepal      |NEPAL                        |1                  |NA             | 0.3004945| 0.1703354| 0.4306535|
|0-6 months  |GMS-Nepal      |NEPAL                        |2                  |NA             | 0.3150732| 0.2373890| 0.3927573|
|0-6 months  |GMS-Nepal      |NEPAL                        |3                  |NA             | 0.3457323| 0.2753913| 0.4160733|
|0-6 months  |IRC            |INDIA                        |4+                 |NA             | 0.6470588| 0.4196122| 0.8745055|
|0-6 months  |IRC            |INDIA                        |1                  |NA             | 0.4162162| 0.3450980| 0.4873344|
|0-6 months  |IRC            |INDIA                        |2                  |NA             | 0.4294118| 0.3549120| 0.5039115|
|0-6 months  |IRC            |INDIA                        |3                  |NA             | 0.3611111| 0.2040159| 0.5182063|
|0-6 months  |JiVitA-3       |BANGLADESH                   |4+                 |NA             | 0.3470045| 0.3317391| 0.3622699|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.4129711| 0.4018878| 0.4240544|
|0-6 months  |JiVitA-3       |BANGLADESH                   |2                  |NA             | 0.4109733| 0.3937969| 0.4281497|
|0-6 months  |JiVitA-3       |BANGLADESH                   |3                  |NA             | 0.3948785| 0.3730083| 0.4167487|
|0-6 months  |JiVitA-4       |BANGLADESH                   |4+                 |NA             | 0.3624626| 0.3124166| 0.4125086|
|0-6 months  |JiVitA-4       |BANGLADESH                   |1                  |NA             | 0.3564021| 0.3312597| 0.3815445|
|0-6 months  |JiVitA-4       |BANGLADESH                   |2                  |NA             | 0.3293699| 0.2907332| 0.3680066|
|0-6 months  |JiVitA-4       |BANGLADESH                   |3                  |NA             | 0.3572727| 0.3074964| 0.4070489|
|0-6 months  |MAL-ED         |INDIA                        |4+                 |NA             | 0.2800000| 0.1036200| 0.4563800|
|0-6 months  |MAL-ED         |INDIA                        |1                  |NA             | 0.3095238| 0.2104507| 0.4085969|
|0-6 months  |MAL-ED         |INDIA                        |2                  |NA             | 0.4230769| 0.3132028| 0.5329510|
|0-6 months  |MAL-ED         |INDIA                        |3                  |NA             | 0.3125000| 0.1810941| 0.4439059|
|0-6 months  |MAL-ED         |PERU                         |4+                 |NA             | 0.4316547| 0.3491621| 0.5141473|
|0-6 months  |MAL-ED         |PERU                         |1                  |NA             | 0.6315789| 0.4142802| 0.8488777|
|0-6 months  |MAL-ED         |PERU                         |2                  |NA             | 0.4807692| 0.3447204| 0.6168180|
|0-6 months  |MAL-ED         |PERU                         |3                  |NA             | 0.4032258| 0.2808963| 0.5255553|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |4+                 |NA             | 0.3928571| 0.3243510| 0.4613633|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |1                  |NA             | 0.3571429| 0.1056597| 0.6086260|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |2                  |NA             | 0.3636364| 0.1622316| 0.5650411|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |3                  |NA             | 0.4400000| 0.2450402| 0.6349598|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+                 |NA             | 0.4074074| 0.3145537| 0.5002611|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.3846154| 0.1196230| 0.6496078|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2                  |NA             | 0.5079365| 0.3842383| 0.6316347|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3                  |NA             | 0.3333333| 0.2193765| 0.4472901|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |4+                 |NA             | 0.3277625| 0.2367279| 0.4187972|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.2958947| 0.2491730| 0.3426163|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |2                  |NA             | 0.3296315| 0.2620951| 0.3971678|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |3                  |NA             | 0.2521593| 0.1677286| 0.3365900|
|6-24 months |COHORTS        |INDIA                        |4+                 |NA             | 0.1046512| 0.0504701| 0.1588323|
|6-24 months |COHORTS        |INDIA                        |1                  |NA             | 0.3221660| 0.3040863| 0.3402456|
|6-24 months |COHORTS        |INDIA                        |2                  |NA             | 0.1790698| 0.1581445| 0.1999950|
|6-24 months |COHORTS        |INDIA                        |3                  |NA             | 0.1696970| 0.1124155| 0.2269785|
|6-24 months |GMS-Nepal      |NEPAL                        |4+                 |NA             | 0.5831327| 0.5135572| 0.6527082|
|6-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             | 0.5592990| 0.3587296| 0.7598685|
|6-24 months |GMS-Nepal      |NEPAL                        |2                  |NA             | 0.5698427| 0.4626557| 0.6770296|
|6-24 months |GMS-Nepal      |NEPAL                        |3                  |NA             | 0.5218759| 0.4180557| 0.6256962|
|6-24 months |JiVitA-3       |BANGLADESH                   |4+                 |NA             | 0.1315617| 0.1040173| 0.1591061|
|6-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.2272211| 0.2144708| 0.2399714|
|6-24 months |JiVitA-3       |BANGLADESH                   |2                  |NA             | 0.2109247| 0.1915459| 0.2303035|
|6-24 months |JiVitA-3       |BANGLADESH                   |3                  |NA             | 0.1845680| 0.1592031| 0.2099329|
|6-24 months |JiVitA-4       |BANGLADESH                   |4+                 |NA             | 0.4848913| 0.4200863| 0.5496964|
|6-24 months |JiVitA-4       |BANGLADESH                   |1                  |NA             | 0.3618387| 0.3346321| 0.3890453|
|6-24 months |JiVitA-4       |BANGLADESH                   |2                  |NA             | 0.3786252| 0.3133065| 0.4439438|
|6-24 months |JiVitA-4       |BANGLADESH                   |3                  |NA             | 0.3810243| 0.3236700| 0.4383786|
|6-24 months |MAL-ED         |INDIA                        |4+                 |NA             | 0.5000000| 0.2682624| 0.7317376|
|6-24 months |MAL-ED         |INDIA                        |1                  |NA             | 0.3448276| 0.2221041| 0.4675510|
|6-24 months |MAL-ED         |INDIA                        |2                  |NA             | 0.5333333| 0.3870957| 0.6795710|
|6-24 months |MAL-ED         |INDIA                        |3                  |NA             | 0.3636364| 0.1989749| 0.5282979|
|6-24 months |NIH-Crypto     |BANGLADESH                   |4+                 |NA             | 0.2003564| 0.1023564| 0.2983564|
|6-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.3328460| 0.2726064| 0.3930857|
|6-24 months |NIH-Crypto     |BANGLADESH                   |2                  |NA             | 0.2379852| 0.1627690| 0.3132014|
|6-24 months |NIH-Crypto     |BANGLADESH                   |3                  |NA             | 0.1413138| 0.0629541| 0.2196735|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.3879792| 0.3749497| 0.4010086|
|0-24 months |CONTENT        |PERU                         |NA                 |NA             | 0.2465116| 0.1887688| 0.3042545|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.6389685| 0.6033115| 0.6746254|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.4954591| 0.4876236| 0.5032945|
|0-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.5818282| 0.5658219| 0.5978346|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.6212766| 0.5591262| 0.6834270|
|0-24 months |MAL-ED         |NEPAL                        |NA                 |NA             | 0.3474576| 0.2865784| 0.4083369|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.6186770| 0.5591785| 0.6781756|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.8640000| 0.8214230| 0.9065770|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.4775726| 0.4419904| 0.5131548|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.4357143| 0.3989556| 0.4724730|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.5108696| 0.4597270| 0.5620121|
|0-6 months  |COHORTS        |INDIA                        |NA                 |NA             | 0.1906412| 0.1799566| 0.2013259|
|0-6 months  |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.3180516| 0.2834770| 0.3526261|
|0-6 months  |IRC            |INDIA                        |NA                 |NA             | 0.4264706| 0.3784228| 0.4745184|
|0-6 months  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.4131068| 0.4056579| 0.4205556|
|0-6 months  |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.3474692| 0.3322601| 0.3626783|
|0-6 months  |MAL-ED         |INDIA                        |NA                 |NA             | 0.3446809| 0.2837868| 0.4055749|
|0-6 months  |MAL-ED         |PERU                         |NA                 |NA             | 0.4485294| 0.3893160| 0.5077428|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.3929961| 0.3331663| 0.4528260|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.4120000| 0.3508656| 0.4731344|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.3021108| 0.2694011| 0.3348205|
|6-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.2665531| 0.2530304| 0.2800757|
|6-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.5642317| 0.5153938| 0.6130696|
|6-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.2161930| 0.2068189| 0.2255671|
|6-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.3784303| 0.3598372| 0.3970234|
|6-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.4220779| 0.3438191| 0.5003367|
|6-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.2628459| 0.2244546| 0.3012371|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |INDIA                        |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |INDIA                        |1                  |4+             | 1.7076369| 1.3765019| 2.1184305|
|0-24 months |COHORTS        |INDIA                        |2                  |4+             | 1.3196423| 1.0510638| 1.6568506|
|0-24 months |COHORTS        |INDIA                        |3                  |4+             | 1.3851658| 1.0518039| 1.8241845|
|0-24 months |CONTENT        |PERU                         |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |CONTENT        |PERU                         |1                  |4+             | 1.3396123| 0.6870887| 2.6118331|
|0-24 months |CONTENT        |PERU                         |2                  |4+             | 1.3679794| 0.7370462| 2.5390098|
|0-24 months |CONTENT        |PERU                         |3                  |4+             | 1.3434184| 0.6724709| 2.6837933|
|0-24 months |GMS-Nepal      |NEPAL                        |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |4+             | 0.8902359| 0.6928557| 1.1438457|
|0-24 months |GMS-Nepal      |NEPAL                        |2                  |4+             | 0.9909306| 0.8590223| 1.1430943|
|0-24 months |GMS-Nepal      |NEPAL                        |3                  |4+             | 0.9192902| 0.7974661| 1.0597247|
|0-24 months |JiVitA-3       |BANGLADESH                   |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |4+             | 1.1951556| 1.1447021| 1.2478328|
|0-24 months |JiVitA-3       |BANGLADESH                   |2                  |4+             | 1.1839207| 1.1252500| 1.2456506|
|0-24 months |JiVitA-3       |BANGLADESH                   |3                  |4+             | 1.1378812| 1.0723574| 1.2074086|
|0-24 months |JiVitA-4       |BANGLADESH                   |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-4       |BANGLADESH                   |1                  |4+             | 0.8462906| 0.7730318| 0.9264920|
|0-24 months |JiVitA-4       |BANGLADESH                   |2                  |4+             | 0.8273268| 0.7387190| 0.9265629|
|0-24 months |JiVitA-4       |BANGLADESH                   |3                  |4+             | 0.8554999| 0.7656283| 0.9559208|
|0-24 months |MAL-ED         |INDIA                        |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |INDIA                        |1                  |4+             | 0.8556548| 0.6010503| 1.2181094|
|0-24 months |MAL-ED         |INDIA                        |2                  |4+             | 1.1418269| 0.8257651| 1.5788615|
|0-24 months |MAL-ED         |INDIA                        |3                  |4+             | 0.8789062| 0.5972086| 1.2934780|
|0-24 months |MAL-ED         |NEPAL                        |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |NEPAL                        |1                  |4+             | 1.0878497| 0.7058679| 1.6765416|
|0-24 months |MAL-ED         |NEPAL                        |2                  |4+             | 0.8643695| 0.4734187| 1.5781688|
|0-24 months |MAL-ED         |NEPAL                        |3                  |4+             | 1.3533058| 0.8059220| 2.2724738|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1                  |4+             | 1.0677966| 0.7104312| 1.6049262|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |2                  |4+             | 1.0570108| 0.7550521| 1.4797280|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |3                  |4+             | 1.1959322| 0.9127887| 1.5669057|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1                  |4+             | 0.6923077| 0.4477636| 1.0704085|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2                  |4+             | 0.9821429| 0.8749033| 1.1025271|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3                  |4+             | 0.9715909| 0.8643055| 1.0921935|
|0-24 months |NIH-Crypto     |BANGLADESH                   |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |4+             | 1.0558458| 0.8387716| 1.3290988|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2                  |4+             | 1.0081823| 0.7815978| 1.3004535|
|0-24 months |NIH-Crypto     |BANGLADESH                   |3                  |4+             | 0.7403518| 0.5326628| 1.0290202|
|0-24 months |PROVIDE        |BANGLADESH                   |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |4+             | 1.4840800| 0.7938043| 2.7746052|
|0-24 months |PROVIDE        |BANGLADESH                   |2                  |4+             | 1.3082011| 0.6758638| 2.5321522|
|0-24 months |PROVIDE        |BANGLADESH                   |3                  |4+             | 1.3778802| 0.6950869| 2.7313908|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |1                  |4+             | 1.0653266| 0.6205185| 1.8289880|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |2                  |4+             | 1.0192308| 0.5836661| 1.7798384|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |3                  |4+             | 0.8627451| 0.4677782| 1.5912011|
|0-6 months  |COHORTS        |INDIA                        |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |INDIA                        |1                  |4+             | 1.6166096| 1.1491904| 2.2741458|
|0-6 months  |COHORTS        |INDIA                        |2                  |4+             | 1.1659290| 0.8103609| 1.6775124|
|0-6 months  |COHORTS        |INDIA                        |3                  |4+             | 1.2676908| 0.8003930| 2.0078135|
|0-6 months  |GMS-Nepal      |NEPAL                        |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |GMS-Nepal      |NEPAL                        |1                  |4+             | 0.9860221| 0.6194809| 1.5694425|
|0-6 months  |GMS-Nepal      |NEPAL                        |2                  |4+             | 1.0338596| 0.7669191| 1.3937136|
|0-6 months  |GMS-Nepal      |NEPAL                        |3                  |4+             | 1.1344625| 0.8711284| 1.4774001|
|0-6 months  |IRC            |INDIA                        |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |IRC            |INDIA                        |1                  |4+             | 0.6432432| 0.4351475| 0.9508542|
|0-6 months  |IRC            |INDIA                        |2                  |4+             | 0.6636364| 0.4484253| 0.9821328|
|0-6 months  |IRC            |INDIA                        |3                  |4+             | 0.5580808| 0.3190054| 0.9763289|
|0-6 months  |JiVitA-3       |BANGLADESH                   |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1                  |4+             | 1.1901030| 1.1323716| 1.2507776|
|0-6 months  |JiVitA-3       |BANGLADESH                   |2                  |4+             | 1.1843458| 1.1151283| 1.2578598|
|0-6 months  |JiVitA-3       |BANGLADESH                   |3                  |4+             | 1.1379636| 1.0622827| 1.2190364|
|0-6 months  |JiVitA-4       |BANGLADESH                   |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |JiVitA-4       |BANGLADESH                   |1                  |4+             | 0.9832795| 0.8431410| 1.1467105|
|0-6 months  |JiVitA-4       |BANGLADESH                   |2                  |4+             | 0.9087004| 0.7590083| 1.0879148|
|0-6 months  |JiVitA-4       |BANGLADESH                   |3                  |4+             | 0.9856814| 0.8068975| 1.2040783|
|0-6 months  |MAL-ED         |INDIA                        |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |INDIA                        |1                  |4+             | 1.1054422| 0.5453432| 2.2407950|
|0-6 months  |MAL-ED         |INDIA                        |2                  |4+             | 1.5109890| 0.7644501| 2.9865752|
|0-6 months  |MAL-ED         |INDIA                        |3                  |4+             | 1.1160714| 0.5233168| 2.3802323|
|0-6 months  |MAL-ED         |PERU                         |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |PERU                         |1                  |4+             | 1.4631579| 0.9871114| 2.1687837|
|0-6 months  |MAL-ED         |PERU                         |2                  |4+             | 1.1137821| 0.7915937| 1.5671050|
|0-6 months  |MAL-ED         |PERU                         |3                  |4+             | 0.9341398| 0.6526713| 1.3369934|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |1                  |4+             | 0.9090909| 0.4401086| 1.8778234|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |2                  |4+             | 0.9256198| 0.5179083| 1.6542930|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |3                  |4+             | 1.1200000| 0.6956973| 1.8030830|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1                  |4+             | 0.9440559| 0.4569102| 1.9505837|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2                  |4+             | 1.2467532| 0.8931492| 1.7403516|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3                  |4+             | 0.8181818| 0.5425106| 1.2339326|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |1                  |4+             | 0.9027714| 0.6567618| 1.2409313|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |2                  |4+             | 1.0057021| 0.7129111| 1.4187416|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |3                  |4+             | 0.7693352| 0.4978988| 1.1887491|
|6-24 months |COHORTS        |INDIA                        |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |INDIA                        |1                  |4+             | 3.0784747| 1.8288201| 5.1820330|
|6-24 months |COHORTS        |INDIA                        |2                  |4+             | 1.7111111| 1.0064091| 2.9092556|
|6-24 months |COHORTS        |INDIA                        |3                  |4+             | 1.6215488| 0.8740056| 3.0084711|
|6-24 months |GMS-Nepal      |NEPAL                        |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |GMS-Nepal      |NEPAL                        |1                  |4+             | 0.9591282| 0.6572347| 1.3996931|
|6-24 months |GMS-Nepal      |NEPAL                        |2                  |4+             | 0.9772092| 0.7819021| 1.2213011|
|6-24 months |GMS-Nepal      |NEPAL                        |3                  |4+             | 0.8949523| 0.7095583| 1.1287862|
|6-24 months |JiVitA-3       |BANGLADESH                   |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |JiVitA-3       |BANGLADESH                   |1                  |4+             | 1.7271065| 1.3905400| 2.1451357|
|6-24 months |JiVitA-3       |BANGLADESH                   |2                  |4+             | 1.6032374| 1.2785968| 2.0103053|
|6-24 months |JiVitA-3       |BANGLADESH                   |3                  |4+             | 1.4029002| 1.0919485| 1.8024008|
|6-24 months |JiVitA-4       |BANGLADESH                   |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |JiVitA-4       |BANGLADESH                   |1                  |4+             | 0.7462264| 0.6423332| 0.8669237|
|6-24 months |JiVitA-4       |BANGLADESH                   |2                  |4+             | 0.7808455| 0.6292811| 0.9689147|
|6-24 months |JiVitA-4       |BANGLADESH                   |3                  |4+             | 0.7857932| 0.6457018| 0.9562789|
|6-24 months |MAL-ED         |INDIA                        |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |INDIA                        |1                  |4+             | 0.6896552| 0.3844582| 1.2371286|
|6-24 months |MAL-ED         |INDIA                        |2                  |4+             | 1.0666667| 0.6225253| 1.8276811|
|6-24 months |MAL-ED         |INDIA                        |3                  |4+             | 0.7272727| 0.3804443| 1.3902840|
|6-24 months |NIH-Crypto     |BANGLADESH                   |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |NIH-Crypto     |BANGLADESH                   |1                  |4+             | 1.6612701| 0.9863385| 2.7980437|
|6-24 months |NIH-Crypto     |BANGLADESH                   |2                  |4+             | 1.1878096| 0.6636417| 2.1259841|
|6-24 months |NIH-Crypto     |BANGLADESH                   |3                  |4+             | 0.7053123| 0.3366410| 1.4777328|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |COHORTS        |INDIA                        |4+                 |NA             |  0.1402154|  0.0875226|  0.1929083|
|0-24 months |CONTENT        |PERU                         |4+                 |NA             |  0.0440586| -0.0304683|  0.1185855|
|0-24 months |GMS-Nepal      |NEPAL                        |4+                 |NA             | -0.0223726| -0.0606492|  0.0159040|
|0-24 months |JiVitA-3       |BANGLADESH                   |4+                 |NA             |  0.0783229|  0.0619397|  0.0947060|
|0-24 months |JiVitA-4       |BANGLADESH                   |4+                 |NA             | -0.0985583| -0.1510758| -0.0460408|
|0-24 months |MAL-ED         |INDIA                        |4+                 |NA             | -0.0187234| -0.1971951|  0.1597482|
|0-24 months |MAL-ED         |NEPAL                        |4+                 |NA             |  0.0115798| -0.0430333|  0.0661928|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |4+                 |NA             |  0.0166362| -0.0159799|  0.0492523|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+                 |NA             | -0.0248889| -0.0727688|  0.0229910|
|0-24 months |NIH-Crypto     |BANGLADESH                   |4+                 |NA             |  0.0002441| -0.0932668|  0.0937551|
|0-24 months |PROVIDE        |BANGLADESH                   |4+                 |NA             |  0.1313665| -0.0542035|  0.3169364|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |4+                 |NA             |  0.0108696| -0.2463587|  0.2680978|
|0-6 months  |COHORTS        |INDIA                        |4+                 |NA             |  0.0620847|  0.0188356|  0.1053339|
|0-6 months  |GMS-Nepal      |NEPAL                        |4+                 |NA             |  0.0132973| -0.0252796|  0.0518742|
|0-6 months  |IRC            |INDIA                        |4+                 |NA             | -0.2205882| -0.4435895|  0.0024130|
|0-6 months  |JiVitA-3       |BANGLADESH                   |4+                 |NA             |  0.0661023|  0.0505797|  0.0816249|
|0-6 months  |JiVitA-4       |BANGLADESH                   |4+                 |NA             | -0.0149934| -0.0648920|  0.0349052|
|0-6 months  |MAL-ED         |INDIA                        |4+                 |NA             |  0.0646809| -0.1032443|  0.2326060|
|0-6 months  |MAL-ED         |PERU                         |4+                 |NA             |  0.0168747| -0.0410573|  0.0748067|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |4+                 |NA             |  0.0001390| -0.0332432|  0.0335212|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+                 |NA             |  0.0045926| -0.0654787|  0.0746638|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |4+                 |NA             | -0.0256517| -0.1109344|  0.0596310|
|6-24 months |COHORTS        |INDIA                        |4+                 |NA             |  0.1619019|  0.1073888|  0.2164150|
|6-24 months |GMS-Nepal      |NEPAL                        |4+                 |NA             | -0.0189010| -0.0687649|  0.0309630|
|6-24 months |JiVitA-3       |BANGLADESH                   |4+                 |NA             |  0.0846313|  0.0568986|  0.1123640|
|6-24 months |JiVitA-4       |BANGLADESH                   |4+                 |NA             | -0.1064610| -0.1696484| -0.0432736|
|6-24 months |MAL-ED         |INDIA                        |4+                 |NA             | -0.0779221| -0.2953456|  0.1395014|
|6-24 months |NIH-Crypto     |BANGLADESH                   |4+                 |NA             |  0.0624895| -0.0308830|  0.1558620|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |COHORTS        |INDIA                        |4+                 |NA             |  0.3613993|  0.2114035|  0.4828651|
|0-24 months |CONTENT        |PERU                         |4+                 |NA             |  0.1787282| -0.1852768|  0.4309453|
|0-24 months |GMS-Nepal      |NEPAL                        |4+                 |NA             | -0.0350136| -0.0967791|  0.0232735|
|0-24 months |JiVitA-3       |BANGLADESH                   |4+                 |NA             |  0.1580814|  0.1249762|  0.1899341|
|0-24 months |JiVitA-4       |BANGLADESH                   |4+                 |NA             | -0.1693941| -0.2638273| -0.0820169|
|0-24 months |MAL-ED         |INDIA                        |4+                 |NA             | -0.0301370| -0.3615044|  0.2205812|
|0-24 months |MAL-ED         |NEPAL                        |4+                 |NA             |  0.0333271| -0.1373558|  0.1783957|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |4+                 |NA             |  0.0268900| -0.0274276|  0.0783359|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+                 |NA             | -0.0288066| -0.0859740|  0.0253514|
|0-24 months |NIH-Crypto     |BANGLADESH                   |4+                 |NA             |  0.0005112| -0.2157893|  0.1783298|
|0-24 months |PROVIDE        |BANGLADESH                   |4+                 |NA             |  0.3014968| -0.2853100|  0.6203976|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |4+                 |NA             |  0.0212766| -0.6371469|  0.4148970|
|0-6 months  |COHORTS        |INDIA                        |4+                 |NA             |  0.3256626|  0.0586116|  0.5169572|
|0-6 months  |GMS-Nepal      |NEPAL                        |4+                 |NA             |  0.0418086| -0.0874988|  0.1557408|
|0-6 months  |IRC            |INDIA                        |4+                 |NA             | -0.5172414| -1.1472988| -0.0720545|
|0-6 months  |JiVitA-3       |BANGLADESH                   |4+                 |NA             |  0.1600126|  0.1223019|  0.1961031|
|0-6 months  |JiVitA-4       |BANGLADESH                   |4+                 |NA             | -0.0431503| -0.1974338|  0.0912546|
|0-6 months  |MAL-ED         |INDIA                        |4+                 |NA             |  0.1876543| -0.4794960|  0.5539660|
|0-6 months  |MAL-ED         |PERU                         |4+                 |NA             |  0.0376224| -0.1006676|  0.1585373|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |4+                 |NA             |  0.0003536| -0.0883025|  0.0817876|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+                 |NA             |  0.0111471| -0.1744343|  0.1674033|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |4+                 |NA             | -0.0849083| -0.4076400|  0.1638302|
|6-24 months |COHORTS        |INDIA                        |4+                 |NA             |  0.6073909|  0.3428302|  0.7654458|
|6-24 months |GMS-Nepal      |NEPAL                        |4+                 |NA             | -0.0334986| -0.1258338|  0.0512638|
|6-24 months |JiVitA-3       |BANGLADESH                   |4+                 |NA             |  0.3914617|  0.2512533|  0.5054150|
|6-24 months |JiVitA-4       |BANGLADESH                   |4+                 |NA             | -0.2813226| -0.4612377| -0.1235596|
|6-24 months |MAL-ED         |INDIA                        |4+                 |NA             | -0.1846154| -0.8311894|  0.2336600|
|6-24 months |NIH-Crypto     |BANGLADESH                   |4+                 |NA             |  0.2377420| -0.2129409|  0.5209681|
