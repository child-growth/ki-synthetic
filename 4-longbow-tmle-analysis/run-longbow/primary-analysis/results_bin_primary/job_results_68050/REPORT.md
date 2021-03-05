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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nchldlt5
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nchldlt5
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |hhwealth_quart | ever_wasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:--------------|-----------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4      |           0|     44|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4      |           1|     52|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1      |           0|     37|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1      |           1|     54|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2      |           0|     26|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2      |           1|     69|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3      |           0|     38|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3      |           1|     53|   373|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4      |           0|    366|  1263|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4      |           1|    110|  1263|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q1      |           0|    166|  1263|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q1      |           1|     78|  1263|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q2      |           0|    190|  1263|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q2      |           1|     68|  1263|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q3      |           0|    211|  1263|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q3      |           1|     74|  1263|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4      |           0|    531|  3044|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4      |           1|    309|  3044|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1      |           0|    372|  3044|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1      |           1|    309|  3044|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2      |           0|    330|  3044|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2      |           1|    210|  3044|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3      |           0|    582|  3044|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3      |           1|    401|  3044|
|0-24 months |CONTENT        |PERU                         |Wealth Q4      |           0|     50|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q4      |           1|      2|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q1      |           0|     58|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q1      |           1|      1|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q2      |           0|     50|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q2      |           1|      2|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q3      |           0|     52|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q3      |           1|      0|   215|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4      |           0|     68|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4      |           1|    102|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1      |           0|     73|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1      |           1|    101|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2      |           0|     70|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2      |           1|    102|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3      |           0|     70|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3      |           1|    100|   686|
|0-24 months |IRC            |INDIA                        |Wealth Q4      |           0|     32|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q4      |           1|     68|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q1      |           0|     34|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q1      |           1|     71|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q2      |           0|     42|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q2      |           1|     60|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q3      |           0|     33|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q3      |           1|     70|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4      |           0|   5435| 26932|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4      |           1|   1693| 26932|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1      |           0|   4661| 26932|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1      |           1|   1825| 26932|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2      |           0|   4864| 26932|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2      |           1|   1707| 26932|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3      |           0|   5024| 26932|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3      |           1|   1723| 26932|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4      |           0|    988|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4      |           1|    362|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1      |           0|    891|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1      |           1|    481|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2      |           0|    900|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2      |           1|    444|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3      |           0|    965|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3      |           1|    396|  5427|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q4      |           0|    208|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q4      |           1|      9|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q1      |           0|    180|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q1      |           1|     24|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q2      |           0|    180|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q2      |           1|     19|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q3      |           0|    183|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q3      |           1|     14|   817|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4      |           0|     44|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4      |           1|     17|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1      |           0|     40|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1      |           1|     20|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2      |           0|     36|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2      |           1|     25|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3      |           0|     38|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3      |           1|     22|   242|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q4      |           0|     44|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q4      |           1|      9|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q1      |           0|     48|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q1      |           1|      5|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q2      |           0|     50|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q2      |           1|      3|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q3      |           0|     48|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q3      |           1|      3|   210|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q4      |           0|     34|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q4      |           1|     25|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q1      |           0|     26|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q1      |           1|     34|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q2      |           0|     28|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q2      |           1|     30|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q3      |           0|     33|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q3      |           1|     25|   235|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q4      |           0|     42|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q4      |           1|     17|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q1      |           0|     37|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q1      |           1|     22|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q2      |           0|     47|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q2      |           1|     12|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q3      |           0|     37|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q3      |           1|     22|   236|
|0-24 months |MAL-ED         |PERU                         |Wealth Q4      |           0|     62|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q4      |           1|      6|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q1      |           0|     62|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q1      |           1|      6|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q2      |           0|     66|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q2      |           1|      5|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q3      |           0|     56|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q3      |           1|      9|   272|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4      |           0|     52|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4      |           1|     13|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1      |           0|     49|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1      |           1|     15|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2      |           0|     47|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2      |           1|     17|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3      |           0|     52|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3      |           1|     12|   257|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |           0|     58|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |           1|      5|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |           0|     56|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |           1|      7|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |           0|     52|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |           1|     10|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |           0|     48|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |           1|     14|   250|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4      |           0|    107|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4      |           1|     68|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1      |           0|    112|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1      |           1|     62|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2      |           0|    121|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2      |           1|     55|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3      |           0|    114|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3      |           1|     61|   700|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |           0|    447|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |           1|    146|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |           0|    558|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |           1|    161|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |           0|    367|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |           1|    116|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |           0|    448|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |           1|    141|  2384|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q4      |           0|     54|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q4      |           1|     41|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q1      |           0|     45|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q1      |           1|     45|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q2      |           0|     34|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q2      |           1|     59|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q3      |           0|     45|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q3      |           1|     45|   368|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q4      |           0|    297|  1015|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q4      |           1|     72|  1015|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q1      |           0|    146|  1015|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q1      |           1|     50|  1015|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q2      |           0|    166|  1015|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q2      |           1|     36|  1015|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q3      |           0|    200|  1015|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q3      |           1|     48|  1015|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q4      |           0|    627|  3043|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q4      |           1|    213|  3043|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q1      |           0|    504|  3043|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q1      |           1|    176|  3043|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q2      |           0|    424|  3043|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q2      |           1|    116|  3043|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q3      |           0|    771|  3043|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q3      |           1|    212|  3043|
|0-6 months  |CONTENT        |PERU                         |Wealth Q4      |           0|     51|   215|
|0-6 months  |CONTENT        |PERU                         |Wealth Q4      |           1|      1|   215|
|0-6 months  |CONTENT        |PERU                         |Wealth Q1      |           0|     58|   215|
|0-6 months  |CONTENT        |PERU                         |Wealth Q1      |           1|      1|   215|
|0-6 months  |CONTENT        |PERU                         |Wealth Q2      |           0|     50|   215|
|0-6 months  |CONTENT        |PERU                         |Wealth Q2      |           1|      2|   215|
|0-6 months  |CONTENT        |PERU                         |Wealth Q3      |           0|     52|   215|
|0-6 months  |CONTENT        |PERU                         |Wealth Q3      |           1|      0|   215|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q4      |           0|    109|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q4      |           1|     61|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q1      |           0|    113|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q1      |           1|     61|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q2      |           0|    104|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q2      |           1|     68|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q3      |           0|    102|   686|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q3      |           1|     68|   686|
|0-6 months  |IRC            |INDIA                        |Wealth Q4      |           0|     45|   410|
|0-6 months  |IRC            |INDIA                        |Wealth Q4      |           1|     55|   410|
|0-6 months  |IRC            |INDIA                        |Wealth Q1      |           0|     47|   410|
|0-6 months  |IRC            |INDIA                        |Wealth Q1      |           1|     58|   410|
|0-6 months  |IRC            |INDIA                        |Wealth Q2      |           0|     50|   410|
|0-6 months  |IRC            |INDIA                        |Wealth Q2      |           1|     52|   410|
|0-6 months  |IRC            |INDIA                        |Wealth Q3      |           0|     45|   410|
|0-6 months  |IRC            |INDIA                        |Wealth Q3      |           1|     58|   410|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q4      |           0|   5959| 26835|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q4      |           1|   1140| 26835|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q1      |           0|   5212| 26835|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q1      |           1|   1254| 26835|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q2      |           0|   5366| 26835|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q2      |           1|   1175| 26835|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q3      |           0|   5570| 26835|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q3      |           1|   1159| 26835|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q4      |           0|   1139|  5083|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q4      |           1|    132|  5083|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q1      |           0|   1112|  5083|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q1      |           1|    142|  5083|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q2      |           0|   1128|  5083|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q2      |           1|    135|  5083|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q3      |           0|   1156|  5083|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q3      |           1|    139|  5083|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q4      |           0|     73|   269|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q4      |           1|      0|   269|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q1      |           0|     65|   269|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q1      |           1|      3|   269|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q2      |           0|     64|   269|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q2      |           1|      0|   269|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q3      |           0|     63|   269|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q3      |           1|      1|   269|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q4      |           0|     47|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q4      |           1|     14|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q1      |           0|     47|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q1      |           1|     13|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q2      |           0|     47|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q2      |           1|     14|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q3      |           0|     44|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q3      |           1|     16|   242|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q4      |           0|     45|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q4      |           1|      8|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q1      |           0|     49|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q1      |           1|      4|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q2      |           0|     51|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q2      |           1|      2|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q3      |           0|     50|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q3      |           1|      1|   210|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q4      |           0|     45|   235|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q4      |           1|     14|   235|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q1      |           0|     40|   235|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q1      |           1|     20|   235|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q2      |           0|     36|   235|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q2      |           1|     22|   235|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q3      |           0|     38|   235|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q3      |           1|     20|   235|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q4      |           0|     44|   236|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q4      |           1|     15|   236|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q1      |           0|     44|   236|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q1      |           1|     15|   236|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q2      |           0|     51|   236|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q2      |           1|      8|   236|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q3      |           0|     50|   236|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q3      |           1|      9|   236|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q4      |           0|     66|   272|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q4      |           1|      2|   272|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q1      |           0|     66|   272|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q1      |           1|      2|   272|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q2      |           0|     69|   272|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q2      |           1|      2|   272|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q3      |           0|     61|   272|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q3      |           1|      4|   272|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q4      |           0|     58|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q4      |           1|      7|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q1      |           0|     55|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q1      |           1|      9|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q2      |           0|     58|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q2      |           1|      6|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q3      |           0|     58|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q3      |           1|      6|   257|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |           0|     61|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |           1|      2|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |           0|     60|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |           1|      3|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |           0|     57|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |           1|      5|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |           0|     59|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |           1|      3|   250|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q4      |           0|    124|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q4      |           1|     51|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q1      |           0|    123|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q1      |           1|     51|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q2      |           0|    140|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q2      |           1|     36|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q3      |           0|    132|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q3      |           1|     43|   700|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |           0|    506|  2384|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |           1|     87|  2384|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |           0|    613|  2384|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |           1|    106|  2384|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |           0|    429|  2384|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |           1|     54|  2384|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |           0|    504|  2384|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |           1|     85|  2384|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4      |           0|     77|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4      |           1|     19|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1      |           0|     63|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1      |           1|     28|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2      |           0|     65|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2      |           1|     30|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3      |           0|     69|   373|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3      |           1|     22|   373|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q4      |           0|    386|  1154|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q4      |           1|     47|  1154|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q1      |           0|    191|  1154|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q1      |           1|     34|  1154|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q2      |           0|    203|  1154|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q2      |           1|     38|  1154|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q3      |           0|    225|  1154|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q3      |           1|     30|  1154|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4      |           0|    626|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4      |           1|    145|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1      |           0|    406|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1      |           1|    200|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2      |           0|    368|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2      |           1|    136|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3      |           0|    660|  2809|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3      |           1|    268|  2809|
|6-24 months |CONTENT        |PERU                         |Wealth Q4      |           0|     50|   215|
|6-24 months |CONTENT        |PERU                         |Wealth Q4      |           1|      2|   215|
|6-24 months |CONTENT        |PERU                         |Wealth Q1      |           0|     59|   215|
|6-24 months |CONTENT        |PERU                         |Wealth Q1      |           1|      0|   215|
|6-24 months |CONTENT        |PERU                         |Wealth Q2      |           0|     52|   215|
|6-24 months |CONTENT        |PERU                         |Wealth Q2      |           1|      0|   215|
|6-24 months |CONTENT        |PERU                         |Wealth Q3      |           0|     52|   215|
|6-24 months |CONTENT        |PERU                         |Wealth Q3      |           1|      0|   215|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4      |           0|     79|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4      |           1|     69|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1      |           0|     72|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1      |           1|     74|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2      |           0|     84|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2      |           1|     71|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3      |           0|     76|   590|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3      |           1|     65|   590|
|6-24 months |IRC            |INDIA                        |Wealth Q4      |           0|     65|   410|
|6-24 months |IRC            |INDIA                        |Wealth Q4      |           1|     35|   410|
|6-24 months |IRC            |INDIA                        |Wealth Q1      |           0|     71|   410|
|6-24 months |IRC            |INDIA                        |Wealth Q1      |           1|     34|   410|
|6-24 months |IRC            |INDIA                        |Wealth Q2      |           0|     75|   410|
|6-24 months |IRC            |INDIA                        |Wealth Q2      |           1|     27|   410|
|6-24 months |IRC            |INDIA                        |Wealth Q3      |           0|     72|   410|
|6-24 months |IRC            |INDIA                        |Wealth Q3      |           1|     31|   410|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4      |           0|   4431| 17289|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4      |           1|    694| 17289|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1      |           0|   2955| 17289|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1      |           1|    737| 17289|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2      |           0|   3345| 17289|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2      |           1|    688| 17289|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3      |           0|   3726| 17289|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3      |           1|    713| 17289|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4      |           0|   1084|  5423|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4      |           1|    263|  5423|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1      |           0|    971|  5423|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1      |           1|    400|  5423|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2      |           0|    973|  5423|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2      |           1|    371|  5423|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3      |           0|   1054|  5423|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3      |           1|    307|  5423|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q4      |           0|    207|   805|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q4      |           1|      9|   805|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q1      |           0|    174|   805|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q1      |           1|     22|   805|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q2      |           0|    177|   805|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q2      |           1|     19|   805|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q3      |           0|    184|   805|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q3      |           1|     13|   805|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4      |           0|     54|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4      |           1|      7|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1      |           0|     48|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1      |           1|     10|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2      |           0|     45|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2      |           1|     16|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3      |           0|     50|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3      |           1|     10|   240|
|6-24 months |MAL-ED         |BRAZIL                       |Wealth Q4      |           0|     51|   207|
|6-24 months |MAL-ED         |BRAZIL                       |Wealth Q4      |           1|      2|   207|
|6-24 months |MAL-ED         |BRAZIL                       |Wealth Q1      |           0|     51|   207|
|6-24 months |MAL-ED         |BRAZIL                       |Wealth Q1      |           1|      1|   207|
|6-24 months |MAL-ED         |BRAZIL                       |Wealth Q2      |           0|     50|   207|
|6-24 months |MAL-ED         |BRAZIL                       |Wealth Q2      |           1|      1|   207|
|6-24 months |MAL-ED         |BRAZIL                       |Wealth Q3      |           0|     49|   207|
|6-24 months |MAL-ED         |BRAZIL                       |Wealth Q3      |           1|      2|   207|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q4      |           0|     45|   235|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q4      |           1|     14|   235|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q1      |           0|     38|   235|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q1      |           1|     22|   235|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q2      |           0|     42|   235|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q2      |           1|     16|   235|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q3      |           0|     46|   235|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q3      |           1|     12|   235|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q4      |           0|     53|   235|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q4      |           1|      6|   235|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q1      |           0|     50|   235|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q1      |           1|      8|   235|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q2      |           0|     54|   235|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q2      |           1|      5|   235|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q3      |           0|     42|   235|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q3      |           1|     17|   235|
|6-24 months |MAL-ED         |PERU                         |Wealth Q4      |           0|     62|   270|
|6-24 months |MAL-ED         |PERU                         |Wealth Q4      |           1|      5|   270|
|6-24 months |MAL-ED         |PERU                         |Wealth Q1      |           0|     64|   270|
|6-24 months |MAL-ED         |PERU                         |Wealth Q1      |           1|      4|   270|
|6-24 months |MAL-ED         |PERU                         |Wealth Q2      |           0|     68|   270|
|6-24 months |MAL-ED         |PERU                         |Wealth Q2      |           1|      3|   270|
|6-24 months |MAL-ED         |PERU                         |Wealth Q3      |           0|     58|   270|
|6-24 months |MAL-ED         |PERU                         |Wealth Q3      |           1|      6|   270|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4      |           0|     56|   255|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4      |           1|      7|   255|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1      |           0|     54|   255|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1      |           1|     10|   255|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2      |           0|     52|   255|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2      |           1|     12|   255|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3      |           0|     56|   255|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3      |           1|      8|   255|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |           0|     59|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |           1|      4|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |           0|     53|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |           1|      5|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |           0|     54|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |           1|      8|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |           0|     51|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |           1|     11|   245|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4      |           0|    111|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4      |           1|     27|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1      |           0|    136|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1      |           1|     24|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2      |           0|    143|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2      |           1|     22|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3      |           0|    126|   615|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3      |           1|     26|   615|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |           0|    402|  2010|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |           1|     86|  2010|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |           0|    529|  2010|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |           1|     80|  2010|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |           0|    327|  2010|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |           1|     80|  2010|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |           0|    429|  2010|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |           1|     77|  2010|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/7f70a806-5e07-4afd-9bdb-d467bab33bad/8ed3d129-1088-4496-b75e-5235c5ece90e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7f70a806-5e07-4afd-9bdb-d467bab33bad/8ed3d129-1088-4496-b75e-5235c5ece90e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7f70a806-5e07-4afd-9bdb-d467bab33bad/8ed3d129-1088-4496-b75e-5235c5ece90e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7f70a806-5e07-4afd-9bdb-d467bab33bad/8ed3d129-1088-4496-b75e-5235c5ece90e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             | 0.5427851| 0.4418698| 0.6437004|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1          |NA             | 0.5967583| 0.4934207| 0.7000960|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2          |NA             | 0.7277645| 0.6388787| 0.8166503|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3          |NA             | 0.5746971| 0.4739452| 0.6754491|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             | 0.2383083| 0.2061027| 0.2705139|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q1          |NA             | 0.2991986| 0.2488907| 0.3495064|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q2          |NA             | 0.2597802| 0.2131826| 0.3063777|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q3          |NA             | 0.2648721| 0.2198000| 0.3099442|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             | 0.3741954| 0.3447520| 0.4036387|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1          |NA             | 0.4351272| 0.3995773| 0.4706772|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2          |NA             | 0.3931947| 0.3537633| 0.4326261|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3          |NA             | 0.4126561| 0.3836985| 0.4416136|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             | 0.6155306| 0.5432098| 0.6878514|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1          |NA             | 0.5498652| 0.4822984| 0.6174319|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2          |NA             | 0.6000954| 0.5311213| 0.6690696|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3          |NA             | 0.5935765| 0.5241504| 0.6630027|
|0-24 months |IRC            |INDIA                        |Wealth Q4          |NA             | 0.6720400| 0.5775644| 0.7665157|
|0-24 months |IRC            |INDIA                        |Wealth Q1          |NA             | 0.6723829| 0.5835610| 0.7612048|
|0-24 months |IRC            |INDIA                        |Wealth Q2          |NA             | 0.5984847| 0.5040042| 0.6929652|
|0-24 months |IRC            |INDIA                        |Wealth Q3          |NA             | 0.6789921| 0.5890258| 0.7689585|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             | 0.2581718| 0.2430810| 0.2732626|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1          |NA             | 0.2631465| 0.2497486| 0.2765444|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2          |NA             | 0.2588318| 0.2463520| 0.2713115|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3          |NA             | 0.2597139| 0.2475474| 0.2718804|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             | 0.2916218| 0.2615671| 0.3216765|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1          |NA             | 0.3434644| 0.3150385| 0.3718904|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2          |NA             | 0.3324817| 0.3005040| 0.3644593|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3          |NA             | 0.2936617| 0.2641766| 0.3231468|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q4          |NA             | 0.0414747| 0.0149300| 0.0680193|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q1          |NA             | 0.1176471| 0.0734075| 0.1618866|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q2          |NA             | 0.0954774| 0.0546222| 0.1363326|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q3          |NA             | 0.0710660| 0.0351652| 0.1069668|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4          |NA             | 0.2802134| 0.1623452| 0.3980816|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1          |NA             | 0.3340180| 0.2088905| 0.4591455|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2          |NA             | 0.4216979| 0.2926142| 0.5507815|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3          |NA             | 0.3522311| 0.2263964| 0.4780657|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q4          |NA             | 0.4252914| 0.2965535| 0.5540293|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q1          |NA             | 0.5750779| 0.4465820| 0.7035738|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q2          |NA             | 0.5237020| 0.3963820| 0.6510219|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q3          |NA             | 0.4342260| 0.3053887| 0.5630634|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q4          |NA             | 0.2948955| 0.1791092| 0.4106818|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q1          |NA             | 0.4001223| 0.2727974| 0.5274473|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q2          |NA             | 0.2152910| 0.1121038| 0.3184782|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q3          |NA             | 0.3862398| 0.2617721| 0.5107076|
|0-24 months |MAL-ED         |PERU                         |Wealth Q4          |NA             | 0.0882353| 0.0206961| 0.1557745|
|0-24 months |MAL-ED         |PERU                         |Wealth Q1          |NA             | 0.0882353| 0.0206961| 0.1557745|
|0-24 months |MAL-ED         |PERU                         |Wealth Q2          |NA             | 0.0704225| 0.0107991| 0.1300460|
|0-24 months |MAL-ED         |PERU                         |Wealth Q3          |NA             | 0.1384615| 0.0543427| 0.2225804|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |NA             | 0.1987655| 0.0994040| 0.2981270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1          |NA             | 0.2306226| 0.1250301| 0.3362151|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2          |NA             | 0.2623535| 0.1505558| 0.3741513|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3          |NA             | 0.1799207| 0.0832644| 0.2765770|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | 0.0793651| 0.0124835| 0.1462467|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |NA             | 0.1111111| 0.0333521| 0.1888701|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |NA             | 0.1612903| 0.0695559| 0.2530248|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |NA             | 0.2258065| 0.1215230| 0.3300899|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             | 0.3426027| 0.2852174| 0.3999881|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1          |NA             | 0.3613199| 0.3033624| 0.4192773|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2          |NA             | 0.3621787| 0.2978452| 0.4265122|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3          |NA             | 0.3346183| 0.2736580| 0.3955786|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | 0.2455048| 0.2107919| 0.2802177|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |NA             | 0.2233005| 0.1929679| 0.2536331|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |NA             | 0.2414313| 0.2023393| 0.2805232|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |NA             | 0.2403843| 0.2049818| 0.2757869|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             | 0.4166069| 0.3133480| 0.5198659|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q1          |NA             | 0.5128784| 0.4041120| 0.6216448|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q2          |NA             | 0.6478805| 0.5509876| 0.7447734|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q3          |NA             | 0.4949996| 0.3887606| 0.6012386|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             | 0.1931216| 0.1541035| 0.2321396|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q1          |NA             | 0.2661772| 0.2063898| 0.3259647|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q2          |NA             | 0.1739196| 0.1234592| 0.2243800|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q3          |NA             | 0.1940490| 0.1455454| 0.2425526|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             | 0.2364822| 0.2137033| 0.2592612|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q1          |NA             | 0.2452875| 0.2180432| 0.2725317|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q2          |NA             | 0.2339211| 0.2033190| 0.2645232|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q3          |NA             | 0.2351590| 0.2134830| 0.2568351|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             | 0.3688003| 0.3033964| 0.4342042|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q1          |NA             | 0.3748150| 0.3142341| 0.4353959|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q2          |NA             | 0.3823193| 0.3157798| 0.4488589|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q3          |NA             | 0.3842041| 0.3190216| 0.4493866|
|0-6 months  |IRC            |INDIA                        |Wealth Q4          |NA             | 0.5706409| 0.4782662| 0.6630156|
|0-6 months  |IRC            |INDIA                        |Wealth Q1          |NA             | 0.5162050| 0.4307560| 0.6016539|
|0-6 months  |IRC            |INDIA                        |Wealth Q2          |NA             | 0.5111381| 0.4177083| 0.6045679|
|0-6 months  |IRC            |INDIA                        |Wealth Q3          |NA             | 0.5773224| 0.4884856| 0.6661592|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             | 0.1692599| 0.1574643| 0.1810554|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q1          |NA             | 0.1798563| 0.1687153| 0.1909973|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q2          |NA             | 0.1765327| 0.1664707| 0.1865946|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q3          |NA             | 0.1789553| 0.1695526| 0.1883579|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             | 0.0950955| 0.0805242| 0.1096668|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q1          |NA             | 0.1068891| 0.0909412| 0.1228370|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q2          |NA             | 0.1122916| 0.0943813| 0.1302019|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q3          |NA             | 0.1115990| 0.0947000| 0.1284981|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q4          |NA             | 0.2234818| 0.1155987| 0.3313649|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q1          |NA             | 0.2143175| 0.1073798| 0.3212551|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q2          |NA             | 0.2376572| 0.1267927| 0.3485216|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q3          |NA             | 0.2685253| 0.1542171| 0.3828335|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q4          |NA             | 0.2350597| 0.1246300| 0.3454894|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q1          |NA             | 0.3287029| 0.2088696| 0.4485362|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q2          |NA             | 0.3663326| 0.2377185| 0.4949466|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q3          |NA             | 0.3350132| 0.2124681| 0.4575582|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q4          |NA             | 0.2542373| 0.1428940| 0.3655806|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q1          |NA             | 0.2542373| 0.1428940| 0.3655806|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q2          |NA             | 0.1355932| 0.0480501| 0.2231364|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q3          |NA             | 0.1525424| 0.0606037| 0.2444811|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |NA             | 0.1076923| 0.0321852| 0.1831994|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q1          |NA             | 0.1406250| 0.0552900| 0.2259600|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q2          |NA             | 0.0937500| 0.0221992| 0.1653008|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q3          |NA             | 0.0937500| 0.0221992| 0.1653008|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             | 0.2863162| 0.2193861| 0.3532463|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q1          |NA             | 0.2979854| 0.2298951| 0.3660756|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q2          |NA             | 0.2091651| 0.1477525| 0.2705777|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q3          |NA             | 0.2457552| 0.1792201| 0.3122904|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | 0.1446455| 0.1159689| 0.1733220|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |NA             | 0.1511439| 0.1247725| 0.1775152|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |NA             | 0.1119715| 0.0834929| 0.1404502|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |NA             | 0.1450211| 0.1161774| 0.1738649|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             | 0.2006249| 0.1223193| 0.2789306|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1          |NA             | 0.3000722| 0.2021613| 0.3979831|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2          |NA             | 0.3151106| 0.2213495| 0.4088717|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3          |NA             | 0.2495301| 0.1593124| 0.3397478|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             | 0.1075671| 0.0783011| 0.1368330|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q1          |NA             | 0.1524367| 0.1050697| 0.1998038|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q2          |NA             | 0.1578091| 0.1114304| 0.2041878|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q3          |NA             | 0.1188838| 0.0790108| 0.1587568|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             | 0.2215854| 0.1926004| 0.2505705|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1          |NA             | 0.3125709| 0.2745590| 0.3505827|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2          |NA             | 0.2568384| 0.2174258| 0.2962510|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3          |NA             | 0.2759014| 0.2470335| 0.3047693|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             | 0.4876230| 0.4064928| 0.5687533|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1          |NA             | 0.4785188| 0.3984896| 0.5585480|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2          |NA             | 0.4580316| 0.3782327| 0.5378304|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3          |NA             | 0.4741549| 0.3917215| 0.5565883|
|6-24 months |IRC            |INDIA                        |Wealth Q4          |NA             | 0.3489913| 0.2548690| 0.4431136|
|6-24 months |IRC            |INDIA                        |Wealth Q1          |NA             | 0.3157080| 0.2246406| 0.4067753|
|6-24 months |IRC            |INDIA                        |Wealth Q2          |NA             | 0.2592882| 0.1711529| 0.3474235|
|6-24 months |IRC            |INDIA                        |Wealth Q3          |NA             | 0.2975387| 0.2079605| 0.3871168|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             | 0.1545561| 0.1385026| 0.1706097|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1          |NA             | 0.1801959| 0.1635694| 0.1968223|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2          |NA             | 0.1714036| 0.1564382| 0.1863691|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3          |NA             | 0.1606024| 0.1469903| 0.1742146|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             | 0.2221676| 0.1923243| 0.2520109|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1          |NA             | 0.2763802| 0.2505432| 0.3022173|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2          |NA             | 0.2773701| 0.2461219| 0.3086183|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3          |NA             | 0.2266841| 0.1980842| 0.2552840|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q4          |NA             | 0.0416667| 0.0150015| 0.0683318|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q1          |NA             | 0.1122449| 0.0680248| 0.1564650|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q2          |NA             | 0.0969388| 0.0554914| 0.1383862|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q3          |NA             | 0.0659898| 0.0313003| 0.1006794|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4          |NA             | 0.1147541| 0.0346037| 0.1949045|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1          |NA             | 0.1724138| 0.0749971| 0.2698305|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2          |NA             | 0.2622951| 0.1516770| 0.3729132|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3          |NA             | 0.1666667| 0.0721708| 0.2611625|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q4          |NA             | 0.2338666| 0.1225550| 0.3451781|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q1          |NA             | 0.3619219| 0.2372440| 0.4865999|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q2          |NA             | 0.2706407| 0.1534616| 0.3878199|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q3          |NA             | 0.2072102| 0.1002760| 0.3141445|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q4          |NA             | 0.1016949| 0.0244073| 0.1789825|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q1          |NA             | 0.1379310| 0.0489982| 0.2268639|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q2          |NA             | 0.0847458| 0.0135297| 0.1559618|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q3          |NA             | 0.2881356| 0.1723258| 0.4039454|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |NA             | 0.1111111| 0.0333552| 0.1888670|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1          |NA             | 0.1562500| 0.0671191| 0.2453809|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2          |NA             | 0.1875000| 0.0916872| 0.2833128|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3          |NA             | 0.1250000| 0.0438160| 0.2061840|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             | 0.1653055| 0.1003789| 0.2302321|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1          |NA             | 0.1664189| 0.1111011| 0.2217367|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2          |NA             | 0.1449349| 0.0892453| 0.2006246|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3          |NA             | 0.1703368| 0.1102272| 0.2304464|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | 0.1710299| 0.1382661| 0.2037938|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |NA             | 0.1267728| 0.1002951| 0.1532505|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |NA             | 0.1989433| 0.1591339| 0.2387526|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |NA             | 0.1554360| 0.1234815| 0.1873904|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.6112601| 0.5617242| 0.6607959|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.2612827| 0.2370438| 0.2855216|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.4037451| 0.3863123| 0.4211779|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.5903790| 0.5535526| 0.6272054|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.6560976| 0.6100625| 0.7021326|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.2579831| 0.2515145| 0.2644516|
|0-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.3101161| 0.2957091| 0.3245231|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.0807834| 0.0620863| 0.0994804|
|0-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.3471074| 0.2870050| 0.4072099|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.4851064| 0.4210714| 0.5491414|
|0-24 months |MAL-ED         |NEPAL                        |NA                 |NA             | 0.3093220| 0.2502261| 0.3684179|
|0-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.0955882| 0.0605817| 0.1305947|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.2217899| 0.1708981| 0.2726816|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1440000| 0.1003920| 0.1876080|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.3514286| 0.3160364| 0.3868207|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2365772| 0.2195142| 0.2536402|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.5163043| 0.4651769| 0.5674318|
|0-6 months  |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.2029557| 0.1782002| 0.2277111|
|0-6 months  |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.2356227| 0.2205417| 0.2507038|
|0-6 months  |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.3760933| 0.3398180| 0.4123685|
|0-6 months  |IRC            |INDIA                        |NA                 |NA             | 0.5439024| 0.4956326| 0.5921723|
|0-6 months  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1761878| 0.1705589| 0.1818167|
|0-6 months  |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.1078103| 0.0979894| 0.1176312|
|0-6 months  |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.2355372| 0.1819640| 0.2891104|
|0-6 months  |MAL-ED         |INDIA                        |NA                 |NA             | 0.3234043| 0.2634696| 0.3833389|
|0-6 months  |MAL-ED         |NEPAL                        |NA                 |NA             | 0.1991525| 0.1480924| 0.2502127|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.1089494| 0.0707821| 0.1471167|
|0-6 months  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.2585714| 0.2261125| 0.2910304|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1392617| 0.1253610| 0.1531625|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.2654155| 0.2205451| 0.3102860|
|6-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.1291161| 0.1097606| 0.1484716|
|6-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.2666429| 0.2502871| 0.2829988|
|6-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.4728814| 0.4325613| 0.5132014|
|6-24 months |IRC            |INDIA                        |NA                 |NA             | 0.3097561| 0.2649438| 0.3545684|
|6-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1638036| 0.1576801| 0.1699271|
|6-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.2472801| 0.2337480| 0.2608122|
|6-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.0782609| 0.0596958| 0.0968259|
|6-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.1791667| 0.1305478| 0.2277856|
|6-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.2723404| 0.2153029| 0.3293779|
|6-24 months |MAL-ED         |NEPAL                        |NA                 |NA             | 0.1531915| 0.1070438| 0.1993392|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.1450980| 0.1017849| 0.1884112|
|6-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1609756| 0.1319065| 0.1900447|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1606965| 0.1446374| 0.1767556|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1          |Wealth Q4      | 1.0994376| 0.8520322| 1.4186823|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2          |Wealth Q4      | 1.3407967| 1.0740931| 1.6737244|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3          |Wealth Q4      | 1.0587931| 0.8206407| 1.3660580|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q1          |Wealth Q4      | 1.2555105| 1.0280664| 1.5332731|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q2          |Wealth Q4      | 1.0901013| 0.8848574| 1.3429518|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q3          |Wealth Q4      | 1.1114684| 0.9101093| 1.3573776|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1          |Wealth Q4      | 1.1628344| 1.0421598| 1.2974822|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2          |Wealth Q4      | 1.0507739| 0.9285078| 1.1891399|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3          |Wealth Q4      | 1.1027824| 0.9972198| 1.2195195|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1          |Wealth Q4      | 0.8933190| 0.7565027| 1.0548790|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2          |Wealth Q4      | 0.9749238| 0.8301134| 1.1449960|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3          |Wealth Q4      | 0.9643331| 0.8196376| 1.1345726|
|0-24 months |IRC            |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |IRC            |INDIA                        |Wealth Q1          |Wealth Q4      | 1.0005102| 0.8251673| 1.2131125|
|0-24 months |IRC            |INDIA                        |Wealth Q2          |Wealth Q4      | 0.8905493| 0.7211903| 1.0996792|
|0-24 months |IRC            |INDIA                        |Wealth Q3          |Wealth Q4      | 1.0103448| 0.8328265| 1.2257014|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.0192692| 0.9461576| 1.0980304|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.0025565| 0.9335286| 1.0766885|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.0059733| 0.9355814| 1.0816613|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.1777735| 1.0340886| 1.3414232|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.1401125| 0.9934581| 1.3084159|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.0069950| 0.8733348| 1.1611113|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q1          |Wealth Q4      | 2.8366013| 1.3502532| 5.9591095|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q2          |Wealth Q4      | 2.3020659| 1.0660043| 4.9713751|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q3          |Wealth Q4      | 1.7134800| 0.7581722| 3.8724891|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.1920130| 0.6783046| 2.0947741|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.5049169| 0.8943757| 2.5322411|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.2570101| 0.7234003| 2.1842324|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q1          |Wealth Q4      | 1.3521973| 0.9273683| 1.9716412|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q2          |Wealth Q4      | 1.2313957| 0.8353404| 1.8152304|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q3          |Wealth Q4      | 1.0210083| 0.6675429| 1.5616343|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q1          |Wealth Q4      | 1.3568274| 0.8185445| 2.2490905|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q2          |Wealth Q4      | 0.7300586| 0.3920097| 1.3596235|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q3          |Wealth Q4      | 1.3097514| 0.7873754| 2.1786925|
|0-24 months |MAL-ED         |PERU                         |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |PERU                         |Wealth Q1          |Wealth Q4      | 1.0000000| 0.3387470| 2.9520560|
|0-24 months |MAL-ED         |PERU                         |Wealth Q2          |Wealth Q4      | 0.7981221| 0.2549050| 2.4989660|
|0-24 months |MAL-ED         |PERU                         |Wealth Q3          |Wealth Q4      | 1.5692308| 0.5905794| 4.1696087|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1          |Wealth Q4      | 1.1602747| 0.5890003| 2.2856307|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2          |Wealth Q4      | 1.3199148| 0.6841741| 2.5463915|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3          |Wealth Q4      | 0.9051908| 0.4346634| 1.8850686|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |Wealth Q4      | 1.4000000| 0.4681641| 4.1865664|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |Wealth Q4      | 2.0322581| 0.7352592| 5.6171658|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |Wealth Q4      | 2.8451613| 1.0883485| 7.4378221|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.0546322| 0.8531442| 1.3037058|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.0571389| 0.8421738| 1.3269740|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 0.9766947| 0.7777678| 1.2265004|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |Wealth Q4      | 0.9095564| 0.7483532| 1.1054844|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |Wealth Q4      | 0.9834076| 0.7938591| 1.2182143|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |Wealth Q4      | 0.9791431| 0.7987906| 1.2002161|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q1          |Wealth Q4      | 1.2310847| 0.8878302| 1.7070488|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q2          |Wealth Q4      | 1.5551361| 1.1642120| 2.0773264|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q3          |Wealth Q4      | 1.1881694| 0.8557247| 1.6497670|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q1          |Wealth Q4      | 1.3782884| 1.0233056| 1.8564142|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q2          |Wealth Q4      | 0.9005707| 0.6354832| 1.2762376|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q3          |Wealth Q4      | 1.0048023| 0.7317384| 1.3797658|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q1          |Wealth Q4      | 1.0372342| 0.9079352| 1.1849467|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q2          |Wealth Q4      | 0.9891698| 0.8514807| 1.1491240|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q3          |Wealth Q4      | 0.9944047| 0.8852173| 1.1170598|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q1          |Wealth Q4      | 1.0163088| 0.8098263| 1.2754384|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q2          |Wealth Q4      | 1.0366567| 0.8179767| 1.3137993|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q3          |Wealth Q4      | 1.0417673| 0.8239874| 1.3171063|
|0-6 months  |IRC            |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |IRC            |INDIA                        |Wealth Q1          |Wealth Q4      | 0.9046056| 0.7231788| 1.1315476|
|0-6 months  |IRC            |INDIA                        |Wealth Q2          |Wealth Q4      | 0.8957264| 0.7044129| 1.1389992|
|0-6 months  |IRC            |INDIA                        |Wealth Q3          |Wealth Q4      | 1.0117087| 0.8143614| 1.2568801|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.0626044| 0.9725549| 1.1609917|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.0429681| 0.9598810| 1.1332472|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.0572811| 0.9744123| 1.1471975|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.1240188| 0.9270165| 1.3628864|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.1808306| 0.9641753| 1.4461696|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.1735475| 0.9654312| 1.4265270|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 0.9589931| 0.4786716| 1.9212921|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.0634298| 0.5431690| 2.0820094|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.2015534| 0.6306737| 2.2891877|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q1          |Wealth Q4      | 1.3983804| 0.7723804| 2.5317418|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q2          |Wealth Q4      | 1.5584661| 0.8675831| 2.7995205|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q3          |Wealth Q4      | 1.4252258| 0.7862773| 2.5833998|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q1          |Wealth Q4      | 1.0000000| 0.5382914| 1.8577300|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q2          |Wealth Q4      | 0.5333333| 0.2444457| 1.1636306|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q3          |Wealth Q4      | 0.6000000| 0.2848341| 1.2638937|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q1          |Wealth Q4      | 1.3058036| 0.5166174| 3.3005526|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q2          |Wealth Q4      | 0.8705357| 0.3088113| 2.4540307|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q3          |Wealth Q4      | 0.8705357| 0.3088113| 2.4540307|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.0407561| 0.7505040| 1.4432611|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 0.7305387| 0.5018520| 1.0634348|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 0.8583350| 0.6003518| 1.2271788|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |Wealth Q4      | 1.0449263| 0.8026157| 1.3603908|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |Wealth Q4      | 0.7741101| 0.5608593| 1.0684434|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |Wealth Q4      | 1.0025969| 0.7573638| 1.3272361|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1          |Wealth Q4      | 1.4956873| 0.9003233| 2.4847526|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2          |Wealth Q4      | 1.5706450| 0.9615642| 2.5655339|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3          |Wealth Q4      | 1.2437639| 0.7329821| 2.1104862|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q1          |Wealth Q4      | 1.4171320| 0.9375666| 2.1419952|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q2          |Wealth Q4      | 1.4670765| 0.9835123| 2.1883951|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q3          |Wealth Q4      | 1.1052064| 0.7180363| 1.7011412|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1          |Wealth Q4      | 1.4106111| 1.1807854| 1.6851697|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2          |Wealth Q4      | 1.1590941| 0.9483457| 1.4166766|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3          |Wealth Q4      | 1.2451245| 1.0541120| 1.4707497|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1          |Wealth Q4      | 0.9813293| 0.7760525| 1.2409047|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2          |Wealth Q4      | 0.9393148| 0.7386737| 1.1944548|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3          |Wealth Q4      | 0.9723800| 0.7659582| 1.2344314|
|6-24 months |IRC            |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |IRC            |INDIA                        |Wealth Q1          |Wealth Q4      | 0.9046298| 0.6091242| 1.3434947|
|6-24 months |IRC            |INDIA                        |Wealth Q2          |Wealth Q4      | 0.7429646| 0.4813638| 1.1467343|
|6-24 months |IRC            |INDIA                        |Wealth Q3          |Wealth Q4      | 0.8525675| 0.5689812| 1.2774962|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.1658927| 1.0181174| 1.3351170|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.1090055| 0.9660476| 1.2731187|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.0391202| 0.9092523| 1.1875371|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.2440170| 1.0577289| 1.4631143|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.2484724| 1.0504295| 1.4838533|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.0203293| 0.8478485| 1.2278985|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q1          |Wealth Q4      | 2.6938776| 1.2705852| 5.7115225|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q2          |Wealth Q4      | 2.3265306| 1.0775900| 5.0230096|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q3          |Wealth Q4      | 1.5837563| 0.6918492| 3.6254783|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.5024631| 0.6118479| 3.6894710|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 2.2857143| 1.0108353| 5.1684874|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.4523810| 0.5907242| 3.5708890|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q1          |Wealth Q4      | 1.5475574| 0.8590746| 2.7878067|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q2          |Wealth Q4      | 1.1572443| 0.6073827| 2.2048940|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q3          |Wealth Q4      | 0.8860191| 0.4385057| 1.7902387|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q1          |Wealth Q4      | 1.3563218| 0.5006373| 3.6745339|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q2          |Wealth Q4      | 0.8333333| 0.2683774| 2.5875671|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q3          |Wealth Q4      | 2.8333333| 1.1992816| 6.6938220|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1          |Wealth Q4      | 1.4062500| 0.5701159| 3.4686613|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2          |Wealth Q4      | 1.6875000| 0.7094491| 4.0138977|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3          |Wealth Q4      | 1.1250000| 0.4330240| 2.9227598|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.0067354| 0.6031220| 1.6804495|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 0.8767703| 0.5067683| 1.5169185|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.0304364| 0.6099903| 1.7406821|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |Wealth Q4      | 0.7412316| 0.5591088| 0.9826787|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |Wealth Q4      | 1.1632072| 0.8826267| 1.5329822|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |Wealth Q4      | 0.9088231| 0.6867979| 1.2026237|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             |  0.0684749| -0.0180511| 0.1550010|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             |  0.0229744| -0.0007898| 0.0467385|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             |  0.0295497|  0.0047603| 0.0543391|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             | -0.0251516| -0.0866354| 0.0363322|
|0-24 months |IRC            |INDIA                        |Wealth Q4          |NA             | -0.0159425| -0.0982110| 0.0663261|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             | -0.0001887| -0.0137339| 0.0133565|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             |  0.0184943| -0.0096034| 0.0465920|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q4          |NA             |  0.0393087|  0.0132339| 0.0653835|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4          |NA             |  0.0668940| -0.0375095| 0.1712976|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q4          |NA             |  0.0598150| -0.0520551| 0.1716851|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q4          |NA             |  0.0144265| -0.0866662| 0.1155192|
|0-24 months |MAL-ED         |PERU                         |Wealth Q4          |NA             |  0.0073529| -0.0518605| 0.0665664|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |NA             |  0.0230244| -0.0639366| 0.1099854|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             |  0.0646349|  0.0004450| 0.1288248|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             |  0.0088258| -0.0366114| 0.0542631|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | -0.0089276| -0.0390395| 0.0211843|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             |  0.0996974|  0.0099232| 0.1894716|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             |  0.0098341| -0.0211674| 0.0408356|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             | -0.0008595| -0.0182313| 0.0165124|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             |  0.0072930| -0.0466222| 0.0612081|
|0-6 months  |IRC            |INDIA                        |Wealth Q4          |NA             | -0.0267385| -0.1049561| 0.0514792|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             |  0.0069279| -0.0034722| 0.0173281|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             |  0.0127149|  0.0008619| 0.0245679|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q4          |NA             |  0.0120554| -0.0818177| 0.1059285|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q4          |NA             |  0.0883445| -0.0101841| 0.1868732|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q4          |NA             | -0.0550847| -0.1489240| 0.0387545|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |NA             |  0.0012571| -0.0641197| 0.0666339|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             | -0.0277448| -0.0852101| 0.0297205|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | -0.0053837| -0.0301563| 0.0193889|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             |  0.0647906| -0.0054318| 0.1350130|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             |  0.0215490| -0.0026706| 0.0457687|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             |  0.0450575|  0.0191314| 0.0709836|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             | -0.0147417| -0.0848671| 0.0553837|
|6-24 months |IRC            |INDIA                        |Wealth Q4          |NA             | -0.0392352| -0.1203409| 0.0418704|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             |  0.0092474| -0.0055741| 0.0240689|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             |  0.0251125| -0.0030251| 0.0532502|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q4          |NA             |  0.0365942|  0.0106304| 0.0625580|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4          |NA             |  0.0644126| -0.0098997| 0.1387248|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q4          |NA             |  0.0384739| -0.0594856| 0.1364333|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q4          |NA             |  0.0514966| -0.0199428| 0.1229360|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |NA             |  0.0339869| -0.0362597| 0.1042336|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             | -0.0043299| -0.0603885| 0.0517288|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | -0.0103334| -0.0386327| 0.0179658|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             |  0.1120226| -0.0420805| 0.2433369|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             |  0.0879292| -0.0072151| 0.1740858|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             |  0.0731890|  0.0098253| 0.1324980|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             | -0.0426024| -0.1521008| 0.0564890|
|0-24 months |IRC            |INDIA                        |Wealth Q4          |NA             | -0.0242989| -0.1576909| 0.0937234|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             | -0.0007314| -0.0546371| 0.0504190|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             |  0.0596366| -0.0351685| 0.1457591|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q4          |NA             |  0.4865941|  0.0711724| 0.7162168|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4          |NA             |  0.1927186| -0.1720512| 0.4439635|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q4          |NA             |  0.1233028| -0.1411652| 0.3264797|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q4          |NA             |  0.0466392| -0.3430392| 0.3232536|
|0-24 months |MAL-ED         |PERU                         |Wealth Q4          |NA             |  0.0769231| -0.8048615| 0.5279023|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |NA             |  0.1038116| -0.3880070| 0.4213620|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             |  0.4488536| -0.1993803| 0.7467339|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             |  0.0251142| -0.1131511| 0.1462054|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | -0.0377366| -0.1731646| 0.0820578|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             |  0.1930981| -0.0022090| 0.3503445|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             |  0.0484544| -0.1171405| 0.1895029|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             | -0.0036477| -0.0801560| 0.0674414|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             |  0.0193914| -0.1350174| 0.1527943|
|0-6 months  |IRC            |INDIA                        |Wealth Q4          |NA             | -0.0491604| -0.2033101| 0.0852420|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             |  0.0393213| -0.0215647| 0.0965784|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             |  0.1179376|  0.0015432| 0.2207634|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q4          |NA             |  0.0511827| -0.4443151| 0.3766912|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q4          |NA             |  0.2731706| -0.1044731| 0.5216897|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q4          |NA             | -0.2765957| -0.8436894| 0.1160677|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |NA             |  0.0115385| -0.8138550| 0.4613372|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             | -0.1073003| -0.3533671| 0.0940270|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | -0.0386591| -0.2326323| 0.1247896|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             |  0.2441100| -0.0696848| 0.4658524|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             |  0.1668966| -0.0420657| 0.3339564|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             |  0.1689807|  0.0665814| 0.2601464|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             | -0.0311742| -0.1906677| 0.1069547|
|6-24 months |IRC            |INDIA                        |Wealth Q4          |NA             | -0.1266649| -0.4213696| 0.1069362|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             |  0.0564544| -0.0385436| 0.1427627|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             |  0.1015550| -0.0192088| 0.2080097|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q4          |NA             |  0.4675926|  0.0389644| 0.7050498|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4          |NA             |  0.3595120| -0.2080619| 0.6604273|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q4          |NA             |  0.1412713| -0.3054769| 0.4351374|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q4          |NA             |  0.3361582| -0.3232314| 0.6669623|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |NA             |  0.2342342| -0.4339632| 0.5910654|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             | -0.0268977| -0.4410415| 0.2682245|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | -0.0643040| -0.2558303| 0.0980127|
