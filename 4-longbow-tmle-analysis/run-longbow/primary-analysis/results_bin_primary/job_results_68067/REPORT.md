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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid    |country                      |perdiar6 | ever_wasted| n_cell|   n|
|:---------------------------|:----------|:----------------------------|:--------|-----------:|------:|---:|
|0-24 months (no birth wast) |CMIN       |BANGLADESH                   |0%       |           0|     54| 268|
|0-24 months (no birth wast) |CMIN       |BANGLADESH                   |0%       |           1|     39| 268|
|0-24 months (no birth wast) |CMIN       |BANGLADESH                   |(0%, 5%] |           0|     40| 268|
|0-24 months (no birth wast) |CMIN       |BANGLADESH                   |(0%, 5%] |           1|     22| 268|
|0-24 months (no birth wast) |CMIN       |BANGLADESH                   |>5%      |           0|     59| 268|
|0-24 months (no birth wast) |CMIN       |BANGLADESH                   |>5%      |           1|     54| 268|
|0-24 months (no birth wast) |CONTENT    |PERU                         |0%       |           0|    114| 215|
|0-24 months (no birth wast) |CONTENT    |PERU                         |0%       |           1|      1| 215|
|0-24 months (no birth wast) |CONTENT    |PERU                         |(0%, 5%] |           0|     42| 215|
|0-24 months (no birth wast) |CONTENT    |PERU                         |(0%, 5%] |           1|      1| 215|
|0-24 months (no birth wast) |CONTENT    |PERU                         |>5%      |           0|     55| 215|
|0-24 months (no birth wast) |CONTENT    |PERU                         |>5%      |           1|      2| 215|
|0-24 months (no birth wast) |EE         |PAKISTAN                     |0%       |           0|    159| 377|
|0-24 months (no birth wast) |EE         |PAKISTAN                     |0%       |           1|    181| 377|
|0-24 months (no birth wast) |EE         |PAKISTAN                     |(0%, 5%] |           0|     14| 377|
|0-24 months (no birth wast) |EE         |PAKISTAN                     |(0%, 5%] |           1|     21| 377|
|0-24 months (no birth wast) |EE         |PAKISTAN                     |>5%      |           0|      1| 377|
|0-24 months (no birth wast) |EE         |PAKISTAN                     |>5%      |           1|      1| 377|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH                   |0%       |           0|     65| 263|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH                   |0%       |           1|     20| 263|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH                   |(0%, 5%] |           0|     75| 263|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH                   |(0%, 5%] |           1|     23| 263|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH                   |>5%      |           0|     65| 263|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH                   |>5%      |           1|     15| 263|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL                       |0%       |           0|    205| 233|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL                       |0%       |           1|     11| 233|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL                       |(0%, 5%] |           0|     14| 233|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL                       |(0%, 5%] |           1|      1| 233|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL                       |>5%      |           0|      1| 233|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL                       |>5%      |           1|      1| 233|
|0-24 months (no birth wast) |MAL-ED     |INDIA                        |0%       |           0|     35| 246|
|0-24 months (no birth wast) |MAL-ED     |INDIA                        |0%       |           1|     24| 246|
|0-24 months (no birth wast) |MAL-ED     |INDIA                        |(0%, 5%] |           0|     85| 246|
|0-24 months (no birth wast) |MAL-ED     |INDIA                        |(0%, 5%] |           1|     43| 246|
|0-24 months (no birth wast) |MAL-ED     |INDIA                        |>5%      |           0|     35| 246|
|0-24 months (no birth wast) |MAL-ED     |INDIA                        |>5%      |           1|     24| 246|
|0-24 months (no birth wast) |MAL-ED     |NEPAL                        |0%       |           0|     65| 239|
|0-24 months (no birth wast) |MAL-ED     |NEPAL                        |0%       |           1|     18| 239|
|0-24 months (no birth wast) |MAL-ED     |NEPAL                        |(0%, 5%] |           0|     63| 239|
|0-24 months (no birth wast) |MAL-ED     |NEPAL                        |(0%, 5%] |           1|     13| 239|
|0-24 months (no birth wast) |MAL-ED     |NEPAL                        |>5%      |           0|     65| 239|
|0-24 months (no birth wast) |MAL-ED     |NEPAL                        |>5%      |           1|     15| 239|
|0-24 months (no birth wast) |MAL-ED     |PERU                         |0%       |           0|     83| 302|
|0-24 months (no birth wast) |MAL-ED     |PERU                         |0%       |           1|      6| 302|
|0-24 months (no birth wast) |MAL-ED     |PERU                         |(0%, 5%] |           0|     88| 302|
|0-24 months (no birth wast) |MAL-ED     |PERU                         |(0%, 5%] |           1|      5| 302|
|0-24 months (no birth wast) |MAL-ED     |PERU                         |>5%      |           0|    110| 302|
|0-24 months (no birth wast) |MAL-ED     |PERU                         |>5%      |           1|     10| 302|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA                 |0%       |           0|    195| 302|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA                 |0%       |           1|     37| 302|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA                 |(0%, 5%] |           0|     53| 302|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA                 |(0%, 5%] |           1|      7| 302|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA                 |>5%      |           0|      9| 302|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA                 |>5%      |           1|      1| 302|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0%       |           0|     96| 261|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0%       |           1|     17| 261|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |(0%, 5%] |           0|     88| 261|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |(0%, 5%] |           1|     14| 261|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |>5%      |           0|     43| 261|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |>5%      |           1|      3| 261|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH                   |0%       |           0|    120| 599|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH                   |0%       |           1|     37| 599|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH                   |(0%, 5%] |           0|    136| 599|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH                   |(0%, 5%] |           1|     46| 599|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH                   |>5%      |           0|    165| 599|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH                   |>5%      |           1|     95| 599|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH                   |0%       |           0|    307| 754|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH                   |0%       |           1|     57| 754|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH                   |(0%, 5%] |           0|    149| 754|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH                   |(0%, 5%] |           1|     24| 754|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH                   |>5%      |           0|    190| 754|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH                   |>5%      |           1|     27| 754|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH                   |0%       |           0|    183| 687|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH                   |0%       |           1|     30| 687|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH                   |(0%, 5%] |           0|    198| 687|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH                   |(0%, 5%] |           1|     61| 687|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH                   |>5%      |           0|    184| 687|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH                   |>5%      |           1|     31| 687|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH                   |0%       |           0|     86| 267|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH                   |0%       |           1|      7| 267|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH                   |(0%, 5%] |           0|     50| 267|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH                   |(0%, 5%] |           1|     11| 267|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH                   |>5%      |           0|    100| 267|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH                   |>5%      |           1|     13| 267|
|0-6 months (no birth wast)  |CONTENT    |PERU                         |0%       |           0|    114| 215|
|0-6 months (no birth wast)  |CONTENT    |PERU                         |0%       |           1|      1| 215|
|0-6 months (no birth wast)  |CONTENT    |PERU                         |(0%, 5%] |           0|     43| 215|
|0-6 months (no birth wast)  |CONTENT    |PERU                         |(0%, 5%] |           1|      0| 215|
|0-6 months (no birth wast)  |CONTENT    |PERU                         |>5%      |           0|     55| 215|
|0-6 months (no birth wast)  |CONTENT    |PERU                         |>5%      |           1|      2| 215|
|0-6 months (no birth wast)  |EE         |PAKISTAN                     |0%       |           0|    267| 375|
|0-6 months (no birth wast)  |EE         |PAKISTAN                     |0%       |           1|     71| 375|
|0-6 months (no birth wast)  |EE         |PAKISTAN                     |(0%, 5%] |           0|     26| 375|
|0-6 months (no birth wast)  |EE         |PAKISTAN                     |(0%, 5%] |           1|      9| 375|
|0-6 months (no birth wast)  |EE         |PAKISTAN                     |>5%      |           0|      1| 375|
|0-6 months (no birth wast)  |EE         |PAKISTAN                     |>5%      |           1|      1| 375|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH                   |0%       |           0|     78| 262|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH                   |0%       |           1|      6| 262|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH                   |(0%, 5%] |           0|     92| 262|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH                   |(0%, 5%] |           1|      6| 262|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH                   |>5%      |           0|     73| 262|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH                   |>5%      |           1|      7| 262|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL                       |0%       |           0|    209| 233|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL                       |0%       |           1|      7| 233|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL                       |(0%, 5%] |           0|     14| 233|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL                       |(0%, 5%] |           1|      1| 233|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL                       |>5%      |           0|      2| 233|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL                       |>5%      |           1|      0| 233|
|0-6 months (no birth wast)  |MAL-ED     |INDIA                        |0%       |           0|     49| 244|
|0-6 months (no birth wast)  |MAL-ED     |INDIA                        |0%       |           1|     10| 244|
|0-6 months (no birth wast)  |MAL-ED     |INDIA                        |(0%, 5%] |           0|    107| 244|
|0-6 months (no birth wast)  |MAL-ED     |INDIA                        |(0%, 5%] |           1|     20| 244|
|0-6 months (no birth wast)  |MAL-ED     |INDIA                        |>5%      |           0|     49| 244|
|0-6 months (no birth wast)  |MAL-ED     |INDIA                        |>5%      |           1|      9| 244|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL                        |0%       |           0|     76| 237|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL                        |0%       |           1|      5| 237|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL                        |(0%, 5%] |           0|     68| 237|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL                        |(0%, 5%] |           1|      8| 237|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL                        |>5%      |           0|     77| 237|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL                        |>5%      |           1|      3| 237|
|0-6 months (no birth wast)  |MAL-ED     |PERU                         |0%       |           0|     89| 302|
|0-6 months (no birth wast)  |MAL-ED     |PERU                         |0%       |           1|      0| 302|
|0-6 months (no birth wast)  |MAL-ED     |PERU                         |(0%, 5%] |           0|     92| 302|
|0-6 months (no birth wast)  |MAL-ED     |PERU                         |(0%, 5%] |           1|      1| 302|
|0-6 months (no birth wast)  |MAL-ED     |PERU                         |>5%      |           0|    116| 302|
|0-6 months (no birth wast)  |MAL-ED     |PERU                         |>5%      |           1|      4| 302|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA                 |0%       |           0|    220| 301|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA                 |0%       |           1|     11| 301|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA                 |(0%, 5%] |           0|     57| 301|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA                 |(0%, 5%] |           1|      3| 301|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA                 |>5%      |           0|     10| 301|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA                 |>5%      |           1|      0| 301|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0%       |           0|    108| 261|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0%       |           1|      5| 261|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |(0%, 5%] |           0|     98| 261|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |(0%, 5%] |           1|      4| 261|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |>5%      |           0|     45| 261|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |>5%      |           1|      1| 261|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH                   |0%       |           0|    147| 581|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH                   |0%       |           1|      5| 581|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH                   |(0%, 5%] |           0|    163| 581|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH                   |(0%, 5%] |           1|     12| 581|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH                   |>5%      |           0|    225| 581|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH                   |>5%      |           1|     29| 581|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH                   |0%       |           0|    354| 749|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH                   |0%       |           1|      8| 749|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH                   |(0%, 5%] |           0|    166| 749|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH                   |(0%, 5%] |           1|      6| 749|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH                   |>5%      |           0|    209| 749|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH                   |>5%      |           1|      6| 749|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH                   |0%       |           0|    204| 683|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH                   |0%       |           1|      8| 683|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH                   |(0%, 5%] |           0|    242| 683|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH                   |(0%, 5%] |           1|     16| 683|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH                   |>5%      |           0|    200| 683|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH                   |>5%      |           1|     13| 683|


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
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/7028ddc5-4185-497a-ad94-128edfd85d2d/f1b2a2a8-46ad-46c1-8169-25f221bee807/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7028ddc5-4185-497a-ad94-128edfd85d2d/f1b2a2a8-46ad-46c1-8169-25f221bee807/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7028ddc5-4185-497a-ad94-128edfd85d2d/f1b2a2a8-46ad-46c1-8169-25f221bee807/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7028ddc5-4185-497a-ad94-128edfd85d2d/f1b2a2a8-46ad-46c1-8169-25f221bee807/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid    |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:----------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMIN       |BANGLADESH |0%                 |NA             | 0.4184858| 0.3154635| 0.5215081|
|0-24 months (no birth wast) |CMIN       |BANGLADESH |(0%, 5%]           |NA             | 0.3601410| 0.2392691| 0.4810130|
|0-24 months (no birth wast) |CMIN       |BANGLADESH |>5%                |NA             | 0.4770335| 0.3843835| 0.5696834|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH |0%                 |NA             | 0.2396150| 0.1471624| 0.3320676|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH |(0%, 5%]           |NA             | 0.2210045| 0.1380412| 0.3039678|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH |>5%                |NA             | 0.2006182| 0.1114440| 0.2897925|
|0-24 months (no birth wast) |MAL-ED     |INDIA      |0%                 |NA             | 0.3994996| 0.2713046| 0.5276947|
|0-24 months (no birth wast) |MAL-ED     |INDIA      |(0%, 5%]           |NA             | 0.3374187| 0.2554982| 0.4193392|
|0-24 months (no birth wast) |MAL-ED     |INDIA      |>5%                |NA             | 0.4081526| 0.2798845| 0.5364208|
|0-24 months (no birth wast) |MAL-ED     |NEPAL      |0%                 |NA             | 0.2185887| 0.1279278| 0.3092496|
|0-24 months (no birth wast) |MAL-ED     |NEPAL      |(0%, 5%]           |NA             | 0.1687851| 0.0814453| 0.2561250|
|0-24 months (no birth wast) |MAL-ED     |NEPAL      |>5%                |NA             | 0.1890848| 0.1027953| 0.2753742|
|0-24 months (no birth wast) |MAL-ED     |PERU       |0%                 |NA             | 0.0674157| 0.0152365| 0.1195950|
|0-24 months (no birth wast) |MAL-ED     |PERU       |(0%, 5%]           |NA             | 0.0537634| 0.0078468| 0.0996801|
|0-24 months (no birth wast) |MAL-ED     |PERU       |>5%                |NA             | 0.0833333| 0.0338005| 0.1328661|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH |0%                 |NA             | 0.2430399| 0.1745139| 0.3115659|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH |(0%, 5%]           |NA             | 0.2563061| 0.1929462| 0.3196660|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH |>5%                |NA             | 0.3572897| 0.2988405| 0.4157390|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |0%                 |NA             | 0.1567507| 0.1190920| 0.1944093|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |(0%, 5%]           |NA             | 0.1387726| 0.0866473| 0.1908979|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |>5%                |NA             | 0.1240981| 0.0801591| 0.1680370|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH |0%                 |NA             | 0.1488453| 0.1000311| 0.1976595|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH |(0%, 5%]           |NA             | 0.2311666| 0.1786427| 0.2836904|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH |>5%                |NA             | 0.1439277| 0.0959695| 0.1918860|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH |0%                 |NA             | 0.0752688| 0.0215487| 0.1289889|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH |(0%, 5%]           |NA             | 0.1803279| 0.0836673| 0.2769885|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH |>5%                |NA             | 0.1150442| 0.0561033| 0.1739852|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH |0%                 |NA             | 0.0714286| 0.0162485| 0.1266087|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH |(0%, 5%]           |NA             | 0.0612245| 0.0136681| 0.1087809|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH |>5%                |NA             | 0.0875000| 0.0254625| 0.1495375|
|0-6 months (no birth wast)  |MAL-ED     |INDIA      |0%                 |NA             | 0.1694915| 0.0735603| 0.2654227|
|0-6 months (no birth wast)  |MAL-ED     |INDIA      |(0%, 5%]           |NA             | 0.1574803| 0.0939997| 0.2209609|
|0-6 months (no birth wast)  |MAL-ED     |INDIA      |>5%                |NA             | 0.1551724| 0.0618003| 0.2485445|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH |0%                 |NA             | 0.0328947| 0.0045155| 0.0612740|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH |(0%, 5%]           |NA             | 0.0685714| 0.0310957| 0.1060471|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH |>5%                |NA             | 0.1141732| 0.0750295| 0.1533169|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH |0%                 |NA             | 0.0220994| 0.0069456| 0.0372533|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH |(0%, 5%]           |NA             | 0.0348837| 0.0074443| 0.0623232|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH |>5%                |NA             | 0.0279070| 0.0058762| 0.0499377|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH |0%                 |NA             | 0.0377358| 0.0120660| 0.0634057|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH |(0%, 5%]           |NA             | 0.0620155| 0.0325642| 0.0914668|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH |>5%                |NA             | 0.0610329| 0.0288605| 0.0932053|


