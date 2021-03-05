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

|agecat      |studyid        |country                      |nrooms | ever_wasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:------|-----------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |4+     |           0|      9|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |4+     |           1|      5|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1      |           0|     68|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1      |           1|    134|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |2      |           0|     43|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |2      |           1|     63|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |3      |           0|     25|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |3      |           1|     26|   373|
|0-24 months |COHORTS        |INDIA                        |4+     |           0|     90|  5366|
|0-24 months |COHORTS        |INDIA                        |4+     |           1|     16|  5366|
|0-24 months |COHORTS        |INDIA                        |1      |           0|   2235|  5366|
|0-24 months |COHORTS        |INDIA                        |1      |           1|   1276|  5366|
|0-24 months |COHORTS        |INDIA                        |2      |           0|   1089|  5366|
|0-24 months |COHORTS        |INDIA                        |2      |           1|    465|  5366|
|0-24 months |COHORTS        |INDIA                        |3      |           0|    152|  5366|
|0-24 months |COHORTS        |INDIA                        |3      |           1|     43|  5366|
|0-24 months |CONTENT        |PERU                         |4+     |           0|     75|   215|
|0-24 months |CONTENT        |PERU                         |4+     |           1|      3|   215|
|0-24 months |CONTENT        |PERU                         |1      |           0|     42|   215|
|0-24 months |CONTENT        |PERU                         |1      |           1|      2|   215|
|0-24 months |CONTENT        |PERU                         |2      |           0|     54|   215|
|0-24 months |CONTENT        |PERU                         |2      |           1|      0|   215|
|0-24 months |CONTENT        |PERU                         |3      |           0|     39|   215|
|0-24 months |CONTENT        |PERU                         |3      |           1|      0|   215|
|0-24 months |GMS-Nepal      |NEPAL                        |4+     |           0|    116|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |4+     |           1|    198|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |           0|     22|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |           1|     27|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |2      |           0|     68|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |2      |           1|     75|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |3      |           0|     75|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |3      |           1|    105|   686|
|0-24 months |IRC            |INDIA                        |4+     |           0|      5|   408|
|0-24 months |IRC            |INDIA                        |4+     |           1|     12|   408|
|0-24 months |IRC            |INDIA                        |1      |           0|     69|   408|
|0-24 months |IRC            |INDIA                        |1      |           1|    116|   408|
|0-24 months |IRC            |INDIA                        |2      |           0|     56|   408|
|0-24 months |IRC            |INDIA                        |2      |           1|    114|   408|
|0-24 months |IRC            |INDIA                        |3      |           0|     10|   408|
|0-24 months |IRC            |INDIA                        |3      |           1|     26|   408|
|0-24 months |JiVitA-3       |BANGLADESH                   |4+     |           0|    893| 26926|
|0-24 months |JiVitA-3       |BANGLADESH                   |4+     |           1|    242| 26926|
|0-24 months |JiVitA-3       |BANGLADESH                   |1      |           0|  11783| 26926|
|0-24 months |JiVitA-3       |BANGLADESH                   |1      |           1|   4159| 26926|
|0-24 months |JiVitA-3       |BANGLADESH                   |2      |           0|   5352| 26926|
|0-24 months |JiVitA-3       |BANGLADESH                   |2      |           1|   1898| 26926|
|0-24 months |JiVitA-3       |BANGLADESH                   |3      |           0|   1952| 26926|
|0-24 months |JiVitA-3       |BANGLADESH                   |3      |           1|    647| 26926|
|0-24 months |JiVitA-4       |BANGLADESH                   |4+     |           0|    208|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |4+     |           1|     78|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |1      |           0|   2164|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |1      |           1|   1028|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |2      |           0|    970|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |2      |           1|    417|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |3      |           0|    402|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |3      |           1|    160|  5427|
|0-24 months |MAL-ED         |BANGLADESH                   |4+     |           0|      9|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |4+     |           1|      3|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |1      |           0|     92|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |1      |           1|     60|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |2      |           0|     37|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |2      |           1|     13|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |3      |           0|     20|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |3      |           1|      8|   242|
|0-24 months |MAL-ED         |BRAZIL                       |4+     |           0|    113|   210|
|0-24 months |MAL-ED         |BRAZIL                       |4+     |           1|     14|   210|
|0-24 months |MAL-ED         |BRAZIL                       |1      |           0|      4|   210|
|0-24 months |MAL-ED         |BRAZIL                       |1      |           1|      0|   210|
|0-24 months |MAL-ED         |BRAZIL                       |2      |           0|     18|   210|
|0-24 months |MAL-ED         |BRAZIL                       |2      |           1|      2|   210|
|0-24 months |MAL-ED         |BRAZIL                       |3      |           0|     55|   210|
|0-24 months |MAL-ED         |BRAZIL                       |3      |           1|      4|   210|
|0-24 months |MAL-ED         |INDIA                        |4+     |           0|     16|   235|
|0-24 months |MAL-ED         |INDIA                        |4+     |           1|      9|   235|
|0-24 months |MAL-ED         |INDIA                        |1      |           0|     44|   235|
|0-24 months |MAL-ED         |INDIA                        |1      |           1|     40|   235|
|0-24 months |MAL-ED         |INDIA                        |2      |           0|     37|   235|
|0-24 months |MAL-ED         |INDIA                        |2      |           1|     41|   235|
|0-24 months |MAL-ED         |INDIA                        |3      |           0|     24|   235|
|0-24 months |MAL-ED         |INDIA                        |3      |           1|     24|   235|
|0-24 months |MAL-ED         |NEPAL                        |4+     |           0|     93|   236|
|0-24 months |MAL-ED         |NEPAL                        |4+     |           1|     38|   236|
|0-24 months |MAL-ED         |NEPAL                        |1      |           0|     30|   236|
|0-24 months |MAL-ED         |NEPAL                        |1      |           1|     22|   236|
|0-24 months |MAL-ED         |NEPAL                        |2      |           0|     24|   236|
|0-24 months |MAL-ED         |NEPAL                        |2      |           1|      7|   236|
|0-24 months |MAL-ED         |NEPAL                        |3      |           0|     16|   236|
|0-24 months |MAL-ED         |NEPAL                        |3      |           1|      6|   236|
|0-24 months |MAL-ED         |PERU                         |4+     |           0|    126|   272|
|0-24 months |MAL-ED         |PERU                         |4+     |           1|     13|   272|
|0-24 months |MAL-ED         |PERU                         |1      |           0|     16|   272|
|0-24 months |MAL-ED         |PERU                         |1      |           1|      3|   272|
|0-24 months |MAL-ED         |PERU                         |2      |           0|     48|   272|
|0-24 months |MAL-ED         |PERU                         |2      |           1|      4|   272|
|0-24 months |MAL-ED         |PERU                         |3      |           0|     56|   272|
|0-24 months |MAL-ED         |PERU                         |3      |           1|      6|   272|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |4+     |           0|    152|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |4+     |           1|     44|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1      |           0|     10|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1      |           1|      4|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |2      |           0|     19|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |2      |           1|      3|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |3      |           0|     19|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |3      |           1|      6|   257|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+     |           0|     95|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+     |           1|     13|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |           0|     12|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |           1|      1|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2      |           0|     51|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2      |           1|     12|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3      |           0|     56|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3      |           1|     10|   250|
|0-24 months |NIH-Crypto     |BANGLADESH                   |4+     |           0|     66|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |4+     |           1|     29|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1      |           0|    242|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1      |           1|    126|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2      |           0|    129|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2      |           1|     62|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |3      |           0|     71|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |3      |           1|     33|   758|
|0-24 months |PROVIDE        |BANGLADESH                   |4+     |           0|     13|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |4+     |           1|     10|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |           0|    329|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |           1|    178|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2      |           0|     74|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2      |           1|     34|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |3      |           0|     38|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |3      |           1|     24|   700|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |4+     |           0|     10|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |4+     |           1|      4|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |1      |           0|     92|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |1      |           1|    107|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |2      |           0|     48|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |2      |           1|     56|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |3      |           0|     28|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |3      |           1|     23|   368|
|0-6 months  |COHORTS        |INDIA                        |4+     |           0|     86|  5160|
|0-6 months  |COHORTS        |INDIA                        |4+     |           1|     14|  5160|
|0-6 months  |COHORTS        |INDIA                        |1      |           0|   2491|  5160|
|0-6 months  |COHORTS        |INDIA                        |1      |           1|    887|  5160|
|0-6 months  |COHORTS        |INDIA                        |2      |           0|   1142|  5160|
|0-6 months  |COHORTS        |INDIA                        |2      |           1|    352|  5160|
|0-6 months  |COHORTS        |INDIA                        |3      |           0|    154|  5160|
|0-6 months  |COHORTS        |INDIA                        |3      |           1|     34|  5160|
|0-6 months  |CONTENT        |PERU                         |4+     |           0|     76|   215|
|0-6 months  |CONTENT        |PERU                         |4+     |           1|      2|   215|
|0-6 months  |CONTENT        |PERU                         |1      |           0|     42|   215|
|0-6 months  |CONTENT        |PERU                         |1      |           1|      2|   215|
|0-6 months  |CONTENT        |PERU                         |2      |           0|     54|   215|
|0-6 months  |CONTENT        |PERU                         |2      |           1|      0|   215|
|0-6 months  |CONTENT        |PERU                         |3      |           0|     39|   215|
|0-6 months  |CONTENT        |PERU                         |3      |           1|      0|   215|
|0-6 months  |GMS-Nepal      |NEPAL                        |4+     |           0|    183|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |4+     |           1|    131|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |1      |           0|     33|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |1      |           1|     16|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |2      |           0|     99|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |2      |           1|     44|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |3      |           0|    113|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |3      |           1|     67|   686|
|0-6 months  |IRC            |INDIA                        |4+     |           0|      7|   408|
|0-6 months  |IRC            |INDIA                        |4+     |           1|     10|   408|
|0-6 months  |IRC            |INDIA                        |1      |           0|     86|   408|
|0-6 months  |IRC            |INDIA                        |1      |           1|     99|   408|
|0-6 months  |IRC            |INDIA                        |2      |           0|     76|   408|
|0-6 months  |IRC            |INDIA                        |2      |           1|     94|   408|
|0-6 months  |IRC            |INDIA                        |3      |           0|     17|   408|
|0-6 months  |IRC            |INDIA                        |3      |           1|     19|   408|
|0-6 months  |JiVitA-3       |BANGLADESH                   |4+     |           0|    948| 26829|
|0-6 months  |JiVitA-3       |BANGLADESH                   |4+     |           1|    181| 26829|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1      |           0|  13060| 26829|
|0-6 months  |JiVitA-3       |BANGLADESH                   |1      |           1|   2838| 26829|
|0-6 months  |JiVitA-3       |BANGLADESH                   |2      |           0|   5944| 26829|
|0-6 months  |JiVitA-3       |BANGLADESH                   |2      |           1|   1272| 26829|
|0-6 months  |JiVitA-3       |BANGLADESH                   |3      |           0|   2150| 26829|
|0-6 months  |JiVitA-3       |BANGLADESH                   |3      |           1|    436| 26829|
|0-6 months  |JiVitA-4       |BANGLADESH                   |4+     |           0|    234|  5083|
|0-6 months  |JiVitA-4       |BANGLADESH                   |4+     |           1|     32|  5083|
|0-6 months  |JiVitA-4       |BANGLADESH                   |1      |           0|   2672|  5083|
|0-6 months  |JiVitA-4       |BANGLADESH                   |1      |           1|    321|  5083|
|0-6 months  |JiVitA-4       |BANGLADESH                   |2      |           0|   1162|  5083|
|0-6 months  |JiVitA-4       |BANGLADESH                   |2      |           1|    132|  5083|
|0-6 months  |JiVitA-4       |BANGLADESH                   |3      |           0|    467|  5083|
|0-6 months  |JiVitA-4       |BANGLADESH                   |3      |           1|     63|  5083|
|0-6 months  |MAL-ED         |BANGLADESH                   |4+     |           0|     10|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |4+     |           1|      2|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |1      |           0|    111|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |1      |           1|     41|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |2      |           0|     43|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |2      |           1|      7|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |3      |           0|     21|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |3      |           1|      7|   242|
|0-6 months  |MAL-ED         |BRAZIL                       |4+     |           0|    117|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |4+     |           1|     10|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |1      |           0|      4|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |1      |           1|      0|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |2      |           0|     18|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |2      |           1|      2|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |3      |           0|     56|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |3      |           1|      3|   210|
|0-6 months  |MAL-ED         |INDIA                        |4+     |           0|     20|   235|
|0-6 months  |MAL-ED         |INDIA                        |4+     |           1|      5|   235|
|0-6 months  |MAL-ED         |INDIA                        |1      |           0|     58|   235|
|0-6 months  |MAL-ED         |INDIA                        |1      |           1|     26|   235|
|0-6 months  |MAL-ED         |INDIA                        |2      |           0|     54|   235|
|0-6 months  |MAL-ED         |INDIA                        |2      |           1|     24|   235|
|0-6 months  |MAL-ED         |INDIA                        |3      |           0|     27|   235|
|0-6 months  |MAL-ED         |INDIA                        |3      |           1|     21|   235|
|0-6 months  |MAL-ED         |NEPAL                        |4+     |           0|    104|   236|
|0-6 months  |MAL-ED         |NEPAL                        |4+     |           1|     27|   236|
|0-6 months  |MAL-ED         |NEPAL                        |1      |           0|     40|   236|
|0-6 months  |MAL-ED         |NEPAL                        |1      |           1|     12|   236|
|0-6 months  |MAL-ED         |NEPAL                        |2      |           0|     27|   236|
|0-6 months  |MAL-ED         |NEPAL                        |2      |           1|      4|   236|
|0-6 months  |MAL-ED         |NEPAL                        |3      |           0|     18|   236|
|0-6 months  |MAL-ED         |NEPAL                        |3      |           1|      4|   236|
|0-6 months  |MAL-ED         |PERU                         |4+     |           0|    132|   272|
|0-6 months  |MAL-ED         |PERU                         |4+     |           1|      7|   272|
|0-6 months  |MAL-ED         |PERU                         |1      |           0|     18|   272|
|0-6 months  |MAL-ED         |PERU                         |1      |           1|      1|   272|
|0-6 months  |MAL-ED         |PERU                         |2      |           0|     51|   272|
|0-6 months  |MAL-ED         |PERU                         |2      |           1|      1|   272|
|0-6 months  |MAL-ED         |PERU                         |3      |           0|     61|   272|
|0-6 months  |MAL-ED         |PERU                         |3      |           1|      1|   272|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |4+     |           0|    174|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |4+     |           1|     22|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |1      |           0|     13|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |1      |           1|      1|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |2      |           0|     21|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |2      |           1|      1|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |3      |           0|     21|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |3      |           1|      4|   257|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+     |           0|    103|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+     |           1|      5|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |           0|     13|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |           1|      0|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2      |           0|     58|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2      |           1|      5|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3      |           0|     63|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3      |           1|      3|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |4+     |           0|     71|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |4+     |           1|     24|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |1      |           0|    272|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |1      |           1|     96|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |2      |           0|    144|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |2      |           1|     47|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |3      |           0|     76|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH                   |3      |           1|     28|   758|
|0-6 months  |PROVIDE        |BANGLADESH                   |4+     |           0|     15|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |4+     |           1|      8|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |1      |           0|    378|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |1      |           1|    129|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |2      |           0|     82|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |2      |           1|     26|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |3      |           0|     44|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |3      |           1|     18|   700|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |4+     |           0|     13|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |4+     |           1|      1|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |1      |           0|    133|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |1      |           1|     69|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |2      |           0|     84|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |2      |           1|     22|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |3      |           0|     44|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |3      |           1|      7|   373|
|6-24 months |COHORTS        |INDIA                        |4+     |           0|     91|  5016|
|6-24 months |COHORTS        |INDIA                        |4+     |           1|      3|  5016|
|6-24 months |COHORTS        |INDIA                        |1      |           0|   2749|  5016|
|6-24 months |COHORTS        |INDIA                        |1      |           1|    502|  5016|
|6-24 months |COHORTS        |INDIA                        |2      |           0|   1343|  5016|
|6-24 months |COHORTS        |INDIA                        |2      |           1|    144|  5016|
|6-24 months |COHORTS        |INDIA                        |3      |           0|    172|  5016|
|6-24 months |COHORTS        |INDIA                        |3      |           1|     12|  5016|
|6-24 months |CONTENT        |PERU                         |4+     |           0|     76|   215|
|6-24 months |CONTENT        |PERU                         |4+     |           1|      2|   215|
|6-24 months |CONTENT        |PERU                         |1      |           0|     44|   215|
|6-24 months |CONTENT        |PERU                         |1      |           1|      0|   215|
|6-24 months |CONTENT        |PERU                         |2      |           0|     54|   215|
|6-24 months |CONTENT        |PERU                         |2      |           1|      0|   215|
|6-24 months |CONTENT        |PERU                         |3      |           0|     39|   215|
|6-24 months |CONTENT        |PERU                         |3      |           1|      0|   215|
|6-24 months |GMS-Nepal      |NEPAL                        |4+     |           0|    149|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |4+     |           1|    129|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |1      |           0|     17|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |1      |           1|     23|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |2      |           0|     71|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |2      |           1|     56|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |3      |           0|     74|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |3      |           1|     71|   590|
|6-24 months |IRC            |INDIA                        |4+     |           0|      9|   408|
|6-24 months |IRC            |INDIA                        |4+     |           1|      8|   408|
|6-24 months |IRC            |INDIA                        |1      |           0|    137|   408|
|6-24 months |IRC            |INDIA                        |1      |           1|     48|   408|
|6-24 months |IRC            |INDIA                        |2      |           0|    110|   408|
|6-24 months |IRC            |INDIA                        |2      |           1|     60|   408|
|6-24 months |IRC            |INDIA                        |3      |           0|     25|   408|
|6-24 months |IRC            |INDIA                        |3      |           1|     11|   408|
|6-24 months |JiVitA-3       |BANGLADESH                   |4+     |           0|    680| 17286|
|6-24 months |JiVitA-3       |BANGLADESH                   |4+     |           1|     82| 17286|
|6-24 months |JiVitA-3       |BANGLADESH                   |1      |           0|   8214| 17286|
|6-24 months |JiVitA-3       |BANGLADESH                   |1      |           1|   1678| 17286|
|6-24 months |JiVitA-3       |BANGLADESH                   |2      |           0|   4068| 17286|
|6-24 months |JiVitA-3       |BANGLADESH                   |2      |           1|    808| 17286|
|6-24 months |JiVitA-3       |BANGLADESH                   |3      |           0|   1493| 17286|
|6-24 months |JiVitA-3       |BANGLADESH                   |3      |           1|    263| 17286|
|6-24 months |JiVitA-4       |BANGLADESH                   |4+     |           0|    232|  5423|
|6-24 months |JiVitA-4       |BANGLADESH                   |4+     |           1|     53|  5423|
|6-24 months |JiVitA-4       |BANGLADESH                   |1      |           0|   2351|  5423|
|6-24 months |JiVitA-4       |BANGLADESH                   |1      |           1|    840|  5423|
|6-24 months |JiVitA-4       |BANGLADESH                   |2      |           0|   1054|  5423|
|6-24 months |JiVitA-4       |BANGLADESH                   |2      |           1|    332|  5423|
|6-24 months |JiVitA-4       |BANGLADESH                   |3      |           0|    445|  5423|
|6-24 months |JiVitA-4       |BANGLADESH                   |3      |           1|    116|  5423|
|6-24 months |MAL-ED         |BANGLADESH                   |4+     |           0|     10|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |4+     |           1|      2|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |1      |           0|    118|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |1      |           1|     33|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |2      |           0|     42|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |2      |           1|      7|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |3      |           0|     27|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |3      |           1|      1|   240|
|6-24 months |MAL-ED         |BRAZIL                       |4+     |           0|    121|   207|
|6-24 months |MAL-ED         |BRAZIL                       |4+     |           1|      5|   207|
|6-24 months |MAL-ED         |BRAZIL                       |1      |           0|      4|   207|
|6-24 months |MAL-ED         |BRAZIL                       |1      |           1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL                       |2      |           0|     18|   207|
|6-24 months |MAL-ED         |BRAZIL                       |2      |           1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL                       |3      |           0|     58|   207|
|6-24 months |MAL-ED         |BRAZIL                       |3      |           1|      1|   207|
|6-24 months |MAL-ED         |INDIA                        |4+     |           0|     21|   235|
|6-24 months |MAL-ED         |INDIA                        |4+     |           1|      4|   235|
|6-24 months |MAL-ED         |INDIA                        |1      |           0|     60|   235|
|6-24 months |MAL-ED         |INDIA                        |1      |           1|     24|   235|
|6-24 months |MAL-ED         |INDIA                        |2      |           0|     51|   235|
|6-24 months |MAL-ED         |INDIA                        |2      |           1|     27|   235|
|6-24 months |MAL-ED         |INDIA                        |3      |           0|     39|   235|
|6-24 months |MAL-ED         |INDIA                        |3      |           1|      9|   235|
|6-24 months |MAL-ED         |NEPAL                        |4+     |           0|    112|   235|
|6-24 months |MAL-ED         |NEPAL                        |4+     |           1|     19|   235|
|6-24 months |MAL-ED         |NEPAL                        |1      |           0|     39|   235|
|6-24 months |MAL-ED         |NEPAL                        |1      |           1|     12|   235|
|6-24 months |MAL-ED         |NEPAL                        |2      |           0|     28|   235|
|6-24 months |MAL-ED         |NEPAL                        |2      |           1|      3|   235|
|6-24 months |MAL-ED         |NEPAL                        |3      |           0|     20|   235|
|6-24 months |MAL-ED         |NEPAL                        |3      |           1|      2|   235|
|6-24 months |MAL-ED         |PERU                         |4+     |           0|    131|   270|
|6-24 months |MAL-ED         |PERU                         |4+     |           1|      8|   270|
|6-24 months |MAL-ED         |PERU                         |1      |           0|     17|   270|
|6-24 months |MAL-ED         |PERU                         |1      |           1|      2|   270|
|6-24 months |MAL-ED         |PERU                         |2      |           0|     47|   270|
|6-24 months |MAL-ED         |PERU                         |2      |           1|      3|   270|
|6-24 months |MAL-ED         |PERU                         |3      |           0|     57|   270|
|6-24 months |MAL-ED         |PERU                         |3      |           1|      5|   270|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |4+     |           0|    166|   255|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |4+     |           1|     29|   255|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |1      |           0|     11|   255|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |1      |           1|      3|   255|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |2      |           0|     20|   255|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |2      |           1|      2|   255|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |3      |           0|     21|   255|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |3      |           1|      3|   255|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+     |           0|     97|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+     |           1|     10|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |           0|     11|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |           1|      1|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2      |           0|     52|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2      |           1|      9|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3      |           0|     57|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3      |           1|      8|   245|
|6-24 months |NIH-Crypto     |BANGLADESH                   |4+     |           0|     83|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |4+     |           1|      8|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |1      |           0|    294|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |1      |           1|     53|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |2      |           0|    163|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |2      |           1|     25|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |3      |           0|     94|   730|
|6-24 months |NIH-Crypto     |BANGLADESH                   |3      |           1|     10|   730|
|6-24 months |PROVIDE        |BANGLADESH                   |4+     |           0|     18|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |4+     |           1|      4|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |1      |           0|    367|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |1      |           1|     71|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |2      |           0|     84|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |2      |           1|     13|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |3      |           0|     47|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |3      |           1|     11|   615|


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

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/9047cfaf-0d7b-404d-9588-3701a6d2ab62/17563bb9-8348-48d9-b026-5d2c06f23d94/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9047cfaf-0d7b-404d-9588-3701a6d2ab62/17563bb9-8348-48d9-b026-5d2c06f23d94/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9047cfaf-0d7b-404d-9588-3701a6d2ab62/17563bb9-8348-48d9-b026-5d2c06f23d94/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9047cfaf-0d7b-404d-9588-3701a6d2ab62/17563bb9-8348-48d9-b026-5d2c06f23d94/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA      |4+                 |NA             | 0.3571429| 0.1058123| 0.6084734|
|0-24 months |CMC-V-BCS-2002 |INDIA      |1                  |NA             | 0.6633663| 0.5981118| 0.7286209|
|0-24 months |CMC-V-BCS-2002 |INDIA      |2                  |NA             | 0.5943396| 0.5007394| 0.6879398|
|0-24 months |CMC-V-BCS-2002 |INDIA      |3                  |NA             | 0.5098039| 0.3724211| 0.6471867|
|0-24 months |COHORTS        |INDIA      |4+                 |NA             | 0.1562396| 0.1036785| 0.2088008|
|0-24 months |COHORTS        |INDIA      |1                  |NA             | 0.3626768| 0.3466682| 0.3786855|
|0-24 months |COHORTS        |INDIA      |2                  |NA             | 0.2988567| 0.2756209| 0.3220925|
|0-24 months |COHORTS        |INDIA      |3                  |NA             | 0.2192563| 0.1626440| 0.2758686|
|0-24 months |GMS-Nepal      |NEPAL      |4+                 |NA             | 0.6353509| 0.5813717| 0.6893300|
|0-24 months |GMS-Nepal      |NEPAL      |1                  |NA             | 0.5511243| 0.4105046| 0.6917440|
|0-24 months |GMS-Nepal      |NEPAL      |2                  |NA             | 0.5149530| 0.4319586| 0.5979473|
|0-24 months |GMS-Nepal      |NEPAL      |3                  |NA             | 0.5829884| 0.5093743| 0.6566026|
|0-24 months |IRC            |INDIA      |4+                 |NA             | 0.7058824| 0.4890205| 0.9227442|
|0-24 months |IRC            |INDIA      |1                  |NA             | 0.6270270| 0.5572557| 0.6967983|
|0-24 months |IRC            |INDIA      |2                  |NA             | 0.6705882| 0.5998500| 0.7413264|
|0-24 months |IRC            |INDIA      |3                  |NA             | 0.7222222| 0.5757302| 0.8687142|
|0-24 months |JiVitA-3       |BANGLADESH |4+                 |NA             | 0.2417484| 0.2265559| 0.2569408|
|0-24 months |JiVitA-3       |BANGLADESH |1                  |NA             | 0.2565057| 0.2458984| 0.2671130|
|0-24 months |JiVitA-3       |BANGLADESH |2                  |NA             | 0.2600389| 0.2439539| 0.2761240|
|0-24 months |JiVitA-3       |BANGLADESH |3                  |NA             | 0.2489908| 0.2300857| 0.2678959|
|0-24 months |JiVitA-4       |BANGLADESH |4+                 |NA             | 0.3407540| 0.2901003| 0.3914078|
|0-24 months |JiVitA-4       |BANGLADESH |1                  |NA             | 0.3081589| 0.2841370| 0.3321809|
|0-24 months |JiVitA-4       |BANGLADESH |2                  |NA             | 0.3071393| 0.2675153| 0.3467632|
|0-24 months |JiVitA-4       |BANGLADESH |3                  |NA             | 0.2970034| 0.2492942| 0.3447126|
|0-24 months |MAL-ED         |INDIA      |4+                 |NA             | 0.3600000| 0.1714418| 0.5485582|
|0-24 months |MAL-ED         |INDIA      |1                  |NA             | 0.4761905| 0.3691590| 0.5832219|
|0-24 months |MAL-ED         |INDIA      |2                  |NA             | 0.5256410| 0.4145894| 0.6366927|
|0-24 months |MAL-ED         |INDIA      |3                  |NA             | 0.5000000| 0.3582499| 0.6417501|
|0-24 months |MAL-ED         |NEPAL      |4+                 |NA             | 0.2900763| 0.2122016| 0.3679511|
|0-24 months |MAL-ED         |NEPAL      |1                  |NA             | 0.4230769| 0.2885104| 0.5576435|
|0-24 months |MAL-ED         |NEPAL      |2                  |NA             | 0.2258065| 0.0783098| 0.3733031|
|0-24 months |MAL-ED         |NEPAL      |3                  |NA             | 0.2727273| 0.0862303| 0.4592242|
|0-24 months |NIH-Crypto     |BANGLADESH |4+                 |NA             | 0.2997366| 0.2068213| 0.3926520|
|0-24 months |NIH-Crypto     |BANGLADESH |1                  |NA             | 0.3411984| 0.2925980| 0.3897989|
|0-24 months |NIH-Crypto     |BANGLADESH |2                  |NA             | 0.3238652| 0.2567033| 0.3910271|
|0-24 months |NIH-Crypto     |BANGLADESH |3                  |NA             | 0.3183461| 0.2254970| 0.4111951|
|0-24 months |PROVIDE        |BANGLADESH |4+                 |NA             | 0.4829428| 0.2685556| 0.6973300|
|0-24 months |PROVIDE        |BANGLADESH |1                  |NA             | 0.3500775| 0.3084540| 0.3917010|
|0-24 months |PROVIDE        |BANGLADESH |2                  |NA             | 0.3312412| 0.2431763| 0.4193061|
|0-24 months |PROVIDE        |BANGLADESH |3                  |NA             | 0.4224767| 0.3012688| 0.5436846|
|0-6 months  |COHORTS        |INDIA      |4+                 |NA             | 0.1418494| 0.0913632| 0.1923356|
|0-6 months  |COHORTS        |INDIA      |1                  |NA             | 0.2615143| 0.2466374| 0.2763913|
|0-6 months  |COHORTS        |INDIA      |2                  |NA             | 0.2345789| 0.2126685| 0.2564892|
|0-6 months  |COHORTS        |INDIA      |3                  |NA             | 0.1815037| 0.1282406| 0.2347669|
|0-6 months  |GMS-Nepal      |NEPAL      |4+                 |NA             | 0.4178226| 0.3630266| 0.4726185|
|0-6 months  |GMS-Nepal      |NEPAL      |1                  |NA             | 0.3301446| 0.1963576| 0.4639316|
|0-6 months  |GMS-Nepal      |NEPAL      |2                  |NA             | 0.3107172| 0.2342959| 0.3871385|
|0-6 months  |GMS-Nepal      |NEPAL      |3                  |NA             | 0.3750565| 0.3037681| 0.4463449|
|0-6 months  |IRC            |INDIA      |4+                 |NA             | 0.5882353| 0.3539977| 0.8224729|
|0-6 months  |IRC            |INDIA      |1                  |NA             | 0.5351351| 0.4631753| 0.6070950|
|0-6 months  |IRC            |INDIA      |2                  |NA             | 0.5529412| 0.4781107| 0.6277716|
|0-6 months  |IRC            |INDIA      |3                  |NA             | 0.5277778| 0.3644995| 0.6910561|
|0-6 months  |JiVitA-3       |BANGLADESH |4+                 |NA             | 0.1784795| 0.1644806| 0.1924783|
|0-6 months  |JiVitA-3       |BANGLADESH |1                  |NA             | 0.1776528| 0.1684973| 0.1868082|
|0-6 months  |JiVitA-3       |BANGLADESH |2                  |NA             | 0.1756608| 0.1626845| 0.1886370|
|0-6 months  |JiVitA-3       |BANGLADESH |3                  |NA             | 0.1731074| 0.1561570| 0.1900578|
|0-6 months  |JiVitA-4       |BANGLADESH |4+                 |NA             | 0.1491821| 0.1134064| 0.1849578|
|0-6 months  |JiVitA-4       |BANGLADESH |1                  |NA             | 0.1044671| 0.0892764| 0.1196579|
|0-6 months  |JiVitA-4       |BANGLADESH |2                  |NA             | 0.0980077| 0.0775663| 0.1184491|
|0-6 months  |JiVitA-4       |BANGLADESH |3                  |NA             | 0.1410810| 0.0975101| 0.1846518|
|0-6 months  |MAL-ED         |INDIA      |4+                 |NA             | 0.2000000| 0.0428682| 0.3571318|
|0-6 months  |MAL-ED         |INDIA      |1                  |NA             | 0.3095238| 0.2104507| 0.4085969|
|0-6 months  |MAL-ED         |INDIA      |2                  |NA             | 0.3076923| 0.2050480| 0.4103366|
|0-6 months  |MAL-ED         |INDIA      |3                  |NA             | 0.4375000| 0.2968616| 0.5781384|
|0-6 months  |NIH-Crypto     |BANGLADESH |4+                 |NA             | 0.2460760| 0.1605156| 0.3316364|
|0-6 months  |NIH-Crypto     |BANGLADESH |1                  |NA             | 0.2571790| 0.2126015| 0.3017565|
|0-6 months  |NIH-Crypto     |BANGLADESH |2                  |NA             | 0.2470202| 0.1851863| 0.3088541|
|0-6 months  |NIH-Crypto     |BANGLADESH |3                  |NA             | 0.2697096| 0.1838323| 0.3555869|
|0-6 months  |PROVIDE        |BANGLADESH |4+                 |NA             | 0.3478261| 0.1530402| 0.5426119|
|0-6 months  |PROVIDE        |BANGLADESH |1                  |NA             | 0.2544379| 0.2164987| 0.2923770|
|0-6 months  |PROVIDE        |BANGLADESH |2                  |NA             | 0.2407407| 0.1600513| 0.3214301|
|0-6 months  |PROVIDE        |BANGLADESH |3                  |NA             | 0.2903226| 0.1772562| 0.4033890|
|6-24 months |GMS-Nepal      |NEPAL      |4+                 |NA             | 0.4690105| 0.4102225| 0.5277984|
|6-24 months |GMS-Nepal      |NEPAL      |1                  |NA             | 0.5853646| 0.4289951| 0.7417340|
|6-24 months |GMS-Nepal      |NEPAL      |2                  |NA             | 0.4388056| 0.3513825| 0.5262287|
|6-24 months |GMS-Nepal      |NEPAL      |3                  |NA             | 0.4923787| 0.4103442| 0.5744132|
|6-24 months |IRC            |INDIA      |4+                 |NA             | 0.4705882| 0.2330280| 0.7081485|
|6-24 months |IRC            |INDIA      |1                  |NA             | 0.2594595| 0.1962177| 0.3227013|
|6-24 months |IRC            |INDIA      |2                  |NA             | 0.3529412| 0.2810162| 0.4248661|
|6-24 months |IRC            |INDIA      |3                  |NA             | 0.3055556| 0.1548971| 0.4562140|
|6-24 months |JiVitA-3       |BANGLADESH |4+                 |NA             | 0.1251955| 0.1102839| 0.1401072|
|6-24 months |JiVitA-3       |BANGLADESH |1                  |NA             | 0.1600249| 0.1506282| 0.1694216|
|6-24 months |JiVitA-3       |BANGLADESH |2                  |NA             | 0.1712206| 0.1529939| 0.1894472|
|6-24 months |JiVitA-3       |BANGLADESH |3                  |NA             | 0.1600339| 0.1359513| 0.1841165|
|6-24 months |JiVitA-4       |BANGLADESH |4+                 |NA             | 0.2694087| 0.2194209| 0.3193965|
|6-24 months |JiVitA-4       |BANGLADESH |1                  |NA             | 0.2484534| 0.2245460| 0.2723608|
|6-24 months |JiVitA-4       |BANGLADESH |2                  |NA             | 0.2511363| 0.2145736| 0.2876990|
|6-24 months |JiVitA-4       |BANGLADESH |3                  |NA             | 0.2215782| 0.1781542| 0.2650023|
|6-24 months |NIH-Crypto     |BANGLADESH |4+                 |NA             | 0.0879121| 0.0296927| 0.1461315|
|6-24 months |NIH-Crypto     |BANGLADESH |1                  |NA             | 0.1527378| 0.1148618| 0.1906137|
|6-24 months |NIH-Crypto     |BANGLADESH |2                  |NA             | 0.1329787| 0.0844082| 0.1815492|
|6-24 months |NIH-Crypto     |BANGLADESH |3                  |NA             | 0.0961538| 0.0394569| 0.1528508|


