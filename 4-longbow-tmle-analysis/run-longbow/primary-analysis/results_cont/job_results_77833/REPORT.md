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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** perdiar6

**Adjustment Set:**

* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
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
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
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

## Stratifying Variables

The analysis was stratified on these variable(s):

* syntype
* agecat
* studyid
* country

## Data Summary

|syntype |agecat    |studyid    |country      |perdiar6 | n_cell|   n|
|:-------|:---------|:----------|:------------|:--------|------:|---:|
|BC      |Birth     |CMIN       |BANGLADESH   |(0%, 5%] |      4|  19|
|BC      |Birth     |CMIN       |BANGLADESH   |>5%      |      9|  19|
|BC      |Birth     |CMIN       |BANGLADESH   |0%       |      6|  19|
|BC      |Birth     |CONTENT    |PERU         |(0%, 5%] |      0|   2|
|BC      |Birth     |CONTENT    |PERU         |>5%      |      2|   2|
|BC      |Birth     |CONTENT    |PERU         |0%       |      0|   2|
|BC      |Birth     |EE         |PAKISTAN     |(0%, 5%] |     11| 177|
|BC      |Birth     |EE         |PAKISTAN     |>5%      |      2| 177|
|BC      |Birth     |EE         |PAKISTAN     |0%       |    164| 177|
|BC      |Birth     |MAL-ED     |INDIA        |(0%, 5%] |     22|  45|
|BC      |Birth     |MAL-ED     |INDIA        |>5%      |     12|  45|
|BC      |Birth     |MAL-ED     |INDIA        |0%       |     11|  45|
|BC      |Birth     |MAL-ED     |BANGLADESH   |(0%, 5%] |     81| 215|
|BC      |Birth     |MAL-ED     |BANGLADESH   |>5%      |     56| 215|
|BC      |Birth     |MAL-ED     |BANGLADESH   |0%       |     78| 215|
|BC      |Birth     |MAL-ED     |PERU         |(0%, 5%] |     63| 228|
|BC      |Birth     |MAL-ED     |PERU         |>5%      |     95| 228|
|BC      |Birth     |MAL-ED     |PERU         |0%       |     70| 228|
|BC      |Birth     |MAL-ED     |NEPAL        |(0%, 5%] |      6|  26|
|BC      |Birth     |MAL-ED     |NEPAL        |>5%      |      7|  26|
|BC      |Birth     |MAL-ED     |NEPAL        |0%       |     13|  26|
|BC      |Birth     |MAL-ED     |BRAZIL       |(0%, 5%] |      3|  62|
|BC      |Birth     |MAL-ED     |BRAZIL       |>5%      |      0|  62|
|BC      |Birth     |MAL-ED     |BRAZIL       |0%       |     59|  62|
|BC      |Birth     |MAL-ED     |TANZANIA     |(0%, 5%] |     47| 115|
|BC      |Birth     |MAL-ED     |TANZANIA     |>5%      |     21| 115|
|BC      |Birth     |MAL-ED     |TANZANIA     |0%       |     47| 115|
|BC      |Birth     |MAL-ED     |SOUTH AFRICA |(0%, 5%] |     25| 120|
|BC      |Birth     |MAL-ED     |SOUTH AFRICA |>5%      |      0| 120|
|BC      |Birth     |MAL-ED     |SOUTH AFRICA |0%       |     95| 120|
|BC      |Birth     |NIH-Birth  |BANGLADESH   |(0%, 5%] |    168| 570|
|BC      |Birth     |NIH-Birth  |BANGLADESH   |>5%      |    248| 570|
|BC      |Birth     |NIH-Birth  |BANGLADESH   |0%       |    154| 570|
|BC      |Birth     |NIH-Crypto |BANGLADESH   |(0%, 5%] |    160| 707|
|BC      |Birth     |NIH-Crypto |BANGLADESH   |>5%      |    197| 707|
|BC      |Birth     |NIH-Crypto |BANGLADESH   |0%       |    350| 707|
|BC      |Birth     |PROVIDE    |BANGLADESH   |(0%, 5%] |    210| 532|
|BC      |Birth     |PROVIDE    |BANGLADESH   |>5%      |    167| 532|
|BC      |Birth     |PROVIDE    |BANGLADESH   |0%       |    155| 532|
|BC      |6 months  |CMIN       |BANGLADESH   |(0%, 5%] |     52| 243|
|BC      |6 months  |CMIN       |BANGLADESH   |>5%      |    107| 243|
|BC      |6 months  |CMIN       |BANGLADESH   |0%       |     84| 243|
|BC      |6 months  |CONTENT    |PERU         |(0%, 5%] |     37| 215|
|BC      |6 months  |CONTENT    |PERU         |>5%      |     69| 215|
|BC      |6 months  |CONTENT    |PERU         |0%       |    109| 215|
|BC      |6 months  |EE         |PAKISTAN     |(0%, 5%] |     27| 375|
|BC      |6 months  |EE         |PAKISTAN     |>5%      |      2| 375|
|BC      |6 months  |EE         |PAKISTAN     |0%       |    346| 375|
|BC      |6 months  |MAL-ED     |INDIA        |(0%, 5%] |    121| 236|
|BC      |6 months  |MAL-ED     |INDIA        |>5%      |     58| 236|
|BC      |6 months  |MAL-ED     |INDIA        |0%       |     57| 236|
|BC      |6 months  |MAL-ED     |BANGLADESH   |(0%, 5%] |     88| 241|
|BC      |6 months  |MAL-ED     |BANGLADESH   |>5%      |     60| 241|
|BC      |6 months  |MAL-ED     |BANGLADESH   |0%       |     93| 241|
|BC      |6 months  |MAL-ED     |PERU         |(0%, 5%] |     85| 273|
|BC      |6 months  |MAL-ED     |PERU         |>5%      |     99| 273|
|BC      |6 months  |MAL-ED     |PERU         |0%       |     89| 273|
|BC      |6 months  |MAL-ED     |NEPAL        |(0%, 5%] |     63| 236|
|BC      |6 months  |MAL-ED     |NEPAL        |>5%      |     79| 236|
|BC      |6 months  |MAL-ED     |NEPAL        |0%       |     94| 236|
|BC      |6 months  |MAL-ED     |BRAZIL       |(0%, 5%] |     13| 209|
|BC      |6 months  |MAL-ED     |BRAZIL       |>5%      |      0| 209|
|BC      |6 months  |MAL-ED     |BRAZIL       |0%       |    196| 209|
|BC      |6 months  |MAL-ED     |TANZANIA     |(0%, 5%] |    107| 247|
|BC      |6 months  |MAL-ED     |TANZANIA     |>5%      |     41| 247|
|BC      |6 months  |MAL-ED     |TANZANIA     |0%       |     99| 247|
|BC      |6 months  |MAL-ED     |SOUTH AFRICA |(0%, 5%] |     51| 253|
|BC      |6 months  |MAL-ED     |SOUTH AFRICA |>5%      |      6| 253|
|BC      |6 months  |MAL-ED     |SOUTH AFRICA |0%       |    196| 253|
|BC      |6 months  |NIH-Birth  |BANGLADESH   |(0%, 5%] |    163| 534|
|BC      |6 months  |NIH-Birth  |BANGLADESH   |>5%      |    234| 534|
|BC      |6 months  |NIH-Birth  |BANGLADESH   |0%       |    137| 534|
|BC      |6 months  |NIH-Crypto |BANGLADESH   |(0%, 5%] |    159| 715|
|BC      |6 months  |NIH-Crypto |BANGLADESH   |>5%      |    204| 715|
|BC      |6 months  |NIH-Crypto |BANGLADESH   |0%       |    352| 715|
|BC      |6 months  |PROVIDE    |BANGLADESH   |(0%, 5%] |    240| 603|
|BC      |6 months  |PROVIDE    |BANGLADESH   |>5%      |    191| 603|
|BC      |6 months  |PROVIDE    |BANGLADESH   |0%       |    172| 603|
|BC      |24 months |CMIN       |BANGLADESH   |(0%, 5%] |     51| 243|
|BC      |24 months |CMIN       |BANGLADESH   |>5%      |    105| 243|
|BC      |24 months |CMIN       |BANGLADESH   |0%       |     87| 243|
|BC      |24 months |CONTENT    |PERU         |(0%, 5%] |     31| 164|
|BC      |24 months |CONTENT    |PERU         |>5%      |     46| 164|
|BC      |24 months |CONTENT    |PERU         |0%       |     87| 164|
|BC      |24 months |EE         |PAKISTAN     |(0%, 5%] |      9| 168|
|BC      |24 months |EE         |PAKISTAN     |>5%      |      1| 168|
|BC      |24 months |EE         |PAKISTAN     |0%       |    158| 168|
|BC      |24 months |MAL-ED     |INDIA        |(0%, 5%] |    115| 227|
|BC      |24 months |MAL-ED     |INDIA        |>5%      |     57| 227|
|BC      |24 months |MAL-ED     |INDIA        |0%       |     55| 227|
|BC      |24 months |MAL-ED     |BANGLADESH   |(0%, 5%] |     76| 212|
|BC      |24 months |MAL-ED     |BANGLADESH   |>5%      |     52| 212|
|BC      |24 months |MAL-ED     |BANGLADESH   |0%       |     84| 212|
|BC      |24 months |MAL-ED     |PERU         |(0%, 5%] |     60| 201|
|BC      |24 months |MAL-ED     |PERU         |>5%      |     79| 201|
|BC      |24 months |MAL-ED     |PERU         |0%       |     62| 201|
|BC      |24 months |MAL-ED     |NEPAL        |(0%, 5%] |     61| 228|
|BC      |24 months |MAL-ED     |NEPAL        |>5%      |     76| 228|
|BC      |24 months |MAL-ED     |NEPAL        |0%       |     91| 228|
|BC      |24 months |MAL-ED     |BRAZIL       |(0%, 5%] |     13| 169|
|BC      |24 months |MAL-ED     |BRAZIL       |>5%      |      0| 169|
|BC      |24 months |MAL-ED     |BRAZIL       |0%       |    156| 169|
|BC      |24 months |MAL-ED     |TANZANIA     |(0%, 5%] |     89| 214|
|BC      |24 months |MAL-ED     |TANZANIA     |>5%      |     36| 214|
|BC      |24 months |MAL-ED     |TANZANIA     |0%       |     89| 214|
|BC      |24 months |MAL-ED     |SOUTH AFRICA |(0%, 5%] |     45| 237|
|BC      |24 months |MAL-ED     |SOUTH AFRICA |>5%      |      5| 237|
|BC      |24 months |MAL-ED     |SOUTH AFRICA |0%       |    187| 237|
|BC      |24 months |NIH-Birth  |BANGLADESH   |(0%, 5%] |    133| 425|
|BC      |24 months |NIH-Birth  |BANGLADESH   |>5%      |    187| 425|
|BC      |24 months |NIH-Birth  |BANGLADESH   |0%       |    105| 425|
|BC      |24 months |NIH-Crypto |BANGLADESH   |(0%, 5%] |    120| 514|
|BC      |24 months |NIH-Crypto |BANGLADESH   |>5%      |    136| 514|
|BC      |24 months |NIH-Crypto |BANGLADESH   |0%       |    258| 514|
|BC      |24 months |PROVIDE    |BANGLADESH   |(0%, 5%] |    231| 579|
|BC      |24 months |PROVIDE    |BANGLADESH   |>5%      |    182| 579|
|BC      |24 months |PROVIDE    |BANGLADESH   |0%       |    166| 579|
|FULL    |Birth     |CMIN       |BANGLADESH   |(0%, 5%] |      3|  19|
|FULL    |Birth     |CMIN       |BANGLADESH   |>5%      |      6|  19|
|FULL    |Birth     |CMIN       |BANGLADESH   |0%       |     10|  19|
|FULL    |Birth     |CONTENT    |PERU         |(0%, 5%] |      1|   2|
|FULL    |Birth     |CONTENT    |PERU         |>5%      |      1|   2|
|FULL    |Birth     |CONTENT    |PERU         |0%       |      0|   2|
|FULL    |Birth     |EE         |PAKISTAN     |(0%, 5%] |     11| 177|
|FULL    |Birth     |EE         |PAKISTAN     |>5%      |      2| 177|
|FULL    |Birth     |EE         |PAKISTAN     |0%       |    164| 177|
|FULL    |Birth     |MAL-ED     |INDIA        |(0%, 5%] |     23|  45|
|FULL    |Birth     |MAL-ED     |INDIA        |>5%      |     11|  45|
|FULL    |Birth     |MAL-ED     |INDIA        |0%       |     11|  45|
|FULL    |Birth     |MAL-ED     |BANGLADESH   |(0%, 5%] |     86| 215|
|FULL    |Birth     |MAL-ED     |BANGLADESH   |>5%      |     64| 215|
|FULL    |Birth     |MAL-ED     |BANGLADESH   |0%       |     65| 215|
|FULL    |Birth     |MAL-ED     |PERU         |(0%, 5%] |     69| 228|
|FULL    |Birth     |MAL-ED     |PERU         |>5%      |     92| 228|
|FULL    |Birth     |MAL-ED     |PERU         |0%       |     67| 228|
|FULL    |Birth     |MAL-ED     |NEPAL        |(0%, 5%] |     10|  26|
|FULL    |Birth     |MAL-ED     |NEPAL        |>5%      |      8|  26|
|FULL    |Birth     |MAL-ED     |NEPAL        |0%       |      8|  26|
|FULL    |Birth     |MAL-ED     |BRAZIL       |(0%, 5%] |      6|  62|
|FULL    |Birth     |MAL-ED     |BRAZIL       |>5%      |      2|  62|
|FULL    |Birth     |MAL-ED     |BRAZIL       |0%       |     54|  62|
|FULL    |Birth     |MAL-ED     |TANZANIA     |(0%, 5%] |     44| 115|
|FULL    |Birth     |MAL-ED     |TANZANIA     |>5%      |     20| 115|
|FULL    |Birth     |MAL-ED     |TANZANIA     |0%       |     51| 115|
|FULL    |Birth     |MAL-ED     |SOUTH AFRICA |(0%, 5%] |     23| 112|
|FULL    |Birth     |MAL-ED     |SOUTH AFRICA |>5%      |      4| 112|
|FULL    |Birth     |MAL-ED     |SOUTH AFRICA |0%       |     85| 112|
|FULL    |Birth     |NIH-Birth  |BANGLADESH   |(0%, 5%] |    171| 572|
|FULL    |Birth     |NIH-Birth  |BANGLADESH   |>5%      |    251| 572|
|FULL    |Birth     |NIH-Birth  |BANGLADESH   |0%       |    150| 572|
|FULL    |Birth     |NIH-Crypto |BANGLADESH   |(0%, 5%] |    160| 707|
|FULL    |Birth     |NIH-Crypto |BANGLADESH   |>5%      |    202| 707|
|FULL    |Birth     |NIH-Crypto |BANGLADESH   |0%       |    345| 707|
|FULL    |Birth     |PROVIDE    |BANGLADESH   |(0%, 5%] |    206| 532|
|FULL    |Birth     |PROVIDE    |BANGLADESH   |>5%      |    166| 532|
|FULL    |Birth     |PROVIDE    |BANGLADESH   |0%       |    160| 532|
|FULL    |6 months  |CMIN       |BANGLADESH   |(0%, 5%] |     58| 243|
|FULL    |6 months  |CMIN       |BANGLADESH   |>5%      |    104| 243|
|FULL    |6 months  |CMIN       |BANGLADESH   |0%       |     81| 243|
|FULL    |6 months  |CONTENT    |PERU         |(0%, 5%] |     43| 215|
|FULL    |6 months  |CONTENT    |PERU         |>5%      |     57| 215|
|FULL    |6 months  |CONTENT    |PERU         |0%       |    115| 215|
|FULL    |6 months  |EE         |PAKISTAN     |(0%, 5%] |     35| 375|
|FULL    |6 months  |EE         |PAKISTAN     |>5%      |      2| 375|
|FULL    |6 months  |EE         |PAKISTAN     |0%       |    338| 375|
|FULL    |6 months  |MAL-ED     |INDIA        |(0%, 5%] |    127| 236|
|FULL    |6 months  |MAL-ED     |INDIA        |>5%      |     59| 236|
|FULL    |6 months  |MAL-ED     |INDIA        |0%       |     50| 236|
|FULL    |6 months  |MAL-ED     |BANGLADESH   |(0%, 5%] |     92| 241|
|FULL    |6 months  |MAL-ED     |BANGLADESH   |>5%      |     78| 241|
|FULL    |6 months  |MAL-ED     |BANGLADESH   |0%       |     71| 241|
|FULL    |6 months  |MAL-ED     |PERU         |(0%, 5%] |     89| 273|
|FULL    |6 months  |MAL-ED     |PERU         |>5%      |    116| 273|
|FULL    |6 months  |MAL-ED     |PERU         |0%       |     68| 273|
|FULL    |6 months  |MAL-ED     |NEPAL        |(0%, 5%] |     76| 236|
|FULL    |6 months  |MAL-ED     |NEPAL        |>5%      |     80| 236|
|FULL    |6 months  |MAL-ED     |NEPAL        |0%       |     80| 236|
|FULL    |6 months  |MAL-ED     |BRAZIL       |(0%, 5%] |     15| 209|
|FULL    |6 months  |MAL-ED     |BRAZIL       |>5%      |      2| 209|
|FULL    |6 months  |MAL-ED     |BRAZIL       |0%       |    192| 209|
|FULL    |6 months  |MAL-ED     |TANZANIA     |(0%, 5%] |     96| 247|
|FULL    |6 months  |MAL-ED     |TANZANIA     |>5%      |     46| 247|
|FULL    |6 months  |MAL-ED     |TANZANIA     |0%       |    105| 247|
|FULL    |6 months  |MAL-ED     |SOUTH AFRICA |(0%, 5%] |     55| 254|
|FULL    |6 months  |MAL-ED     |SOUTH AFRICA |>5%      |      9| 254|
|FULL    |6 months  |MAL-ED     |SOUTH AFRICA |0%       |    190| 254|
|FULL    |6 months  |NIH-Birth  |BANGLADESH   |(0%, 5%] |    169| 537|
|FULL    |6 months  |NIH-Birth  |BANGLADESH   |>5%      |    239| 537|
|FULL    |6 months  |NIH-Birth  |BANGLADESH   |0%       |    129| 537|
|FULL    |6 months  |NIH-Crypto |BANGLADESH   |(0%, 5%] |    167| 715|
|FULL    |6 months  |NIH-Crypto |BANGLADESH   |>5%      |    207| 715|
|FULL    |6 months  |NIH-Crypto |BANGLADESH   |0%       |    341| 715|
|FULL    |6 months  |PROVIDE    |BANGLADESH   |(0%, 5%] |    246| 603|
|FULL    |6 months  |PROVIDE    |BANGLADESH   |>5%      |    200| 603|
|FULL    |6 months  |PROVIDE    |BANGLADESH   |0%       |    157| 603|
|FULL    |24 months |CMIN       |BANGLADESH   |(0%, 5%] |     58| 243|
|FULL    |24 months |CMIN       |BANGLADESH   |>5%      |    100| 243|
|FULL    |24 months |CMIN       |BANGLADESH   |0%       |     85| 243|
|FULL    |24 months |CONTENT    |PERU         |(0%, 5%] |     36| 164|
|FULL    |24 months |CONTENT    |PERU         |>5%      |     44| 164|
|FULL    |24 months |CONTENT    |PERU         |0%       |     84| 164|
|FULL    |24 months |EE         |PAKISTAN     |(0%, 5%] |     14| 168|
|FULL    |24 months |EE         |PAKISTAN     |>5%      |      1| 168|
|FULL    |24 months |EE         |PAKISTAN     |0%       |    153| 168|
|FULL    |24 months |MAL-ED     |INDIA        |(0%, 5%] |    122| 227|
|FULL    |24 months |MAL-ED     |INDIA        |>5%      |     57| 227|
|FULL    |24 months |MAL-ED     |INDIA        |0%       |     48| 227|
|FULL    |24 months |MAL-ED     |BANGLADESH   |(0%, 5%] |     83| 212|
|FULL    |24 months |MAL-ED     |BANGLADESH   |>5%      |     65| 212|
|FULL    |24 months |MAL-ED     |BANGLADESH   |0%       |     64| 212|
|FULL    |24 months |MAL-ED     |PERU         |(0%, 5%] |     64| 201|
|FULL    |24 months |MAL-ED     |PERU         |>5%      |     84| 201|
|FULL    |24 months |MAL-ED     |PERU         |0%       |     53| 201|
|FULL    |24 months |MAL-ED     |NEPAL        |(0%, 5%] |     75| 228|
|FULL    |24 months |MAL-ED     |NEPAL        |>5%      |     76| 228|
|FULL    |24 months |MAL-ED     |NEPAL        |0%       |     77| 228|
|FULL    |24 months |MAL-ED     |BRAZIL       |(0%, 5%] |     13| 169|
|FULL    |24 months |MAL-ED     |BRAZIL       |>5%      |      2| 169|
|FULL    |24 months |MAL-ED     |BRAZIL       |0%       |    154| 169|
|FULL    |24 months |MAL-ED     |TANZANIA     |(0%, 5%] |     83| 214|
|FULL    |24 months |MAL-ED     |TANZANIA     |>5%      |     39| 214|
|FULL    |24 months |MAL-ED     |TANZANIA     |0%       |     92| 214|
|FULL    |24 months |MAL-ED     |SOUTH AFRICA |(0%, 5%] |     52| 238|
|FULL    |24 months |MAL-ED     |SOUTH AFRICA |>5%      |      9| 238|
|FULL    |24 months |MAL-ED     |SOUTH AFRICA |0%       |    177| 238|
|FULL    |24 months |NIH-Birth  |BANGLADESH   |(0%, 5%] |    127| 428|
|FULL    |24 months |NIH-Birth  |BANGLADESH   |>5%      |    194| 428|
|FULL    |24 months |NIH-Birth  |BANGLADESH   |0%       |    107| 428|
|FULL    |24 months |NIH-Crypto |BANGLADESH   |(0%, 5%] |    106| 514|
|FULL    |24 months |NIH-Crypto |BANGLADESH   |>5%      |    131| 514|
|FULL    |24 months |NIH-Crypto |BANGLADESH   |0%       |    277| 514|
|FULL    |24 months |PROVIDE    |BANGLADESH   |(0%, 5%] |    232| 579|
|FULL    |24 months |PROVIDE    |BANGLADESH   |>5%      |    194| 579|
|FULL    |24 months |PROVIDE    |BANGLADESH   |0%       |    153| 579|
|QI      |Birth     |CMIN       |BANGLADESH   |(0%, 5%] |      4|  21|
|QI      |Birth     |CMIN       |BANGLADESH   |>5%      |      8|  21|
|QI      |Birth     |CMIN       |BANGLADESH   |0%       |      9|  21|
|QI      |Birth     |CONTENT    |PERU         |(0%, 5%] |      0|   3|
|QI      |Birth     |CONTENT    |PERU         |>5%      |      2|   3|
|QI      |Birth     |CONTENT    |PERU         |0%       |      1|   3|
|QI      |Birth     |EE         |PAKISTAN     |(0%, 5%] |     31| 378|
|QI      |Birth     |EE         |PAKISTAN     |>5%      |      4| 378|
|QI      |Birth     |EE         |PAKISTAN     |0%       |    343| 378|
|QI      |Birth     |MAL-ED     |INDIA        |(0%, 5%] |    120| 244|
|QI      |Birth     |MAL-ED     |INDIA        |>5%      |     58| 244|
|QI      |Birth     |MAL-ED     |INDIA        |0%       |     66| 244|
|QI      |Birth     |MAL-ED     |BANGLADESH   |(0%, 5%] |     99| 262|
|QI      |Birth     |MAL-ED     |BANGLADESH   |>5%      |     77| 262|
|QI      |Birth     |MAL-ED     |BANGLADESH   |0%       |     86| 262|
|QI      |Birth     |MAL-ED     |PERU         |(0%, 5%] |     89| 302|
|QI      |Birth     |MAL-ED     |PERU         |>5%      |    124| 302|
|QI      |Birth     |MAL-ED     |PERU         |0%       |     89| 302|
|QI      |Birth     |MAL-ED     |NEPAL        |(0%, 5%] |     81| 236|
|QI      |Birth     |MAL-ED     |NEPAL        |>5%      |     74| 236|
|QI      |Birth     |MAL-ED     |NEPAL        |0%       |     81| 236|
|QI      |Birth     |MAL-ED     |BRAZIL       |(0%, 5%] |     13| 233|
|QI      |Birth     |MAL-ED     |BRAZIL       |>5%      |      0| 233|
|QI      |Birth     |MAL-ED     |BRAZIL       |0%       |    220| 233|
|QI      |Birth     |MAL-ED     |TANZANIA     |(0%, 5%] |     92| 208|
|QI      |Birth     |MAL-ED     |TANZANIA     |>5%      |     44| 208|
|QI      |Birth     |MAL-ED     |TANZANIA     |0%       |     72| 208|
|QI      |Birth     |MAL-ED     |SOUTH AFRICA |(0%, 5%] |     56| 314|
|QI      |Birth     |MAL-ED     |SOUTH AFRICA |>5%      |      8| 314|
|QI      |Birth     |MAL-ED     |SOUTH AFRICA |0%       |    250| 314|
|QI      |Birth     |NIH-Birth  |BANGLADESH   |(0%, 5%] |    187| 604|
|QI      |Birth     |NIH-Birth  |BANGLADESH   |>5%      |    262| 604|
|QI      |Birth     |NIH-Birth  |BANGLADESH   |0%       |    155| 604|
|QI      |Birth     |NIH-Crypto |BANGLADESH   |(0%, 5%] |    187| 756|
|QI      |Birth     |NIH-Crypto |BANGLADESH   |>5%      |    213| 756|
|QI      |Birth     |NIH-Crypto |BANGLADESH   |0%       |    356| 756|
|QI      |Birth     |PROVIDE    |BANGLADESH   |(0%, 5%] |    190| 531|
|QI      |Birth     |PROVIDE    |BANGLADESH   |>5%      |    171| 531|
|QI      |Birth     |PROVIDE    |BANGLADESH   |0%       |    170| 531|
|QI      |6 months  |CMIN       |BANGLADESH   |(0%, 5%] |     53| 234|
|QI      |6 months  |CMIN       |BANGLADESH   |>5%      |     93| 234|
|QI      |6 months  |CMIN       |BANGLADESH   |0%       |     88| 234|
|QI      |6 months  |CONTENT    |PERU         |(0%, 5%] |     36| 207|
|QI      |6 months  |CONTENT    |PERU         |>5%      |     45| 207|
|QI      |6 months  |CONTENT    |PERU         |0%       |    126| 207|
|QI      |6 months  |EE         |PAKISTAN     |(0%, 5%] |     26| 343|
|QI      |6 months  |EE         |PAKISTAN     |>5%      |      4| 343|
|QI      |6 months  |EE         |PAKISTAN     |0%       |    313| 343|
|QI      |6 months  |MAL-ED     |INDIA        |(0%, 5%] |    117| 236|
|QI      |6 months  |MAL-ED     |INDIA        |>5%      |     59| 236|
|QI      |6 months  |MAL-ED     |INDIA        |0%       |     60| 236|
|QI      |6 months  |MAL-ED     |BANGLADESH   |(0%, 5%] |     95| 249|
|QI      |6 months  |MAL-ED     |BANGLADESH   |>5%      |     76| 249|
|QI      |6 months  |MAL-ED     |BANGLADESH   |0%       |     78| 249|
|QI      |6 months  |MAL-ED     |PERU         |(0%, 5%] |     80| 269|
|QI      |6 months  |MAL-ED     |PERU         |>5%      |    110| 269|
|QI      |6 months  |MAL-ED     |PERU         |0%       |     79| 269|
|QI      |6 months  |MAL-ED     |NEPAL        |(0%, 5%] |     78| 222|
|QI      |6 months  |MAL-ED     |NEPAL        |>5%      |     70| 222|
|QI      |6 months  |MAL-ED     |NEPAL        |0%       |     74| 222|
|QI      |6 months  |MAL-ED     |BRAZIL       |(0%, 5%] |     12| 215|
|QI      |6 months  |MAL-ED     |BRAZIL       |>5%      |      0| 215|
|QI      |6 months  |MAL-ED     |BRAZIL       |0%       |    203| 215|
|QI      |6 months  |MAL-ED     |TANZANIA     |(0%, 5%] |    103| 243|
|QI      |6 months  |MAL-ED     |TANZANIA     |>5%      |     46| 243|
|QI      |6 months  |MAL-ED     |TANZANIA     |0%       |     94| 243|
|QI      |6 months  |MAL-ED     |SOUTH AFRICA |(0%, 5%] |     50| 285|
|QI      |6 months  |MAL-ED     |SOUTH AFRICA |>5%      |      8| 285|
|QI      |6 months  |MAL-ED     |SOUTH AFRICA |0%       |    227| 285|
|QI      |6 months  |NIH-Birth  |BANGLADESH   |(0%, 5%] |    134| 390|
|QI      |6 months  |NIH-Birth  |BANGLADESH   |>5%      |    171| 390|
|QI      |6 months  |NIH-Birth  |BANGLADESH   |0%       |     85| 390|
|QI      |6 months  |NIH-Crypto |BANGLADESH   |(0%, 5%] |    135| 537|
|QI      |6 months  |NIH-Crypto |BANGLADESH   |>5%      |    157| 537|
|QI      |6 months  |NIH-Crypto |BANGLADESH   |0%       |    245| 537|
|QI      |6 months  |PROVIDE    |BANGLADESH   |(0%, 5%] |    206| 611|
|QI      |6 months  |PROVIDE    |BANGLADESH   |>5%      |    192| 611|
|QI      |6 months  |PROVIDE    |BANGLADESH   |0%       |    213| 611|
|QI      |24 months |CMIN       |BANGLADESH   |(0%, 5%] |     20|  86|
|QI      |24 months |CMIN       |BANGLADESH   |>5%      |     28|  86|
|QI      |24 months |CMIN       |BANGLADESH   |0%       |     38|  86|
|QI      |24 months |CONTENT    |PERU         |(0%, 5%] |     18| 104|
|QI      |24 months |CONTENT    |PERU         |>5%      |     18| 104|
|QI      |24 months |CONTENT    |PERU         |0%       |     68| 104|
|QI      |24 months |EE         |PAKISTAN     |(0%, 5%] |      9| 113|
|QI      |24 months |EE         |PAKISTAN     |>5%      |      2| 113|
|QI      |24 months |EE         |PAKISTAN     |0%       |    102| 113|
|QI      |24 months |MAL-ED     |INDIA        |(0%, 5%] |     46| 102|
|QI      |24 months |MAL-ED     |INDIA        |>5%      |     27| 102|
|QI      |24 months |MAL-ED     |INDIA        |0%       |     29| 102|
|QI      |24 months |MAL-ED     |BANGLADESH   |(0%, 5%] |     30|  97|
|QI      |24 months |MAL-ED     |BANGLADESH   |>5%      |     27|  97|
|QI      |24 months |MAL-ED     |BANGLADESH   |0%       |     40|  97|
|QI      |24 months |MAL-ED     |PERU         |(0%, 5%] |     18|  67|
|QI      |24 months |MAL-ED     |PERU         |>5%      |     29|  67|
|QI      |24 months |MAL-ED     |PERU         |0%       |     20|  67|
|QI      |24 months |MAL-ED     |NEPAL        |(0%, 5%] |     36| 100|
|QI      |24 months |MAL-ED     |NEPAL        |>5%      |     32| 100|
|QI      |24 months |MAL-ED     |NEPAL        |0%       |     32| 100|
|QI      |24 months |MAL-ED     |BRAZIL       |(0%, 5%] |      3|  71|
|QI      |24 months |MAL-ED     |BRAZIL       |>5%      |      0|  71|
|QI      |24 months |MAL-ED     |BRAZIL       |0%       |     68|  71|
|QI      |24 months |MAL-ED     |TANZANIA     |(0%, 5%] |     36|  80|
|QI      |24 months |MAL-ED     |TANZANIA     |>5%      |     17|  80|
|QI      |24 months |MAL-ED     |TANZANIA     |0%       |     27|  80|
|QI      |24 months |MAL-ED     |SOUTH AFRICA |(0%, 5%] |     18|  89|
|QI      |24 months |MAL-ED     |SOUTH AFRICA |>5%      |      3|  89|
|QI      |24 months |MAL-ED     |SOUTH AFRICA |0%       |     68|  89|
|QI      |24 months |NIH-Birth  |BANGLADESH   |(0%, 5%] |      8|  32|
|QI      |24 months |NIH-Birth  |BANGLADESH   |>5%      |     15|  32|
|QI      |24 months |NIH-Birth  |BANGLADESH   |0%       |      9|  32|
|QI      |24 months |NIH-Crypto |BANGLADESH   |(0%, 5%] |      9|  47|
|QI      |24 months |NIH-Crypto |BANGLADESH   |>5%      |     13|  47|
|QI      |24 months |NIH-Crypto |BANGLADESH   |0%       |     25|  47|
|QI      |24 months |PROVIDE    |BANGLADESH   |(0%, 5%] |     19|  55|
|QI      |24 months |PROVIDE    |BANGLADESH   |>5%      |     17|  55|
|QI      |24 months |PROVIDE    |BANGLADESH   |0%       |     19|  55|


The following strata were considered:

* syntype: BC, agecat: 24 months, studyid: CMIN, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: BC, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: CMIN, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: BC, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: BC, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: QI, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: QI, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: QI, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* syntype: BC, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: BC, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: QI, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_gam_NULL_NULL_GCV.Cp
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