### Parameter: E(Y)


|agecat                      |studyid    |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:----------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMIN       |BANGLADESH |NA                 |NA             | 0.4291045| 0.3697365| 0.4884725|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH |NA                 |NA             | 0.2205323| 0.1703290| 0.2707357|
|0-24 months (no birth wast) |MAL-ED     |INDIA      |NA                 |NA             | 0.3699187| 0.3094659| 0.4303715|
|0-24 months (no birth wast) |MAL-ED     |NEPAL      |NA                 |NA             | 0.1924686| 0.1423823| 0.2425550|
|0-24 months (no birth wast) |MAL-ED     |PERU       |NA                 |NA             | 0.0695364| 0.0408008| 0.0982721|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH |NA                 |NA             | 0.2971619| 0.2605332| 0.3337907|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |NA                 |NA             | 0.1432361| 0.1182149| 0.1682572|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH |NA                 |NA             | 0.1775837| 0.1489858| 0.2061816|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH |NA                 |NA             | 0.1161049| 0.0776073| 0.1546024|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH |NA                 |NA             | 0.0725191| 0.0410556| 0.1039825|
|0-6 months (no birth wast)  |MAL-ED     |INDIA      |NA                 |NA             | 0.1598361| 0.1137612| 0.2059110|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH |NA                 |NA             | 0.0791738| 0.0571996| 0.1011481|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH |NA                 |NA             | 0.0267023| 0.0151493| 0.0382553|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH |NA                 |NA             | 0.0541728| 0.0371844| 0.0711612|