### Parameter: E(Y)


|agecat      |studyid        |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA      |NA                 |NA             | 0.6112601| 0.5617242| 0.6607959|
|0-24 months |COHORTS        |INDIA      |NA                 |NA             | 0.3354454| 0.3228114| 0.3480794|
|0-24 months |GMS-Nepal      |NEPAL      |NA                 |NA             | 0.5903790| 0.5535526| 0.6272054|
|0-24 months |IRC            |INDIA      |NA                 |NA             | 0.6568627| 0.6107393| 0.7029862|
|0-24 months |JiVitA-3       |BANGLADESH |NA                 |NA             | 0.2579663| 0.2514934| 0.2644392|
|0-24 months |JiVitA-4       |BANGLADESH |NA                 |NA             | 0.3101161| 0.2957091| 0.3245231|
|0-24 months |MAL-ED         |INDIA      |NA                 |NA             | 0.4851064| 0.4210714| 0.5491414|
|0-24 months |MAL-ED         |NEPAL      |NA                 |NA             | 0.3093220| 0.2502261| 0.3684179|
|0-24 months |NIH-Crypto     |BANGLADESH |NA                 |NA             | 0.3298153| 0.2963239| 0.3633067|
|0-24 months |PROVIDE        |BANGLADESH |NA                 |NA             | 0.3514286| 0.3160364| 0.3868207|
|0-6 months  |COHORTS        |INDIA      |NA                 |NA             | 0.2494186| 0.2376119| 0.2612253|
|0-6 months  |GMS-Nepal      |NEPAL      |NA                 |NA             | 0.3760933| 0.3398180| 0.4123685|
|0-6 months  |IRC            |INDIA      |NA                 |NA             | 0.5441176| 0.4957312| 0.5925041|
|0-6 months  |JiVitA-3       |BANGLADESH |NA                 |NA             | 0.1761899| 0.1705583| 0.1818216|
|0-6 months  |JiVitA-4       |BANGLADESH |NA                 |NA             | 0.1078103| 0.0979894| 0.1176312|
|0-6 months  |MAL-ED         |INDIA      |NA                 |NA             | 0.3234043| 0.2634696| 0.3833389|
|0-6 months  |NIH-Crypto     |BANGLADESH |NA                 |NA             | 0.2572559| 0.2261171| 0.2883948|
|0-6 months  |PROVIDE        |BANGLADESH |NA                 |NA             | 0.2585714| 0.2261125| 0.2910304|
|6-24 months |GMS-Nepal      |NEPAL      |NA                 |NA             | 0.4728814| 0.4325613| 0.5132014|
|6-24 months |IRC            |INDIA      |NA                 |NA             | 0.3112745| 0.2662918| 0.3562572|
|6-24 months |JiVitA-3       |BANGLADESH |NA                 |NA             | 0.1637742| 0.1576516| 0.1698967|
|6-24 months |JiVitA-4       |BANGLADESH |NA                 |NA             | 0.2472801| 0.2337480| 0.2608122|
|6-24 months |NIH-Crypto     |BANGLADESH |NA                 |NA             | 0.1315068| 0.1069744| 0.1560393|


