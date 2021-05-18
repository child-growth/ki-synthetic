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

**Intervention Variable:** perdiar6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid    |country      |perdiar6 | ever_wasted| n_cell|   n|
|:---------------------------|:----------|:------------|:--------|-----------:|------:|---:|
|0-24 months (no birth wast) |CMIN       |BANGLADESH   |(0%, 5%] |           0|     33| 268|
|0-24 months (no birth wast) |CMIN       |BANGLADESH   |(0%, 5%] |           1|     24| 268|
|0-24 months (no birth wast) |CMIN       |BANGLADESH   |>5%      |           0|     62| 268|
|0-24 months (no birth wast) |CMIN       |BANGLADESH   |>5%      |           1|     55| 268|
|0-24 months (no birth wast) |CMIN       |BANGLADESH   |0%       |           0|     58| 268|
|0-24 months (no birth wast) |CMIN       |BANGLADESH   |0%       |           1|     36| 268|
|0-24 months (no birth wast) |CONTENT    |PERU         |(0%, 5%] |           0|     37| 215|
|0-24 months (no birth wast) |CONTENT    |PERU         |(0%, 5%] |           1|      0| 215|
|0-24 months (no birth wast) |CONTENT    |PERU         |>5%      |           0|     68| 215|
|0-24 months (no birth wast) |CONTENT    |PERU         |>5%      |           1|      1| 215|
|0-24 months (no birth wast) |CONTENT    |PERU         |0%       |           0|    106| 215|
|0-24 months (no birth wast) |CONTENT    |PERU         |0%       |           1|      3| 215|
|0-24 months (no birth wast) |EE         |PAKISTAN     |(0%, 5%] |           0|     13| 377|
|0-24 months (no birth wast) |EE         |PAKISTAN     |(0%, 5%] |           1|     14| 377|
|0-24 months (no birth wast) |EE         |PAKISTAN     |>5%      |           0|      0| 377|
|0-24 months (no birth wast) |EE         |PAKISTAN     |>5%      |           1|      2| 377|
|0-24 months (no birth wast) |EE         |PAKISTAN     |0%       |           0|    161| 377|
|0-24 months (no birth wast) |EE         |PAKISTAN     |0%       |           1|    187| 377|
|0-24 months (no birth wast) |MAL-ED     |INDIA        |(0%, 5%] |           0|     81| 246|
|0-24 months (no birth wast) |MAL-ED     |INDIA        |(0%, 5%] |           1|     48| 246|
|0-24 months (no birth wast) |MAL-ED     |INDIA        |>5%      |           0|     36| 246|
|0-24 months (no birth wast) |MAL-ED     |INDIA        |>5%      |           1|     25| 246|
|0-24 months (no birth wast) |MAL-ED     |INDIA        |0%       |           0|     38| 246|
|0-24 months (no birth wast) |MAL-ED     |INDIA        |0%       |           1|     18| 246|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH   |(0%, 5%] |           0|     75| 263|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH   |(0%, 5%] |           1|     22| 263|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH   |>5%      |           0|     56| 263|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH   |>5%      |           1|     13| 263|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH   |0%       |           0|     74| 263|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH   |0%       |           1|     23| 263|
|0-24 months (no birth wast) |MAL-ED     |PERU         |(0%, 5%] |           0|     80| 302|
|0-24 months (no birth wast) |MAL-ED     |PERU         |(0%, 5%] |           1|     10| 302|
|0-24 months (no birth wast) |MAL-ED     |PERU         |>5%      |           0|    111| 302|
|0-24 months (no birth wast) |MAL-ED     |PERU         |>5%      |           1|      4| 302|
|0-24 months (no birth wast) |MAL-ED     |PERU         |0%       |           0|     90| 302|
|0-24 months (no birth wast) |MAL-ED     |PERU         |0%       |           1|      7| 302|
|0-24 months (no birth wast) |MAL-ED     |NEPAL        |(0%, 5%] |           0|     58| 239|
|0-24 months (no birth wast) |MAL-ED     |NEPAL        |(0%, 5%] |           1|      6| 239|
|0-24 months (no birth wast) |MAL-ED     |NEPAL        |>5%      |           0|     62| 239|
|0-24 months (no birth wast) |MAL-ED     |NEPAL        |>5%      |           1|     17| 239|
|0-24 months (no birth wast) |MAL-ED     |NEPAL        |0%       |           0|     73| 239|
|0-24 months (no birth wast) |MAL-ED     |NEPAL        |0%       |           1|     23| 239|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL       |(0%, 5%] |           0|     12| 233|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL       |(0%, 5%] |           1|      1| 233|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL       |>5%      |           0|      0| 233|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL       |>5%      |           1|      0| 233|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL       |0%       |           0|    208| 233|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL       |0%       |           1|     12| 233|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA     |(0%, 5%] |           0|    100| 261|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA     |(0%, 5%] |           1|     13| 261|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA     |>5%      |           0|     37| 261|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA     |>5%      |           1|      5| 261|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA     |0%       |           0|     90| 261|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA     |0%       |           1|     16| 261|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA |(0%, 5%] |           0|     53| 306|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA |(0%, 5%] |           1|      7| 306|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA |>5%      |           0|      6| 306|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA |>5%      |           1|      0| 306|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA |0%       |           0|    202| 306|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA |0%       |           1|     38| 306|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH   |(0%, 5%] |           0|    129| 597|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH   |(0%, 5%] |           1|     52| 597|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH   |>5%      |           0|    178| 597|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH   |>5%      |           1|     81| 597|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH   |0%       |           0|    114| 597|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH   |0%       |           1|     43| 597|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH   |(0%, 5%] |           0|    138| 754|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH   |(0%, 5%] |           1|     31| 754|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH   |>5%      |           0|    186| 754|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH   |>5%      |           1|     29| 754|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH   |0%       |           0|    322| 754|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH   |0%       |           1|     48| 754|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH   |(0%, 5%] |           0|    222| 687|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH   |(0%, 5%] |           1|     39| 687|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH   |>5%      |           0|    181| 687|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH   |>5%      |           1|     45| 687|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH   |0%       |           0|    162| 687|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH   |0%       |           1|     38| 687|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH   |(0%, 5%] |           0|     52| 267|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH   |(0%, 5%] |           1|      5| 267|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH   |>5%      |           0|     99| 267|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH   |>5%      |           1|     17| 267|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH   |0%       |           0|     85| 267|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH   |0%       |           1|      9| 267|
|0-6 months (no birth wast)  |CONTENT    |PERU         |(0%, 5%] |           0|     37| 215|
|0-6 months (no birth wast)  |CONTENT    |PERU         |(0%, 5%] |           1|      0| 215|
|0-6 months (no birth wast)  |CONTENT    |PERU         |>5%      |           0|     68| 215|
|0-6 months (no birth wast)  |CONTENT    |PERU         |>5%      |           1|      1| 215|
|0-6 months (no birth wast)  |CONTENT    |PERU         |0%       |           0|    107| 215|
|0-6 months (no birth wast)  |CONTENT    |PERU         |0%       |           1|      2| 215|
|0-6 months (no birth wast)  |EE         |PAKISTAN     |(0%, 5%] |           0|     22| 375|
|0-6 months (no birth wast)  |EE         |PAKISTAN     |(0%, 5%] |           1|      5| 375|
|0-6 months (no birth wast)  |EE         |PAKISTAN     |>5%      |           0|      1| 375|
|0-6 months (no birth wast)  |EE         |PAKISTAN     |>5%      |           1|      1| 375|
|0-6 months (no birth wast)  |EE         |PAKISTAN     |0%       |           0|    271| 375|
|0-6 months (no birth wast)  |EE         |PAKISTAN     |0%       |           1|     75| 375|
|0-6 months (no birth wast)  |MAL-ED     |INDIA        |(0%, 5%] |           0|    105| 244|
|0-6 months (no birth wast)  |MAL-ED     |INDIA        |(0%, 5%] |           1|     24| 244|
|0-6 months (no birth wast)  |MAL-ED     |INDIA        |>5%      |           0|     52| 244|
|0-6 months (no birth wast)  |MAL-ED     |INDIA        |>5%      |           1|      8| 244|
|0-6 months (no birth wast)  |MAL-ED     |INDIA        |0%       |           0|     48| 244|
|0-6 months (no birth wast)  |MAL-ED     |INDIA        |0%       |           1|      7| 244|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH   |(0%, 5%] |           0|     88| 262|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH   |(0%, 5%] |           1|      9| 262|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH   |>5%      |           0|     65| 262|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH   |>5%      |           1|      4| 262|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH   |0%       |           0|     90| 262|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH   |0%       |           1|      6| 262|
|0-6 months (no birth wast)  |MAL-ED     |PERU         |(0%, 5%] |           0|     88| 302|
|0-6 months (no birth wast)  |MAL-ED     |PERU         |(0%, 5%] |           1|      2| 302|
|0-6 months (no birth wast)  |MAL-ED     |PERU         |>5%      |           0|    113| 302|
|0-6 months (no birth wast)  |MAL-ED     |PERU         |>5%      |           1|      2| 302|
|0-6 months (no birth wast)  |MAL-ED     |PERU         |0%       |           0|     96| 302|
|0-6 months (no birth wast)  |MAL-ED     |PERU         |0%       |           1|      1| 302|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL        |(0%, 5%] |           0|     61| 237|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL        |(0%, 5%] |           1|      3| 237|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL        |>5%      |           0|     71| 237|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL        |>5%      |           1|      6| 237|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL        |0%       |           0|     89| 237|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL        |0%       |           1|      7| 237|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL       |(0%, 5%] |           0|     13| 233|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL       |(0%, 5%] |           1|      0| 233|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL       |>5%      |           0|      0| 233|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL       |>5%      |           1|      0| 233|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL       |0%       |           0|    212| 233|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL       |0%       |           1|      8| 233|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA     |(0%, 5%] |           0|    107| 261|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA     |(0%, 5%] |           1|      6| 261|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA     |>5%      |           0|     40| 261|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA     |>5%      |           1|      2| 261|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA     |0%       |           0|    104| 261|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA     |0%       |           1|      2| 261|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA |(0%, 5%] |           0|     57| 305|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA |(0%, 5%] |           1|      3| 305|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA |>5%      |           0|      6| 305|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA |>5%      |           1|      0| 305|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA |0%       |           0|    228| 305|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA |0%       |           1|     11| 305|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH   |(0%, 5%] |           0|    165| 579|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH   |(0%, 5%] |           1|     12| 579|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH   |>5%      |           0|    227| 579|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH   |>5%      |           1|     24| 579|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH   |0%       |           0|    142| 579|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH   |0%       |           1|      9| 579|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH   |(0%, 5%] |           0|    164| 749|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH   |(0%, 5%] |           1|      3| 749|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH   |>5%      |           0|    209| 749|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH   |>5%      |           1|      5| 749|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH   |0%       |           0|    356| 749|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH   |0%       |           1|     12| 749|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH   |(0%, 5%] |           0|    249| 683|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH   |(0%, 5%] |           1|     10| 683|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH   |>5%      |           0|    210| 683|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH   |>5%      |           1|     15| 683|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH   |0%       |           0|    187| 683|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH   |0%       |           1|     12| 683|
|6-24 months                 |CMIN       |BANGLADESH   |(0%, 5%] |           0|     34| 252|
|6-24 months                 |CMIN       |BANGLADESH   |(0%, 5%] |           1|     19| 252|
|6-24 months                 |CMIN       |BANGLADESH   |>5%      |           0|     61| 252|
|6-24 months                 |CMIN       |BANGLADESH   |>5%      |           1|     48| 252|
|6-24 months                 |CMIN       |BANGLADESH   |0%       |           0|     60| 252|
|6-24 months                 |CMIN       |BANGLADESH   |0%       |           1|     30| 252|
|6-24 months                 |CONTENT    |PERU         |(0%, 5%] |           0|     37| 215|
|6-24 months                 |CONTENT    |PERU         |(0%, 5%] |           1|      0| 215|
|6-24 months                 |CONTENT    |PERU         |>5%      |           0|     68| 215|
|6-24 months                 |CONTENT    |PERU         |>5%      |           1|      1| 215|
|6-24 months                 |CONTENT    |PERU         |0%       |           0|    108| 215|
|6-24 months                 |CONTENT    |PERU         |0%       |           1|      1| 215|
|6-24 months                 |EE         |PAKISTAN     |(0%, 5%] |           0|     15| 374|
|6-24 months                 |EE         |PAKISTAN     |(0%, 5%] |           1|     12| 374|
|6-24 months                 |EE         |PAKISTAN     |>5%      |           0|      1| 374|
|6-24 months                 |EE         |PAKISTAN     |>5%      |           1|      1| 374|
|6-24 months                 |EE         |PAKISTAN     |0%       |           0|    197| 374|
|6-24 months                 |EE         |PAKISTAN     |0%       |           1|    148| 374|
|6-24 months                 |MAL-ED     |INDIA        |(0%, 5%] |           0|     92| 235|
|6-24 months                 |MAL-ED     |INDIA        |(0%, 5%] |           1|     29| 235|
|6-24 months                 |MAL-ED     |INDIA        |>5%      |           0|     37| 235|
|6-24 months                 |MAL-ED     |INDIA        |>5%      |           1|     20| 235|
|6-24 months                 |MAL-ED     |INDIA        |0%       |           0|     42| 235|
|6-24 months                 |MAL-ED     |INDIA        |0%       |           1|     15| 235|
|6-24 months                 |MAL-ED     |BANGLADESH   |(0%, 5%] |           0|     75| 240|
|6-24 months                 |MAL-ED     |BANGLADESH   |(0%, 5%] |           1|     13| 240|
|6-24 months                 |MAL-ED     |BANGLADESH   |>5%      |           0|     52| 240|
|6-24 months                 |MAL-ED     |BANGLADESH   |>5%      |           1|      9| 240|
|6-24 months                 |MAL-ED     |BANGLADESH   |0%       |           0|     70| 240|
|6-24 months                 |MAL-ED     |BANGLADESH   |0%       |           1|     21| 240|
|6-24 months                 |MAL-ED     |PERU         |(0%, 5%] |           0|     76| 270|
|6-24 months                 |MAL-ED     |PERU         |(0%, 5%] |           1|      8| 270|
|6-24 months                 |MAL-ED     |PERU         |>5%      |           0|     94| 270|
|6-24 months                 |MAL-ED     |PERU         |>5%      |           1|      3| 270|
|6-24 months                 |MAL-ED     |PERU         |0%       |           0|     82| 270|
|6-24 months                 |MAL-ED     |PERU         |0%       |           1|      7| 270|
|6-24 months                 |MAL-ED     |NEPAL        |(0%, 5%] |           0|     60| 235|
|6-24 months                 |MAL-ED     |NEPAL        |(0%, 5%] |           1|      3| 235|
|6-24 months                 |MAL-ED     |NEPAL        |>5%      |           0|     64| 235|
|6-24 months                 |MAL-ED     |NEPAL        |>5%      |           1|     15| 235|
|6-24 months                 |MAL-ED     |NEPAL        |0%       |           0|     75| 235|
|6-24 months                 |MAL-ED     |NEPAL        |0%       |           1|     18| 235|
|6-24 months                 |MAL-ED     |BRAZIL       |(0%, 5%] |           0|     12| 207|
|6-24 months                 |MAL-ED     |BRAZIL       |(0%, 5%] |           1|      1| 207|
|6-24 months                 |MAL-ED     |BRAZIL       |>5%      |           0|      0| 207|
|6-24 months                 |MAL-ED     |BRAZIL       |>5%      |           1|      0| 207|
|6-24 months                 |MAL-ED     |BRAZIL       |0%       |           0|    189| 207|
|6-24 months                 |MAL-ED     |BRAZIL       |0%       |           1|      5| 207|
|6-24 months                 |MAL-ED     |TANZANIA     |(0%, 5%] |           0|     96| 245|
|6-24 months                 |MAL-ED     |TANZANIA     |(0%, 5%] |           1|      9| 245|
|6-24 months                 |MAL-ED     |TANZANIA     |>5%      |           0|     37| 245|
|6-24 months                 |MAL-ED     |TANZANIA     |>5%      |           1|      4| 245|
|6-24 months                 |MAL-ED     |TANZANIA     |0%       |           0|     84| 245|
|6-24 months                 |MAL-ED     |TANZANIA     |0%       |           1|     15| 245|
|6-24 months                 |MAL-ED     |SOUTH AFRICA |(0%, 5%] |           0|     47| 258|
|6-24 months                 |MAL-ED     |SOUTH AFRICA |(0%, 5%] |           1|      5| 258|
|6-24 months                 |MAL-ED     |SOUTH AFRICA |>5%      |           0|      6| 258|
|6-24 months                 |MAL-ED     |SOUTH AFRICA |>5%      |           1|      0| 258|
|6-24 months                 |MAL-ED     |SOUTH AFRICA |0%       |           0|    168| 258|
|6-24 months                 |MAL-ED     |SOUTH AFRICA |0%       |           1|     32| 258|
|6-24 months                 |NIH-Birth  |BANGLADESH   |(0%, 5%] |           0|    117| 538|
|6-24 months                 |NIH-Birth  |BANGLADESH   |(0%, 5%] |           1|     49| 538|
|6-24 months                 |NIH-Birth  |BANGLADESH   |>5%      |           0|    164| 538|
|6-24 months                 |NIH-Birth  |BANGLADESH   |>5%      |           1|     71| 538|
|6-24 months                 |NIH-Birth  |BANGLADESH   |0%       |           0|     99| 538|
|6-24 months                 |NIH-Birth  |BANGLADESH   |0%       |           1|     38| 538|
|6-24 months                 |NIH-Crypto |BANGLADESH   |(0%, 5%] |           0|    133| 730|
|6-24 months                 |NIH-Crypto |BANGLADESH   |(0%, 5%] |           1|     30| 730|
|6-24 months                 |NIH-Crypto |BANGLADESH   |>5%      |           0|    184| 730|
|6-24 months                 |NIH-Crypto |BANGLADESH   |>5%      |           1|     25| 730|
|6-24 months                 |NIH-Crypto |BANGLADESH   |0%       |           0|    317| 730|
|6-24 months                 |NIH-Crypto |BANGLADESH   |0%       |           1|     41| 730|
|6-24 months                 |PROVIDE    |BANGLADESH   |(0%, 5%] |           0|    213| 615|
|6-24 months                 |PROVIDE    |BANGLADESH   |(0%, 5%] |           1|     32| 615|
|6-24 months                 |PROVIDE    |BANGLADESH   |>5%      |           0|    159| 615|
|6-24 months                 |PROVIDE    |BANGLADESH   |>5%      |           1|     34| 615|
|6-24 months                 |PROVIDE    |BANGLADESH   |0%       |           0|    144| 615|
|6-24 months                 |PROVIDE    |BANGLADESH   |0%       |           1|     33| 615|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


