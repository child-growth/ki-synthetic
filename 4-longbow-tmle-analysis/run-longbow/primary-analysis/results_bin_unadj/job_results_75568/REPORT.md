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

**Outcome Variable:** swasted

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

|agecat    |studyid    |country      |perdiar6 | swasted| n_cell|   n|
|:---------|:----------|:------------|:--------|-------:|------:|---:|
|Birth     |CMIN       |BANGLADESH   |(0%, 5%] |       0|      3|  19|
|Birth     |CMIN       |BANGLADESH   |(0%, 5%] |       1|      1|  19|
|Birth     |CMIN       |BANGLADESH   |>5%      |       0|      9|  19|
|Birth     |CMIN       |BANGLADESH   |>5%      |       1|      0|  19|
|Birth     |CMIN       |BANGLADESH   |0%       |       0|      6|  19|
|Birth     |CMIN       |BANGLADESH   |0%       |       1|      0|  19|
|Birth     |CONTENT    |PERU         |(0%, 5%] |       0|      0|   2|
|Birth     |CONTENT    |PERU         |(0%, 5%] |       1|      0|   2|
|Birth     |CONTENT    |PERU         |>5%      |       0|      2|   2|
|Birth     |CONTENT    |PERU         |>5%      |       1|      0|   2|
|Birth     |CONTENT    |PERU         |0%       |       0|      0|   2|
|Birth     |CONTENT    |PERU         |0%       |       1|      0|   2|
|Birth     |EE         |PAKISTAN     |(0%, 5%] |       0|     11| 177|
|Birth     |EE         |PAKISTAN     |(0%, 5%] |       1|      0| 177|
|Birth     |EE         |PAKISTAN     |>5%      |       0|      2| 177|
|Birth     |EE         |PAKISTAN     |>5%      |       1|      0| 177|
|Birth     |EE         |PAKISTAN     |0%       |       0|    158| 177|
|Birth     |EE         |PAKISTAN     |0%       |       1|      6| 177|
|Birth     |MAL-ED     |INDIA        |(0%, 5%] |       0|     22|  45|
|Birth     |MAL-ED     |INDIA        |(0%, 5%] |       1|      0|  45|
|Birth     |MAL-ED     |INDIA        |>5%      |       0|     12|  45|
|Birth     |MAL-ED     |INDIA        |>5%      |       1|      0|  45|
|Birth     |MAL-ED     |INDIA        |0%       |       0|     11|  45|
|Birth     |MAL-ED     |INDIA        |0%       |       1|      0|  45|
|Birth     |MAL-ED     |BANGLADESH   |(0%, 5%] |       0|     76| 215|
|Birth     |MAL-ED     |BANGLADESH   |(0%, 5%] |       1|      5| 215|
|Birth     |MAL-ED     |BANGLADESH   |>5%      |       0|     56| 215|
|Birth     |MAL-ED     |BANGLADESH   |>5%      |       1|      0| 215|
|Birth     |MAL-ED     |BANGLADESH   |0%       |       0|     75| 215|
|Birth     |MAL-ED     |BANGLADESH   |0%       |       1|      3| 215|
|Birth     |MAL-ED     |PERU         |(0%, 5%] |       0|     63| 228|
|Birth     |MAL-ED     |PERU         |(0%, 5%] |       1|      0| 228|
|Birth     |MAL-ED     |PERU         |>5%      |       0|     95| 228|
|Birth     |MAL-ED     |PERU         |>5%      |       1|      0| 228|
|Birth     |MAL-ED     |PERU         |0%       |       0|     70| 228|
|Birth     |MAL-ED     |PERU         |0%       |       1|      0| 228|
|Birth     |MAL-ED     |NEPAL        |(0%, 5%] |       0|      6|  26|
|Birth     |MAL-ED     |NEPAL        |(0%, 5%] |       1|      0|  26|
|Birth     |MAL-ED     |NEPAL        |>5%      |       0|      7|  26|
|Birth     |MAL-ED     |NEPAL        |>5%      |       1|      0|  26|
|Birth     |MAL-ED     |NEPAL        |0%       |       0|     12|  26|
|Birth     |MAL-ED     |NEPAL        |0%       |       1|      1|  26|
|Birth     |MAL-ED     |BRAZIL       |(0%, 5%] |       0|      3|  62|
|Birth     |MAL-ED     |BRAZIL       |(0%, 5%] |       1|      0|  62|
|Birth     |MAL-ED     |BRAZIL       |>5%      |       0|      0|  62|
|Birth     |MAL-ED     |BRAZIL       |>5%      |       1|      0|  62|
|Birth     |MAL-ED     |BRAZIL       |0%       |       0|     59|  62|
|Birth     |MAL-ED     |BRAZIL       |0%       |       1|      0|  62|
|Birth     |MAL-ED     |TANZANIA     |(0%, 5%] |       0|     47| 115|
|Birth     |MAL-ED     |TANZANIA     |(0%, 5%] |       1|      0| 115|
|Birth     |MAL-ED     |TANZANIA     |>5%      |       0|     21| 115|
|Birth     |MAL-ED     |TANZANIA     |>5%      |       1|      0| 115|
|Birth     |MAL-ED     |TANZANIA     |0%       |       0|     47| 115|
|Birth     |MAL-ED     |TANZANIA     |0%       |       1|      0| 115|
|Birth     |MAL-ED     |SOUTH AFRICA |(0%, 5%] |       0|     25| 120|
|Birth     |MAL-ED     |SOUTH AFRICA |(0%, 5%] |       1|      0| 120|
|Birth     |MAL-ED     |SOUTH AFRICA |>5%      |       0|      0| 120|
|Birth     |MAL-ED     |SOUTH AFRICA |>5%      |       1|      0| 120|
|Birth     |MAL-ED     |SOUTH AFRICA |0%       |       0|     95| 120|
|Birth     |MAL-ED     |SOUTH AFRICA |0%       |       1|      0| 120|
|Birth     |NIH-Birth  |BANGLADESH   |(0%, 5%] |       0|    154| 570|
|Birth     |NIH-Birth  |BANGLADESH   |(0%, 5%] |       1|     14| 570|
|Birth     |NIH-Birth  |BANGLADESH   |>5%      |       0|    234| 570|
|Birth     |NIH-Birth  |BANGLADESH   |>5%      |       1|     14| 570|
|Birth     |NIH-Birth  |BANGLADESH   |0%       |       0|    145| 570|
|Birth     |NIH-Birth  |BANGLADESH   |0%       |       1|      9| 570|
|Birth     |NIH-Crypto |BANGLADESH   |(0%, 5%] |       0|    145| 707|
|Birth     |NIH-Crypto |BANGLADESH   |(0%, 5%] |       1|     15| 707|
|Birth     |NIH-Crypto |BANGLADESH   |>5%      |       0|    185| 707|
|Birth     |NIH-Crypto |BANGLADESH   |>5%      |       1|     12| 707|
|Birth     |NIH-Crypto |BANGLADESH   |0%       |       0|    330| 707|
|Birth     |NIH-Crypto |BANGLADESH   |0%       |       1|     20| 707|
|Birth     |PROVIDE    |BANGLADESH   |(0%, 5%] |       0|    200| 532|
|Birth     |PROVIDE    |BANGLADESH   |(0%, 5%] |       1|     10| 532|
|Birth     |PROVIDE    |BANGLADESH   |>5%      |       0|    166| 532|
|Birth     |PROVIDE    |BANGLADESH   |>5%      |       1|      1| 532|
|Birth     |PROVIDE    |BANGLADESH   |0%       |       0|    153| 532|
|Birth     |PROVIDE    |BANGLADESH   |0%       |       1|      2| 532|
|6 months  |CMIN       |BANGLADESH   |(0%, 5%] |       0|     52| 243|
|6 months  |CMIN       |BANGLADESH   |(0%, 5%] |       1|      0| 243|
|6 months  |CMIN       |BANGLADESH   |>5%      |       0|    103| 243|
|6 months  |CMIN       |BANGLADESH   |>5%      |       1|      4| 243|
|6 months  |CMIN       |BANGLADESH   |0%       |       0|     83| 243|
|6 months  |CMIN       |BANGLADESH   |0%       |       1|      1| 243|
|6 months  |CONTENT    |PERU         |(0%, 5%] |       0|     37| 215|
|6 months  |CONTENT    |PERU         |(0%, 5%] |       1|      0| 215|
|6 months  |CONTENT    |PERU         |>5%      |       0|     69| 215|
|6 months  |CONTENT    |PERU         |>5%      |       1|      0| 215|
|6 months  |CONTENT    |PERU         |0%       |       0|    109| 215|
|6 months  |CONTENT    |PERU         |0%       |       1|      0| 215|
|6 months  |EE         |PAKISTAN     |(0%, 5%] |       0|     26| 375|
|6 months  |EE         |PAKISTAN     |(0%, 5%] |       1|      1| 375|
|6 months  |EE         |PAKISTAN     |>5%      |       0|      2| 375|
|6 months  |EE         |PAKISTAN     |>5%      |       1|      0| 375|
|6 months  |EE         |PAKISTAN     |0%       |       0|    334| 375|
|6 months  |EE         |PAKISTAN     |0%       |       1|     12| 375|
|6 months  |MAL-ED     |INDIA        |(0%, 5%] |       0|    116| 236|
|6 months  |MAL-ED     |INDIA        |(0%, 5%] |       1|      5| 236|
|6 months  |MAL-ED     |INDIA        |>5%      |       0|     57| 236|
|6 months  |MAL-ED     |INDIA        |>5%      |       1|      1| 236|
|6 months  |MAL-ED     |INDIA        |0%       |       0|     57| 236|
|6 months  |MAL-ED     |INDIA        |0%       |       1|      0| 236|
|6 months  |MAL-ED     |BANGLADESH   |(0%, 5%] |       0|     87| 241|
|6 months  |MAL-ED     |BANGLADESH   |(0%, 5%] |       1|      1| 241|
|6 months  |MAL-ED     |BANGLADESH   |>5%      |       0|     60| 241|
|6 months  |MAL-ED     |BANGLADESH   |>5%      |       1|      0| 241|
|6 months  |MAL-ED     |BANGLADESH   |0%       |       0|     92| 241|
|6 months  |MAL-ED     |BANGLADESH   |0%       |       1|      1| 241|
|6 months  |MAL-ED     |PERU         |(0%, 5%] |       0|     85| 273|
|6 months  |MAL-ED     |PERU         |(0%, 5%] |       1|      0| 273|
|6 months  |MAL-ED     |PERU         |>5%      |       0|     99| 273|
|6 months  |MAL-ED     |PERU         |>5%      |       1|      0| 273|
|6 months  |MAL-ED     |PERU         |0%       |       0|     89| 273|
|6 months  |MAL-ED     |PERU         |0%       |       1|      0| 273|
|6 months  |MAL-ED     |NEPAL        |(0%, 5%] |       0|     63| 236|
|6 months  |MAL-ED     |NEPAL        |(0%, 5%] |       1|      0| 236|
|6 months  |MAL-ED     |NEPAL        |>5%      |       0|     79| 236|
|6 months  |MAL-ED     |NEPAL        |>5%      |       1|      0| 236|
|6 months  |MAL-ED     |NEPAL        |0%       |       0|     94| 236|
|6 months  |MAL-ED     |NEPAL        |0%       |       1|      0| 236|
|6 months  |MAL-ED     |BRAZIL       |(0%, 5%] |       0|     13| 209|
|6 months  |MAL-ED     |BRAZIL       |(0%, 5%] |       1|      0| 209|
|6 months  |MAL-ED     |BRAZIL       |>5%      |       0|      0| 209|
|6 months  |MAL-ED     |BRAZIL       |>5%      |       1|      0| 209|
|6 months  |MAL-ED     |BRAZIL       |0%       |       0|    196| 209|
|6 months  |MAL-ED     |BRAZIL       |0%       |       1|      0| 209|
|6 months  |MAL-ED     |TANZANIA     |(0%, 5%] |       0|    107| 247|
|6 months  |MAL-ED     |TANZANIA     |(0%, 5%] |       1|      0| 247|
|6 months  |MAL-ED     |TANZANIA     |>5%      |       0|     41| 247|
|6 months  |MAL-ED     |TANZANIA     |>5%      |       1|      0| 247|
|6 months  |MAL-ED     |TANZANIA     |0%       |       0|     99| 247|
|6 months  |MAL-ED     |TANZANIA     |0%       |       1|      0| 247|
|6 months  |MAL-ED     |SOUTH AFRICA |(0%, 5%] |       0|     51| 253|
|6 months  |MAL-ED     |SOUTH AFRICA |(0%, 5%] |       1|      0| 253|
|6 months  |MAL-ED     |SOUTH AFRICA |>5%      |       0|      6| 253|
|6 months  |MAL-ED     |SOUTH AFRICA |>5%      |       1|      0| 253|
|6 months  |MAL-ED     |SOUTH AFRICA |0%       |       0|    193| 253|
|6 months  |MAL-ED     |SOUTH AFRICA |0%       |       1|      3| 253|
|6 months  |NIH-Birth  |BANGLADESH   |(0%, 5%] |       0|    161| 534|
|6 months  |NIH-Birth  |BANGLADESH   |(0%, 5%] |       1|      2| 534|
|6 months  |NIH-Birth  |BANGLADESH   |>5%      |       0|    232| 534|
|6 months  |NIH-Birth  |BANGLADESH   |>5%      |       1|      2| 534|
|6 months  |NIH-Birth  |BANGLADESH   |0%       |       0|    135| 534|
|6 months  |NIH-Birth  |BANGLADESH   |0%       |       1|      2| 534|
|6 months  |NIH-Crypto |BANGLADESH   |(0%, 5%] |       0|    159| 715|
|6 months  |NIH-Crypto |BANGLADESH   |(0%, 5%] |       1|      0| 715|
|6 months  |NIH-Crypto |BANGLADESH   |>5%      |       0|    204| 715|
|6 months  |NIH-Crypto |BANGLADESH   |>5%      |       1|      0| 715|
|6 months  |NIH-Crypto |BANGLADESH   |0%       |       0|    352| 715|
|6 months  |NIH-Crypto |BANGLADESH   |0%       |       1|      0| 715|
|6 months  |PROVIDE    |BANGLADESH   |(0%, 5%] |       0|    237| 603|
|6 months  |PROVIDE    |BANGLADESH   |(0%, 5%] |       1|      3| 603|
|6 months  |PROVIDE    |BANGLADESH   |>5%      |       0|    191| 603|
|6 months  |PROVIDE    |BANGLADESH   |>5%      |       1|      0| 603|
|6 months  |PROVIDE    |BANGLADESH   |0%       |       0|    170| 603|
|6 months  |PROVIDE    |BANGLADESH   |0%       |       1|      2| 603|
|24 months |CMIN       |BANGLADESH   |(0%, 5%] |       0|     51| 243|
|24 months |CMIN       |BANGLADESH   |(0%, 5%] |       1|      0| 243|
|24 months |CMIN       |BANGLADESH   |>5%      |       0|    104| 243|
|24 months |CMIN       |BANGLADESH   |>5%      |       1|      1| 243|
|24 months |CMIN       |BANGLADESH   |0%       |       0|     86| 243|
|24 months |CMIN       |BANGLADESH   |0%       |       1|      1| 243|
|24 months |CONTENT    |PERU         |(0%, 5%] |       0|     31| 164|
|24 months |CONTENT    |PERU         |(0%, 5%] |       1|      0| 164|
|24 months |CONTENT    |PERU         |>5%      |       0|     46| 164|
|24 months |CONTENT    |PERU         |>5%      |       1|      0| 164|
|24 months |CONTENT    |PERU         |0%       |       0|     87| 164|
|24 months |CONTENT    |PERU         |0%       |       1|      0| 164|
|24 months |EE         |PAKISTAN     |(0%, 5%] |       0|      9| 168|
|24 months |EE         |PAKISTAN     |(0%, 5%] |       1|      0| 168|
|24 months |EE         |PAKISTAN     |>5%      |       0|      1| 168|
|24 months |EE         |PAKISTAN     |>5%      |       1|      0| 168|
|24 months |EE         |PAKISTAN     |0%       |       0|    154| 168|
|24 months |EE         |PAKISTAN     |0%       |       1|      4| 168|
|24 months |MAL-ED     |INDIA        |(0%, 5%] |       0|    115| 227|
|24 months |MAL-ED     |INDIA        |(0%, 5%] |       1|      0| 227|
|24 months |MAL-ED     |INDIA        |>5%      |       0|     57| 227|
|24 months |MAL-ED     |INDIA        |>5%      |       1|      0| 227|
|24 months |MAL-ED     |INDIA        |0%       |       0|     53| 227|
|24 months |MAL-ED     |INDIA        |0%       |       1|      2| 227|
|24 months |MAL-ED     |BANGLADESH   |(0%, 5%] |       0|     76| 212|
|24 months |MAL-ED     |BANGLADESH   |(0%, 5%] |       1|      0| 212|
|24 months |MAL-ED     |BANGLADESH   |>5%      |       0|     52| 212|
|24 months |MAL-ED     |BANGLADESH   |>5%      |       1|      0| 212|
|24 months |MAL-ED     |BANGLADESH   |0%       |       0|     84| 212|
|24 months |MAL-ED     |BANGLADESH   |0%       |       1|      0| 212|
|24 months |MAL-ED     |PERU         |(0%, 5%] |       0|     58| 201|
|24 months |MAL-ED     |PERU         |(0%, 5%] |       1|      2| 201|
|24 months |MAL-ED     |PERU         |>5%      |       0|     79| 201|
|24 months |MAL-ED     |PERU         |>5%      |       1|      0| 201|
|24 months |MAL-ED     |PERU         |0%       |       0|     62| 201|
|24 months |MAL-ED     |PERU         |0%       |       1|      0| 201|
|24 months |MAL-ED     |NEPAL        |(0%, 5%] |       0|     61| 228|
|24 months |MAL-ED     |NEPAL        |(0%, 5%] |       1|      0| 228|
|24 months |MAL-ED     |NEPAL        |>5%      |       0|     76| 228|
|24 months |MAL-ED     |NEPAL        |>5%      |       1|      0| 228|
|24 months |MAL-ED     |NEPAL        |0%       |       0|     91| 228|
|24 months |MAL-ED     |NEPAL        |0%       |       1|      0| 228|
|24 months |MAL-ED     |BRAZIL       |(0%, 5%] |       0|     13| 169|
|24 months |MAL-ED     |BRAZIL       |(0%, 5%] |       1|      0| 169|
|24 months |MAL-ED     |BRAZIL       |>5%      |       0|      0| 169|
|24 months |MAL-ED     |BRAZIL       |>5%      |       1|      0| 169|
|24 months |MAL-ED     |BRAZIL       |0%       |       0|    155| 169|
|24 months |MAL-ED     |BRAZIL       |0%       |       1|      1| 169|
|24 months |MAL-ED     |TANZANIA     |(0%, 5%] |       0|     89| 214|
|24 months |MAL-ED     |TANZANIA     |(0%, 5%] |       1|      0| 214|
|24 months |MAL-ED     |TANZANIA     |>5%      |       0|     36| 214|
|24 months |MAL-ED     |TANZANIA     |>5%      |       1|      0| 214|
|24 months |MAL-ED     |TANZANIA     |0%       |       0|     89| 214|
|24 months |MAL-ED     |TANZANIA     |0%       |       1|      0| 214|
|24 months |MAL-ED     |SOUTH AFRICA |(0%, 5%] |       0|     45| 237|
|24 months |MAL-ED     |SOUTH AFRICA |(0%, 5%] |       1|      0| 237|
|24 months |MAL-ED     |SOUTH AFRICA |>5%      |       0|      5| 237|
|24 months |MAL-ED     |SOUTH AFRICA |>5%      |       1|      0| 237|
|24 months |MAL-ED     |SOUTH AFRICA |0%       |       0|    187| 237|
|24 months |MAL-ED     |SOUTH AFRICA |0%       |       1|      0| 237|
|24 months |NIH-Birth  |BANGLADESH   |(0%, 5%] |       0|    129| 425|
|24 months |NIH-Birth  |BANGLADESH   |(0%, 5%] |       1|      4| 425|
|24 months |NIH-Birth  |BANGLADESH   |>5%      |       0|    182| 425|
|24 months |NIH-Birth  |BANGLADESH   |>5%      |       1|      5| 425|
|24 months |NIH-Birth  |BANGLADESH   |0%       |       0|    104| 425|
|24 months |NIH-Birth  |BANGLADESH   |0%       |       1|      1| 425|
|24 months |NIH-Crypto |BANGLADESH   |(0%, 5%] |       0|    119| 514|
|24 months |NIH-Crypto |BANGLADESH   |(0%, 5%] |       1|      1| 514|
|24 months |NIH-Crypto |BANGLADESH   |>5%      |       0|    134| 514|
|24 months |NIH-Crypto |BANGLADESH   |>5%      |       1|      2| 514|
|24 months |NIH-Crypto |BANGLADESH   |0%       |       0|    257| 514|
|24 months |NIH-Crypto |BANGLADESH   |0%       |       1|      1| 514|
|24 months |PROVIDE    |BANGLADESH   |(0%, 5%] |       0|    226| 579|
|24 months |PROVIDE    |BANGLADESH   |(0%, 5%] |       1|      5| 579|
|24 months |PROVIDE    |BANGLADESH   |>5%      |       0|    181| 579|
|24 months |PROVIDE    |BANGLADESH   |>5%      |       1|      1| 579|
|24 months |PROVIDE    |BANGLADESH   |0%       |       0|    163| 579|
|24 months |PROVIDE    |BANGLADESH   |0%       |       1|      3| 579|


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
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
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
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


