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

**Outcome Variable:** stunted

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

|agecat    |studyid    |country      |perdiar6 | stunted| n_cell|   n|
|:---------|:----------|:------------|:--------|-------:|------:|---:|
|Birth     |CMIN       |BANGLADESH   |(0%, 5%] |       0|      3|  26|
|Birth     |CMIN       |BANGLADESH   |(0%, 5%] |       1|      2|  26|
|Birth     |CMIN       |BANGLADESH   |>5%      |       0|      8|  26|
|Birth     |CMIN       |BANGLADESH   |>5%      |       1|      5|  26|
|Birth     |CMIN       |BANGLADESH   |0%       |       0|      6|  26|
|Birth     |CMIN       |BANGLADESH   |0%       |       1|      2|  26|
|Birth     |CONTENT    |PERU         |(0%, 5%] |       0|      0|   2|
|Birth     |CONTENT    |PERU         |(0%, 5%] |       1|      0|   2|
|Birth     |CONTENT    |PERU         |>5%      |       0|      2|   2|
|Birth     |CONTENT    |PERU         |>5%      |       1|      0|   2|
|Birth     |CONTENT    |PERU         |0%       |       0|      0|   2|
|Birth     |CONTENT    |PERU         |0%       |       1|      0|   2|
|Birth     |EE         |PAKISTAN     |(0%, 5%] |       0|      9| 240|
|Birth     |EE         |PAKISTAN     |(0%, 5%] |       1|      8| 240|
|Birth     |EE         |PAKISTAN     |>5%      |       0|      1| 240|
|Birth     |EE         |PAKISTAN     |>5%      |       1|      1| 240|
|Birth     |EE         |PAKISTAN     |0%       |       0|    130| 240|
|Birth     |EE         |PAKISTAN     |0%       |       1|     91| 240|
|Birth     |MAL-ED     |INDIA        |(0%, 5%] |       0|     17|  47|
|Birth     |MAL-ED     |INDIA        |(0%, 5%] |       1|      6|  47|
|Birth     |MAL-ED     |INDIA        |>5%      |       0|     12|  47|
|Birth     |MAL-ED     |INDIA        |>5%      |       1|      1|  47|
|Birth     |MAL-ED     |INDIA        |0%       |       0|      8|  47|
|Birth     |MAL-ED     |INDIA        |0%       |       1|      3|  47|
|Birth     |MAL-ED     |BANGLADESH   |(0%, 5%] |       0|     67| 231|
|Birth     |MAL-ED     |BANGLADESH   |(0%, 5%] |       1|     21| 231|
|Birth     |MAL-ED     |BANGLADESH   |>5%      |       0|     50| 231|
|Birth     |MAL-ED     |BANGLADESH   |>5%      |       1|     11| 231|
|Birth     |MAL-ED     |BANGLADESH   |0%       |       0|     70| 231|
|Birth     |MAL-ED     |BANGLADESH   |0%       |       1|     12| 231|
|Birth     |MAL-ED     |PERU         |(0%, 5%] |       0|     58| 233|
|Birth     |MAL-ED     |PERU         |(0%, 5%] |       1|      6| 233|
|Birth     |MAL-ED     |PERU         |>5%      |       0|     85| 233|
|Birth     |MAL-ED     |PERU         |>5%      |       1|     10| 233|
|Birth     |MAL-ED     |PERU         |0%       |       0|     64| 233|
|Birth     |MAL-ED     |PERU         |0%       |       1|     10| 233|
|Birth     |MAL-ED     |NEPAL        |(0%, 5%] |       0|      6|  27|
|Birth     |MAL-ED     |NEPAL        |(0%, 5%] |       1|      1|  27|
|Birth     |MAL-ED     |NEPAL        |>5%      |       0|      7|  27|
|Birth     |MAL-ED     |NEPAL        |>5%      |       1|      0|  27|
|Birth     |MAL-ED     |NEPAL        |0%       |       0|     12|  27|
|Birth     |MAL-ED     |NEPAL        |0%       |       1|      1|  27|
|Birth     |MAL-ED     |BRAZIL       |(0%, 5%] |       0|      3|  65|
|Birth     |MAL-ED     |BRAZIL       |(0%, 5%] |       1|      0|  65|
|Birth     |MAL-ED     |BRAZIL       |>5%      |       0|      0|  65|
|Birth     |MAL-ED     |BRAZIL       |>5%      |       1|      0|  65|
|Birth     |MAL-ED     |BRAZIL       |0%       |       0|     53|  65|
|Birth     |MAL-ED     |BRAZIL       |0%       |       1|      9|  65|
|Birth     |MAL-ED     |TANZANIA     |(0%, 5%] |       0|     41| 125|
|Birth     |MAL-ED     |TANZANIA     |(0%, 5%] |       1|     11| 125|
|Birth     |MAL-ED     |TANZANIA     |>5%      |       0|     18| 125|
|Birth     |MAL-ED     |TANZANIA     |>5%      |       1|      4| 125|
|Birth     |MAL-ED     |TANZANIA     |0%       |       0|     43| 125|
|Birth     |MAL-ED     |TANZANIA     |0%       |       1|      8| 125|
|Birth     |MAL-ED     |SOUTH AFRICA |(0%, 5%] |       0|     20| 123|
|Birth     |MAL-ED     |SOUTH AFRICA |(0%, 5%] |       1|      5| 123|
|Birth     |MAL-ED     |SOUTH AFRICA |>5%      |       0|      0| 123|
|Birth     |MAL-ED     |SOUTH AFRICA |>5%      |       1|      1| 123|
|Birth     |MAL-ED     |SOUTH AFRICA |0%       |       0|     93| 123|
|Birth     |MAL-ED     |SOUTH AFRICA |0%       |       1|      4| 123|
|Birth     |NIH-Birth  |BANGLADESH   |(0%, 5%] |       0|    146| 603|
|Birth     |NIH-Birth  |BANGLADESH   |(0%, 5%] |       1|     33| 603|
|Birth     |NIH-Birth  |BANGLADESH   |>5%      |       0|    221| 603|
|Birth     |NIH-Birth  |BANGLADESH   |>5%      |       1|     44| 603|
|Birth     |NIH-Birth  |BANGLADESH   |0%       |       0|    140| 603|
|Birth     |NIH-Birth  |BANGLADESH   |0%       |       1|     19| 603|
|Birth     |NIH-Crypto |BANGLADESH   |(0%, 5%] |       0|    140| 732|
|Birth     |NIH-Crypto |BANGLADESH   |(0%, 5%] |       1|     26| 732|
|Birth     |NIH-Crypto |BANGLADESH   |>5%      |       0|    179| 732|
|Birth     |NIH-Crypto |BANGLADESH   |>5%      |       1|     28| 732|
|Birth     |NIH-Crypto |BANGLADESH   |0%       |       0|    312| 732|
|Birth     |NIH-Crypto |BANGLADESH   |0%       |       1|     47| 732|
|Birth     |PROVIDE    |BANGLADESH   |(0%, 5%] |       0|    197| 539|
|Birth     |PROVIDE    |BANGLADESH   |(0%, 5%] |       1|     15| 539|
|Birth     |PROVIDE    |BANGLADESH   |>5%      |       0|    151| 539|
|Birth     |PROVIDE    |BANGLADESH   |>5%      |       1|     19| 539|
|Birth     |PROVIDE    |BANGLADESH   |0%       |       0|    143| 539|
|Birth     |PROVIDE    |BANGLADESH   |0%       |       1|     14| 539|
|6 months  |CMIN       |BANGLADESH   |(0%, 5%] |       0|     37| 243|
|6 months  |CMIN       |BANGLADESH   |(0%, 5%] |       1|     15| 243|
|6 months  |CMIN       |BANGLADESH   |>5%      |       0|     58| 243|
|6 months  |CMIN       |BANGLADESH   |>5%      |       1|     50| 243|
|6 months  |CMIN       |BANGLADESH   |0%       |       0|     55| 243|
|6 months  |CMIN       |BANGLADESH   |0%       |       1|     28| 243|
|6 months  |CONTENT    |PERU         |(0%, 5%] |       0|     35| 215|
|6 months  |CONTENT    |PERU         |(0%, 5%] |       1|      2| 215|
|6 months  |CONTENT    |PERU         |>5%      |       0|     68| 215|
|6 months  |CONTENT    |PERU         |>5%      |       1|      1| 215|
|6 months  |CONTENT    |PERU         |0%       |       0|    103| 215|
|6 months  |CONTENT    |PERU         |0%       |       1|      6| 215|
|6 months  |EE         |PAKISTAN     |(0%, 5%] |       0|     13| 373|
|6 months  |EE         |PAKISTAN     |(0%, 5%] |       1|     14| 373|
|6 months  |EE         |PAKISTAN     |>5%      |       0|      1| 373|
|6 months  |EE         |PAKISTAN     |>5%      |       1|      1| 373|
|6 months  |EE         |PAKISTAN     |0%       |       0|    176| 373|
|6 months  |EE         |PAKISTAN     |0%       |       1|    168| 373|
|6 months  |MAL-ED     |INDIA        |(0%, 5%] |       0|    100| 236|
|6 months  |MAL-ED     |INDIA        |(0%, 5%] |       1|     21| 236|
|6 months  |MAL-ED     |INDIA        |>5%      |       0|     44| 236|
|6 months  |MAL-ED     |INDIA        |>5%      |       1|     14| 236|
|6 months  |MAL-ED     |INDIA        |0%       |       0|     47| 236|
|6 months  |MAL-ED     |INDIA        |0%       |       1|     10| 236|
|6 months  |MAL-ED     |BANGLADESH   |(0%, 5%] |       0|     72| 241|
|6 months  |MAL-ED     |BANGLADESH   |(0%, 5%] |       1|     16| 241|
|6 months  |MAL-ED     |BANGLADESH   |>5%      |       0|     48| 241|
|6 months  |MAL-ED     |BANGLADESH   |>5%      |       1|     12| 241|
|6 months  |MAL-ED     |BANGLADESH   |0%       |       0|     77| 241|
|6 months  |MAL-ED     |BANGLADESH   |0%       |       1|     16| 241|
|6 months  |MAL-ED     |PERU         |(0%, 5%] |       0|     64| 273|
|6 months  |MAL-ED     |PERU         |(0%, 5%] |       1|     21| 273|
|6 months  |MAL-ED     |PERU         |>5%      |       0|     85| 273|
|6 months  |MAL-ED     |PERU         |>5%      |       1|     14| 273|
|6 months  |MAL-ED     |PERU         |0%       |       0|     64| 273|
|6 months  |MAL-ED     |PERU         |0%       |       1|     25| 273|
|6 months  |MAL-ED     |NEPAL        |(0%, 5%] |       0|     58| 236|
|6 months  |MAL-ED     |NEPAL        |(0%, 5%] |       1|      5| 236|
|6 months  |MAL-ED     |NEPAL        |>5%      |       0|     76| 236|
|6 months  |MAL-ED     |NEPAL        |>5%      |       1|      3| 236|
|6 months  |MAL-ED     |NEPAL        |0%       |       0|     90| 236|
|6 months  |MAL-ED     |NEPAL        |0%       |       1|      4| 236|
|6 months  |MAL-ED     |BRAZIL       |(0%, 5%] |       0|     13| 209|
|6 months  |MAL-ED     |BRAZIL       |(0%, 5%] |       1|      0| 209|
|6 months  |MAL-ED     |BRAZIL       |>5%      |       0|      0| 209|
|6 months  |MAL-ED     |BRAZIL       |>5%      |       1|      0| 209|
|6 months  |MAL-ED     |BRAZIL       |0%       |       0|    190| 209|
|6 months  |MAL-ED     |BRAZIL       |0%       |       1|      6| 209|
|6 months  |MAL-ED     |TANZANIA     |(0%, 5%] |       0|     82| 247|
|6 months  |MAL-ED     |TANZANIA     |(0%, 5%] |       1|     25| 247|
|6 months  |MAL-ED     |TANZANIA     |>5%      |       0|     35| 247|
|6 months  |MAL-ED     |TANZANIA     |>5%      |       1|      6| 247|
|6 months  |MAL-ED     |TANZANIA     |0%       |       0|     71| 247|
|6 months  |MAL-ED     |TANZANIA     |0%       |       1|     28| 247|
|6 months  |MAL-ED     |SOUTH AFRICA |(0%, 5%] |       0|     40| 253|
|6 months  |MAL-ED     |SOUTH AFRICA |(0%, 5%] |       1|     11| 253|
|6 months  |MAL-ED     |SOUTH AFRICA |>5%      |       0|      5| 253|
|6 months  |MAL-ED     |SOUTH AFRICA |>5%      |       1|      1| 253|
|6 months  |MAL-ED     |SOUTH AFRICA |0%       |       0|    158| 253|
|6 months  |MAL-ED     |SOUTH AFRICA |0%       |       1|     38| 253|
|6 months  |NIH-Birth  |BANGLADESH   |(0%, 5%] |       0|    120| 534|
|6 months  |NIH-Birth  |BANGLADESH   |(0%, 5%] |       1|     43| 534|
|6 months  |NIH-Birth  |BANGLADESH   |>5%      |       0|    167| 534|
|6 months  |NIH-Birth  |BANGLADESH   |>5%      |       1|     67| 534|
|6 months  |NIH-Birth  |BANGLADESH   |0%       |       0|    105| 534|
|6 months  |NIH-Birth  |BANGLADESH   |0%       |       1|     32| 534|
|6 months  |NIH-Crypto |BANGLADESH   |(0%, 5%] |       0|    122| 715|
|6 months  |NIH-Crypto |BANGLADESH   |(0%, 5%] |       1|     37| 715|
|6 months  |NIH-Crypto |BANGLADESH   |>5%      |       0|    167| 715|
|6 months  |NIH-Crypto |BANGLADESH   |>5%      |       1|     37| 715|
|6 months  |NIH-Crypto |BANGLADESH   |0%       |       0|    276| 715|
|6 months  |NIH-Crypto |BANGLADESH   |0%       |       1|     76| 715|
|6 months  |PROVIDE    |BANGLADESH   |(0%, 5%] |       0|    202| 604|
|6 months  |PROVIDE    |BANGLADESH   |(0%, 5%] |       1|     38| 604|
|6 months  |PROVIDE    |BANGLADESH   |>5%      |       0|    158| 604|
|6 months  |PROVIDE    |BANGLADESH   |>5%      |       1|     34| 604|
|6 months  |PROVIDE    |BANGLADESH   |0%       |       0|    148| 604|
|6 months  |PROVIDE    |BANGLADESH   |0%       |       1|     24| 604|
|24 months |CMIN       |BANGLADESH   |(0%, 5%] |       0|     18| 242|
|24 months |CMIN       |BANGLADESH   |(0%, 5%] |       1|     33| 242|
|24 months |CMIN       |BANGLADESH   |>5%      |       0|     31| 242|
|24 months |CMIN       |BANGLADESH   |>5%      |       1|     74| 242|
|24 months |CMIN       |BANGLADESH   |0%       |       0|     28| 242|
|24 months |CMIN       |BANGLADESH   |0%       |       1|     58| 242|
|24 months |CONTENT    |PERU         |(0%, 5%] |       0|     28| 164|
|24 months |CONTENT    |PERU         |(0%, 5%] |       1|      3| 164|
|24 months |CONTENT    |PERU         |>5%      |       0|     44| 164|
|24 months |CONTENT    |PERU         |>5%      |       1|      2| 164|
|24 months |CONTENT    |PERU         |0%       |       0|     79| 164|
|24 months |CONTENT    |PERU         |0%       |       1|      8| 164|
|24 months |EE         |PAKISTAN     |(0%, 5%] |       0|      3| 167|
|24 months |EE         |PAKISTAN     |(0%, 5%] |       1|      6| 167|
|24 months |EE         |PAKISTAN     |>5%      |       0|      0| 167|
|24 months |EE         |PAKISTAN     |>5%      |       1|      1| 167|
|24 months |EE         |PAKISTAN     |0%       |       0|     46| 167|
|24 months |EE         |PAKISTAN     |0%       |       1|    111| 167|
|24 months |MAL-ED     |INDIA        |(0%, 5%] |       0|     70| 227|
|24 months |MAL-ED     |INDIA        |(0%, 5%] |       1|     45| 227|
|24 months |MAL-ED     |INDIA        |>5%      |       0|     30| 227|
|24 months |MAL-ED     |INDIA        |>5%      |       1|     27| 227|
|24 months |MAL-ED     |INDIA        |0%       |       0|     30| 227|
|24 months |MAL-ED     |INDIA        |0%       |       1|     25| 227|
|24 months |MAL-ED     |BANGLADESH   |(0%, 5%] |       0|     40| 212|
|24 months |MAL-ED     |BANGLADESH   |(0%, 5%] |       1|     36| 212|
|24 months |MAL-ED     |BANGLADESH   |>5%      |       0|     26| 212|
|24 months |MAL-ED     |BANGLADESH   |>5%      |       1|     26| 212|
|24 months |MAL-ED     |BANGLADESH   |0%       |       0|     45| 212|
|24 months |MAL-ED     |BANGLADESH   |0%       |       1|     39| 212|
|24 months |MAL-ED     |PERU         |(0%, 5%] |       0|     40| 201|
|24 months |MAL-ED     |PERU         |(0%, 5%] |       1|     20| 201|
|24 months |MAL-ED     |PERU         |>5%      |       0|     57| 201|
|24 months |MAL-ED     |PERU         |>5%      |       1|     22| 201|
|24 months |MAL-ED     |PERU         |0%       |       0|     30| 201|
|24 months |MAL-ED     |PERU         |0%       |       1|     32| 201|
|24 months |MAL-ED     |NEPAL        |(0%, 5%] |       0|     46| 228|
|24 months |MAL-ED     |NEPAL        |(0%, 5%] |       1|     15| 228|
|24 months |MAL-ED     |NEPAL        |>5%      |       0|     60| 228|
|24 months |MAL-ED     |NEPAL        |>5%      |       1|     16| 228|
|24 months |MAL-ED     |NEPAL        |0%       |       0|     72| 228|
|24 months |MAL-ED     |NEPAL        |0%       |       1|     19| 228|
|24 months |MAL-ED     |BRAZIL       |(0%, 5%] |       0|     12| 169|
|24 months |MAL-ED     |BRAZIL       |(0%, 5%] |       1|      1| 169|
|24 months |MAL-ED     |BRAZIL       |>5%      |       0|      0| 169|
|24 months |MAL-ED     |BRAZIL       |>5%      |       1|      0| 169|
|24 months |MAL-ED     |BRAZIL       |0%       |       0|    150| 169|
|24 months |MAL-ED     |BRAZIL       |0%       |       1|      6| 169|
|24 months |MAL-ED     |TANZANIA     |(0%, 5%] |       0|     25| 214|
|24 months |MAL-ED     |TANZANIA     |(0%, 5%] |       1|     64| 214|
|24 months |MAL-ED     |TANZANIA     |>5%      |       0|     15| 214|
|24 months |MAL-ED     |TANZANIA     |>5%      |       1|     21| 214|
|24 months |MAL-ED     |TANZANIA     |0%       |       0|     19| 214|
|24 months |MAL-ED     |TANZANIA     |0%       |       1|     70| 214|
|24 months |MAL-ED     |SOUTH AFRICA |(0%, 5%] |       0|     29| 237|
|24 months |MAL-ED     |SOUTH AFRICA |(0%, 5%] |       1|     16| 237|
|24 months |MAL-ED     |SOUTH AFRICA |>5%      |       0|      2| 237|
|24 months |MAL-ED     |SOUTH AFRICA |>5%      |       1|      3| 237|
|24 months |MAL-ED     |SOUTH AFRICA |0%       |       0|    122| 237|
|24 months |MAL-ED     |SOUTH AFRICA |0%       |       1|     65| 237|
|24 months |NIH-Birth  |BANGLADESH   |(0%, 5%] |       0|     58| 426|
|24 months |NIH-Birth  |BANGLADESH   |(0%, 5%] |       1|     76| 426|
|24 months |NIH-Birth  |BANGLADESH   |>5%      |       0|     82| 426|
|24 months |NIH-Birth  |BANGLADESH   |>5%      |       1|    105| 426|
|24 months |NIH-Birth  |BANGLADESH   |0%       |       0|     45| 426|
|24 months |NIH-Birth  |BANGLADESH   |0%       |       1|     60| 426|
|24 months |NIH-Crypto |BANGLADESH   |(0%, 5%] |       0|     89| 514|
|24 months |NIH-Crypto |BANGLADESH   |(0%, 5%] |       1|     31| 514|
|24 months |NIH-Crypto |BANGLADESH   |>5%      |       0|     97| 514|
|24 months |NIH-Crypto |BANGLADESH   |>5%      |       1|     39| 514|
|24 months |NIH-Crypto |BANGLADESH   |0%       |       0|    196| 514|
|24 months |NIH-Crypto |BANGLADESH   |0%       |       1|     62| 514|
|24 months |PROVIDE    |BANGLADESH   |(0%, 5%] |       0|    160| 578|
|24 months |PROVIDE    |BANGLADESH   |(0%, 5%] |       1|     71| 578|
|24 months |PROVIDE    |BANGLADESH   |>5%      |       0|    116| 578|
|24 months |PROVIDE    |BANGLADESH   |>5%      |       1|     65| 578|
|24 months |PROVIDE    |BANGLADESH   |0%       |       0|    112| 578|
|24 months |PROVIDE    |BANGLADESH   |0%       |       1|     54| 578|


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
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