### Parameter: RR


|agecat      |studyid        |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA      |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |CMC-V-BCS-2002 |INDIA      |1                  |4+             | 1.8574257| 0.9126746| 3.7801318|
|0-24 months |CMC-V-BCS-2002 |INDIA      |2                  |4+             | 1.6641509| 0.8091128| 3.4227594|
|0-24 months |CMC-V-BCS-2002 |INDIA      |3                  |4+             | 1.4274510| 0.6718852| 3.0326854|
|0-24 months |COHORTS        |INDIA      |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |INDIA      |1                  |4+             | 2.3212859| 1.6533291| 3.2591019|
|0-24 months |COHORTS        |INDIA      |2                  |4+             | 1.9128097| 1.3543068| 2.7016337|
|0-24 months |COHORTS        |INDIA      |3                  |4+             | 1.4033335| 0.9183063| 2.1445405|
|0-24 months |GMS-Nepal      |NEPAL      |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |GMS-Nepal      |NEPAL      |1                  |4+             | 0.8674330| 0.6628476| 1.1351629|
|0-24 months |GMS-Nepal      |NEPAL      |2                  |4+             | 0.8105018| 0.6755826| 0.9723653|
|0-24 months |GMS-Nepal      |NEPAL      |3                  |4+             | 0.9175850| 0.7880511| 1.0684108|
|0-24 months |IRC            |INDIA      |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |IRC            |INDIA      |1                  |4+             | 0.8882883| 0.6406895| 1.2315733|
|0-24 months |IRC            |INDIA      |2                  |4+             | 0.9500000| 0.6865201| 1.3146009|
|0-24 months |IRC            |INDIA      |3                  |4+             | 1.0231481| 0.7080395| 1.4784939|
|0-24 months |JiVitA-3       |BANGLADESH |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3       |BANGLADESH |1                  |4+             | 1.0610443| 0.9842455| 1.1438356|
|0-24 months |JiVitA-3       |BANGLADESH |2                  |4+             | 1.0756595| 0.9885388| 1.1704582|
|0-24 months |JiVitA-3       |BANGLADESH |3                  |4+             | 1.0299586| 0.9313768| 1.1389748|
|0-24 months |JiVitA-4       |BANGLADESH |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-4       |BANGLADESH |1                  |4+             | 0.9043442| 0.7641968| 1.0701934|
|0-24 months |JiVitA-4       |BANGLADESH |2                  |4+             | 0.9013518| 0.7431558| 1.0932230|
|0-24 months |JiVitA-4       |BANGLADESH |3                  |4+             | 0.8716065| 0.7027679| 1.0810082|
|0-24 months |MAL-ED         |INDIA      |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |INDIA      |1                  |4+             | 1.3227513| 0.7480773| 2.3388906|
|0-24 months |MAL-ED         |INDIA      |2                  |4+             | 1.4601140| 0.8300562| 2.5684199|
|0-24 months |MAL-ED         |INDIA      |3                  |4+             | 1.3888889| 0.7656184| 2.5195482|
|0-24 months |MAL-ED         |NEPAL      |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |NEPAL      |1                  |4+             | 1.4585020| 0.9619340| 2.2114076|
|0-24 months |MAL-ED         |NEPAL      |2                  |4+             | 0.7784380| 0.3841652| 1.5773572|
|0-24 months |MAL-ED         |NEPAL      |3                  |4+             | 0.9401914| 0.4509926| 1.9600320|
|0-24 months |NIH-Crypto     |BANGLADESH |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Crypto     |BANGLADESH |1                  |4+             | 1.1383274| 0.8092921| 1.6011393|
|0-24 months |NIH-Crypto     |BANGLADESH |2                  |4+             | 1.0804991| 0.7441470| 1.5688814|
|0-24 months |NIH-Crypto     |BANGLADESH |3                  |4+             | 1.0620859| 0.6939484| 1.6255192|
|0-24 months |PROVIDE        |BANGLADESH |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROVIDE        |BANGLADESH |1                  |4+             | 0.7248840| 0.4579415| 1.1474324|
|0-24 months |PROVIDE        |BANGLADESH |2                  |4+             | 0.6858809| 0.4088836| 1.1505293|
|0-24 months |PROVIDE        |BANGLADESH |3                  |4+             | 0.8747965| 0.5158773| 1.4834321|
|0-6 months  |COHORTS        |INDIA      |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |INDIA      |1                  |4+             | 1.8436058| 1.2856633| 2.6436800|
|0-6 months  |COHORTS        |INDIA      |2                  |4+             | 1.6537178| 1.1446130| 2.3892640|
|0-6 months  |COHORTS        |INDIA      |3                  |4+             | 1.2795524| 0.8067634| 2.0294108|
|0-6 months  |GMS-Nepal      |NEPAL      |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |GMS-Nepal      |NEPAL      |1                  |4+             | 0.7901550| 0.5161002| 1.2097357|
|0-6 months  |GMS-Nepal      |NEPAL      |2                  |4+             | 0.7436582| 0.5626868| 0.9828336|
|0-6 months  |GMS-Nepal      |NEPAL      |3                  |4+             | 0.8976453| 0.7124933| 1.1309118|
|0-6 months  |IRC            |INDIA      |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |IRC            |INDIA      |1                  |4+             | 0.9097297| 0.5975582| 1.3849834|
|0-6 months  |IRC            |INDIA      |2                  |4+             | 0.9400000| 0.6172707| 1.4314628|
|0-6 months  |IRC            |INDIA      |3                  |4+             | 0.8972222| 0.5418807| 1.4855810|
|0-6 months  |JiVitA-3       |BANGLADESH |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |JiVitA-3       |BANGLADESH |1                  |4+             | 0.9953681| 0.9066511| 1.0927661|
|0-6 months  |JiVitA-3       |BANGLADESH |2                  |4+             | 0.9842071| 0.8834283| 1.0964825|
|0-6 months  |JiVitA-3       |BANGLADESH |3                  |4+             | 0.9699009| 0.8537289| 1.1018812|
|0-6 months  |JiVitA-4       |BANGLADESH |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |JiVitA-4       |BANGLADESH |1                  |4+             | 0.7002658| 0.5279115| 0.9288909|
|0-6 months  |JiVitA-4       |BANGLADESH |2                  |4+             | 0.6569665| 0.4749257| 0.9087842|
|0-6 months  |JiVitA-4       |BANGLADESH |3                  |4+             | 0.9456964| 0.6607783| 1.3534669|
|0-6 months  |MAL-ED         |INDIA      |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |INDIA      |1                  |4+             | 1.5476190| 0.6625619| 3.6149446|
|0-6 months  |MAL-ED         |INDIA      |2                  |4+             | 1.5384615| 0.6552323| 3.6122518|
|0-6 months  |MAL-ED         |INDIA      |3                  |4+             | 2.1875000| 0.9360186| 5.1122448|
|0-6 months  |NIH-Crypto     |BANGLADESH |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |NIH-Crypto     |BANGLADESH |1                  |4+             | 1.0451204| 0.7086366| 1.5413776|
|0-6 months  |NIH-Crypto     |BANGLADESH |2                  |4+             | 1.0038371| 0.6542119| 1.5403097|
|0-6 months  |NIH-Crypto     |BANGLADESH |3                  |4+             | 1.0960418| 0.6844015| 1.7552675|
|0-6 months  |PROVIDE        |BANGLADESH |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |PROVIDE        |BANGLADESH |1                  |4+             | 0.7315089| 0.4097670| 1.3058767|
|0-6 months  |PROVIDE        |BANGLADESH |2                  |4+             | 0.6921296| 0.3603676| 1.3293188|
|0-6 months  |PROVIDE        |BANGLADESH |3                  |4+             | 0.8346774| 0.4219679| 1.6510413|
|6-24 months |GMS-Nepal      |NEPAL      |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |GMS-Nepal      |NEPAL      |1                  |4+             | 1.2480842| 0.9292818| 1.6762560|
|6-24 months |GMS-Nepal      |NEPAL      |2                  |4+             | 0.9355987| 0.7395885| 1.1835569|
|6-24 months |GMS-Nepal      |NEPAL      |3                  |4+             | 1.0498245| 0.8524484| 1.2929010|
|6-24 months |IRC            |INDIA      |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |IRC            |INDIA      |1                  |4+             | 0.5513514| 0.3147542| 0.9657958|
|6-24 months |IRC            |INDIA      |2                  |4+             | 0.7500000| 0.4351437| 1.2926765|
|6-24 months |IRC            |INDIA      |3                  |4+             | 0.6493056| 0.3206169| 1.3149578|
|6-24 months |JiVitA-3       |BANGLADESH |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |JiVitA-3       |BANGLADESH |1                  |4+             | 1.2781993| 1.1174055| 1.4621313|
|6-24 months |JiVitA-3       |BANGLADESH |2                  |4+             | 1.3676249| 1.1725992| 1.5950872|
|6-24 months |JiVitA-3       |BANGLADESH |3                  |4+             | 1.2782713| 1.0530370| 1.5516810|
|6-24 months |JiVitA-4       |BANGLADESH |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |JiVitA-4       |BANGLADESH |1                  |4+             | 0.9222174| 0.7485794| 1.1361320|
|6-24 months |JiVitA-4       |BANGLADESH |2                  |4+             | 0.9321760| 0.7392876| 1.1753911|
|6-24 months |JiVitA-4       |BANGLADESH |3                  |4+             | 0.8224613| 0.6278946| 1.0773187|
|6-24 months |NIH-Crypto     |BANGLADESH |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |NIH-Crypto     |BANGLADESH |1                  |4+             | 1.7373919| 0.8566152| 3.5237886|
|6-24 months |NIH-Crypto     |BANGLADESH |2                  |4+             | 1.5126330| 0.7100358| 3.2224551|
|6-24 months |NIH-Crypto     |BANGLADESH |3                  |4+             | 1.0937500| 0.4506349| 2.6546744|


