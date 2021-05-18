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

**Intervention Variable:** perdiar6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid    |country      |perdiar6 | ever_swasted| n_cell|   n|
|:---------------------------|:----------|:------------|:--------|------------:|------:|---:|
|0-24 months (no birth wast) |CMIN       |BANGLADESH   |(0%, 5%] |            0|     50| 268|
|0-24 months (no birth wast) |CMIN       |BANGLADESH   |(0%, 5%] |            1|      7| 268|
|0-24 months (no birth wast) |CMIN       |BANGLADESH   |>5%      |            0|     97| 268|
|0-24 months (no birth wast) |CMIN       |BANGLADESH   |>5%      |            1|     20| 268|
|0-24 months (no birth wast) |CMIN       |BANGLADESH   |0%       |            0|     84| 268|
|0-24 months (no birth wast) |CMIN       |BANGLADESH   |0%       |            1|     10| 268|
|0-24 months (no birth wast) |CONTENT    |PERU         |(0%, 5%] |            0|     37| 215|
|0-24 months (no birth wast) |CONTENT    |PERU         |(0%, 5%] |            1|      0| 215|
|0-24 months (no birth wast) |CONTENT    |PERU         |>5%      |            0|     68| 215|
|0-24 months (no birth wast) |CONTENT    |PERU         |>5%      |            1|      1| 215|
|0-24 months (no birth wast) |CONTENT    |PERU         |0%       |            0|    109| 215|
|0-24 months (no birth wast) |CONTENT    |PERU         |0%       |            1|      0| 215|
|0-24 months (no birth wast) |EE         |PAKISTAN     |(0%, 5%] |            0|     22| 377|
|0-24 months (no birth wast) |EE         |PAKISTAN     |(0%, 5%] |            1|      5| 377|
|0-24 months (no birth wast) |EE         |PAKISTAN     |>5%      |            0|      2| 377|
|0-24 months (no birth wast) |EE         |PAKISTAN     |>5%      |            1|      0| 377|
|0-24 months (no birth wast) |EE         |PAKISTAN     |0%       |            0|    287| 377|
|0-24 months (no birth wast) |EE         |PAKISTAN     |0%       |            1|     61| 377|
|0-24 months (no birth wast) |MAL-ED     |INDIA        |(0%, 5%] |            0|    120| 246|
|0-24 months (no birth wast) |MAL-ED     |INDIA        |(0%, 5%] |            1|      9| 246|
|0-24 months (no birth wast) |MAL-ED     |INDIA        |>5%      |            0|     57| 246|
|0-24 months (no birth wast) |MAL-ED     |INDIA        |>5%      |            1|      4| 246|
|0-24 months (no birth wast) |MAL-ED     |INDIA        |0%       |            0|     56| 246|
|0-24 months (no birth wast) |MAL-ED     |INDIA        |0%       |            1|      0| 246|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH   |(0%, 5%] |            0|     92| 263|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH   |(0%, 5%] |            1|      5| 263|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH   |>5%      |            0|     66| 263|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH   |>5%      |            1|      3| 263|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH   |0%       |            0|     93| 263|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH   |0%       |            1|      4| 263|
|0-24 months (no birth wast) |MAL-ED     |PERU         |(0%, 5%] |            0|     89| 302|
|0-24 months (no birth wast) |MAL-ED     |PERU         |(0%, 5%] |            1|      1| 302|
|0-24 months (no birth wast) |MAL-ED     |PERU         |>5%      |            0|    114| 302|
|0-24 months (no birth wast) |MAL-ED     |PERU         |>5%      |            1|      1| 302|
|0-24 months (no birth wast) |MAL-ED     |PERU         |0%       |            0|     95| 302|
|0-24 months (no birth wast) |MAL-ED     |PERU         |0%       |            1|      2| 302|
|0-24 months (no birth wast) |MAL-ED     |NEPAL        |(0%, 5%] |            0|     63| 239|
|0-24 months (no birth wast) |MAL-ED     |NEPAL        |(0%, 5%] |            1|      1| 239|
|0-24 months (no birth wast) |MAL-ED     |NEPAL        |>5%      |            0|     78| 239|
|0-24 months (no birth wast) |MAL-ED     |NEPAL        |>5%      |            1|      1| 239|
|0-24 months (no birth wast) |MAL-ED     |NEPAL        |0%       |            0|     95| 239|
|0-24 months (no birth wast) |MAL-ED     |NEPAL        |0%       |            1|      1| 239|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL       |(0%, 5%] |            0|     13| 233|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL       |(0%, 5%] |            1|      0| 233|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL       |>5%      |            0|      0| 233|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL       |>5%      |            1|      0| 233|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL       |0%       |            0|    216| 233|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL       |0%       |            1|      4| 233|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA     |(0%, 5%] |            0|    110| 261|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA     |(0%, 5%] |            1|      3| 261|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA     |>5%      |            0|     41| 261|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA     |>5%      |            1|      1| 261|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA     |0%       |            0|    102| 261|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA     |0%       |            1|      4| 261|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA |(0%, 5%] |            0|     59| 306|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA |(0%, 5%] |            1|      1| 306|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA |>5%      |            0|      6| 306|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA |>5%      |            1|      0| 306|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA |0%       |            0|    229| 306|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA |0%       |            1|     11| 306|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH   |(0%, 5%] |            0|    164| 597|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH   |(0%, 5%] |            1|     17| 597|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH   |>5%      |            0|    231| 597|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH   |>5%      |            1|     28| 597|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH   |0%       |            0|    149| 597|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH   |0%       |            1|      8| 597|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH   |(0%, 5%] |            0|    161| 754|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH   |(0%, 5%] |            1|      8| 754|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH   |>5%      |            0|    208| 754|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH   |>5%      |            1|      7| 754|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH   |0%       |            0|    365| 754|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH   |0%       |            1|      5| 754|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH   |(0%, 5%] |            0|    256| 687|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH   |(0%, 5%] |            1|      5| 687|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH   |>5%      |            0|    220| 687|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH   |>5%      |            1|      6| 687|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH   |0%       |            0|    192| 687|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH   |0%       |            1|      8| 687|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH   |(0%, 5%] |            0|     56| 267|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH   |(0%, 5%] |            1|      1| 267|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH   |>5%      |            0|    110| 267|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH   |>5%      |            1|      6| 267|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH   |0%       |            0|     92| 267|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH   |0%       |            1|      2| 267|
|0-6 months (no birth wast)  |CONTENT    |PERU         |(0%, 5%] |            0|     37| 215|
|0-6 months (no birth wast)  |CONTENT    |PERU         |(0%, 5%] |            1|      0| 215|
|0-6 months (no birth wast)  |CONTENT    |PERU         |>5%      |            0|     68| 215|
|0-6 months (no birth wast)  |CONTENT    |PERU         |>5%      |            1|      1| 215|
|0-6 months (no birth wast)  |CONTENT    |PERU         |0%       |            0|    109| 215|
|0-6 months (no birth wast)  |CONTENT    |PERU         |0%       |            1|      0| 215|
|0-6 months (no birth wast)  |EE         |PAKISTAN     |(0%, 5%] |            0|     26| 375|
|0-6 months (no birth wast)  |EE         |PAKISTAN     |(0%, 5%] |            1|      1| 375|
|0-6 months (no birth wast)  |EE         |PAKISTAN     |>5%      |            0|      2| 375|
|0-6 months (no birth wast)  |EE         |PAKISTAN     |>5%      |            1|      0| 375|
|0-6 months (no birth wast)  |EE         |PAKISTAN     |0%       |            0|    327| 375|
|0-6 months (no birth wast)  |EE         |PAKISTAN     |0%       |            1|     19| 375|
|0-6 months (no birth wast)  |MAL-ED     |INDIA        |(0%, 5%] |            0|    124| 244|
|0-6 months (no birth wast)  |MAL-ED     |INDIA        |(0%, 5%] |            1|      5| 244|
|0-6 months (no birth wast)  |MAL-ED     |INDIA        |>5%      |            0|     58| 244|
|0-6 months (no birth wast)  |MAL-ED     |INDIA        |>5%      |            1|      2| 244|
|0-6 months (no birth wast)  |MAL-ED     |INDIA        |0%       |            0|     55| 244|
|0-6 months (no birth wast)  |MAL-ED     |INDIA        |0%       |            1|      0| 244|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH   |(0%, 5%] |            0|     94| 262|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH   |(0%, 5%] |            1|      3| 262|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH   |>5%      |            0|     68| 262|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH   |>5%      |            1|      1| 262|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH   |0%       |            0|     93| 262|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH   |0%       |            1|      3| 262|
|0-6 months (no birth wast)  |MAL-ED     |PERU         |(0%, 5%] |            0|     90| 302|
|0-6 months (no birth wast)  |MAL-ED     |PERU         |(0%, 5%] |            1|      0| 302|
|0-6 months (no birth wast)  |MAL-ED     |PERU         |>5%      |            0|    114| 302|
|0-6 months (no birth wast)  |MAL-ED     |PERU         |>5%      |            1|      1| 302|
|0-6 months (no birth wast)  |MAL-ED     |PERU         |0%       |            0|     97| 302|
|0-6 months (no birth wast)  |MAL-ED     |PERU         |0%       |            1|      0| 302|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL        |(0%, 5%] |            0|     63| 237|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL        |(0%, 5%] |            1|      1| 237|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL        |>5%      |            0|     77| 237|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL        |>5%      |            1|      0| 237|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL        |0%       |            0|     96| 237|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL        |0%       |            1|      0| 237|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL       |(0%, 5%] |            0|     13| 233|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL       |(0%, 5%] |            1|      0| 233|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL       |>5%      |            0|      0| 233|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL       |>5%      |            1|      0| 233|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL       |0%       |            0|    217| 233|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL       |0%       |            1|      3| 233|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA     |(0%, 5%] |            0|    111| 261|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA     |(0%, 5%] |            1|      2| 261|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA     |>5%      |            0|     41| 261|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA     |>5%      |            1|      1| 261|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA     |0%       |            0|    106| 261|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA     |0%       |            1|      0| 261|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA |(0%, 5%] |            0|     60| 305|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA |(0%, 5%] |            1|      0| 305|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA |>5%      |            0|      6| 305|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA |>5%      |            1|      0| 305|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA |0%       |            0|    236| 305|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA |0%       |            1|      3| 305|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH   |(0%, 5%] |            0|    174| 579|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH   |(0%, 5%] |            1|      3| 579|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH   |>5%      |            0|    249| 579|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH   |>5%      |            1|      2| 579|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH   |0%       |            0|    147| 579|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH   |0%       |            1|      4| 579|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH   |(0%, 5%] |            0|    167| 749|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH   |(0%, 5%] |            1|      0| 749|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH   |>5%      |            0|    214| 749|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH   |>5%      |            1|      0| 749|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH   |0%       |            0|    367| 749|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH   |0%       |            1|      1| 749|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH   |(0%, 5%] |            0|    259| 683|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH   |(0%, 5%] |            1|      0| 683|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH   |>5%      |            0|    222| 683|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH   |>5%      |            1|      3| 683|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH   |0%       |            0|    196| 683|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH   |0%       |            1|      3| 683|
|6-24 months                 |CMIN       |BANGLADESH   |(0%, 5%] |            0|     47| 252|
|6-24 months                 |CMIN       |BANGLADESH   |(0%, 5%] |            1|      6| 252|
|6-24 months                 |CMIN       |BANGLADESH   |>5%      |            0|     94| 252|
|6-24 months                 |CMIN       |BANGLADESH   |>5%      |            1|     15| 252|
|6-24 months                 |CMIN       |BANGLADESH   |0%       |            0|     82| 252|
|6-24 months                 |CMIN       |BANGLADESH   |0%       |            1|      8| 252|
|6-24 months                 |CONTENT    |PERU         |(0%, 5%] |            0|     37| 215|
|6-24 months                 |CONTENT    |PERU         |(0%, 5%] |            1|      0| 215|
|6-24 months                 |CONTENT    |PERU         |>5%      |            0|     69| 215|
|6-24 months                 |CONTENT    |PERU         |>5%      |            1|      0| 215|
|6-24 months                 |CONTENT    |PERU         |0%       |            0|    109| 215|
|6-24 months                 |CONTENT    |PERU         |0%       |            1|      0| 215|
|6-24 months                 |EE         |PAKISTAN     |(0%, 5%] |            0|     23| 374|
|6-24 months                 |EE         |PAKISTAN     |(0%, 5%] |            1|      4| 374|
|6-24 months                 |EE         |PAKISTAN     |>5%      |            0|      2| 374|
|6-24 months                 |EE         |PAKISTAN     |>5%      |            1|      0| 374|
|6-24 months                 |EE         |PAKISTAN     |0%       |            0|    298| 374|
|6-24 months                 |EE         |PAKISTAN     |0%       |            1|     47| 374|
|6-24 months                 |MAL-ED     |INDIA        |(0%, 5%] |            0|    117| 235|
|6-24 months                 |MAL-ED     |INDIA        |(0%, 5%] |            1|      4| 235|
|6-24 months                 |MAL-ED     |INDIA        |>5%      |            0|     55| 235|
|6-24 months                 |MAL-ED     |INDIA        |>5%      |            1|      2| 235|
|6-24 months                 |MAL-ED     |INDIA        |0%       |            0|     57| 235|
|6-24 months                 |MAL-ED     |INDIA        |0%       |            1|      0| 235|
|6-24 months                 |MAL-ED     |BANGLADESH   |(0%, 5%] |            0|     86| 240|
|6-24 months                 |MAL-ED     |BANGLADESH   |(0%, 5%] |            1|      2| 240|
|6-24 months                 |MAL-ED     |BANGLADESH   |>5%      |            0|     59| 240|
|6-24 months                 |MAL-ED     |BANGLADESH   |>5%      |            1|      2| 240|
|6-24 months                 |MAL-ED     |BANGLADESH   |0%       |            0|     90| 240|
|6-24 months                 |MAL-ED     |BANGLADESH   |0%       |            1|      1| 240|
|6-24 months                 |MAL-ED     |PERU         |(0%, 5%] |            0|     83| 270|
|6-24 months                 |MAL-ED     |PERU         |(0%, 5%] |            1|      1| 270|
|6-24 months                 |MAL-ED     |PERU         |>5%      |            0|     97| 270|
|6-24 months                 |MAL-ED     |PERU         |>5%      |            1|      0| 270|
|6-24 months                 |MAL-ED     |PERU         |0%       |            0|     87| 270|
|6-24 months                 |MAL-ED     |PERU         |0%       |            1|      2| 270|
|6-24 months                 |MAL-ED     |NEPAL        |(0%, 5%] |            0|     63| 235|
|6-24 months                 |MAL-ED     |NEPAL        |(0%, 5%] |            1|      0| 235|
|6-24 months                 |MAL-ED     |NEPAL        |>5%      |            0|     78| 235|
|6-24 months                 |MAL-ED     |NEPAL        |>5%      |            1|      1| 235|
|6-24 months                 |MAL-ED     |NEPAL        |0%       |            0|     92| 235|
|6-24 months                 |MAL-ED     |NEPAL        |0%       |            1|      1| 235|
|6-24 months                 |MAL-ED     |BRAZIL       |(0%, 5%] |            0|     13| 207|
|6-24 months                 |MAL-ED     |BRAZIL       |(0%, 5%] |            1|      0| 207|
|6-24 months                 |MAL-ED     |BRAZIL       |>5%      |            0|      0| 207|
|6-24 months                 |MAL-ED     |BRAZIL       |>5%      |            1|      0| 207|
|6-24 months                 |MAL-ED     |BRAZIL       |0%       |            0|    193| 207|
|6-24 months                 |MAL-ED     |BRAZIL       |0%       |            1|      1| 207|
|6-24 months                 |MAL-ED     |TANZANIA     |(0%, 5%] |            0|    104| 245|
|6-24 months                 |MAL-ED     |TANZANIA     |(0%, 5%] |            1|      1| 245|
|6-24 months                 |MAL-ED     |TANZANIA     |>5%      |            0|     41| 245|
|6-24 months                 |MAL-ED     |TANZANIA     |>5%      |            1|      0| 245|
|6-24 months                 |MAL-ED     |TANZANIA     |0%       |            0|     95| 245|
|6-24 months                 |MAL-ED     |TANZANIA     |0%       |            1|      4| 245|
|6-24 months                 |MAL-ED     |SOUTH AFRICA |(0%, 5%] |            0|     51| 258|
|6-24 months                 |MAL-ED     |SOUTH AFRICA |(0%, 5%] |            1|      1| 258|
|6-24 months                 |MAL-ED     |SOUTH AFRICA |>5%      |            0|      6| 258|
|6-24 months                 |MAL-ED     |SOUTH AFRICA |>5%      |            1|      0| 258|
|6-24 months                 |MAL-ED     |SOUTH AFRICA |0%       |            0|    191| 258|
|6-24 months                 |MAL-ED     |SOUTH AFRICA |0%       |            1|      9| 258|
|6-24 months                 |NIH-Birth  |BANGLADESH   |(0%, 5%] |            0|    152| 538|
|6-24 months                 |NIH-Birth  |BANGLADESH   |(0%, 5%] |            1|     14| 538|
|6-24 months                 |NIH-Birth  |BANGLADESH   |>5%      |            0|    206| 538|
|6-24 months                 |NIH-Birth  |BANGLADESH   |>5%      |            1|     29| 538|
|6-24 months                 |NIH-Birth  |BANGLADESH   |0%       |            0|    133| 538|
|6-24 months                 |NIH-Birth  |BANGLADESH   |0%       |            1|      4| 538|
|6-24 months                 |NIH-Crypto |BANGLADESH   |(0%, 5%] |            0|    155| 730|
|6-24 months                 |NIH-Crypto |BANGLADESH   |(0%, 5%] |            1|      8| 730|
|6-24 months                 |NIH-Crypto |BANGLADESH   |>5%      |            0|    202| 730|
|6-24 months                 |NIH-Crypto |BANGLADESH   |>5%      |            1|      7| 730|
|6-24 months                 |NIH-Crypto |BANGLADESH   |0%       |            0|    353| 730|
|6-24 months                 |NIH-Crypto |BANGLADESH   |0%       |            1|      5| 730|
|6-24 months                 |PROVIDE    |BANGLADESH   |(0%, 5%] |            0|    240| 615|
|6-24 months                 |PROVIDE    |BANGLADESH   |(0%, 5%] |            1|      5| 615|
|6-24 months                 |PROVIDE    |BANGLADESH   |>5%      |            0|    190| 615|
|6-24 months                 |PROVIDE    |BANGLADESH   |>5%      |            1|      3| 615|
|6-24 months                 |PROVIDE    |BANGLADESH   |0%       |            0|    172| 615|
|6-24 months                 |PROVIDE    |BANGLADESH   |0%       |            1|      5| 615|


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
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
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