### Parameter: RR


|agecat                      |studyid    |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:----------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |CMIN       |BANGLADESH |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |CMIN       |BANGLADESH |(0%, 5%]           |0%             | 0.8605813| 0.5676708| 1.304630|
|0-24 months (no birth wast) |CMIN       |BANGLADESH |>5%                |0%             | 1.1399037| 0.8326427| 1.560550|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH |(0%, 5%]           |0%             | 0.9223316| 0.5405120| 1.573870|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH |>5%                |0%             | 0.8372523| 0.4661414| 1.503817|
|0-24 months (no birth wast) |MAL-ED     |INDIA      |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED     |INDIA      |(0%, 5%]           |0%             | 0.8446034| 0.5644805| 1.263737|
|0-24 months (no birth wast) |MAL-ED     |INDIA      |>5%                |0%             | 1.0216596| 0.6518079| 1.601374|
|0-24 months (no birth wast) |MAL-ED     |NEPAL      |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED     |NEPAL      |(0%, 5%]           |0%             | 0.7721587| 0.3976020| 1.499562|
|0-24 months (no birth wast) |MAL-ED     |NEPAL      |>5%                |0%             | 0.8650255| 0.4679413| 1.599066|
|0-24 months (no birth wast) |MAL-ED     |PERU       |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED     |PERU       |(0%, 5%]           |0%             | 0.7974910| 0.2518616| 2.525164|
|0-24 months (no birth wast) |MAL-ED     |PERU       |>5%                |0%             | 1.2361111| 0.4658353| 3.280066|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH |(0%, 5%]           |0%             | 1.0545848| 0.7250083| 1.533981|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH |>5%                |0%             | 1.4700871| 1.0620931| 2.034808|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |(0%, 5%]           |0%             | 0.8853080| 0.5668677| 1.382634|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |>5%                |0%             | 0.7916909| 0.5160407| 1.214583|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH |(0%, 5%]           |0%             | 1.5530658| 1.0415304| 2.315836|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH |>5%                |0%             | 0.9669618| 0.6055675| 1.544031|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH |(0%, 5%]           |0%             | 2.3957845| 0.9813036| 5.849142|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH |>5%                |0%             | 1.5284450| 0.6348869| 3.679622|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH |(0%, 5%]           |0%             | 0.8571429| 0.2866027| 2.563457|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH |>5%                |0%             | 1.2250000| 0.4292932| 3.495571|
|0-6 months (no birth wast)  |MAL-ED     |INDIA      |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |MAL-ED     |INDIA      |(0%, 5%]           |0%             | 0.9291339| 0.4637685| 1.861467|
|0-6 months (no birth wast)  |MAL-ED     |INDIA      |>5%                |0%             | 0.9155172| 0.4007733| 2.091386|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH |(0%, 5%]           |0%             | 2.0845714| 0.7507348| 5.788247|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH |>5%                |0%             | 3.4708661| 1.3716980| 8.782481|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH |(0%, 5%]           |0%             | 1.5784884| 0.5559638| 4.481633|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH |>5%                |0%             | 1.2627907| 0.4438198| 3.592990|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH |(0%, 5%]           |0%             | 1.6434109| 0.7168794| 3.767438|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH |>5%                |0%             | 1.6173709| 0.6840090| 3.824348|


