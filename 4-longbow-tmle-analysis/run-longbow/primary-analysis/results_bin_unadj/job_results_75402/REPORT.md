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

**Outcome Variable:** sstunted

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

|agecat    |studyid    |country      |perdiar6 | sstunted| n_cell|   n|
|:---------|:----------|:------------|:--------|--------:|------:|---:|
|Birth     |CMIN       |BANGLADESH   |(0%, 5%] |        0|      4|  26|
|Birth     |CMIN       |BANGLADESH   |(0%, 5%] |        1|      1|  26|
|Birth     |CMIN       |BANGLADESH   |>5%      |        0|     10|  26|
|Birth     |CMIN       |BANGLADESH   |>5%      |        1|      3|  26|
|Birth     |CMIN       |BANGLADESH   |0%       |        0|      6|  26|
|Birth     |CMIN       |BANGLADESH   |0%       |        1|      2|  26|
|Birth     |CONTENT    |PERU         |(0%, 5%] |        0|      0|   2|
|Birth     |CONTENT    |PERU         |(0%, 5%] |        1|      0|   2|
|Birth     |CONTENT    |PERU         |>5%      |        0|      2|   2|
|Birth     |CONTENT    |PERU         |>5%      |        1|      0|   2|
|Birth     |CONTENT    |PERU         |0%       |        0|      0|   2|
|Birth     |CONTENT    |PERU         |0%       |        1|      0|   2|
|Birth     |EE         |PAKISTAN     |(0%, 5%] |        0|     14| 240|
|Birth     |EE         |PAKISTAN     |(0%, 5%] |        1|      3| 240|
|Birth     |EE         |PAKISTAN     |>5%      |        0|      2| 240|
|Birth     |EE         |PAKISTAN     |>5%      |        1|      0| 240|
|Birth     |EE         |PAKISTAN     |0%       |        0|    176| 240|
|Birth     |EE         |PAKISTAN     |0%       |        1|     45| 240|
|Birth     |MAL-ED     |INDIA        |(0%, 5%] |        0|     22|  47|
|Birth     |MAL-ED     |INDIA        |(0%, 5%] |        1|      1|  47|
|Birth     |MAL-ED     |INDIA        |>5%      |        0|     12|  47|
|Birth     |MAL-ED     |INDIA        |>5%      |        1|      1|  47|
|Birth     |MAL-ED     |INDIA        |0%       |        0|     11|  47|
|Birth     |MAL-ED     |INDIA        |0%       |        1|      0|  47|
|Birth     |MAL-ED     |BANGLADESH   |(0%, 5%] |        0|     85| 231|
|Birth     |MAL-ED     |BANGLADESH   |(0%, 5%] |        1|      3| 231|
|Birth     |MAL-ED     |BANGLADESH   |>5%      |        0|     57| 231|
|Birth     |MAL-ED     |BANGLADESH   |>5%      |        1|      4| 231|
|Birth     |MAL-ED     |BANGLADESH   |0%       |        0|     80| 231|
|Birth     |MAL-ED     |BANGLADESH   |0%       |        1|      2| 231|
|Birth     |MAL-ED     |PERU         |(0%, 5%] |        0|     62| 233|
|Birth     |MAL-ED     |PERU         |(0%, 5%] |        1|      2| 233|
|Birth     |MAL-ED     |PERU         |>5%      |        0|     95| 233|
|Birth     |MAL-ED     |PERU         |>5%      |        1|      0| 233|
|Birth     |MAL-ED     |PERU         |0%       |        0|     72| 233|
|Birth     |MAL-ED     |PERU         |0%       |        1|      2| 233|
|Birth     |MAL-ED     |NEPAL        |(0%, 5%] |        0|      6|  27|
|Birth     |MAL-ED     |NEPAL        |(0%, 5%] |        1|      1|  27|
|Birth     |MAL-ED     |NEPAL        |>5%      |        0|      7|  27|
|Birth     |MAL-ED     |NEPAL        |>5%      |        1|      0|  27|
|Birth     |MAL-ED     |NEPAL        |0%       |        0|     13|  27|
|Birth     |MAL-ED     |NEPAL        |0%       |        1|      0|  27|
|Birth     |MAL-ED     |BRAZIL       |(0%, 5%] |        0|      3|  65|
|Birth     |MAL-ED     |BRAZIL       |(0%, 5%] |        1|      0|  65|
|Birth     |MAL-ED     |BRAZIL       |>5%      |        0|      0|  65|
|Birth     |MAL-ED     |BRAZIL       |>5%      |        1|      0|  65|
|Birth     |MAL-ED     |BRAZIL       |0%       |        0|     59|  65|
|Birth     |MAL-ED     |BRAZIL       |0%       |        1|      3|  65|
|Birth     |MAL-ED     |TANZANIA     |(0%, 5%] |        0|     47| 125|
|Birth     |MAL-ED     |TANZANIA     |(0%, 5%] |        1|      5| 125|
|Birth     |MAL-ED     |TANZANIA     |>5%      |        0|     21| 125|
|Birth     |MAL-ED     |TANZANIA     |>5%      |        1|      1| 125|
|Birth     |MAL-ED     |TANZANIA     |0%       |        0|     47| 125|
|Birth     |MAL-ED     |TANZANIA     |0%       |        1|      4| 125|
|Birth     |MAL-ED     |SOUTH AFRICA |(0%, 5%] |        0|     25| 123|
|Birth     |MAL-ED     |SOUTH AFRICA |(0%, 5%] |        1|      0| 123|
|Birth     |MAL-ED     |SOUTH AFRICA |>5%      |        0|      0| 123|
|Birth     |MAL-ED     |SOUTH AFRICA |>5%      |        1|      1| 123|
|Birth     |MAL-ED     |SOUTH AFRICA |0%       |        0|     96| 123|
|Birth     |MAL-ED     |SOUTH AFRICA |0%       |        1|      1| 123|
|Birth     |NIH-Birth  |BANGLADESH   |(0%, 5%] |        0|    171| 603|
|Birth     |NIH-Birth  |BANGLADESH   |(0%, 5%] |        1|      8| 603|
|Birth     |NIH-Birth  |BANGLADESH   |>5%      |        0|    256| 603|
|Birth     |NIH-Birth  |BANGLADESH   |>5%      |        1|      9| 603|
|Birth     |NIH-Birth  |BANGLADESH   |0%       |        0|    157| 603|
|Birth     |NIH-Birth  |BANGLADESH   |0%       |        1|      2| 603|
|Birth     |NIH-Crypto |BANGLADESH   |(0%, 5%] |        0|    161| 732|
|Birth     |NIH-Crypto |BANGLADESH   |(0%, 5%] |        1|      5| 732|
|Birth     |NIH-Crypto |BANGLADESH   |>5%      |        0|    203| 732|
|Birth     |NIH-Crypto |BANGLADESH   |>5%      |        1|      4| 732|
|Birth     |NIH-Crypto |BANGLADESH   |0%       |        0|    358| 732|
|Birth     |NIH-Crypto |BANGLADESH   |0%       |        1|      1| 732|
|Birth     |PROVIDE    |BANGLADESH   |(0%, 5%] |        0|    211| 539|
|Birth     |PROVIDE    |BANGLADESH   |(0%, 5%] |        1|      1| 539|
|Birth     |PROVIDE    |BANGLADESH   |>5%      |        0|    168| 539|
|Birth     |PROVIDE    |BANGLADESH   |>5%      |        1|      2| 539|
|Birth     |PROVIDE    |BANGLADESH   |0%       |        0|    156| 539|
|Birth     |PROVIDE    |BANGLADESH   |0%       |        1|      1| 539|
|6 months  |CMIN       |BANGLADESH   |(0%, 5%] |        0|     48| 243|
|6 months  |CMIN       |BANGLADESH   |(0%, 5%] |        1|      4| 243|
|6 months  |CMIN       |BANGLADESH   |>5%      |        0|     94| 243|
|6 months  |CMIN       |BANGLADESH   |>5%      |        1|     14| 243|
|6 months  |CMIN       |BANGLADESH   |0%       |        0|     73| 243|
|6 months  |CMIN       |BANGLADESH   |0%       |        1|     10| 243|
|6 months  |CONTENT    |PERU         |(0%, 5%] |        0|     37| 215|
|6 months  |CONTENT    |PERU         |(0%, 5%] |        1|      0| 215|
|6 months  |CONTENT    |PERU         |>5%      |        0|     69| 215|
|6 months  |CONTENT    |PERU         |>5%      |        1|      0| 215|
|6 months  |CONTENT    |PERU         |0%       |        0|    108| 215|
|6 months  |CONTENT    |PERU         |0%       |        1|      1| 215|
|6 months  |EE         |PAKISTAN     |(0%, 5%] |        0|     18| 373|
|6 months  |EE         |PAKISTAN     |(0%, 5%] |        1|      9| 373|
|6 months  |EE         |PAKISTAN     |>5%      |        0|      2| 373|
|6 months  |EE         |PAKISTAN     |>5%      |        1|      0| 373|
|6 months  |EE         |PAKISTAN     |0%       |        0|    272| 373|
|6 months  |EE         |PAKISTAN     |0%       |        1|     72| 373|
|6 months  |MAL-ED     |INDIA        |(0%, 5%] |        0|    117| 236|
|6 months  |MAL-ED     |INDIA        |(0%, 5%] |        1|      4| 236|
|6 months  |MAL-ED     |INDIA        |>5%      |        0|     56| 236|
|6 months  |MAL-ED     |INDIA        |>5%      |        1|      2| 236|
|6 months  |MAL-ED     |INDIA        |0%       |        0|     54| 236|
|6 months  |MAL-ED     |INDIA        |0%       |        1|      3| 236|
|6 months  |MAL-ED     |BANGLADESH   |(0%, 5%] |        0|     83| 241|
|6 months  |MAL-ED     |BANGLADESH   |(0%, 5%] |        1|      5| 241|
|6 months  |MAL-ED     |BANGLADESH   |>5%      |        0|     57| 241|
|6 months  |MAL-ED     |BANGLADESH   |>5%      |        1|      3| 241|
|6 months  |MAL-ED     |BANGLADESH   |0%       |        0|     93| 241|
|6 months  |MAL-ED     |BANGLADESH   |0%       |        1|      0| 241|
|6 months  |MAL-ED     |PERU         |(0%, 5%] |        0|     82| 273|
|6 months  |MAL-ED     |PERU         |(0%, 5%] |        1|      3| 273|
|6 months  |MAL-ED     |PERU         |>5%      |        0|     98| 273|
|6 months  |MAL-ED     |PERU         |>5%      |        1|      1| 273|
|6 months  |MAL-ED     |PERU         |0%       |        0|     83| 273|
|6 months  |MAL-ED     |PERU         |0%       |        1|      6| 273|
|6 months  |MAL-ED     |NEPAL        |(0%, 5%] |        0|     63| 236|
|6 months  |MAL-ED     |NEPAL        |(0%, 5%] |        1|      0| 236|
|6 months  |MAL-ED     |NEPAL        |>5%      |        0|     78| 236|
|6 months  |MAL-ED     |NEPAL        |>5%      |        1|      1| 236|
|6 months  |MAL-ED     |NEPAL        |0%       |        0|     94| 236|
|6 months  |MAL-ED     |NEPAL        |0%       |        1|      0| 236|
|6 months  |MAL-ED     |BRAZIL       |(0%, 5%] |        0|     13| 209|
|6 months  |MAL-ED     |BRAZIL       |(0%, 5%] |        1|      0| 209|
|6 months  |MAL-ED     |BRAZIL       |>5%      |        0|      0| 209|
|6 months  |MAL-ED     |BRAZIL       |>5%      |        1|      0| 209|
|6 months  |MAL-ED     |BRAZIL       |0%       |        0|    196| 209|
|6 months  |MAL-ED     |BRAZIL       |0%       |        1|      0| 209|
|6 months  |MAL-ED     |TANZANIA     |(0%, 5%] |        0|    102| 247|
|6 months  |MAL-ED     |TANZANIA     |(0%, 5%] |        1|      5| 247|
|6 months  |MAL-ED     |TANZANIA     |>5%      |        0|     40| 247|
|6 months  |MAL-ED     |TANZANIA     |>5%      |        1|      1| 247|
|6 months  |MAL-ED     |TANZANIA     |0%       |        0|     91| 247|
|6 months  |MAL-ED     |TANZANIA     |0%       |        1|      8| 247|
|6 months  |MAL-ED     |SOUTH AFRICA |(0%, 5%] |        0|     49| 253|
|6 months  |MAL-ED     |SOUTH AFRICA |(0%, 5%] |        1|      2| 253|
|6 months  |MAL-ED     |SOUTH AFRICA |>5%      |        0|      6| 253|
|6 months  |MAL-ED     |SOUTH AFRICA |>5%      |        1|      0| 253|
|6 months  |MAL-ED     |SOUTH AFRICA |0%       |        0|    192| 253|
|6 months  |MAL-ED     |SOUTH AFRICA |0%       |        1|      4| 253|
|6 months  |NIH-Birth  |BANGLADESH   |(0%, 5%] |        0|    155| 534|
|6 months  |NIH-Birth  |BANGLADESH   |(0%, 5%] |        1|      8| 534|
|6 months  |NIH-Birth  |BANGLADESH   |>5%      |        0|    215| 534|
|6 months  |NIH-Birth  |BANGLADESH   |>5%      |        1|     19| 534|
|6 months  |NIH-Birth  |BANGLADESH   |0%       |        0|    130| 534|
|6 months  |NIH-Birth  |BANGLADESH   |0%       |        1|      7| 534|
|6 months  |NIH-Crypto |BANGLADESH   |(0%, 5%] |        0|    152| 715|
|6 months  |NIH-Crypto |BANGLADESH   |(0%, 5%] |        1|      7| 715|
|6 months  |NIH-Crypto |BANGLADESH   |>5%      |        0|    198| 715|
|6 months  |NIH-Crypto |BANGLADESH   |>5%      |        1|      6| 715|
|6 months  |NIH-Crypto |BANGLADESH   |0%       |        0|    342| 715|
|6 months  |NIH-Crypto |BANGLADESH   |0%       |        1|     10| 715|
|6 months  |PROVIDE    |BANGLADESH   |(0%, 5%] |        0|    238| 604|
|6 months  |PROVIDE    |BANGLADESH   |(0%, 5%] |        1|      2| 604|
|6 months  |PROVIDE    |BANGLADESH   |>5%      |        0|    185| 604|
|6 months  |PROVIDE    |BANGLADESH   |>5%      |        1|      7| 604|
|6 months  |PROVIDE    |BANGLADESH   |0%       |        0|    167| 604|
|6 months  |PROVIDE    |BANGLADESH   |0%       |        1|      5| 604|
|24 months |CMIN       |BANGLADESH   |(0%, 5%] |        0|     37| 242|
|24 months |CMIN       |BANGLADESH   |(0%, 5%] |        1|     14| 242|
|24 months |CMIN       |BANGLADESH   |>5%      |        0|     71| 242|
|24 months |CMIN       |BANGLADESH   |>5%      |        1|     34| 242|
|24 months |CMIN       |BANGLADESH   |0%       |        0|     66| 242|
|24 months |CMIN       |BANGLADESH   |0%       |        1|     20| 242|
|24 months |CONTENT    |PERU         |(0%, 5%] |        0|     31| 164|
|24 months |CONTENT    |PERU         |(0%, 5%] |        1|      0| 164|
|24 months |CONTENT    |PERU         |>5%      |        0|     46| 164|
|24 months |CONTENT    |PERU         |>5%      |        1|      0| 164|
|24 months |CONTENT    |PERU         |0%       |        0|     86| 164|
|24 months |CONTENT    |PERU         |0%       |        1|      1| 164|
|24 months |EE         |PAKISTAN     |(0%, 5%] |        0|      6| 167|
|24 months |EE         |PAKISTAN     |(0%, 5%] |        1|      3| 167|
|24 months |EE         |PAKISTAN     |>5%      |        0|      1| 167|
|24 months |EE         |PAKISTAN     |>5%      |        1|      0| 167|
|24 months |EE         |PAKISTAN     |0%       |        0|    101| 167|
|24 months |EE         |PAKISTAN     |0%       |        1|     56| 167|
|24 months |MAL-ED     |INDIA        |(0%, 5%] |        0|    104| 227|
|24 months |MAL-ED     |INDIA        |(0%, 5%] |        1|     11| 227|
|24 months |MAL-ED     |INDIA        |>5%      |        0|     46| 227|
|24 months |MAL-ED     |INDIA        |>5%      |        1|     11| 227|
|24 months |MAL-ED     |INDIA        |0%       |        0|     47| 227|
|24 months |MAL-ED     |INDIA        |0%       |        1|      8| 227|
|24 months |MAL-ED     |BANGLADESH   |(0%, 5%] |        0|     65| 212|
|24 months |MAL-ED     |BANGLADESH   |(0%, 5%] |        1|     11| 212|
|24 months |MAL-ED     |BANGLADESH   |>5%      |        0|     46| 212|
|24 months |MAL-ED     |BANGLADESH   |>5%      |        1|      6| 212|
|24 months |MAL-ED     |BANGLADESH   |0%       |        0|     73| 212|
|24 months |MAL-ED     |BANGLADESH   |0%       |        1|     11| 212|
|24 months |MAL-ED     |PERU         |(0%, 5%] |        0|     54| 201|
|24 months |MAL-ED     |PERU         |(0%, 5%] |        1|      6| 201|
|24 months |MAL-ED     |PERU         |>5%      |        0|     77| 201|
|24 months |MAL-ED     |PERU         |>5%      |        1|      2| 201|
|24 months |MAL-ED     |PERU         |0%       |        0|     55| 201|
|24 months |MAL-ED     |PERU         |0%       |        1|      7| 201|
|24 months |MAL-ED     |NEPAL        |(0%, 5%] |        0|     59| 228|
|24 months |MAL-ED     |NEPAL        |(0%, 5%] |        1|      2| 228|
|24 months |MAL-ED     |NEPAL        |>5%      |        0|     74| 228|
|24 months |MAL-ED     |NEPAL        |>5%      |        1|      2| 228|
|24 months |MAL-ED     |NEPAL        |0%       |        0|     88| 228|
|24 months |MAL-ED     |NEPAL        |0%       |        1|      3| 228|
|24 months |MAL-ED     |BRAZIL       |(0%, 5%] |        0|     13| 169|
|24 months |MAL-ED     |BRAZIL       |(0%, 5%] |        1|      0| 169|
|24 months |MAL-ED     |BRAZIL       |>5%      |        0|      0| 169|
|24 months |MAL-ED     |BRAZIL       |>5%      |        1|      0| 169|
|24 months |MAL-ED     |BRAZIL       |0%       |        0|    155| 169|
|24 months |MAL-ED     |BRAZIL       |0%       |        1|      1| 169|
|24 months |MAL-ED     |TANZANIA     |(0%, 5%] |        0|     63| 214|
|24 months |MAL-ED     |TANZANIA     |(0%, 5%] |        1|     26| 214|
|24 months |MAL-ED     |TANZANIA     |>5%      |        0|     28| 214|
|24 months |MAL-ED     |TANZANIA     |>5%      |        1|      8| 214|
|24 months |MAL-ED     |TANZANIA     |0%       |        0|     53| 214|
|24 months |MAL-ED     |TANZANIA     |0%       |        1|     36| 214|
|24 months |MAL-ED     |SOUTH AFRICA |(0%, 5%] |        0|     38| 237|
|24 months |MAL-ED     |SOUTH AFRICA |(0%, 5%] |        1|      7| 237|
|24 months |MAL-ED     |SOUTH AFRICA |>5%      |        0|      4| 237|
|24 months |MAL-ED     |SOUTH AFRICA |>5%      |        1|      1| 237|
|24 months |MAL-ED     |SOUTH AFRICA |0%       |        0|    168| 237|
|24 months |MAL-ED     |SOUTH AFRICA |0%       |        1|     19| 237|
|24 months |NIH-Birth  |BANGLADESH   |(0%, 5%] |        0|    109| 426|
|24 months |NIH-Birth  |BANGLADESH   |(0%, 5%] |        1|     25| 426|
|24 months |NIH-Birth  |BANGLADESH   |>5%      |        0|    143| 426|
|24 months |NIH-Birth  |BANGLADESH   |>5%      |        1|     44| 426|
|24 months |NIH-Birth  |BANGLADESH   |0%       |        0|     82| 426|
|24 months |NIH-Birth  |BANGLADESH   |0%       |        1|     23| 426|
|24 months |NIH-Crypto |BANGLADESH   |(0%, 5%] |        0|    112| 514|
|24 months |NIH-Crypto |BANGLADESH   |(0%, 5%] |        1|      8| 514|
|24 months |NIH-Crypto |BANGLADESH   |>5%      |        0|    124| 514|
|24 months |NIH-Crypto |BANGLADESH   |>5%      |        1|     12| 514|
|24 months |NIH-Crypto |BANGLADESH   |0%       |        0|    242| 514|
|24 months |NIH-Crypto |BANGLADESH   |0%       |        1|     16| 514|
|24 months |PROVIDE    |BANGLADESH   |(0%, 5%] |        0|    213| 578|
|24 months |PROVIDE    |BANGLADESH   |(0%, 5%] |        1|     18| 578|
|24 months |PROVIDE    |BANGLADESH   |>5%      |        0|    163| 578|
|24 months |PROVIDE    |BANGLADESH   |>5%      |        1|     18| 578|
|24 months |PROVIDE    |BANGLADESH   |0%       |        0|    150| 578|
|24 months |PROVIDE    |BANGLADESH   |0%       |        1|     16| 578|


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
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
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
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
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


