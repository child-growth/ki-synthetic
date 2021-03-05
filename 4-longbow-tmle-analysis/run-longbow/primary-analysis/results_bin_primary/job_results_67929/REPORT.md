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
* delta_sex
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

|agecat      |studyid        |country                      |hhwealth_quart | ever_stunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:--------------|------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4      |            0|      6|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4      |            1|     90|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1      |            0|      6|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1      |            1|     85|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2      |            0|      8|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2      |            1|     87|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3      |            0|      8|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3      |            1|     83|   373|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4      |            0|    130|  1278|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4      |            1|    355|  1278|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q1      |            0|     47|  1278|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q1      |            1|    198|  1278|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q2      |            0|     45|  1278|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q2      |            1|    215|  1278|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q3      |            0|     70|  1278|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q3      |            1|    218|  1278|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4      |            0|    370|  3057|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4      |            1|    473|  3057|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1      |            0|    195|  3057|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1      |            1|    492|  3057|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2      |            0|    157|  3057|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2      |            1|    385|  3057|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3      |            0|    236|  3057|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3      |            1|    749|  3057|
|0-24 months |CONTENT        |PERU                         |Wealth Q4      |            0|     44|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q4      |            1|      8|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q1      |            0|     42|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q1      |            1|     17|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q2      |            0|     35|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q2      |            1|     17|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q3      |            0|     41|   215|
|0-24 months |CONTENT        |PERU                         |Wealth Q3      |            1|     11|   215|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4      |            0|     65|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4      |            1|    110|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1      |            0|     60|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1      |            1|    115|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2      |            0|     56|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2      |            1|    118|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3      |            0|     71|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3      |            1|    103|   698|
|0-24 months |IRC            |INDIA                        |Wealth Q4      |            0|     48|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q4      |            1|     52|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q1      |            0|     34|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q1      |            1|     71|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q2      |            0|     32|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q2      |            1|     70|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q3      |            0|     33|   410|
|0-24 months |IRC            |INDIA                        |Wealth Q3      |            1|     70|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4      |            0|   4308| 27203|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4      |            1|   2849| 27203|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1      |            0|   2888| 27203|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1      |            1|   3698| 27203|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2      |            0|   3091| 27203|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2      |            1|   3551| 27203|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3      |            0|   3439| 27203|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3      |            1|   3379| 27203|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4      |            0|    682|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4      |            1|    668|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1      |            0|    498|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1      |            1|    874|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2      |            0|    506|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2      |            1|    837|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3      |            0|    583|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3      |            1|    778|  5426|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q4      |            0|     84|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q4      |            1|    133|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q1      |            0|     80|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q1      |            1|    124|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q2      |            0|     72|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q2      |            1|    127|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q3      |            0|     60|   817|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q3      |            1|    137|   817|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4      |            0|     30|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4      |            1|     31|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1      |            0|     24|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1      |            1|     36|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2      |            0|     17|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2      |            1|     44|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3      |            0|     22|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3      |            1|     38|   242|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q4      |            0|     38|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q4      |            1|     15|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q1      |            0|     39|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q1      |            1|     14|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q2      |            0|     41|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q2      |            1|     12|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q3      |            0|     36|   210|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q3      |            1|     15|   210|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q4      |            0|     21|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q4      |            1|     38|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q1      |            0|     24|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q1      |            1|     36|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q2      |            0|     22|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q2      |            1|     36|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q3      |            0|     22|   235|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q3      |            1|     36|   235|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q4      |            0|     41|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q4      |            1|     18|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q1      |            0|     39|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q1      |            1|     20|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q2      |            0|     41|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q2      |            1|     18|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q3      |            0|     33|   236|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q3      |            1|     26|   236|
|0-24 months |MAL-ED         |PERU                         |Wealth Q4      |            0|     19|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q4      |            1|     49|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q1      |            0|     31|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q1      |            1|     37|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q2      |            0|     20|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q2      |            1|     51|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q3      |            0|     21|   272|
|0-24 months |MAL-ED         |PERU                         |Wealth Q3      |            1|     44|   272|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4      |            0|     32|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4      |            1|     33|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1      |            0|     19|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1      |            1|     45|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2      |            0|     25|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2      |            1|     39|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3      |            0|     22|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3      |            1|     42|   257|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |            0|      4|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |            1|     59|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |            0|     13|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |            1|     50|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |            0|      9|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |            1|     53|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |            0|      8|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |            1|     54|   250|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4      |            0|     87|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4      |            1|     88|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1      |            0|    105|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1      |            1|     69|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2      |            0|    112|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2      |            1|     64|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3      |            0|     91|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3      |            1|     84|   700|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |            0|    361|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |            1|    232|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |            0|    498|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |            1|    221|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |            0|    310|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |            1|    173|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |            0|    388|  2384|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |            1|    201|  2384|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q4      |            0|     31|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q4      |            1|     64|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q1      |            0|     55|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q1      |            1|     35|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q2      |            0|     46|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q2      |            1|     47|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q3      |            0|     48|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q3      |            1|     42|   368|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q4      |            0|    277|  1037|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q4      |            1|    105|  1037|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q1      |            0|    127|  1037|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q1      |            1|     70|  1037|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q2      |            0|    132|  1037|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q2      |            1|     73|  1037|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q3      |            0|    165|  1037|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q3      |            1|     88|  1037|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q4      |            0|    689|  3057|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q4      |            1|    154|  3057|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q1      |            0|    506|  3057|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q1      |            1|    181|  3057|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q2      |            0|    398|  3057|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q2      |            1|    144|  3057|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q3      |            0|    733|  3057|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q3      |            1|    252|  3057|
|0-6 months  |CONTENT        |PERU                         |Wealth Q4      |            0|     47|   215|
|0-6 months  |CONTENT        |PERU                         |Wealth Q4      |            1|      5|   215|
|0-6 months  |CONTENT        |PERU                         |Wealth Q1      |            0|     52|   215|
|0-6 months  |CONTENT        |PERU                         |Wealth Q1      |            1|      7|   215|
|0-6 months  |CONTENT        |PERU                         |Wealth Q2      |            0|     41|   215|
|0-6 months  |CONTENT        |PERU                         |Wealth Q2      |            1|     11|   215|
|0-6 months  |CONTENT        |PERU                         |Wealth Q3      |            0|     48|   215|
|0-6 months  |CONTENT        |PERU                         |Wealth Q3      |            1|      4|   215|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q4      |            0|    123|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q4      |            1|     52|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q1      |            0|    116|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q1      |            1|     59|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q2      |            0|    116|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q2      |            1|     58|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q3      |            0|    121|   698|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q3      |            1|     53|   698|
|0-6 months  |IRC            |INDIA                        |Wealth Q4      |            0|     60|   410|
|0-6 months  |IRC            |INDIA                        |Wealth Q4      |            1|     40|   410|
|0-6 months  |IRC            |INDIA                        |Wealth Q1      |            0|     61|   410|
|0-6 months  |IRC            |INDIA                        |Wealth Q1      |            1|     44|   410|
|0-6 months  |IRC            |INDIA                        |Wealth Q2      |            0|     51|   410|
|0-6 months  |IRC            |INDIA                        |Wealth Q2      |            1|     51|   410|
|0-6 months  |IRC            |INDIA                        |Wealth Q3      |            0|     64|   410|
|0-6 months  |IRC            |INDIA                        |Wealth Q3      |            1|     39|   410|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q4      |            0|   4866| 27137|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q4      |            1|   2265| 27137|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q1      |            0|   3410| 27137|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q1      |            1|   3162| 27137|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q2      |            0|   3648| 27137|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q2      |            1|   2977| 27137|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q3      |            0|   4003| 27137|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q3      |            1|   2806| 27137|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q4      |            0|    908|  5117|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q4      |            1|    369|  5117|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q1      |            0|    763|  5117|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q1      |            1|    504|  5117|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q2      |            0|    802|  5117|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q2      |            1|    470|  5117|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q3      |            0|    866|  5117|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q3      |            1|    435|  5117|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q4      |            0|     50|   269|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q4      |            1|     23|   269|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q1      |            0|     45|   269|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q1      |            1|     23|   269|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q2      |            0|     39|   269|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q2      |            1|     25|   269|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q3      |            0|     40|   269|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q3      |            1|     24|   269|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q4      |            0|     45|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q4      |            1|     16|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q1      |            0|     35|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q1      |            1|     25|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q2      |            0|     39|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q2      |            1|     22|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q3      |            0|     41|   242|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q3      |            1|     19|   242|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q4      |            0|     43|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q4      |            1|     10|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q1      |            0|     40|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q1      |            1|     13|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q2      |            0|     43|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q2      |            1|     10|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q3      |            0|     39|   210|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q3      |            1|     12|   210|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q4      |            0|     39|   235|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q4      |            1|     20|   235|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q1      |            0|     36|   235|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q1      |            1|     24|   235|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q2      |            0|     39|   235|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q2      |            1|     19|   235|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q3      |            0|     40|   235|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q3      |            1|     18|   235|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q4      |            0|     49|   236|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q4      |            1|     10|   236|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q1      |            0|     47|   236|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q1      |            1|     12|   236|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q2      |            0|     51|   236|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q2      |            1|      8|   236|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q3      |            0|     48|   236|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q3      |            1|     11|   236|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q4      |            0|     40|   272|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q4      |            1|     28|   272|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q1      |            0|     40|   272|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q1      |            1|     28|   272|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q2      |            0|     37|   272|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q2      |            1|     34|   272|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q3      |            0|     33|   272|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q3      |            1|     32|   272|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q4      |            0|     43|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q4      |            1|     22|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q1      |            0|     35|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q1      |            1|     29|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q2      |            0|     39|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q2      |            1|     25|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q3      |            0|     39|   257|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q3      |            1|     25|   257|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |            0|     40|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |            1|     23|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |            0|     34|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |            1|     29|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |            0|     38|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |            1|     24|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |            0|     35|   250|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |            1|     27|   250|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q4      |            0|    127|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q4      |            1|     48|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q1      |            0|    130|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q1      |            1|     44|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q2      |            0|    146|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q2      |            1|     30|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q3      |            0|    129|   700|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q3      |            1|     46|   700|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |            0|    448|  2384|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |            1|    145|  2384|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |            0|    598|  2384|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |            1|    121|  2384|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |            0|    385|  2384|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |            1|     98|  2384|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |            0|    488|  2384|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |            1|    101|  2384|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4      |            0|      6|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4      |            1|     26|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1      |            0|      6|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1      |            1|     50|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2      |            0|      8|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2      |            1|     40|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3      |            0|      8|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3      |            1|     41|   185|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q4      |            0|     90|   848|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q4      |            1|    250|   848|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q1      |            0|     32|   848|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q1      |            1|    128|   848|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q2      |            0|     30|   848|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q2      |            1|    142|   848|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q3      |            0|     46|   848|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q3      |            1|    130|   848|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4      |            0|    309|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4      |            1|    319|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1      |            0|    125|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1      |            1|    311|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2      |            0|    129|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2      |            1|    241|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3      |            0|    190|  2121|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3      |            1|    497|  2121|
|6-24 months |CONTENT        |PERU                         |Wealth Q4      |            0|     44|   188|
|6-24 months |CONTENT        |PERU                         |Wealth Q4      |            1|      3|   188|
|6-24 months |CONTENT        |PERU                         |Wealth Q1      |            0|     42|   188|
|6-24 months |CONTENT        |PERU                         |Wealth Q1      |            1|     10|   188|
|6-24 months |CONTENT        |PERU                         |Wealth Q2      |            0|     35|   188|
|6-24 months |CONTENT        |PERU                         |Wealth Q2      |            1|      6|   188|
|6-24 months |CONTENT        |PERU                         |Wealth Q3      |            0|     41|   188|
|6-24 months |CONTENT        |PERU                         |Wealth Q3      |            1|      7|   188|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4      |            0|     46|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4      |            1|     58|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1      |            0|     38|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1      |            1|     56|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2      |            0|     43|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2      |            1|     60|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3      |            0|     46|   397|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3      |            1|     50|   397|
|6-24 months |IRC            |INDIA                        |Wealth Q4      |            0|     48|   236|
|6-24 months |IRC            |INDIA                        |Wealth Q4      |            1|     12|   236|
|6-24 months |IRC            |INDIA                        |Wealth Q1      |            0|     34|   236|
|6-24 months |IRC            |INDIA                        |Wealth Q1      |            1|     27|   236|
|6-24 months |IRC            |INDIA                        |Wealth Q2      |            0|     32|   236|
|6-24 months |IRC            |INDIA                        |Wealth Q2      |            1|     19|   236|
|6-24 months |IRC            |INDIA                        |Wealth Q3      |            0|     33|   236|
|6-24 months |IRC            |INDIA                        |Wealth Q3      |            1|     31|   236|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4      |            0|   2944| 10488|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4      |            1|    584| 10488|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1      |            0|   1466| 10488|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1      |            1|    536| 10488|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2      |            0|   1716| 10488|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2      |            1|    574| 10488|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3      |            0|   2095| 10488|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3      |            1|    573| 10488|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4      |            0|    679|  3644|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4      |            1|    299|  3644|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1      |            0|    497|  3644|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1      |            1|    370|  3644|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2      |            0|    506|  3644|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2      |            1|    367|  3644|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3      |            0|    583|  3644|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3      |            1|    343|  3644|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q4      |            0|     83|   710|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q4      |            1|    110|   710|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q1      |            0|     72|   710|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q1      |            1|    101|   710|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q2      |            0|     69|   710|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q2      |            1|    102|   710|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q3      |            0|     60|   710|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q3      |            1|    113|   710|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4      |            0|     30|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4      |            1|     15|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1      |            0|     22|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1      |            1|     11|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2      |            0|     17|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2      |            1|     22|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3      |            0|     22|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3      |            1|     19|   158|
|6-24 months |MAL-ED         |BRAZIL                       |Wealth Q4      |            0|     38|   163|
|6-24 months |MAL-ED         |BRAZIL                       |Wealth Q4      |            1|      5|   163|
|6-24 months |MAL-ED         |BRAZIL                       |Wealth Q1      |            0|     39|   163|
|6-24 months |MAL-ED         |BRAZIL                       |Wealth Q1      |            1|      1|   163|
|6-24 months |MAL-ED         |BRAZIL                       |Wealth Q2      |            0|     39|   163|
|6-24 months |MAL-ED         |BRAZIL                       |Wealth Q2      |            1|      2|   163|
|6-24 months |MAL-ED         |BRAZIL                       |Wealth Q3      |            0|     36|   163|
|6-24 months |MAL-ED         |BRAZIL                       |Wealth Q3      |            1|      3|   163|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q4      |            0|     21|   154|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q4      |            1|     18|   154|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q1      |            0|     24|   154|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q1      |            1|     12|   154|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q2      |            0|     22|   154|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q2      |            1|     17|   154|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q3      |            0|     22|   154|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q3      |            1|     18|   154|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q4      |            0|     41|   194|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q4      |            1|      8|   194|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q1      |            0|     38|   194|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q1      |            1|      8|   194|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q2      |            0|     41|   194|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q2      |            1|     10|   194|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q3      |            0|     33|   194|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q3      |            1|     15|   194|
|6-24 months |MAL-ED         |PERU                         |Wealth Q4      |            0|     18|   149|
|6-24 months |MAL-ED         |PERU                         |Wealth Q4      |            1|     21|   149|
|6-24 months |MAL-ED         |PERU                         |Wealth Q1      |            0|     31|   149|
|6-24 months |MAL-ED         |PERU                         |Wealth Q1      |            1|      9|   149|
|6-24 months |MAL-ED         |PERU                         |Wealth Q2      |            0|     20|   149|
|6-24 months |MAL-ED         |PERU                         |Wealth Q2      |            1|     17|   149|
|6-24 months |MAL-ED         |PERU                         |Wealth Q3      |            0|     21|   149|
|6-24 months |MAL-ED         |PERU                         |Wealth Q3      |            1|     12|   149|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4      |            0|     31|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4      |            1|     11|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1      |            0|     19|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1      |            1|     16|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2      |            0|     25|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2      |            1|     14|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3      |            0|     22|   155|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3      |            1|     17|   155|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |            0|      4|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |            1|     36|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |            0|     10|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |            1|     21|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |            0|      9|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |            1|     29|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |            0|      8|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |            1|     27|   144|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4      |            0|     55|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4      |            1|     40|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1      |            0|     93|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1      |            1|     25|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2      |            0|    101|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2      |            1|     34|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3      |            0|     70|   456|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3      |            1|     38|   456|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |            0|    276|  1596|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4      |            1|     87|  1596|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |            0|    396|  1596|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1      |            1|    100|  1596|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |            0|    244|  1596|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2      |            1|     75|  1596|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |            0|    318|  1596|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3      |            1|    100|  1596|


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

* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
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




# Results Detail

## Results Plots
![](/tmp/29d04f69-f9e1-42c2-856c-4a6f27c69140/2e2761f9-e242-46ac-be87-5693a3208047/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/29d04f69-f9e1-42c2-856c-4a6f27c69140/2e2761f9-e242-46ac-be87-5693a3208047/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/29d04f69-f9e1-42c2-856c-4a6f27c69140/2e2761f9-e242-46ac-be87-5693a3208047/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/29d04f69-f9e1-42c2-856c-4a6f27c69140/2e2761f9-e242-46ac-be87-5693a3208047/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             | 0.9375000| 0.8890135| 0.9859865|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1          |NA             | 0.9340659| 0.8830091| 0.9851228|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2          |NA             | 0.9157895| 0.8598717| 0.9717073|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3          |NA             | 0.9120879| 0.8538303| 0.9703456|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             | 0.7354832| 0.6970331| 0.7739333|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q1          |NA             | 0.7889500| 0.7404098| 0.8374902|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q2          |NA             | 0.8278300| 0.7827973| 0.8728626|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q3          |NA             | 0.7676359| 0.7206182| 0.8146536|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             | 0.6452795| 0.6153789| 0.6751801|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1          |NA             | 0.6881339| 0.6544866| 0.7217812|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2          |NA             | 0.6845214| 0.6472625| 0.7217803|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3          |NA             | 0.7349584| 0.7082776| 0.7616392|
|0-24 months |CONTENT        |PERU                         |Wealth Q4          |NA             | 0.1538462| 0.0555522| 0.2521401|
|0-24 months |CONTENT        |PERU                         |Wealth Q1          |NA             | 0.2881356| 0.1723028| 0.4039684|
|0-24 months |CONTENT        |PERU                         |Wealth Q2          |NA             | 0.3269231| 0.1991281| 0.4547181|
|0-24 months |CONTENT        |PERU                         |Wealth Q3          |NA             | 0.2115385| 0.1002773| 0.3227996|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             | 0.6598746| 0.5913492| 0.7283999|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1          |NA             | 0.5955776| 0.5288985| 0.6622567|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2          |NA             | 0.6895017| 0.6264672| 0.7525363|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3          |NA             | 0.6044319| 0.5365446| 0.6723193|
|0-24 months |IRC            |INDIA                        |Wealth Q4          |NA             | 0.5356823| 0.4406954| 0.6306693|
|0-24 months |IRC            |INDIA                        |Wealth Q1          |NA             | 0.7064405| 0.6188916| 0.7939893|
|0-24 months |IRC            |INDIA                        |Wealth Q2          |NA             | 0.6894390| 0.6010670| 0.7778111|
|0-24 months |IRC            |INDIA                        |Wealth Q3          |NA             | 0.6775368| 0.5881090| 0.7669647|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             | 0.4905302| 0.4759502| 0.5051102|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1          |NA             | 0.5001265| 0.4847153| 0.5155376|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2          |NA             | 0.5121131| 0.4998416| 0.5243847|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3          |NA             | 0.4946785| 0.4825863| 0.5067706|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             | 0.5504039| 0.5169779| 0.5838300|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1          |NA             | 0.5938923| 0.5640610| 0.6237236|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2          |NA             | 0.5960143| 0.5646580| 0.6273706|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3          |NA             | 0.5701666| 0.5363709| 0.6039624|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q4          |NA             | 0.6238825| 0.5584767| 0.6892883|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q1          |NA             | 0.6072543| 0.5399085| 0.6746001|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q2          |NA             | 0.6428228| 0.5761002| 0.7095454|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q3          |NA             | 0.6867573| 0.6227021| 0.7508126|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4          |NA             | 0.5679103| 0.4447792| 0.6910413|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1          |NA             | 0.5317809| 0.4032801| 0.6602818|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2          |NA             | 0.7423937| 0.6401900| 0.8445973|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3          |NA             | 0.6880049| 0.5748016| 0.8012082|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q4          |NA             | 0.2556094| 0.1339078| 0.3773110|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q1          |NA             | 0.2523115| 0.1390009| 0.3656221|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q2          |NA             | 0.2370063| 0.1274254| 0.3465872|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q3          |NA             | 0.2552816| 0.1312786| 0.3792847|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q4          |NA             | 0.6599234| 0.5329903| 0.7868566|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q1          |NA             | 0.6105848| 0.4870185| 0.7341512|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q2          |NA             | 0.6384728| 0.5101713| 0.7667743|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q3          |NA             | 0.6387512| 0.5101823| 0.7673202|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q4          |NA             | 0.3097669| 0.1885661| 0.4309677|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q1          |NA             | 0.3331743| 0.2090637| 0.4572849|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q2          |NA             | 0.2927420| 0.1729241| 0.4125598|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q3          |NA             | 0.4353453| 0.3067081| 0.5639825|
|0-24 months |MAL-ED         |PERU                         |Wealth Q4          |NA             | 0.6951070| 0.5916958| 0.7985181|
|0-24 months |MAL-ED         |PERU                         |Wealth Q1          |NA             | 0.5374958| 0.4196572| 0.6553345|
|0-24 months |MAL-ED         |PERU                         |Wealth Q2          |NA             | 0.6889001| 0.5874382| 0.7903620|
|0-24 months |MAL-ED         |PERU                         |Wealth Q3          |NA             | 0.6816153| 0.5718057| 0.7914249|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |NA             | 0.5017481| 0.3781975| 0.6252986|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1          |NA             | 0.7011215| 0.5898712| 0.8123719|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2          |NA             | 0.6048561| 0.4828138| 0.7268983|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3          |NA             | 0.6553150| 0.5364090| 0.7742210|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             | 0.4504927| 0.3789696| 0.5220158|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1          |NA             | 0.4404542| 0.3807666| 0.5001417|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2          |NA             | 0.3801950| 0.3063178| 0.4540721|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3          |NA             | 0.4858695| 0.4117644| 0.5599747|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | 0.3776925| 0.3388945| 0.4164905|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |NA             | 0.3189528| 0.2854938| 0.3524117|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |NA             | 0.3644929| 0.3208153| 0.4081705|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |NA             | 0.3361668| 0.2971002| 0.3752335|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             | 0.6726963| 0.5747684| 0.7706242|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q1          |NA             | 0.3952047| 0.2922915| 0.4981179|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q2          |NA             | 0.4976628| 0.3955343| 0.5997913|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q3          |NA             | 0.4701736| 0.3652196| 0.5751276|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             | 0.2835322| 0.2414563| 0.3256082|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q1          |NA             | 0.3346609| 0.2730209| 0.3963008|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q2          |NA             | 0.3464648| 0.2898358| 0.4030938|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q3          |NA             | 0.3438863| 0.2897630| 0.3980097|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             | 0.2339421| 0.2089776| 0.2589065|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q1          |NA             | 0.2448004| 0.2155976| 0.2740032|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q2          |NA             | 0.2439631| 0.2119517| 0.2759746|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q3          |NA             | 0.2412473| 0.2168993| 0.2655953|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             | 0.3224197| 0.2611311| 0.3837083|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q1          |NA             | 0.3051776| 0.2489655| 0.3613897|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q2          |NA             | 0.3497724| 0.2900762| 0.4094685|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q3          |NA             | 0.2974101| 0.2431728| 0.3516474|
|0-6 months  |IRC            |INDIA                        |Wealth Q4          |NA             | 0.3921711| 0.3015276| 0.4828146|
|0-6 months  |IRC            |INDIA                        |Wealth Q1          |NA             | 0.4292208| 0.3398933| 0.5185483|
|0-6 months  |IRC            |INDIA                        |Wealth Q2          |NA             | 0.4945911| 0.4032214| 0.5859608|
|0-6 months  |IRC            |INDIA                        |Wealth Q3          |NA             | 0.3692031| 0.2780901| 0.4603161|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             | 0.3987451| 0.3858323| 0.4116580|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q1          |NA             | 0.4211333| 0.4077076| 0.4345590|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q2          |NA             | 0.4259392| 0.4143720| 0.4375065|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q3          |NA             | 0.4119393| 0.4013511| 0.4225276|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             | 0.3340598| 0.3039554| 0.3641641|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q1          |NA             | 0.3683177| 0.3398286| 0.3968068|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q2          |NA             | 0.3577636| 0.3320101| 0.3835171|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q3          |NA             | 0.3355970| 0.3090608| 0.3621331|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q4          |NA             | 0.3101332| 0.2013339| 0.4189325|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q1          |NA             | 0.3324275| 0.2198409| 0.4450140|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q2          |NA             | 0.3813535| 0.2588933| 0.5038137|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q3          |NA             | 0.3682364| 0.2503328| 0.4861401|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q4          |NA             | 0.2514947| 0.1386691| 0.3643204|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q1          |NA             | 0.4099918| 0.2843021| 0.5356815|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q2          |NA             | 0.3431186| 0.2189207| 0.4673166|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q3          |NA             | 0.2993972| 0.1777105| 0.4210840|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q4          |NA             | 0.1716838| 0.0635038| 0.2798638|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q1          |NA             | 0.2184817| 0.0998501| 0.3371133|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q2          |NA             | 0.1761005| 0.0688477| 0.2833533|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q3          |NA             | 0.2123559| 0.0936370| 0.3310747|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q4          |NA             | 0.3399780| 0.2172501| 0.4627060|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q1          |NA             | 0.3978045| 0.2786174| 0.5169916|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q2          |NA             | 0.3144169| 0.1943587| 0.4344750|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q3          |NA             | 0.3012334| 0.1802884| 0.4221784|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q4          |NA             | 0.1694915| 0.0735536| 0.2654294|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q1          |NA             | 0.2033898| 0.1004623| 0.3063174|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q2          |NA             | 0.1355932| 0.0480501| 0.2231364|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q3          |NA             | 0.1864407| 0.0868522| 0.2860292|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q4          |NA             | 0.3905454| 0.2805607| 0.5005300|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q1          |NA             | 0.4608824| 0.3501024| 0.5716624|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q2          |NA             | 0.4579993| 0.3499477| 0.5660509|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q3          |NA             | 0.5104533| 0.4038977| 0.6170089|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |NA             | 0.3245309| 0.2065655| 0.4424962|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q1          |NA             | 0.4469877| 0.3251908| 0.5687846|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q2          |NA             | 0.4042980| 0.2848069| 0.5237892|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q3          |NA             | 0.3995553| 0.2775282| 0.5215825|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | 0.3468037| 0.2328733| 0.4607341|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |NA             | 0.4446222| 0.3284369| 0.5608074|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |NA             | 0.3879262| 0.2719745| 0.5038778|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |NA             | 0.4539083| 0.3365253| 0.5712913|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             | 0.2279266| 0.1745484| 0.2813047|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q1          |NA             | 0.2675923| 0.2139015| 0.3212832|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q2          |NA             | 0.2052372| 0.1476790| 0.2627953|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q3          |NA             | 0.2641410| 0.2042266| 0.3240554|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | 0.2311254| 0.1986781| 0.2635728|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |NA             | 0.1698368| 0.1435659| 0.1961076|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |NA             | 0.2012799| 0.1656199| 0.2369399|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |NA             | 0.1686339| 0.1384553| 0.1988125|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             | 0.8125000| 0.6768992| 0.9481008|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1          |NA             | 0.8928571| 0.8116295| 0.9740847|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2          |NA             | 0.8333333| 0.7276180| 0.9390487|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3          |NA             | 0.8367347| 0.7329656| 0.9405037|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             | 0.7297822| 0.6831453| 0.7764190|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q1          |NA             | 0.7880058| 0.7263373| 0.8496743|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q2          |NA             | 0.8341458| 0.7776398| 0.8906517|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q3          |NA             | 0.7500545| 0.6862764| 0.8138327|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             | 0.5757754| 0.5389109| 0.6126400|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1          |NA             | 0.6915352| 0.6481247| 0.7349457|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2          |NA             | 0.6319166| 0.5832141| 0.6806191|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3          |NA             | 0.7001249| 0.6663431| 0.7339066|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             | 0.5664555| 0.4716855| 0.6612255|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1          |NA             | 0.5575155| 0.4571525| 0.6578785|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2          |NA             | 0.5868646| 0.4916233| 0.6821059|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3          |NA             | 0.5441996| 0.4439596| 0.6444397|
|6-24 months |IRC            |INDIA                        |Wealth Q4          |NA             | 0.1909376| 0.0865997| 0.2952755|
|6-24 months |IRC            |INDIA                        |Wealth Q1          |NA             | 0.4384600| 0.3118930| 0.5650270|
|6-24 months |IRC            |INDIA                        |Wealth Q2          |NA             | 0.3504038| 0.2117641| 0.4890435|
|6-24 months |IRC            |INDIA                        |Wealth Q3          |NA             | 0.4696004| 0.3442737| 0.5949271|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             | 0.2025471| 0.1822708| 0.2228233|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1          |NA             | 0.2343327| 0.2095296| 0.2591357|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2          |NA             | 0.2426221| 0.2197681| 0.2654761|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3          |NA             | 0.2084240| 0.1900474| 0.2268007|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             | 0.3501005| 0.3050842| 0.3951167|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1          |NA             | 0.3847787| 0.3473332| 0.4222243|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2          |NA             | 0.3993065| 0.3576272| 0.4409858|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3          |NA             | 0.3692389| 0.3257311| 0.4127466|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q4          |NA             | 0.5719076| 0.5015887| 0.6422266|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q1          |NA             | 0.5855975| 0.5117345| 0.6594605|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q2          |NA             | 0.5976104| 0.5235154| 0.6717053|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q3          |NA             | 0.6552663| 0.5838798| 0.7266528|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4          |NA             | 0.3335985| 0.1936837| 0.4735132|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1          |NA             | 0.3423737| 0.1772123| 0.5075351|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2          |NA             | 0.5761777| 0.4168598| 0.7354956|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3          |NA             | 0.4555964| 0.2980592| 0.6131336|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q4          |NA             | 0.4675796| 0.3055898| 0.6295694|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q1          |NA             | 0.3433377| 0.1825479| 0.5041276|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q2          |NA             | 0.4351794| 0.2763611| 0.5939978|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q3          |NA             | 0.4509405| 0.2928685| 0.6090126|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q4          |NA             | 0.1632653| 0.0595093| 0.2670213|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q1          |NA             | 0.1739130| 0.0640958| 0.2837302|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q2          |NA             | 0.1960784| 0.0868321| 0.3053248|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q3          |NA             | 0.3125000| 0.1810347| 0.4439653|
|6-24 months |MAL-ED         |PERU                         |Wealth Q4          |NA             | 0.5384615| 0.3814761| 0.6954470|
|6-24 months |MAL-ED         |PERU                         |Wealth Q1          |NA             | 0.2250000| 0.0951558| 0.3548442|
|6-24 months |MAL-ED         |PERU                         |Wealth Q2          |NA             | 0.4594595| 0.2983403| 0.6205786|
|6-24 months |MAL-ED         |PERU                         |Wealth Q3          |NA             | 0.3636364| 0.1989568| 0.5283159|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |NA             | 0.2648467| 0.1297781| 0.3999152|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1          |NA             | 0.4586092| 0.2881937| 0.6290247|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2          |NA             | 0.3650037| 0.2096427| 0.5203646|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3          |NA             | 0.4359349| 0.2734400| 0.5984298|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             | 0.4057940| 0.3078658| 0.5037221|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1          |NA             | 0.2173510| 0.1458183| 0.2888836|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2          |NA             | 0.2535673| 0.1785305| 0.3286041|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3          |NA             | 0.3629198| 0.2721238| 0.4537158|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | 0.2374816| 0.1931367| 0.2818265|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |NA             | 0.2055781| 0.1702348| 0.2409214|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |NA             | 0.2358109| 0.1880350| 0.2835868|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |NA             | 0.2395190| 0.1981037| 0.2809343|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.9249330| 0.8981563| 0.9517096|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.7715180| 0.7484902| 0.7945458|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.6866209| 0.6701747| 0.7030670|
|0-24 months |CONTENT        |PERU                         |NA                 |NA             | 0.2465116| 0.1887688| 0.3042545|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.6389685| 0.6033115| 0.6746254|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.6414634| 0.5949863| 0.6879405|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.4954233| 0.4875870| 0.5032596|
|0-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.5818282| 0.5658219| 0.5978346|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.6376989| 0.6047193| 0.6706785|
|0-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.6157025| 0.5542897| 0.6771153|
|0-24 months |MAL-ED         |BRAZIL                       |NA                 |NA             | 0.2666667| 0.2067138| 0.3266195|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.6212766| 0.5591262| 0.6834270|
|0-24 months |MAL-ED         |NEPAL                        |NA                 |NA             | 0.3474576| 0.2865784| 0.4083369|
|0-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.6654412| 0.6092647| 0.7216177|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.6186770| 0.5591785| 0.6781756|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.4357143| 0.3989556| 0.4724730|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.3468960| 0.3277853| 0.3660067|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.5108696| 0.4597270| 0.5620121|
|0-6 months  |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.3240116| 0.2955133| 0.3525098|
|0-6 months  |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.2391233| 0.2240003| 0.2542464|
|0-6 months  |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.3180516| 0.2834770| 0.3526261|
|0-6 months  |IRC            |INDIA                        |NA                 |NA             | 0.4243902| 0.3764905| 0.4722900|
|0-6 months  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.4130891| 0.4056400| 0.4205383|
|0-6 months  |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.3474692| 0.3322601| 0.3626783|
|0-6 months  |LCNI-5         |MALAWI                       |NA                 |NA             | 0.3531599| 0.2959376| 0.4103821|
|0-6 months  |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.3388430| 0.2790857| 0.3986003|
|0-6 months  |MAL-ED         |BRAZIL                       |NA                 |NA             | 0.2142857| 0.1586564| 0.2699151|
|0-6 months  |MAL-ED         |INDIA                        |NA                 |NA             | 0.3446809| 0.2837868| 0.4055749|
|0-6 months  |MAL-ED         |NEPAL                        |NA                 |NA             | 0.1737288| 0.1252880| 0.2221696|
|0-6 months  |MAL-ED         |PERU                         |NA                 |NA             | 0.4485294| 0.3893160| 0.5077428|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.3929961| 0.3331663| 0.4528260|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.4120000| 0.3508656| 0.4731344|
|0-6 months  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.2400000| 0.2083392| 0.2716608|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1950503| 0.1791413| 0.2109594|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.8486486| 0.7968646| 0.9004327|
|6-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.7665094| 0.7380190| 0.7949999|
|6-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.6449788| 0.6246093| 0.6653483|
|6-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.5642317| 0.5153938| 0.6130696|
|6-24 months |IRC            |INDIA                        |NA                 |NA             | 0.3771186| 0.3151523| 0.4390850|
|6-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.2161518| 0.2067762| 0.2255274|
|6-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.3784303| 0.3598372| 0.3970234|
|6-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.6000000| 0.5639396| 0.6360604|
|6-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.4240506| 0.3467471| 0.5013542|
|6-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.4220779| 0.3438191| 0.5003367|
|6-24 months |MAL-ED         |NEPAL                        |NA                 |NA             | 0.2113402| 0.1537425| 0.2689379|
|6-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.3959732| 0.3171819| 0.4747644|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.3741935| 0.2977649| 0.4506221|
|6-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.3004386| 0.2583143| 0.3425629|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2268170| 0.2062654| 0.2473687|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1          |Wealth Q4      | 0.9963370| 0.9241135| 1.0742051|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2          |Wealth Q4      | 0.9768421| 0.9017212| 1.0582212|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3          |Wealth Q4      | 0.9728938| 0.8961328| 1.0562300|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q1          |Wealth Q4      | 1.0726961| 0.9906375| 1.1615520|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q2          |Wealth Q4      | 1.1255593| 1.0445005| 1.2129087|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q3          |Wealth Q4      | 1.0437164| 0.9643435| 1.1296224|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1          |Wealth Q4      | 1.0664121| 0.9984320| 1.1390208|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2          |Wealth Q4      | 1.0608138| 0.9894413| 1.1373347|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3          |Wealth Q4      | 1.1389768| 1.0756395| 1.2060437|
|0-24 months |CONTENT        |PERU                         |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |CONTENT        |PERU                         |Wealth Q1          |Wealth Q4      | 1.8728814| 0.8803953| 3.9842154|
|0-24 months |CONTENT        |PERU                         |Wealth Q2          |Wealth Q4      | 2.1250000| 1.0047762| 4.4941600|
|0-24 months |CONTENT        |PERU                         |Wealth Q3          |Wealth Q4      | 1.3750000| 0.6010371| 3.1456043|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1          |Wealth Q4      | 0.9025618| 0.7774471| 1.0478112|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2          |Wealth Q4      | 1.0448981| 0.9132316| 1.1955479|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3          |Wealth Q4      | 0.9159800| 0.7887120| 1.0637842|
|0-24 months |IRC            |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |IRC            |INDIA                        |Wealth Q1          |Wealth Q4      | 1.3187675| 1.0646915| 1.6334758|
|0-24 months |IRC            |INDIA                        |Wealth Q2          |Wealth Q4      | 1.2870296| 1.0366114| 1.5979424|
|0-24 months |IRC            |INDIA                        |Wealth Q3          |Wealth Q4      | 1.2648109| 1.0155087| 1.5753155|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.0195631| 0.9809667| 1.0596781|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.0439992| 1.0092886| 1.0799036|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.0084567| 0.9746281| 1.0434595|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.0790118| 1.0001824| 1.1640541|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.0828670| 1.0002843| 1.1722678|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.0359058| 0.9547974| 1.1239043|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q1          |Wealth Q4      | 0.9733472| 0.8357457| 1.1336041|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q2          |Wealth Q4      | 1.0303587| 0.8893519| 1.1937222|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q3          |Wealth Q4      | 1.1007799| 0.9571189| 1.2660040|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 0.9363820| 0.6792761| 1.2908024|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.3072377| 1.0176686| 1.6792012|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.2114677| 0.9295943| 1.5788112|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q1          |Wealth Q4      | 0.9870978| 0.5184865| 1.8792429|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q2          |Wealth Q4      | 0.9272206| 0.4838017| 1.7770464|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q3          |Wealth Q4      | 0.9987176| 0.5135001| 1.9424276|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q1          |Wealth Q4      | 0.9252359| 0.7000546| 1.2228496|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q2          |Wealth Q4      | 0.9674953| 0.7323159| 1.2782011|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q3          |Wealth Q4      | 0.9679172| 0.7324437| 1.2790932|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q1          |Wealth Q4      | 1.0755647| 0.6263540| 1.8469419|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q2          |Wealth Q4      | 0.9450395| 0.5366278| 1.6642814|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q3          |Wealth Q4      | 1.4053965| 0.8609752| 2.2940721|
|0-24 months |MAL-ED         |PERU                         |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |PERU                         |Wealth Q1          |Wealth Q4      | 0.7732563| 0.5950169| 1.0048880|
|0-24 months |MAL-ED         |PERU                         |Wealth Q2          |Wealth Q4      | 0.9910706| 0.8075386| 1.2163147|
|0-24 months |MAL-ED         |PERU                         |Wealth Q3          |Wealth Q4      | 0.9805905| 0.7901790| 1.2168860|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1          |Wealth Q4      | 1.3973578| 1.0434845| 1.8712388|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2          |Wealth Q4      | 1.2054976| 0.8766555| 1.6576915|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3          |Wealth Q4      | 1.3060639| 0.9624938| 1.7722742|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 0.9777166| 0.8008588| 1.1936308|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 0.8439537| 0.6594509| 1.0800772|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.0785292| 0.8697748| 1.3373865|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |Wealth Q4      | 0.8444774| 0.7302517| 0.9765702|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |Wealth Q4      | 0.9650520| 0.8251924| 1.1286160|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |Wealth Q4      | 0.8900543| 0.7629445| 1.0383412|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q1          |Wealth Q4      | 0.5874936| 0.4359616| 0.7916952|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q2          |Wealth Q4      | 0.7398032| 0.5749364| 0.9519465|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q3          |Wealth Q4      | 0.6989389| 0.5353683| 0.9124851|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q1          |Wealth Q4      | 1.1803274| 0.9386230| 1.4842729|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q2          |Wealth Q4      | 1.2219592| 0.9899649| 1.5083203|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q3          |Wealth Q4      | 1.2128650| 0.9860715| 1.4918205|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q1          |Wealth Q4      | 1.0464146| 0.8987923| 1.2182831|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q2          |Wealth Q4      | 1.0428357| 0.8877797| 1.2249731|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q3          |Wealth Q4      | 1.0312267| 0.8983594| 1.1837451|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q1          |Wealth Q4      | 0.9465228| 0.7408380| 1.2093136|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q2          |Wealth Q4      | 1.0848357| 0.8538632| 1.3782868|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q3          |Wealth Q4      | 0.9224315| 0.7226383| 1.1774629|
|0-6 months  |IRC            |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |IRC            |INDIA                        |Wealth Q1          |Wealth Q4      | 1.0944733| 0.8079167| 1.4826676|
|0-6 months  |IRC            |INDIA                        |Wealth Q2          |Wealth Q4      | 1.2611615| 0.9445333| 1.6839303|
|0-6 months  |IRC            |INDIA                        |Wealth Q3          |Wealth Q4      | 0.9414336| 0.6758797| 1.3113239|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.0561467| 1.0156063| 1.0983053|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.0681993| 1.0303425| 1.1074470|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.0330894| 0.9981452| 1.0692569|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.1025504| 0.9856552| 1.2333088|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.0709569| 0.9619467| 1.1923204|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.0046016| 0.9001543| 1.1211682|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q1          |Wealth Q4      | 1.0718862| 0.6588693| 1.7438058|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q2          |Wealth Q4      | 1.2296445| 0.7643871| 1.9780888|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q3          |Wealth Q4      | 1.1873494| 0.7379236| 1.9104938|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.6302200| 0.9447345| 2.8130839|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.3643173| 0.7653237| 2.4321235|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.1904712| 0.6496178| 2.1816238|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q1          |Wealth Q4      | 1.2725816| 0.5535506| 2.9255931|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q2          |Wealth Q4      | 1.0257255| 0.4272769| 2.4623675|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q3          |Wealth Q4      | 1.2369006| 0.5313605| 2.8792562|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q1          |Wealth Q4      | 1.1700890| 0.7346263| 1.8636800|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q2          |Wealth Q4      | 0.9248154| 0.5484507| 1.5594537|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q3          |Wealth Q4      | 0.8860379| 0.5169732| 1.5185762|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q1          |Wealth Q4      | 1.2000000| 0.5616094| 2.5640596|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q2          |Wealth Q4      | 0.8000000| 0.3389962| 1.8879268|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q3          |Wealth Q4      | 1.1000000| 0.5051155| 2.3954916|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q1          |Wealth Q4      | 1.1800995| 0.8257590| 1.6864908|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q2          |Wealth Q4      | 1.1727172| 0.8249330| 1.6671240|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q3          |Wealth Q4      | 1.3070268| 0.9344378| 1.8281785|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q1          |Wealth Q4      | 1.3773349| 0.8762545| 2.1649549|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q2          |Wealth Q4      | 1.2457923| 0.7817868| 1.9851940|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q3          |Wealth Q4      | 1.2311783| 0.7679110| 1.9739264|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |Wealth Q4      | 1.2820572| 0.8527606| 1.9274703|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |Wealth Q4      | 1.1185756| 0.7243858| 1.7272721|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |Wealth Q4      | 1.3088335| 0.8702761| 1.9683929|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.1740287| 0.8826399| 1.5616147|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 0.9004531| 0.6359253| 1.2750172|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.1588865| 0.8530767| 1.5743227|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |Wealth Q4      | 0.7348250| 0.5981884| 0.9026719|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |Wealth Q4      | 0.8708688| 0.6965978| 1.0887380|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |Wealth Q4      | 0.7296208| 0.5827451| 0.9135152|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q1          |Wealth Q4      | 1.0989011| 0.9086750| 1.3289500|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q2          |Wealth Q4      | 1.0256410| 0.8316727| 1.2648479|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q3          |Wealth Q4      | 1.0298273| 0.8364943| 1.2678440|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q1          |Wealth Q4      | 1.0797822| 0.9768029| 1.1936181|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q2          |Wealth Q4      | 1.1430065| 1.0417156| 1.2541464|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q3          |Wealth Q4      | 1.0277787| 0.9249966| 1.1419814|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q1          |Wealth Q4      | 1.2010502| 1.0995252| 1.3119495|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q2          |Wealth Q4      | 1.0975053| 0.9943011| 1.2114216|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q3          |Wealth Q4      | 1.2159686| 1.1238555| 1.3156314|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q1          |Wealth Q4      | 0.9842177| 0.7710876| 1.2562573|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q2          |Wealth Q4      | 1.0360295| 0.8224870| 1.3050141|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q3          |Wealth Q4      | 0.9607104| 0.7493105| 1.2317516|
|6-24 months |IRC            |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |IRC            |INDIA                        |Wealth Q1          |Wealth Q4      | 2.2963523| 1.2370116| 4.2628816|
|6-24 months |IRC            |INDIA                        |Wealth Q2          |Wealth Q4      | 1.8351745| 0.9347058| 3.6031288|
|6-24 months |IRC            |INDIA                        |Wealth Q3          |Wealth Q4      | 2.4594444| 1.3355048| 4.5292737|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.1569294| 1.0041741| 1.3329220|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.1978554| 1.0496036| 1.3670472|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.0290154| 0.9018259| 1.1741431|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.0990523| 0.9377766| 1.2880636|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.1405482| 0.9657162| 1.3470316|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.0546655| 0.8857995| 1.2557235|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q1          |Wealth Q4      | 1.0239373| 0.8585472| 1.2211881|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q2          |Wealth Q4      | 1.0449421| 0.8775066| 1.2443258|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q3          |Wealth Q4      | 1.1457555| 0.9722967| 1.3501596|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 1.0263048| 0.5435875| 1.9376854|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 1.7271594| 1.0462747| 2.8511437|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 1.3657030| 0.7939001| 2.3493440|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q1          |Wealth Q4      | 0.7342872| 0.4097773| 1.3157822|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q2          |Wealth Q4      | 0.9307066| 0.5621090| 1.5410087|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q3          |Wealth Q4      | 0.9644145| 0.5886260| 1.5801124|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q1          |Wealth Q4      | 1.0652174| 0.4348746| 2.6092306|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q2          |Wealth Q4      | 1.2009804| 0.5158090| 2.7962946|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q3          |Wealth Q4      | 1.9140625| 0.8932358| 4.1015321|
|6-24 months |MAL-ED         |PERU                         |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |PERU                         |Wealth Q1          |Wealth Q4      | 0.4178571| 0.2188947| 0.7976648|
|6-24 months |MAL-ED         |PERU                         |Wealth Q2          |Wealth Q4      | 0.8532819| 0.5408026| 1.3463135|
|6-24 months |MAL-ED         |PERU                         |Wealth Q3          |Wealth Q4      | 0.6753247| 0.3940962| 1.1572387|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q1          |Wealth Q4      | 1.7316028| 0.9212483| 3.2547667|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q2          |Wealth Q4      | 1.3781698| 0.7097217| 2.6761927|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q3          |Wealth Q4      | 1.6459898| 0.8741089| 3.0994790|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q1          |Wealth Q4      | 0.5356190| 0.3576046| 0.8022483|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q2          |Wealth Q4      | 0.6248671| 0.4271506| 0.9141013|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q3          |Wealth Q4      | 0.8943449| 0.6326311| 1.2643275|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |Wealth Q4      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q1          |Wealth Q4      | 0.8656591| 0.6716373| 1.1157298|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q2          |Wealth Q4      | 0.9929650| 0.7537663| 1.3080704|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q3          |Wealth Q4      | 1.0085791| 0.7820367| 1.3007470|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             | -0.0125670| -0.0556692|  0.0305351|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             |  0.0360348|  0.0072823|  0.0647872|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             |  0.0413414|  0.0169052|  0.0657775|
|0-24 months |CONTENT        |PERU                         |Wealth Q4          |NA             |  0.0926655|  0.0014385|  0.1838925|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             | -0.0209061| -0.0789005|  0.0370883|
|0-24 months |IRC            |INDIA                        |Wealth Q4          |NA             |  0.1057811|  0.0246822|  0.1868800|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             |  0.0048931| -0.0072998|  0.0170860|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             |  0.0314243|  0.0017483|  0.0611003|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q4          |NA             |  0.0138164| -0.0417559|  0.0693887|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4          |NA             |  0.0477922| -0.0565774|  0.1521618|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q4          |NA             |  0.0110572| -0.0914158|  0.1135302|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q4          |NA             | -0.0386468| -0.1488003|  0.0715067|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q4          |NA             |  0.0376907| -0.0682398|  0.1436213|
|0-24 months |MAL-ED         |PERU                         |Wealth Q4          |NA             | -0.0296658| -0.1186380|  0.0593065|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |NA             |  0.1169290|  0.0114575|  0.2224005|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             | -0.0147784| -0.0749595|  0.0454026|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | -0.0307965| -0.0641830|  0.0025899|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             | -0.1618267| -0.2483587| -0.0752947|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             |  0.0404793|  0.0080404|  0.0729182|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             |  0.0051813| -0.0155856|  0.0259481|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             | -0.0043681| -0.0540185|  0.0452823|
|0-6 months  |IRC            |INDIA                        |Wealth Q4          |NA             |  0.0322191| -0.0454761|  0.1099144|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             |  0.0143440|  0.0040648|  0.0246232|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             |  0.0134095| -0.0127569|  0.0395758|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q4          |NA             |  0.0430267| -0.0505610|  0.1366144|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q4          |NA             |  0.0873482| -0.0132652|  0.1879617|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q4          |NA             |  0.0426019| -0.0527701|  0.1379738|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q4          |NA             |  0.0047028| -0.1002907|  0.1096964|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q4          |NA             |  0.0042373| -0.0791207|  0.0875953|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q4          |NA             |  0.0579840| -0.0332981|  0.1492661|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |NA             |  0.0684653| -0.0338057|  0.1707362|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             |  0.0651963| -0.0314026|  0.1617952|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             |  0.0120734| -0.0304584|  0.0546053|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | -0.0360751| -0.0633629| -0.0087873|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             |  0.0361486| -0.0851282|  0.1574255|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             |  0.0367273|  0.0018833|  0.0715713|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             |  0.0692033|  0.0389888|  0.0994179|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             | -0.0022237| -0.0835201|  0.0790726|
|6-24 months |IRC            |INDIA                        |Wealth Q4          |NA             |  0.1861811|  0.0892573|  0.2831048|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             |  0.0136047| -0.0047809|  0.0319903|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             |  0.0283298| -0.0122688|  0.0689285|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q4          |NA             |  0.0280924| -0.0316724|  0.0878572|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4          |NA             |  0.0904522| -0.0298161|  0.2107204|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q4          |NA             | -0.0455017| -0.1853488|  0.0943454|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q4          |NA             |  0.0480749| -0.0449018|  0.1410516|
|6-24 months |MAL-ED         |PERU                         |Wealth Q4          |NA             | -0.1424884| -0.2764712| -0.0085056|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |NA             |  0.1093469| -0.0107227|  0.2294164|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             | -0.1053554| -0.1905373| -0.0201735|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | -0.0106645| -0.0495015|  0.0281725|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             | -0.0135870| -0.0613168|  0.0319963|
|0-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             |  0.0467064|  0.0085412|  0.0834024|
|0-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             |  0.0602099|  0.0238589|  0.0952072|
|0-24 months |CONTENT        |PERU                         |Wealth Q4          |NA             |  0.3759071| -0.1179586|  0.6516043|
|0-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             | -0.0327185| -0.1275796|  0.0541621|
|0-24 months |IRC            |INDIA                        |Wealth Q4          |NA             |  0.1649059|  0.0272268|  0.2830989|
|0-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             |  0.0098766| -0.0150454|  0.0341868|
|0-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             |  0.0540096|  0.0016143|  0.1036552|
|0-24 months |LCNI-5         |MALAWI                       |Wealth Q4          |NA             |  0.0216660| -0.0695201|  0.1050777|
|0-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4          |NA             |  0.0776223| -0.1090393|  0.2328669|
|0-24 months |MAL-ED         |BRAZIL                       |Wealth Q4          |NA             |  0.0414647| -0.4322294|  0.3584896|
|0-24 months |MAL-ED         |INDIA                        |Wealth Q4          |NA             | -0.0622055| -0.2552307|  0.1011370|
|0-24 months |MAL-ED         |NEPAL                        |Wealth Q4          |NA             |  0.1084758| -0.2553533|  0.3668592|
|0-24 months |MAL-ED         |PERU                         |Wealth Q4          |NA             | -0.0445806| -0.1874406|  0.0810920|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |NA             |  0.1889984| -0.0029820|  0.3442320|
|0-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             | -0.0339177| -0.1816172|  0.0953198|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | -0.0887774| -0.1894322|  0.0033595|
|0-6 months  |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             | -0.3167672| -0.5029281| -0.1536652|
|0-6 months  |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             |  0.1249317|  0.0188139|  0.2195727|
|0-6 months  |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             |  0.0216677| -0.0690737|  0.1047071|
|0-6 months  |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             | -0.0137340| -0.1824632|  0.1309187|
|0-6 months  |IRC            |INDIA                        |Wealth Q4          |NA             |  0.0759187| -0.1266342|  0.2420554|
|0-6 months  |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             |  0.0347238|  0.0094850|  0.0593195|
|0-6 months  |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             |  0.0385918| -0.0397397|  0.1110220|
|0-6 months  |LCNI-5         |MALAWI                       |Wealth Q4          |NA             |  0.1218334| -0.1880025|  0.3508629|
|0-6 months  |MAL-ED         |BANGLADESH                   |Wealth Q4          |NA             |  0.2577838| -0.1070775|  0.5023972|
|0-6 months  |MAL-ED         |BRAZIL                       |Wealth Q4          |NA             |  0.1988087| -0.3974212|  0.5406485|
|0-6 months  |MAL-ED         |INDIA                        |Wealth Q4          |NA             |  0.0136440| -0.3433405|  0.2757621|
|0-6 months  |MAL-ED         |NEPAL                        |Wealth Q4          |NA             |  0.0243902| -0.5953455|  0.4033804|
|0-6 months  |MAL-ED         |PERU                         |Wealth Q4          |NA             |  0.1292758| -0.1014041|  0.3116418|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |NA             |  0.1742136| -0.1331785|  0.3982208|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             |  0.1582434| -0.1134476|  0.3636395|
|0-6 months  |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             |  0.0503060| -0.1447850|  0.2121501|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | -0.1849528| -0.3332853| -0.0531227|
|6-24 months |CMC-V-BCS-2002 |INDIA                        |Wealth Q4          |NA             |  0.0425955| -0.1117937|  0.1755455|
|6-24 months |COHORTS        |GUATEMALA                    |Wealth Q4          |NA             |  0.0479150|  0.0011776|  0.0924653|
|6-24 months |COHORTS        |PHILIPPINES                  |Wealth Q4          |NA             |  0.1072955|  0.0589797|  0.1531306|
|6-24 months |GMS-Nepal      |NEPAL                        |Wealth Q4          |NA             | -0.0039412| -0.1588776|  0.1302810|
|6-24 months |IRC            |INDIA                        |Wealth Q4          |NA             |  0.4936936|  0.1639423|  0.6933869|
|6-24 months |JiVitA-3       |BANGLADESH                   |Wealth Q4          |NA             |  0.0629406| -0.0260176|  0.1441860|
|6-24 months |JiVitA-4       |BANGLADESH                   |Wealth Q4          |NA             |  0.0748614| -0.0390479|  0.1762830|
|6-24 months |LCNI-5         |MALAWI                       |Wealth Q4          |NA             |  0.0468206| -0.0582747|  0.1414792|
|6-24 months |MAL-ED         |BANGLADESH                   |Wealth Q4          |NA             |  0.2133051| -0.1294072|  0.4520233|
|6-24 months |MAL-ED         |INDIA                        |Wealth Q4          |NA             | -0.1078040| -0.4941395|  0.1786378|
|6-24 months |MAL-ED         |NEPAL                        |Wealth Q4          |NA             |  0.2274764| -0.3607913|  0.5614369|
|6-24 months |MAL-ED         |PERU                         |Wealth Q4          |NA             | -0.3598435| -0.7515813| -0.0557172|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |Wealth Q4          |NA             |  0.2922201| -0.1121749|  0.5495742|
|6-24 months |PROVIDE        |BANGLADESH                   |Wealth Q4          |NA             | -0.3506719| -0.6666811| -0.0945792|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Wealth Q4          |NA             | -0.0470183| -0.2329907|  0.1109039|