### Parameter: PAR


|agecat                      |studyid    |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:----------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |CMIN       |BANGLADESH |0%                 |NA             |  0.0106187| -0.0729876| 0.0942250|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH |0%                 |NA             | -0.0190827| -0.0940822| 0.0559168|
|0-24 months (no birth wast) |MAL-ED     |INDIA      |0%                 |NA             | -0.0295809| -0.1406876| 0.0815257|
|0-24 months (no birth wast) |MAL-ED     |NEPAL      |0%                 |NA             | -0.0261201| -0.0978352| 0.0455951|
|0-24 months (no birth wast) |MAL-ED     |PERU       |0%                 |NA             |  0.0021207| -0.0419662| 0.0462076|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH |0%                 |NA             |  0.0541221| -0.0063462| 0.1145903|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |0%                 |NA             | -0.0135146| -0.0397403| 0.0127111|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH |0%                 |NA             |  0.0287384| -0.0136762| 0.0711529|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH |0%                 |NA             |  0.0408361| -0.0077185| 0.0893906|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH |0%                 |NA             |  0.0010905| -0.0445425| 0.0467235|
|0-6 months (no birth wast)  |MAL-ED     |INDIA      |0%                 |NA             | -0.0096555| -0.0925720| 0.0732611|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH |0%                 |NA             |  0.0462791|  0.0168369| 0.0757213|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH |0%                 |NA             |  0.0046028| -0.0072773| 0.0164829|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH |0%                 |NA             |  0.0164369| -0.0067683| 0.0396421|