### Parameter: PAR


|agecat      |studyid        |country    |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |CMC-V-BCS-2002 |INDIA      |4+                 |NA             |  0.2541172|  0.0073804|  0.5008540|
|0-24 months |COHORTS        |INDIA      |4+                 |NA             |  0.1792058|  0.1264662|  0.2319453|
|0-24 months |GMS-Nepal      |NEPAL      |4+                 |NA             | -0.0449719| -0.0855955| -0.0043482|
|0-24 months |IRC            |INDIA      |4+                 |NA             | -0.0490196| -0.2617104|  0.1636712|
|0-24 months |JiVitA-3       |BANGLADESH |4+                 |NA             |  0.0162179|  0.0007774|  0.0316585|
|0-24 months |JiVitA-4       |BANGLADESH |4+                 |NA             | -0.0306380| -0.0801288|  0.0188529|
|0-24 months |MAL-ED         |INDIA      |4+                 |NA             |  0.1251064| -0.0540303|  0.3042430|
|0-24 months |MAL-ED         |NEPAL      |4+                 |NA             |  0.0192457| -0.0338976|  0.0723890|
|0-24 months |NIH-Crypto     |BANGLADESH |4+                 |NA             |  0.0300787| -0.0572459|  0.1174032|
|0-24 months |PROVIDE        |BANGLADESH |4+                 |NA             | -0.1315142| -0.3421494|  0.0791210|
|0-6 months  |COHORTS        |INDIA      |4+                 |NA             |  0.1075692|  0.0570058|  0.1581326|
|0-6 months  |GMS-Nepal      |NEPAL      |4+                 |NA             | -0.0417293| -0.0815095| -0.0019491|
|0-6 months  |IRC            |INDIA      |4+                 |NA             | -0.0441176| -0.2735435|  0.1853082|
|0-6 months  |JiVitA-3       |BANGLADESH |4+                 |NA             | -0.0022895| -0.0164217|  0.0118427|
|0-6 months  |JiVitA-4       |BANGLADESH |4+                 |NA             | -0.0413718| -0.0766806| -0.0060630|
|0-6 months  |MAL-ED         |INDIA      |4+                 |NA             |  0.1234043| -0.0283498|  0.2751583|
|0-6 months  |NIH-Crypto     |BANGLADESH |4+                 |NA             |  0.0111799| -0.0689929|  0.0913528|
|0-6 months  |PROVIDE        |BANGLADESH |4+                 |NA             | -0.0892547| -0.2803091|  0.1017998|
|6-24 months |GMS-Nepal      |NEPAL      |4+                 |NA             |  0.0038709| -0.0389846|  0.0467263|
|6-24 months |IRC            |INDIA      |4+                 |NA             | -0.1593137| -0.3911659|  0.0725384|
|6-24 months |JiVitA-3       |BANGLADESH |4+                 |NA             |  0.0385786|  0.0231889|  0.0539683|
|6-24 months |JiVitA-4       |BANGLADESH |4+                 |NA             | -0.0221286| -0.0705519|  0.0262947|
|6-24 months |NIH-Crypto     |BANGLADESH |4+                 |NA             |  0.0435948| -0.0124970|  0.0996865|


