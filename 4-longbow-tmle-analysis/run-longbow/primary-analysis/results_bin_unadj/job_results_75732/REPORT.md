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

**Intervention Variable:** perdiar6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid    |country      |perdiar6 | pers_wast| n_cell|   n|
|:-----------|:----------|:------------|:--------|---------:|------:|---:|
|0-24 months |CMIN       |BANGLADESH   |(0%, 5%] |         0|     53| 257|
|0-24 months |CMIN       |BANGLADESH   |(0%, 5%] |         1|      1| 257|
|0-24 months |CMIN       |BANGLADESH   |>5%      |         0|    100| 257|
|0-24 months |CMIN       |BANGLADESH   |>5%      |         1|     13| 257|
|0-24 months |CMIN       |BANGLADESH   |0%       |         0|     84| 257|
|0-24 months |CMIN       |BANGLADESH   |0%       |         1|      6| 257|
|0-24 months |CONTENT    |PERU         |(0%, 5%] |         0|     37| 215|
|0-24 months |CONTENT    |PERU         |(0%, 5%] |         1|      0| 215|
|0-24 months |CONTENT    |PERU         |>5%      |         0|     69| 215|
|0-24 months |CONTENT    |PERU         |>5%      |         1|      0| 215|
|0-24 months |CONTENT    |PERU         |0%       |         0|    109| 215|
|0-24 months |CONTENT    |PERU         |0%       |         1|      0| 215|
|0-24 months |EE         |PAKISTAN     |(0%, 5%] |         0|     27| 377|
|0-24 months |EE         |PAKISTAN     |(0%, 5%] |         1|      0| 377|
|0-24 months |EE         |PAKISTAN     |>5%      |         0|      2| 377|
|0-24 months |EE         |PAKISTAN     |>5%      |         1|      0| 377|
|0-24 months |EE         |PAKISTAN     |0%       |         0|    315| 377|
|0-24 months |EE         |PAKISTAN     |0%       |         1|     33| 377|
|0-24 months |MAL-ED     |INDIA        |(0%, 5%] |         0|    115| 241|
|0-24 months |MAL-ED     |INDIA        |(0%, 5%] |         1|      9| 241|
|0-24 months |MAL-ED     |INDIA        |>5%      |         0|     53| 241|
|0-24 months |MAL-ED     |INDIA        |>5%      |         1|      6| 241|
|0-24 months |MAL-ED     |INDIA        |0%       |         0|     52| 241|
|0-24 months |MAL-ED     |INDIA        |0%       |         1|      6| 241|
|0-24 months |MAL-ED     |BANGLADESH   |(0%, 5%] |         0|     81| 248|
|0-24 months |MAL-ED     |BANGLADESH   |(0%, 5%] |         1|      8| 248|
|0-24 months |MAL-ED     |BANGLADESH   |>5%      |         0|     62| 248|
|0-24 months |MAL-ED     |BANGLADESH   |>5%      |         1|      2| 248|
|0-24 months |MAL-ED     |BANGLADESH   |0%       |         0|     92| 248|
|0-24 months |MAL-ED     |BANGLADESH   |0%       |         1|      3| 248|
|0-24 months |MAL-ED     |PERU         |(0%, 5%] |         0|     88| 284|
|0-24 months |MAL-ED     |PERU         |(0%, 5%] |         1|      1| 284|
|0-24 months |MAL-ED     |PERU         |>5%      |         0|    104| 284|
|0-24 months |MAL-ED     |PERU         |>5%      |         1|      0| 284|
|0-24 months |MAL-ED     |PERU         |0%       |         0|     91| 284|
|0-24 months |MAL-ED     |PERU         |0%       |         1|      0| 284|
|0-24 months |MAL-ED     |NEPAL        |(0%, 5%] |         0|     64| 238|
|0-24 months |MAL-ED     |NEPAL        |(0%, 5%] |         1|      0| 238|
|0-24 months |MAL-ED     |NEPAL        |>5%      |         0|     77| 238|
|0-24 months |MAL-ED     |NEPAL        |>5%      |         1|      2| 238|
|0-24 months |MAL-ED     |NEPAL        |0%       |         0|     93| 238|
|0-24 months |MAL-ED     |NEPAL        |0%       |         1|      2| 238|
|0-24 months |MAL-ED     |BRAZIL       |(0%, 5%] |         0|     13| 218|
|0-24 months |MAL-ED     |BRAZIL       |(0%, 5%] |         1|      0| 218|
|0-24 months |MAL-ED     |BRAZIL       |>5%      |         0|      0| 218|
|0-24 months |MAL-ED     |BRAZIL       |>5%      |         1|      0| 218|
|0-24 months |MAL-ED     |BRAZIL       |0%       |         0|    203| 218|
|0-24 months |MAL-ED     |BRAZIL       |0%       |         1|      2| 218|
|0-24 months |MAL-ED     |TANZANIA     |(0%, 5%] |         0|    110| 253|
|0-24 months |MAL-ED     |TANZANIA     |(0%, 5%] |         1|      0| 253|
|0-24 months |MAL-ED     |TANZANIA     |>5%      |         0|     42| 253|
|0-24 months |MAL-ED     |TANZANIA     |>5%      |         1|      0| 253|
|0-24 months |MAL-ED     |TANZANIA     |0%       |         0|    101| 253|
|0-24 months |MAL-ED     |TANZANIA     |0%       |         1|      0| 253|
|0-24 months |MAL-ED     |SOUTH AFRICA |(0%, 5%] |         0|     55| 274|
|0-24 months |MAL-ED     |SOUTH AFRICA |(0%, 5%] |         1|      0| 274|
|0-24 months |MAL-ED     |SOUTH AFRICA |>5%      |         0|      6| 274|
|0-24 months |MAL-ED     |SOUTH AFRICA |>5%      |         1|      0| 274|
|0-24 months |MAL-ED     |SOUTH AFRICA |0%       |         0|    211| 274|
|0-24 months |MAL-ED     |SOUTH AFRICA |0%       |         1|      2| 274|
|0-24 months |NIH-Birth  |BANGLADESH   |(0%, 5%] |         0|    146| 530|
|0-24 months |NIH-Birth  |BANGLADESH   |(0%, 5%] |         1|     19| 530|
|0-24 months |NIH-Birth  |BANGLADESH   |>5%      |         0|    205| 530|
|0-24 months |NIH-Birth  |BANGLADESH   |>5%      |         1|     23| 530|
|0-24 months |NIH-Birth  |BANGLADESH   |0%       |         0|    132| 530|
|0-24 months |NIH-Birth  |BANGLADESH   |0%       |         1|      5| 530|
|0-24 months |NIH-Crypto |BANGLADESH   |(0%, 5%] |         0|    157| 730|
|0-24 months |NIH-Crypto |BANGLADESH   |(0%, 5%] |         1|      6| 730|
|0-24 months |NIH-Crypto |BANGLADESH   |>5%      |         0|    200| 730|
|0-24 months |NIH-Crypto |BANGLADESH   |>5%      |         1|      9| 730|
|0-24 months |NIH-Crypto |BANGLADESH   |0%       |         0|    347| 730|
|0-24 months |NIH-Crypto |BANGLADESH   |0%       |         1|     11| 730|
|0-24 months |PROVIDE    |BANGLADESH   |(0%, 5%] |         0|    245| 641|
|0-24 months |PROVIDE    |BANGLADESH   |(0%, 5%] |         1|      6| 641|
|0-24 months |PROVIDE    |BANGLADESH   |>5%      |         0|    202| 641|
|0-24 months |PROVIDE    |BANGLADESH   |>5%      |         1|      3| 641|
|0-24 months |PROVIDE    |BANGLADESH   |0%       |         0|    179| 641|
|0-24 months |PROVIDE    |BANGLADESH   |0%       |         1|      6| 641|
|0-6 months  |CMIN       |BANGLADESH   |(0%, 5%] |         0|     48| 234|
|0-6 months  |CMIN       |BANGLADESH   |(0%, 5%] |         1|      0| 234|
|0-6 months  |CMIN       |BANGLADESH   |>5%      |         0|    101| 234|
|0-6 months  |CMIN       |BANGLADESH   |>5%      |         1|      7| 234|
|0-6 months  |CMIN       |BANGLADESH   |0%       |         0|     76| 234|
|0-6 months  |CMIN       |BANGLADESH   |0%       |         1|      2| 234|
|0-6 months  |CONTENT    |PERU         |(0%, 5%] |         0|     37| 215|
|0-6 months  |CONTENT    |PERU         |(0%, 5%] |         1|      0| 215|
|0-6 months  |CONTENT    |PERU         |>5%      |         0|     69| 215|
|0-6 months  |CONTENT    |PERU         |>5%      |         1|      0| 215|
|0-6 months  |CONTENT    |PERU         |0%       |         0|    109| 215|
|0-6 months  |CONTENT    |PERU         |0%       |         1|      0| 215|
|0-6 months  |EE         |PAKISTAN     |(0%, 5%] |         0|     26| 371|
|0-6 months  |EE         |PAKISTAN     |(0%, 5%] |         1|      0| 371|
|0-6 months  |EE         |PAKISTAN     |>5%      |         0|      2| 371|
|0-6 months  |EE         |PAKISTAN     |>5%      |         1|      0| 371|
|0-6 months  |EE         |PAKISTAN     |0%       |         0|    318| 371|
|0-6 months  |EE         |PAKISTAN     |0%       |         1|     25| 371|
|0-6 months  |MAL-ED     |INDIA        |(0%, 5%] |         0|    113| 240|
|0-6 months  |MAL-ED     |INDIA        |(0%, 5%] |         1|     10| 240|
|0-6 months  |MAL-ED     |INDIA        |>5%      |         0|     54| 240|
|0-6 months  |MAL-ED     |INDIA        |>5%      |         1|      5| 240|
|0-6 months  |MAL-ED     |INDIA        |0%       |         0|     54| 240|
|0-6 months  |MAL-ED     |INDIA        |0%       |         1|      4| 240|
|0-6 months  |MAL-ED     |BANGLADESH   |(0%, 5%] |         0|     85| 248|
|0-6 months  |MAL-ED     |BANGLADESH   |(0%, 5%] |         1|      4| 248|
|0-6 months  |MAL-ED     |BANGLADESH   |>5%      |         0|     64| 248|
|0-6 months  |MAL-ED     |BANGLADESH   |>5%      |         1|      0| 248|
|0-6 months  |MAL-ED     |BANGLADESH   |0%       |         0|     92| 248|
|0-6 months  |MAL-ED     |BANGLADESH   |0%       |         1|      3| 248|
|0-6 months  |MAL-ED     |PERU         |(0%, 5%] |         0|     89| 284|
|0-6 months  |MAL-ED     |PERU         |(0%, 5%] |         1|      0| 284|
|0-6 months  |MAL-ED     |PERU         |>5%      |         0|    104| 284|
|0-6 months  |MAL-ED     |PERU         |>5%      |         1|      0| 284|
|0-6 months  |MAL-ED     |PERU         |0%       |         0|     91| 284|
|0-6 months  |MAL-ED     |PERU         |0%       |         1|      0| 284|
|0-6 months  |MAL-ED     |NEPAL        |(0%, 5%] |         0|     64| 238|
|0-6 months  |MAL-ED     |NEPAL        |(0%, 5%] |         1|      0| 238|
|0-6 months  |MAL-ED     |NEPAL        |>5%      |         0|     77| 238|
|0-6 months  |MAL-ED     |NEPAL        |>5%      |         1|      2| 238|
|0-6 months  |MAL-ED     |NEPAL        |0%       |         0|     90| 238|
|0-6 months  |MAL-ED     |NEPAL        |0%       |         1|      5| 238|
|0-6 months  |MAL-ED     |BRAZIL       |(0%, 5%] |         0|     13| 218|
|0-6 months  |MAL-ED     |BRAZIL       |(0%, 5%] |         1|      0| 218|
|0-6 months  |MAL-ED     |BRAZIL       |>5%      |         0|      0| 218|
|0-6 months  |MAL-ED     |BRAZIL       |>5%      |         1|      0| 218|
|0-6 months  |MAL-ED     |BRAZIL       |0%       |         0|    204| 218|
|0-6 months  |MAL-ED     |BRAZIL       |0%       |         1|      1| 218|
|0-6 months  |MAL-ED     |TANZANIA     |(0%, 5%] |         0|    110| 253|
|0-6 months  |MAL-ED     |TANZANIA     |(0%, 5%] |         1|      0| 253|
|0-6 months  |MAL-ED     |TANZANIA     |>5%      |         0|     42| 253|
|0-6 months  |MAL-ED     |TANZANIA     |>5%      |         1|      0| 253|
|0-6 months  |MAL-ED     |TANZANIA     |0%       |         0|    101| 253|
|0-6 months  |MAL-ED     |TANZANIA     |0%       |         1|      0| 253|
|0-6 months  |MAL-ED     |SOUTH AFRICA |(0%, 5%] |         0|     55| 273|
|0-6 months  |MAL-ED     |SOUTH AFRICA |(0%, 5%] |         1|      0| 273|
|0-6 months  |MAL-ED     |SOUTH AFRICA |>5%      |         0|      6| 273|
|0-6 months  |MAL-ED     |SOUTH AFRICA |>5%      |         1|      0| 273|
|0-6 months  |MAL-ED     |SOUTH AFRICA |0%       |         0|    210| 273|
|0-6 months  |MAL-ED     |SOUTH AFRICA |0%       |         1|      2| 273|
|0-6 months  |NIH-Birth  |BANGLADESH   |(0%, 5%] |         0|     44| 168|
|0-6 months  |NIH-Birth  |BANGLADESH   |(0%, 5%] |         1|      7| 168|
|0-6 months  |NIH-Birth  |BANGLADESH   |>5%      |         0|     70| 168|
|0-6 months  |NIH-Birth  |BANGLADESH   |>5%      |         1|      3| 168|
|0-6 months  |NIH-Birth  |BANGLADESH   |0%       |         0|     43| 168|
|0-6 months  |NIH-Birth  |BANGLADESH   |0%       |         1|      1| 168|
|0-6 months  |NIH-Crypto |BANGLADESH   |(0%, 5%] |         0|     58| 250|
|0-6 months  |NIH-Crypto |BANGLADESH   |(0%, 5%] |         1|      0| 250|
|0-6 months  |NIH-Crypto |BANGLADESH   |>5%      |         0|     72| 250|
|0-6 months  |NIH-Crypto |BANGLADESH   |>5%      |         1|      1| 250|
|0-6 months  |NIH-Crypto |BANGLADESH   |0%       |         0|    115| 250|
|0-6 months  |NIH-Crypto |BANGLADESH   |0%       |         1|      4| 250|
|0-6 months  |PROVIDE    |BANGLADESH   |(0%, 5%] |         0|    244| 638|
|0-6 months  |PROVIDE    |BANGLADESH   |(0%, 5%] |         1|      6| 638|
|0-6 months  |PROVIDE    |BANGLADESH   |>5%      |         0|    200| 638|
|0-6 months  |PROVIDE    |BANGLADESH   |>5%      |         1|      4| 638|
|0-6 months  |PROVIDE    |BANGLADESH   |0%       |         0|    180| 638|
|0-6 months  |PROVIDE    |BANGLADESH   |0%       |         1|      4| 638|
|6-24 months |CMIN       |BANGLADESH   |(0%, 5%] |         0|     53| 257|
|6-24 months |CMIN       |BANGLADESH   |(0%, 5%] |         1|      1| 257|
|6-24 months |CMIN       |BANGLADESH   |>5%      |         0|    100| 257|
|6-24 months |CMIN       |BANGLADESH   |>5%      |         1|     13| 257|
|6-24 months |CMIN       |BANGLADESH   |0%       |         0|     84| 257|
|6-24 months |CMIN       |BANGLADESH   |0%       |         1|      6| 257|
|6-24 months |CONTENT    |PERU         |(0%, 5%] |         0|     37| 215|
|6-24 months |CONTENT    |PERU         |(0%, 5%] |         1|      0| 215|
|6-24 months |CONTENT    |PERU         |>5%      |         0|     69| 215|
|6-24 months |CONTENT    |PERU         |>5%      |         1|      0| 215|
|6-24 months |CONTENT    |PERU         |0%       |         0|    109| 215|
|6-24 months |CONTENT    |PERU         |0%       |         1|      0| 215|
|6-24 months |EE         |PAKISTAN     |(0%, 5%] |         0|     27| 377|
|6-24 months |EE         |PAKISTAN     |(0%, 5%] |         1|      0| 377|
|6-24 months |EE         |PAKISTAN     |>5%      |         0|      2| 377|
|6-24 months |EE         |PAKISTAN     |>5%      |         1|      0| 377|
|6-24 months |EE         |PAKISTAN     |0%       |         0|    315| 377|
|6-24 months |EE         |PAKISTAN     |0%       |         1|     33| 377|
|6-24 months |MAL-ED     |INDIA        |(0%, 5%] |         0|    115| 241|
|6-24 months |MAL-ED     |INDIA        |(0%, 5%] |         1|      9| 241|
|6-24 months |MAL-ED     |INDIA        |>5%      |         0|     53| 241|
|6-24 months |MAL-ED     |INDIA        |>5%      |         1|      6| 241|
|6-24 months |MAL-ED     |INDIA        |0%       |         0|     52| 241|
|6-24 months |MAL-ED     |INDIA        |0%       |         1|      6| 241|
|6-24 months |MAL-ED     |BANGLADESH   |(0%, 5%] |         0|     81| 248|
|6-24 months |MAL-ED     |BANGLADESH   |(0%, 5%] |         1|      8| 248|
|6-24 months |MAL-ED     |BANGLADESH   |>5%      |         0|     62| 248|
|6-24 months |MAL-ED     |BANGLADESH   |>5%      |         1|      2| 248|
|6-24 months |MAL-ED     |BANGLADESH   |0%       |         0|     92| 248|
|6-24 months |MAL-ED     |BANGLADESH   |0%       |         1|      3| 248|
|6-24 months |MAL-ED     |PERU         |(0%, 5%] |         0|     88| 284|
|6-24 months |MAL-ED     |PERU         |(0%, 5%] |         1|      1| 284|
|6-24 months |MAL-ED     |PERU         |>5%      |         0|    104| 284|
|6-24 months |MAL-ED     |PERU         |>5%      |         1|      0| 284|
|6-24 months |MAL-ED     |PERU         |0%       |         0|     91| 284|
|6-24 months |MAL-ED     |PERU         |0%       |         1|      0| 284|
|6-24 months |MAL-ED     |NEPAL        |(0%, 5%] |         0|     64| 238|
|6-24 months |MAL-ED     |NEPAL        |(0%, 5%] |         1|      0| 238|
|6-24 months |MAL-ED     |NEPAL        |>5%      |         0|     77| 238|
|6-24 months |MAL-ED     |NEPAL        |>5%      |         1|      2| 238|
|6-24 months |MAL-ED     |NEPAL        |0%       |         0|     93| 238|
|6-24 months |MAL-ED     |NEPAL        |0%       |         1|      2| 238|
|6-24 months |MAL-ED     |BRAZIL       |(0%, 5%] |         0|     13| 218|
|6-24 months |MAL-ED     |BRAZIL       |(0%, 5%] |         1|      0| 218|
|6-24 months |MAL-ED     |BRAZIL       |>5%      |         0|      0| 218|
|6-24 months |MAL-ED     |BRAZIL       |>5%      |         1|      0| 218|
|6-24 months |MAL-ED     |BRAZIL       |0%       |         0|    203| 218|
|6-24 months |MAL-ED     |BRAZIL       |0%       |         1|      2| 218|
|6-24 months |MAL-ED     |TANZANIA     |(0%, 5%] |         0|    110| 253|
|6-24 months |MAL-ED     |TANZANIA     |(0%, 5%] |         1|      0| 253|
|6-24 months |MAL-ED     |TANZANIA     |>5%      |         0|     42| 253|
|6-24 months |MAL-ED     |TANZANIA     |>5%      |         1|      0| 253|
|6-24 months |MAL-ED     |TANZANIA     |0%       |         0|    101| 253|
|6-24 months |MAL-ED     |TANZANIA     |0%       |         1|      0| 253|
|6-24 months |MAL-ED     |SOUTH AFRICA |(0%, 5%] |         0|     55| 274|
|6-24 months |MAL-ED     |SOUTH AFRICA |(0%, 5%] |         1|      0| 274|
|6-24 months |MAL-ED     |SOUTH AFRICA |>5%      |         0|      6| 274|
|6-24 months |MAL-ED     |SOUTH AFRICA |>5%      |         1|      0| 274|
|6-24 months |MAL-ED     |SOUTH AFRICA |0%       |         0|    211| 274|
|6-24 months |MAL-ED     |SOUTH AFRICA |0%       |         1|      2| 274|
|6-24 months |NIH-Birth  |BANGLADESH   |(0%, 5%] |         0|    146| 530|
|6-24 months |NIH-Birth  |BANGLADESH   |(0%, 5%] |         1|     19| 530|
|6-24 months |NIH-Birth  |BANGLADESH   |>5%      |         0|    205| 530|
|6-24 months |NIH-Birth  |BANGLADESH   |>5%      |         1|     23| 530|
|6-24 months |NIH-Birth  |BANGLADESH   |0%       |         0|    132| 530|
|6-24 months |NIH-Birth  |BANGLADESH   |0%       |         1|      5| 530|
|6-24 months |NIH-Crypto |BANGLADESH   |(0%, 5%] |         0|    157| 730|
|6-24 months |NIH-Crypto |BANGLADESH   |(0%, 5%] |         1|      6| 730|
|6-24 months |NIH-Crypto |BANGLADESH   |>5%      |         0|    200| 730|
|6-24 months |NIH-Crypto |BANGLADESH   |>5%      |         1|      9| 730|
|6-24 months |NIH-Crypto |BANGLADESH   |0%       |         0|    347| 730|
|6-24 months |NIH-Crypto |BANGLADESH   |0%       |         1|     11| 730|
|6-24 months |PROVIDE    |BANGLADESH   |(0%, 5%] |         0|    245| 641|
|6-24 months |PROVIDE    |BANGLADESH   |(0%, 5%] |         1|      6| 641|
|6-24 months |PROVIDE    |BANGLADESH   |>5%      |         0|    202| 641|
|6-24 months |PROVIDE    |BANGLADESH   |>5%      |         1|      3| 641|
|6-24 months |PROVIDE    |BANGLADESH   |0%       |         0|    179| 641|
|6-24 months |PROVIDE    |BANGLADESH   |0%       |         1|      6| 641|


The following strata were considered:

* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
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

* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
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