### Parameter: PAF


|agecat                      |studyid    |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:----------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |CMIN       |BANGLADESH |0%                 |NA             |  0.0247462| -0.1909976| 0.2014089|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH |0%                 |NA             | -0.0865302| -0.4851947| 0.2051224|
|0-24 months (no birth wast) |MAL-ED     |INDIA      |0%                 |NA             | -0.0799661| -0.4260605| 0.1821338|
|0-24 months (no birth wast) |MAL-ED     |NEPAL      |0%                 |NA             | -0.1357107| -0.5751590| 0.1811374|
|0-24 months (no birth wast) |MAL-ED     |PERU       |0%                 |NA             |  0.0304976| -0.8642767| 0.4958179|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH |0%                 |NA             |  0.1821299| -0.0485297| 0.3620482|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |0%                 |NA             | -0.0943518| -0.2929813| 0.0737640|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH |0%                 |NA             |  0.1618301| -0.1130644| 0.3688336|
|0-6 months (no birth wast)  |CMIN       |BANGLADESH |0%                 |NA             |  0.3517170| -0.2098491| 0.6526254|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH |0%                 |NA             |  0.0150376| -0.8657846| 0.4800306|
|0-6 months (no birth wast)  |MAL-ED     |INDIA      |0%                 |NA             | -0.0604085| -0.7292670| 0.3497440|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH |0%                 |NA             |  0.5845252|  0.0640759| 0.8155627|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH |0%                 |NA             |  0.1723757| -0.4065203| 0.5130095|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH |0%                 |NA             |  0.3034166| -0.2702928| 0.6180185|