### Parameter: PAF


|agecat      |studyid        |country    |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |CMC-V-BCS-2002 |INDIA      |4+                 |NA             |  0.4157268| -0.1682288|  0.7077840|
|0-24 months |COHORTS        |INDIA      |4+                 |NA             |  0.5342323|  0.3491951|  0.6666596|
|0-24 months |GMS-Nepal      |NEPAL      |4+                 |NA             | -0.0761745| -0.1475626| -0.0092274|
|0-24 months |IRC            |INDIA      |4+                 |NA             | -0.0746269| -0.4526773|  0.2050382|
|0-24 months |JiVitA-3       |BANGLADESH |4+                 |NA             |  0.0628684|  0.0014560|  0.1205039|
|0-24 months |JiVitA-4       |BANGLADESH |4+                 |NA             | -0.0987951| -0.2709694|  0.0500553|
|0-24 months |MAL-ED         |INDIA      |4+                 |NA             |  0.2578947| -0.2216217|  0.5491892|
|0-24 months |MAL-ED         |NEPAL      |4+                 |NA             |  0.0622190| -0.1262521|  0.2191506|
|0-24 months |NIH-Crypto     |BANGLADESH |4+                 |NA             |  0.0911985| -0.2161482|  0.3208722|
|0-24 months |PROVIDE        |BANGLADESH |4+                 |NA             | -0.3742275| -1.1260674|  0.1117398|
|0-6 months  |COHORTS        |INDIA      |4+                 |NA             |  0.4312799|  0.1898503|  0.6007619|
|0-6 months  |GMS-Nepal      |NEPAL      |4+                 |NA             | -0.1109547| -0.2220958| -0.0099210|
|0-6 months  |IRC            |INDIA      |4+                 |NA             | -0.0810811| -0.5969182|  0.2681301|
|0-6 months  |JiVitA-3       |BANGLADESH |4+                 |NA             | -0.0129947| -0.0965670|  0.0642084|
|0-6 months  |JiVitA-4       |BANGLADESH |4+                 |NA             | -0.3837458| -0.7596265| -0.0881584|
|0-6 months  |MAL-ED         |INDIA      |4+                 |NA             |  0.3815789| -0.3160749|  0.7094051|
|0-6 months  |NIH-Crypto     |BANGLADESH |4+                 |NA             |  0.0434584| -0.3248986|  0.3094024|
|0-6 months  |PROVIDE        |BANGLADESH |4+                 |NA             | -0.3451838| -1.3297335|  0.2232934|
|6-24 months |GMS-Nepal      |NEPAL      |4+                 |NA             |  0.0081857| -0.0867116|  0.0947961|
|6-24 months |IRC            |INDIA      |4+                 |NA             | -0.5118110| -1.4765926|  0.0771302|
|6-24 months |JiVitA-3       |BANGLADESH |4+                 |NA             |  0.2355598|  0.1378724|  0.3221782|
|6-24 months |JiVitA-4       |BANGLADESH |4+                 |NA             | -0.0894880| -0.3042176|  0.0898880|
|6-24 months |NIH-Crypto     |BANGLADESH |4+                 |NA             |  0.3315018| -0.2585387|  0.6449137|
