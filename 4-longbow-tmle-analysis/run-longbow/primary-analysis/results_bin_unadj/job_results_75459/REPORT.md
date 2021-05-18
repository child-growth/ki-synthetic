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

**Intervention Variable:** perdiar6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid    |country      |perdiar6 | ever_stunted| n_cell|   n|
|:--------------------------|:----------|:------------|:--------|------------:|------:|---:|
|0-24 months (no birth st.) |CMIN       |BANGLADESH   |(0%, 5%] |            0|      9| 168|
|0-24 months (no birth st.) |CMIN       |BANGLADESH   |(0%, 5%] |            1|     29| 168|
|0-24 months (no birth st.) |CMIN       |BANGLADESH   |>5%      |            0|     18| 168|
|0-24 months (no birth st.) |CMIN       |BANGLADESH   |>5%      |            1|     54| 168|
|0-24 months (no birth st.) |CMIN       |BANGLADESH   |0%       |            0|     14| 168|
|0-24 months (no birth st.) |CMIN       |BANGLADESH   |0%       |            1|     44| 168|
|0-24 months (no birth st.) |CONTENT    |PERU         |(0%, 5%] |            0|     26| 195|
|0-24 months (no birth st.) |CONTENT    |PERU         |(0%, 5%] |            1|      6| 195|
|0-24 months (no birth st.) |CONTENT    |PERU         |>5%      |            0|     59| 195|
|0-24 months (no birth st.) |CONTENT    |PERU         |>5%      |            1|      8| 195|
|0-24 months (no birth st.) |CONTENT    |PERU         |0%       |            0|     77| 195|
|0-24 months (no birth st.) |CONTENT    |PERU         |0%       |            1|     19| 195|
|0-24 months (no birth st.) |EE         |PAKISTAN     |(0%, 5%] |            0|      4| 213|
|0-24 months (no birth st.) |EE         |PAKISTAN     |(0%, 5%] |            1|     11| 213|
|0-24 months (no birth st.) |EE         |PAKISTAN     |>5%      |            0|      0| 213|
|0-24 months (no birth st.) |EE         |PAKISTAN     |>5%      |            1|      1| 213|
|0-24 months (no birth st.) |EE         |PAKISTAN     |0%       |            0|     37| 213|
|0-24 months (no birth st.) |EE         |PAKISTAN     |0%       |            1|    160| 213|
|0-24 months (no birth st.) |MAL-ED     |INDIA        |(0%, 5%] |            0|     59| 210|
|0-24 months (no birth st.) |MAL-ED     |INDIA        |(0%, 5%] |            1|     47| 210|
|0-24 months (no birth st.) |MAL-ED     |INDIA        |>5%      |            0|     21| 210|
|0-24 months (no birth st.) |MAL-ED     |INDIA        |>5%      |            1|     35| 210|
|0-24 months (no birth st.) |MAL-ED     |INDIA        |0%       |            0|     19| 210|
|0-24 months (no birth st.) |MAL-ED     |INDIA        |0%       |            1|     29| 210|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH   |(0%, 5%] |            0|     34| 217|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH   |(0%, 5%] |            1|     41| 217|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH   |>5%      |            0|     29| 217|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH   |>5%      |            1|     29| 217|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH   |0%       |            0|     40| 217|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH   |0%       |            1|     44| 217|
|0-24 months (no birth st.) |MAL-ED     |PERU         |(0%, 5%] |            0|     31| 266|
|0-24 months (no birth st.) |MAL-ED     |PERU         |(0%, 5%] |            1|     50| 266|
|0-24 months (no birth st.) |MAL-ED     |PERU         |>5%      |            0|     55| 266|
|0-24 months (no birth st.) |MAL-ED     |PERU         |>5%      |            1|     46| 266|
|0-24 months (no birth st.) |MAL-ED     |PERU         |0%       |            0|     29| 266|
|0-24 months (no birth st.) |MAL-ED     |PERU         |0%       |            1|     55| 266|
|0-24 months (no birth st.) |MAL-ED     |NEPAL        |(0%, 5%] |            0|     37| 211|
|0-24 months (no birth st.) |MAL-ED     |NEPAL        |(0%, 5%] |            1|     16| 211|
|0-24 months (no birth st.) |MAL-ED     |NEPAL        |>5%      |            0|     53| 211|
|0-24 months (no birth st.) |MAL-ED     |NEPAL        |>5%      |            1|     18| 211|
|0-24 months (no birth st.) |MAL-ED     |NEPAL        |0%       |            0|     66| 211|
|0-24 months (no birth st.) |MAL-ED     |NEPAL        |0%       |            1|     21| 211|
|0-24 months (no birth st.) |MAL-ED     |BRAZIL       |(0%, 5%] |            0|      7| 202|
|0-24 months (no birth st.) |MAL-ED     |BRAZIL       |(0%, 5%] |            1|      4| 202|
|0-24 months (no birth st.) |MAL-ED     |BRAZIL       |>5%      |            0|      0| 202|
|0-24 months (no birth st.) |MAL-ED     |BRAZIL       |>5%      |            1|      0| 202|
|0-24 months (no birth st.) |MAL-ED     |BRAZIL       |0%       |            0|    163| 202|
|0-24 months (no birth st.) |MAL-ED     |BRAZIL       |0%       |            1|     28| 202|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA     |(0%, 5%] |            0|     15| 219|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA     |(0%, 5%] |            1|     78| 219|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA     |>5%      |            0|      9| 219|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA     |>5%      |            1|     28| 219|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA     |0%       |            0|     16| 219|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA     |0%       |            1|     73| 219|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA |(0%, 5%] |            0|     22| 274|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA |(0%, 5%] |            1|     24| 274|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA |>5%      |            0|      1| 274|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA |>5%      |            1|      5| 274|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA |0%       |            0|    114| 274|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA |0%       |            1|    108| 274|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH   |(0%, 5%] |            0|     57| 526|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH   |(0%, 5%] |            1|     98| 526|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH   |>5%      |            0|     87| 526|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH   |>5%      |            1|    139| 526|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH   |0%       |            0|     65| 526|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH   |0%       |            1|     80| 526|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH   |(0%, 5%] |            0|     86| 653|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH   |(0%, 5%] |            1|     56| 653|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH   |>5%      |            0|    117| 653|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH   |>5%      |            1|     70| 653|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH   |0%       |            0|    193| 653|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH   |0%       |            1|    131| 653|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH   |(0%, 5%] |            0|    154| 633|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH   |(0%, 5%] |            1|     94| 633|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH   |>5%      |            0|    122| 633|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH   |>5%      |            1|     80| 633|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH   |0%       |            0|    119| 633|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH   |0%       |            1|     64| 633|
|0-6 months (no birth st.)  |CMIN       |BANGLADESH   |(0%, 5%] |            0|     31| 168|
|0-6 months (no birth st.)  |CMIN       |BANGLADESH   |(0%, 5%] |            1|      7| 168|
|0-6 months (no birth st.)  |CMIN       |BANGLADESH   |>5%      |            0|     48| 168|
|0-6 months (no birth st.)  |CMIN       |BANGLADESH   |>5%      |            1|     24| 168|
|0-6 months (no birth st.)  |CMIN       |BANGLADESH   |0%       |            0|     41| 168|
|0-6 months (no birth st.)  |CMIN       |BANGLADESH   |0%       |            1|     17| 168|
|0-6 months (no birth st.)  |CONTENT    |PERU         |(0%, 5%] |            0|     32| 195|
|0-6 months (no birth st.)  |CONTENT    |PERU         |(0%, 5%] |            1|      0| 195|
|0-6 months (no birth st.)  |CONTENT    |PERU         |>5%      |            0|     63| 195|
|0-6 months (no birth st.)  |CONTENT    |PERU         |>5%      |            1|      4| 195|
|0-6 months (no birth st.)  |CONTENT    |PERU         |0%       |            0|     93| 195|
|0-6 months (no birth st.)  |CONTENT    |PERU         |0%       |            1|      3| 195|
|0-6 months (no birth st.)  |EE         |PAKISTAN     |(0%, 5%] |            0|      7| 213|
|0-6 months (no birth st.)  |EE         |PAKISTAN     |(0%, 5%] |            1|      8| 213|
|0-6 months (no birth st.)  |EE         |PAKISTAN     |>5%      |            0|      0| 213|
|0-6 months (no birth st.)  |EE         |PAKISTAN     |>5%      |            1|      1| 213|
|0-6 months (no birth st.)  |EE         |PAKISTAN     |0%       |            0|     88| 213|
|0-6 months (no birth st.)  |EE         |PAKISTAN     |0%       |            1|    109| 213|
|0-6 months (no birth st.)  |MAL-ED     |INDIA        |(0%, 5%] |            0|     86| 210|
|0-6 months (no birth st.)  |MAL-ED     |INDIA        |(0%, 5%] |            1|     20| 210|
|0-6 months (no birth st.)  |MAL-ED     |INDIA        |>5%      |            0|     42| 210|
|0-6 months (no birth st.)  |MAL-ED     |INDIA        |>5%      |            1|     14| 210|
|0-6 months (no birth st.)  |MAL-ED     |INDIA        |0%       |            0|     36| 210|
|0-6 months (no birth st.)  |MAL-ED     |INDIA        |0%       |            1|     12| 210|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH   |(0%, 5%] |            0|     56| 217|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH   |(0%, 5%] |            1|     19| 217|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH   |>5%      |            0|     49| 217|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH   |>5%      |            1|      9| 217|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH   |0%       |            0|     65| 217|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH   |0%       |            1|     19| 217|
|0-6 months (no birth st.)  |MAL-ED     |PERU         |(0%, 5%] |            0|     50| 266|
|0-6 months (no birth st.)  |MAL-ED     |PERU         |(0%, 5%] |            1|     31| 266|
|0-6 months (no birth st.)  |MAL-ED     |PERU         |>5%      |            0|     79| 266|
|0-6 months (no birth st.)  |MAL-ED     |PERU         |>5%      |            1|     22| 266|
|0-6 months (no birth st.)  |MAL-ED     |PERU         |0%       |            0|     45| 266|
|0-6 months (no birth st.)  |MAL-ED     |PERU         |0%       |            1|     39| 266|
|0-6 months (no birth st.)  |MAL-ED     |NEPAL        |(0%, 5%] |            0|     49| 211|
|0-6 months (no birth st.)  |MAL-ED     |NEPAL        |(0%, 5%] |            1|      4| 211|
|0-6 months (no birth st.)  |MAL-ED     |NEPAL        |>5%      |            0|     65| 211|
|0-6 months (no birth st.)  |MAL-ED     |NEPAL        |>5%      |            1|      6| 211|
|0-6 months (no birth st.)  |MAL-ED     |NEPAL        |0%       |            0|     83| 211|
|0-6 months (no birth st.)  |MAL-ED     |NEPAL        |0%       |            1|      4| 211|
|0-6 months (no birth st.)  |MAL-ED     |BRAZIL       |(0%, 5%] |            0|      7| 202|
|0-6 months (no birth st.)  |MAL-ED     |BRAZIL       |(0%, 5%] |            1|      4| 202|
|0-6 months (no birth st.)  |MAL-ED     |BRAZIL       |>5%      |            0|      0| 202|
|0-6 months (no birth st.)  |MAL-ED     |BRAZIL       |>5%      |            1|      0| 202|
|0-6 months (no birth st.)  |MAL-ED     |BRAZIL       |0%       |            0|    174| 202|
|0-6 months (no birth st.)  |MAL-ED     |BRAZIL       |0%       |            1|     17| 202|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA     |(0%, 5%] |            0|     61| 219|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA     |(0%, 5%] |            1|     32| 219|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA     |>5%      |            0|     32| 219|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA     |>5%      |            1|      5| 219|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA     |0%       |            0|     60| 219|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA     |0%       |            1|     29| 219|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA |(0%, 5%] |            0|     35| 274|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA |(0%, 5%] |            1|     11| 274|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA |>5%      |            0|      3| 274|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA |>5%      |            1|      3| 274|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA |0%       |            0|    159| 274|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA |0%       |            1|     63| 274|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH   |(0%, 5%] |            0|    119| 526|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH   |(0%, 5%] |            1|     36| 526|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH   |>5%      |            0|    169| 526|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH   |>5%      |            1|     57| 526|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH   |0%       |            0|    119| 526|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH   |0%       |            1|     26| 526|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH   |(0%, 5%] |            0|    114| 653|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH   |(0%, 5%] |            1|     28| 653|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH   |>5%      |            0|    155| 653|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH   |>5%      |            1|     32| 653|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH   |0%       |            0|    260| 653|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH   |0%       |            1|     64| 653|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH   |(0%, 5%] |            0|    209| 633|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH   |(0%, 5%] |            1|     39| 633|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH   |>5%      |            0|    168| 633|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH   |>5%      |            1|     34| 633|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH   |0%       |            0|    155| 633|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH   |0%       |            1|     28| 633|
|6-24 months                |CMIN       |BANGLADESH   |(0%, 5%] |            0|      7| 111|
|6-24 months                |CMIN       |BANGLADESH   |(0%, 5%] |            1|     22| 111|
|6-24 months                |CMIN       |BANGLADESH   |>5%      |            0|     13| 111|
|6-24 months                |CMIN       |BANGLADESH   |>5%      |            1|     30| 111|
|6-24 months                |CMIN       |BANGLADESH   |0%       |            0|     12| 111|
|6-24 months                |CMIN       |BANGLADESH   |0%       |            1|     27| 111|
|6-24 months                |CONTENT    |PERU         |(0%, 5%] |            0|     26| 188|
|6-24 months                |CONTENT    |PERU         |(0%, 5%] |            1|      6| 188|
|6-24 months                |CONTENT    |PERU         |>5%      |            0|     59| 188|
|6-24 months                |CONTENT    |PERU         |>5%      |            1|      4| 188|
|6-24 months                |CONTENT    |PERU         |0%       |            0|     77| 188|
|6-24 months                |CONTENT    |PERU         |0%       |            1|     16| 188|
|6-24 months                |EE         |PAKISTAN     |(0%, 5%] |            0|      4|  93|
|6-24 months                |EE         |PAKISTAN     |(0%, 5%] |            1|      3|  93|
|6-24 months                |EE         |PAKISTAN     |>5%      |            0|      0|  93|
|6-24 months                |EE         |PAKISTAN     |>5%      |            1|      0|  93|
|6-24 months                |EE         |PAKISTAN     |0%       |            0|     35|  93|
|6-24 months                |EE         |PAKISTAN     |0%       |            1|     51|  93|
|6-24 months                |MAL-ED     |INDIA        |(0%, 5%] |            0|     52| 154|
|6-24 months                |MAL-ED     |INDIA        |(0%, 5%] |            1|     27| 154|
|6-24 months                |MAL-ED     |INDIA        |>5%      |            0|     19| 154|
|6-24 months                |MAL-ED     |INDIA        |>5%      |            1|     21| 154|
|6-24 months                |MAL-ED     |INDIA        |0%       |            0|     18| 154|
|6-24 months                |MAL-ED     |INDIA        |0%       |            1|     17| 154|
|6-24 months                |MAL-ED     |BANGLADESH   |(0%, 5%] |            0|     30| 158|
|6-24 months                |MAL-ED     |BANGLADESH   |(0%, 5%] |            1|     22| 158|
|6-24 months                |MAL-ED     |BANGLADESH   |>5%      |            0|     24| 158|
|6-24 months                |MAL-ED     |BANGLADESH   |>5%      |            1|     20| 158|
|6-24 months                |MAL-ED     |BANGLADESH   |0%       |            0|     37| 158|
|6-24 months                |MAL-ED     |BANGLADESH   |0%       |            1|     25| 158|
|6-24 months                |MAL-ED     |PERU         |(0%, 5%] |            0|     26| 149|
|6-24 months                |MAL-ED     |PERU         |(0%, 5%] |            1|     19| 149|
|6-24 months                |MAL-ED     |PERU         |>5%      |            0|     40| 149|
|6-24 months                |MAL-ED     |PERU         |>5%      |            1|     24| 149|
|6-24 months                |MAL-ED     |PERU         |0%       |            0|     24| 149|
|6-24 months                |MAL-ED     |PERU         |0%       |            1|     16| 149|
|6-24 months                |MAL-ED     |NEPAL        |(0%, 5%] |            0|     37| 194|
|6-24 months                |MAL-ED     |NEPAL        |(0%, 5%] |            1|     12| 194|
|6-24 months                |MAL-ED     |NEPAL        |>5%      |            0|     53| 194|
|6-24 months                |MAL-ED     |NEPAL        |>5%      |            1|     12| 194|
|6-24 months                |MAL-ED     |NEPAL        |0%       |            0|     63| 194|
|6-24 months                |MAL-ED     |NEPAL        |0%       |            1|     17| 194|
|6-24 months                |MAL-ED     |BRAZIL       |(0%, 5%] |            0|      7| 163|
|6-24 months                |MAL-ED     |BRAZIL       |(0%, 5%] |            1|      0| 163|
|6-24 months                |MAL-ED     |BRAZIL       |>5%      |            0|      0| 163|
|6-24 months                |MAL-ED     |BRAZIL       |>5%      |            1|      0| 163|
|6-24 months                |MAL-ED     |BRAZIL       |0%       |            0|    145| 163|
|6-24 months                |MAL-ED     |BRAZIL       |0%       |            1|     11| 163|
|6-24 months                |MAL-ED     |TANZANIA     |(0%, 5%] |            0|     12| 144|
|6-24 months                |MAL-ED     |TANZANIA     |(0%, 5%] |            1|     46| 144|
|6-24 months                |MAL-ED     |TANZANIA     |>5%      |            0|      8| 144|
|6-24 months                |MAL-ED     |TANZANIA     |>5%      |            1|     23| 144|
|6-24 months                |MAL-ED     |TANZANIA     |0%       |            0|     11| 144|
|6-24 months                |MAL-ED     |TANZANIA     |0%       |            1|     44| 144|
|6-24 months                |MAL-ED     |SOUTH AFRICA |(0%, 5%] |            0|     16| 158|
|6-24 months                |MAL-ED     |SOUTH AFRICA |(0%, 5%] |            1|     13| 158|
|6-24 months                |MAL-ED     |SOUTH AFRICA |>5%      |            0|      1| 158|
|6-24 months                |MAL-ED     |SOUTH AFRICA |>5%      |            1|      2| 158|
|6-24 months                |MAL-ED     |SOUTH AFRICA |0%       |            0|     81| 158|
|6-24 months                |MAL-ED     |SOUTH AFRICA |0%       |            1|     45| 158|
|6-24 months                |NIH-Birth  |BANGLADESH   |(0%, 5%] |            0|     43| 344|
|6-24 months                |NIH-Birth  |BANGLADESH   |(0%, 5%] |            1|     62| 344|
|6-24 months                |NIH-Birth  |BANGLADESH   |>5%      |            0|     59| 344|
|6-24 months                |NIH-Birth  |BANGLADESH   |>5%      |            1|     82| 344|
|6-24 months                |NIH-Birth  |BANGLADESH   |0%       |            0|     44| 344|
|6-24 months                |NIH-Birth  |BANGLADESH   |0%       |            1|     54| 344|
|6-24 months                |NIH-Crypto |BANGLADESH   |(0%, 5%] |            0|     78| 506|
|6-24 months                |NIH-Crypto |BANGLADESH   |(0%, 5%] |            1|     28| 506|
|6-24 months                |NIH-Crypto |BANGLADESH   |>5%      |            0|    113| 506|
|6-24 months                |NIH-Crypto |BANGLADESH   |>5%      |            1|     38| 506|
|6-24 months                |NIH-Crypto |BANGLADESH   |0%       |            0|    182| 506|
|6-24 months                |NIH-Crypto |BANGLADESH   |0%       |            1|     67| 506|
|6-24 months                |PROVIDE    |BANGLADESH   |(0%, 5%] |            0|    133| 456|
|6-24 months                |PROVIDE    |BANGLADESH   |(0%, 5%] |            1|     55| 456|
|6-24 months                |PROVIDE    |BANGLADESH   |>5%      |            0|     91| 456|
|6-24 months                |PROVIDE    |BANGLADESH   |>5%      |            1|     46| 456|
|6-24 months                |PROVIDE    |BANGLADESH   |0%       |            0|     95| 456|
|6-24 months                |PROVIDE    |BANGLADESH   |0%       |            1|     36| 456|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
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

* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


