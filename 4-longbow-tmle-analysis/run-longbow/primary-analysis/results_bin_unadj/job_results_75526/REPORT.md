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

**Outcome Variable:** wasted

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

|agecat    |studyid    |country      |perdiar6 | wasted| n_cell|   n|
|:---------|:----------|:------------|:--------|------:|------:|---:|
|Birth     |CMIN       |BANGLADESH   |(0%, 5%] |      0|      2|  19|
|Birth     |CMIN       |BANGLADESH   |(0%, 5%] |      1|      2|  19|
|Birth     |CMIN       |BANGLADESH   |>5%      |      0|      7|  19|
|Birth     |CMIN       |BANGLADESH   |>5%      |      1|      2|  19|
|Birth     |CMIN       |BANGLADESH   |0%       |      0|      6|  19|
|Birth     |CMIN       |BANGLADESH   |0%       |      1|      0|  19|
|Birth     |CONTENT    |PERU         |(0%, 5%] |      0|      0|   2|
|Birth     |CONTENT    |PERU         |(0%, 5%] |      1|      0|   2|
|Birth     |CONTENT    |PERU         |>5%      |      0|      2|   2|
|Birth     |CONTENT    |PERU         |>5%      |      1|      0|   2|
|Birth     |CONTENT    |PERU         |0%       |      0|      0|   2|
|Birth     |CONTENT    |PERU         |0%       |      1|      0|   2|
|Birth     |EE         |PAKISTAN     |(0%, 5%] |      0|     10| 177|
|Birth     |EE         |PAKISTAN     |(0%, 5%] |      1|      1| 177|
|Birth     |EE         |PAKISTAN     |>5%      |      0|      2| 177|
|Birth     |EE         |PAKISTAN     |>5%      |      1|      0| 177|
|Birth     |EE         |PAKISTAN     |0%       |      0|    143| 177|
|Birth     |EE         |PAKISTAN     |0%       |      1|     21| 177|
|Birth     |MAL-ED     |INDIA        |(0%, 5%] |      0|     20|  45|
|Birth     |MAL-ED     |INDIA        |(0%, 5%] |      1|      2|  45|
|Birth     |MAL-ED     |INDIA        |>5%      |      0|      9|  45|
|Birth     |MAL-ED     |INDIA        |>5%      |      1|      3|  45|
|Birth     |MAL-ED     |INDIA        |0%       |      0|     11|  45|
|Birth     |MAL-ED     |INDIA        |0%       |      1|      0|  45|
|Birth     |MAL-ED     |BANGLADESH   |(0%, 5%] |      0|     66| 215|
|Birth     |MAL-ED     |BANGLADESH   |(0%, 5%] |      1|     15| 215|
|Birth     |MAL-ED     |BANGLADESH   |>5%      |      0|     51| 215|
|Birth     |MAL-ED     |BANGLADESH   |>5%      |      1|      5| 215|
|Birth     |MAL-ED     |BANGLADESH   |0%       |      0|     62| 215|
|Birth     |MAL-ED     |BANGLADESH   |0%       |      1|     16| 215|
|Birth     |MAL-ED     |PERU         |(0%, 5%] |      0|     62| 228|
|Birth     |MAL-ED     |PERU         |(0%, 5%] |      1|      1| 228|
|Birth     |MAL-ED     |PERU         |>5%      |      0|     92| 228|
|Birth     |MAL-ED     |PERU         |>5%      |      1|      3| 228|
|Birth     |MAL-ED     |PERU         |0%       |      0|     69| 228|
|Birth     |MAL-ED     |PERU         |0%       |      1|      1| 228|
|Birth     |MAL-ED     |NEPAL        |(0%, 5%] |      0|      6|  26|
|Birth     |MAL-ED     |NEPAL        |(0%, 5%] |      1|      0|  26|
|Birth     |MAL-ED     |NEPAL        |>5%      |      0|      7|  26|
|Birth     |MAL-ED     |NEPAL        |>5%      |      1|      0|  26|
|Birth     |MAL-ED     |NEPAL        |0%       |      0|     11|  26|
|Birth     |MAL-ED     |NEPAL        |0%       |      1|      2|  26|
|Birth     |MAL-ED     |BRAZIL       |(0%, 5%] |      0|      3|  62|
|Birth     |MAL-ED     |BRAZIL       |(0%, 5%] |      1|      0|  62|
|Birth     |MAL-ED     |BRAZIL       |>5%      |      0|      0|  62|
|Birth     |MAL-ED     |BRAZIL       |>5%      |      1|      0|  62|
|Birth     |MAL-ED     |BRAZIL       |0%       |      0|     57|  62|
|Birth     |MAL-ED     |BRAZIL       |0%       |      1|      2|  62|
|Birth     |MAL-ED     |TANZANIA     |(0%, 5%] |      0|     47| 115|
|Birth     |MAL-ED     |TANZANIA     |(0%, 5%] |      1|      0| 115|
|Birth     |MAL-ED     |TANZANIA     |>5%      |      0|     20| 115|
|Birth     |MAL-ED     |TANZANIA     |>5%      |      1|      1| 115|
|Birth     |MAL-ED     |TANZANIA     |0%       |      0|     47| 115|
|Birth     |MAL-ED     |TANZANIA     |0%       |      1|      0| 115|
|Birth     |MAL-ED     |SOUTH AFRICA |(0%, 5%] |      0|     25| 120|
|Birth     |MAL-ED     |SOUTH AFRICA |(0%, 5%] |      1|      0| 120|
|Birth     |MAL-ED     |SOUTH AFRICA |>5%      |      0|      0| 120|
|Birth     |MAL-ED     |SOUTH AFRICA |>5%      |      1|      0| 120|
|Birth     |MAL-ED     |SOUTH AFRICA |0%       |      0|     83| 120|
|Birth     |MAL-ED     |SOUTH AFRICA |0%       |      1|     12| 120|
|Birth     |NIH-Birth  |BANGLADESH   |(0%, 5%] |      0|    111| 570|
|Birth     |NIH-Birth  |BANGLADESH   |(0%, 5%] |      1|     57| 570|
|Birth     |NIH-Birth  |BANGLADESH   |>5%      |      0|    185| 570|
|Birth     |NIH-Birth  |BANGLADESH   |>5%      |      1|     63| 570|
|Birth     |NIH-Birth  |BANGLADESH   |0%       |      0|    108| 570|
|Birth     |NIH-Birth  |BANGLADESH   |0%       |      1|     46| 570|
|Birth     |NIH-Crypto |BANGLADESH   |(0%, 5%] |      0|    117| 707|
|Birth     |NIH-Crypto |BANGLADESH   |(0%, 5%] |      1|     43| 707|
|Birth     |NIH-Crypto |BANGLADESH   |>5%      |      0|    156| 707|
|Birth     |NIH-Crypto |BANGLADESH   |>5%      |      1|     41| 707|
|Birth     |NIH-Crypto |BANGLADESH   |0%       |      0|    262| 707|
|Birth     |NIH-Crypto |BANGLADESH   |0%       |      1|     88| 707|
|Birth     |PROVIDE    |BANGLADESH   |(0%, 5%] |      0|    156| 532|
|Birth     |PROVIDE    |BANGLADESH   |(0%, 5%] |      1|     54| 532|
|Birth     |PROVIDE    |BANGLADESH   |>5%      |      0|    135| 532|
|Birth     |PROVIDE    |BANGLADESH   |>5%      |      1|     32| 532|
|Birth     |PROVIDE    |BANGLADESH   |0%       |      0|    124| 532|
|Birth     |PROVIDE    |BANGLADESH   |0%       |      1|     31| 532|
|6 months  |CMIN       |BANGLADESH   |(0%, 5%] |      0|     50| 243|
|6 months  |CMIN       |BANGLADESH   |(0%, 5%] |      1|      2| 243|
|6 months  |CMIN       |BANGLADESH   |>5%      |      0|     95| 243|
|6 months  |CMIN       |BANGLADESH   |>5%      |      1|     12| 243|
|6 months  |CMIN       |BANGLADESH   |0%       |      0|     77| 243|
|6 months  |CMIN       |BANGLADESH   |0%       |      1|      7| 243|
|6 months  |CONTENT    |PERU         |(0%, 5%] |      0|     37| 215|
|6 months  |CONTENT    |PERU         |(0%, 5%] |      1|      0| 215|
|6 months  |CONTENT    |PERU         |>5%      |      0|     69| 215|
|6 months  |CONTENT    |PERU         |>5%      |      1|      0| 215|
|6 months  |CONTENT    |PERU         |0%       |      0|    109| 215|
|6 months  |CONTENT    |PERU         |0%       |      1|      0| 215|
|6 months  |EE         |PAKISTAN     |(0%, 5%] |      0|     25| 375|
|6 months  |EE         |PAKISTAN     |(0%, 5%] |      1|      2| 375|
|6 months  |EE         |PAKISTAN     |>5%      |      0|      2| 375|
|6 months  |EE         |PAKISTAN     |>5%      |      1|      0| 375|
|6 months  |EE         |PAKISTAN     |0%       |      0|    301| 375|
|6 months  |EE         |PAKISTAN     |0%       |      1|     45| 375|
|6 months  |MAL-ED     |INDIA        |(0%, 5%] |      0|    112| 236|
|6 months  |MAL-ED     |INDIA        |(0%, 5%] |      1|      9| 236|
|6 months  |MAL-ED     |INDIA        |>5%      |      0|     53| 236|
|6 months  |MAL-ED     |INDIA        |>5%      |      1|      5| 236|
|6 months  |MAL-ED     |INDIA        |0%       |      0|     52| 236|
|6 months  |MAL-ED     |INDIA        |0%       |      1|      5| 236|
|6 months  |MAL-ED     |BANGLADESH   |(0%, 5%] |      0|     83| 241|
|6 months  |MAL-ED     |BANGLADESH   |(0%, 5%] |      1|      5| 241|
|6 months  |MAL-ED     |BANGLADESH   |>5%      |      0|     59| 241|
|6 months  |MAL-ED     |BANGLADESH   |>5%      |      1|      1| 241|
|6 months  |MAL-ED     |BANGLADESH   |0%       |      0|     91| 241|
|6 months  |MAL-ED     |BANGLADESH   |0%       |      1|      2| 241|
|6 months  |MAL-ED     |PERU         |(0%, 5%] |      0|     85| 273|
|6 months  |MAL-ED     |PERU         |(0%, 5%] |      1|      0| 273|
|6 months  |MAL-ED     |PERU         |>5%      |      0|     99| 273|
|6 months  |MAL-ED     |PERU         |>5%      |      1|      0| 273|
|6 months  |MAL-ED     |PERU         |0%       |      0|     89| 273|
|6 months  |MAL-ED     |PERU         |0%       |      1|      0| 273|
|6 months  |MAL-ED     |NEPAL        |(0%, 5%] |      0|     63| 236|
|6 months  |MAL-ED     |NEPAL        |(0%, 5%] |      1|      0| 236|
|6 months  |MAL-ED     |NEPAL        |>5%      |      0|     76| 236|
|6 months  |MAL-ED     |NEPAL        |>5%      |      1|      3| 236|
|6 months  |MAL-ED     |NEPAL        |0%       |      0|     93| 236|
|6 months  |MAL-ED     |NEPAL        |0%       |      1|      1| 236|
|6 months  |MAL-ED     |BRAZIL       |(0%, 5%] |      0|     13| 209|
|6 months  |MAL-ED     |BRAZIL       |(0%, 5%] |      1|      0| 209|
|6 months  |MAL-ED     |BRAZIL       |>5%      |      0|      0| 209|
|6 months  |MAL-ED     |BRAZIL       |>5%      |      1|      0| 209|
|6 months  |MAL-ED     |BRAZIL       |0%       |      0|    195| 209|
|6 months  |MAL-ED     |BRAZIL       |0%       |      1|      1| 209|
|6 months  |MAL-ED     |TANZANIA     |(0%, 5%] |      0|    107| 247|
|6 months  |MAL-ED     |TANZANIA     |(0%, 5%] |      1|      0| 247|
|6 months  |MAL-ED     |TANZANIA     |>5%      |      0|     41| 247|
|6 months  |MAL-ED     |TANZANIA     |>5%      |      1|      0| 247|
|6 months  |MAL-ED     |TANZANIA     |0%       |      0|     98| 247|
|6 months  |MAL-ED     |TANZANIA     |0%       |      1|      1| 247|
|6 months  |MAL-ED     |SOUTH AFRICA |(0%, 5%] |      0|     51| 253|
|6 months  |MAL-ED     |SOUTH AFRICA |(0%, 5%] |      1|      0| 253|
|6 months  |MAL-ED     |SOUTH AFRICA |>5%      |      0|      6| 253|
|6 months  |MAL-ED     |SOUTH AFRICA |>5%      |      1|      0| 253|
|6 months  |MAL-ED     |SOUTH AFRICA |0%       |      0|    189| 253|
|6 months  |MAL-ED     |SOUTH AFRICA |0%       |      1|      7| 253|
|6 months  |NIH-Birth  |BANGLADESH   |(0%, 5%] |      0|    151| 534|
|6 months  |NIH-Birth  |BANGLADESH   |(0%, 5%] |      1|     12| 534|
|6 months  |NIH-Birth  |BANGLADESH   |>5%      |      0|    218| 534|
|6 months  |NIH-Birth  |BANGLADESH   |>5%      |      1|     16| 534|
|6 months  |NIH-Birth  |BANGLADESH   |0%       |      0|    130| 534|
|6 months  |NIH-Birth  |BANGLADESH   |0%       |      1|      7| 534|
|6 months  |NIH-Crypto |BANGLADESH   |(0%, 5%] |      0|    151| 715|
|6 months  |NIH-Crypto |BANGLADESH   |(0%, 5%] |      1|      8| 715|
|6 months  |NIH-Crypto |BANGLADESH   |>5%      |      0|    199| 715|
|6 months  |NIH-Crypto |BANGLADESH   |>5%      |      1|      5| 715|
|6 months  |NIH-Crypto |BANGLADESH   |0%       |      0|    344| 715|
|6 months  |NIH-Crypto |BANGLADESH   |0%       |      1|      8| 715|
|6 months  |PROVIDE    |BANGLADESH   |(0%, 5%] |      0|    230| 603|
|6 months  |PROVIDE    |BANGLADESH   |(0%, 5%] |      1|     10| 603|
|6 months  |PROVIDE    |BANGLADESH   |>5%      |      0|    183| 603|
|6 months  |PROVIDE    |BANGLADESH   |>5%      |      1|      8| 603|
|6 months  |PROVIDE    |BANGLADESH   |0%       |      0|    165| 603|
|6 months  |PROVIDE    |BANGLADESH   |0%       |      1|      7| 603|
|24 months |CMIN       |BANGLADESH   |(0%, 5%] |      0|     49| 243|
|24 months |CMIN       |BANGLADESH   |(0%, 5%] |      1|      2| 243|
|24 months |CMIN       |BANGLADESH   |>5%      |      0|     85| 243|
|24 months |CMIN       |BANGLADESH   |>5%      |      1|     20| 243|
|24 months |CMIN       |BANGLADESH   |0%       |      0|     84| 243|
|24 months |CMIN       |BANGLADESH   |0%       |      1|      3| 243|
|24 months |CONTENT    |PERU         |(0%, 5%] |      0|     31| 164|
|24 months |CONTENT    |PERU         |(0%, 5%] |      1|      0| 164|
|24 months |CONTENT    |PERU         |>5%      |      0|     45| 164|
|24 months |CONTENT    |PERU         |>5%      |      1|      1| 164|
|24 months |CONTENT    |PERU         |0%       |      0|     87| 164|
|24 months |CONTENT    |PERU         |0%       |      1|      0| 164|
|24 months |EE         |PAKISTAN     |(0%, 5%] |      0|      8| 168|
|24 months |EE         |PAKISTAN     |(0%, 5%] |      1|      1| 168|
|24 months |EE         |PAKISTAN     |>5%      |      0|      1| 168|
|24 months |EE         |PAKISTAN     |>5%      |      1|      0| 168|
|24 months |EE         |PAKISTAN     |0%       |      0|    129| 168|
|24 months |EE         |PAKISTAN     |0%       |      1|     29| 168|
|24 months |MAL-ED     |INDIA        |(0%, 5%] |      0|    101| 227|
|24 months |MAL-ED     |INDIA        |(0%, 5%] |      1|     14| 227|
|24 months |MAL-ED     |INDIA        |>5%      |      0|     48| 227|
|24 months |MAL-ED     |INDIA        |>5%      |      1|      9| 227|
|24 months |MAL-ED     |INDIA        |0%       |      0|     51| 227|
|24 months |MAL-ED     |INDIA        |0%       |      1|      4| 227|
|24 months |MAL-ED     |BANGLADESH   |(0%, 5%] |      0|     64| 212|
|24 months |MAL-ED     |BANGLADESH   |(0%, 5%] |      1|     12| 212|
|24 months |MAL-ED     |BANGLADESH   |>5%      |      0|     50| 212|
|24 months |MAL-ED     |BANGLADESH   |>5%      |      1|      2| 212|
|24 months |MAL-ED     |BANGLADESH   |0%       |      0|     77| 212|
|24 months |MAL-ED     |BANGLADESH   |0%       |      1|      7| 212|
|24 months |MAL-ED     |PERU         |(0%, 5%] |      0|     58| 201|
|24 months |MAL-ED     |PERU         |(0%, 5%] |      1|      2| 201|
|24 months |MAL-ED     |PERU         |>5%      |      0|     79| 201|
|24 months |MAL-ED     |PERU         |>5%      |      1|      0| 201|
|24 months |MAL-ED     |PERU         |0%       |      0|     60| 201|
|24 months |MAL-ED     |PERU         |0%       |      1|      2| 201|
|24 months |MAL-ED     |NEPAL        |(0%, 5%] |      0|     60| 228|
|24 months |MAL-ED     |NEPAL        |(0%, 5%] |      1|      1| 228|
|24 months |MAL-ED     |NEPAL        |>5%      |      0|     73| 228|
|24 months |MAL-ED     |NEPAL        |>5%      |      1|      3| 228|
|24 months |MAL-ED     |NEPAL        |0%       |      0|     90| 228|
|24 months |MAL-ED     |NEPAL        |0%       |      1|      1| 228|
|24 months |MAL-ED     |BRAZIL       |(0%, 5%] |      0|     12| 169|
|24 months |MAL-ED     |BRAZIL       |(0%, 5%] |      1|      1| 169|
|24 months |MAL-ED     |BRAZIL       |>5%      |      0|      0| 169|
|24 months |MAL-ED     |BRAZIL       |>5%      |      1|      0| 169|
|24 months |MAL-ED     |BRAZIL       |0%       |      0|    154| 169|
|24 months |MAL-ED     |BRAZIL       |0%       |      1|      2| 169|
|24 months |MAL-ED     |TANZANIA     |(0%, 5%] |      0|     88| 214|
|24 months |MAL-ED     |TANZANIA     |(0%, 5%] |      1|      1| 214|
|24 months |MAL-ED     |TANZANIA     |>5%      |      0|     36| 214|
|24 months |MAL-ED     |TANZANIA     |>5%      |      1|      0| 214|
|24 months |MAL-ED     |TANZANIA     |0%       |      0|     86| 214|
|24 months |MAL-ED     |TANZANIA     |0%       |      1|      3| 214|
|24 months |MAL-ED     |SOUTH AFRICA |(0%, 5%] |      0|     45| 237|
|24 months |MAL-ED     |SOUTH AFRICA |(0%, 5%] |      1|      0| 237|
|24 months |MAL-ED     |SOUTH AFRICA |>5%      |      0|      5| 237|
|24 months |MAL-ED     |SOUTH AFRICA |>5%      |      1|      0| 237|
|24 months |MAL-ED     |SOUTH AFRICA |0%       |      0|    186| 237|
|24 months |MAL-ED     |SOUTH AFRICA |0%       |      1|      1| 237|
|24 months |NIH-Birth  |BANGLADESH   |(0%, 5%] |      0|    112| 425|
|24 months |NIH-Birth  |BANGLADESH   |(0%, 5%] |      1|     21| 425|
|24 months |NIH-Birth  |BANGLADESH   |>5%      |      0|    164| 425|
|24 months |NIH-Birth  |BANGLADESH   |>5%      |      1|     23| 425|
|24 months |NIH-Birth  |BANGLADESH   |0%       |      0|     96| 425|
|24 months |NIH-Birth  |BANGLADESH   |0%       |      1|      9| 425|
|24 months |NIH-Crypto |BANGLADESH   |(0%, 5%] |      0|    108| 514|
|24 months |NIH-Crypto |BANGLADESH   |(0%, 5%] |      1|     12| 514|
|24 months |NIH-Crypto |BANGLADESH   |>5%      |      0|    118| 514|
|24 months |NIH-Crypto |BANGLADESH   |>5%      |      1|     18| 514|
|24 months |NIH-Crypto |BANGLADESH   |0%       |      0|    243| 514|
|24 months |NIH-Crypto |BANGLADESH   |0%       |      1|     15| 514|
|24 months |PROVIDE    |BANGLADESH   |(0%, 5%] |      0|    206| 579|
|24 months |PROVIDE    |BANGLADESH   |(0%, 5%] |      1|     25| 579|
|24 months |PROVIDE    |BANGLADESH   |>5%      |      0|    164| 579|
|24 months |PROVIDE    |BANGLADESH   |>5%      |      1|     18| 579|
|24 months |PROVIDE    |BANGLADESH   |0%       |      0|    147| 579|
|24 months |PROVIDE    |BANGLADESH   |0%       |      1|     19| 579|


The following strata were considered:

* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


