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

**Outcome Variable:** wast_rec90d

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

|agecat      |studyid    |country      |perdiar6 | wast_rec90d| n_cell|   n|
|:-----------|:----------|:------------|:--------|-----------:|------:|---:|
|0-24 months |CMIN       |BANGLADESH   |(0%, 5%] |           0|     12| 190|
|0-24 months |CMIN       |BANGLADESH   |(0%, 5%] |           1|     21| 190|
|0-24 months |CMIN       |BANGLADESH   |>5%      |           0|     51| 190|
|0-24 months |CMIN       |BANGLADESH   |>5%      |           1|     46| 190|
|0-24 months |CMIN       |BANGLADESH   |0%       |           0|     17| 190|
|0-24 months |CMIN       |BANGLADESH   |0%       |           1|     43| 190|
|0-24 months |CONTENT    |PERU         |(0%, 5%] |           0|      0|   7|
|0-24 months |CONTENT    |PERU         |(0%, 5%] |           1|      0|   7|
|0-24 months |CONTENT    |PERU         |>5%      |           0|      1|   7|
|0-24 months |CONTENT    |PERU         |>5%      |           1|      2|   7|
|0-24 months |CONTENT    |PERU         |0%       |           0|      0|   7|
|0-24 months |CONTENT    |PERU         |0%       |           1|      4|   7|
|0-24 months |EE         |PAKISTAN     |(0%, 5%] |           0|      7| 323|
|0-24 months |EE         |PAKISTAN     |(0%, 5%] |           1|     14| 323|
|0-24 months |EE         |PAKISTAN     |>5%      |           0|      0| 323|
|0-24 months |EE         |PAKISTAN     |>5%      |           1|      2| 323|
|0-24 months |EE         |PAKISTAN     |0%       |           0|    153| 323|
|0-24 months |EE         |PAKISTAN     |0%       |           1|    147| 323|
|0-24 months |MAL-ED     |INDIA        |(0%, 5%] |           0|     38| 181|
|0-24 months |MAL-ED     |INDIA        |(0%, 5%] |           1|     50| 181|
|0-24 months |MAL-ED     |INDIA        |>5%      |           0|     23| 181|
|0-24 months |MAL-ED     |INDIA        |>5%      |           1|     28| 181|
|0-24 months |MAL-ED     |INDIA        |0%       |           0|     10| 181|
|0-24 months |MAL-ED     |INDIA        |0%       |           1|     32| 181|
|0-24 months |MAL-ED     |BANGLADESH   |(0%, 5%] |           0|     19| 124|
|0-24 months |MAL-ED     |BANGLADESH   |(0%, 5%] |           1|     30| 124|
|0-24 months |MAL-ED     |BANGLADESH   |>5%      |           0|      7| 124|
|0-24 months |MAL-ED     |BANGLADESH   |>5%      |           1|     15| 124|
|0-24 months |MAL-ED     |BANGLADESH   |0%       |           0|     18| 124|
|0-24 months |MAL-ED     |BANGLADESH   |0%       |           1|     35| 124|
|0-24 months |MAL-ED     |PERU         |(0%, 5%] |           0|      3|  35|
|0-24 months |MAL-ED     |PERU         |(0%, 5%] |           1|     12|  35|
|0-24 months |MAL-ED     |PERU         |>5%      |           0|      1|  35|
|0-24 months |MAL-ED     |PERU         |>5%      |           1|      8|  35|
|0-24 months |MAL-ED     |PERU         |0%       |           0|      2|  35|
|0-24 months |MAL-ED     |PERU         |0%       |           1|      9|  35|
|0-24 months |MAL-ED     |NEPAL        |(0%, 5%] |           0|      3|  98|
|0-24 months |MAL-ED     |NEPAL        |(0%, 5%] |           1|     11|  98|
|0-24 months |MAL-ED     |NEPAL        |>5%      |           0|      8|  98|
|0-24 months |MAL-ED     |NEPAL        |>5%      |           1|     28|  98|
|0-24 months |MAL-ED     |NEPAL        |0%       |           0|      9|  98|
|0-24 months |MAL-ED     |NEPAL        |0%       |           1|     39|  98|
|0-24 months |MAL-ED     |BRAZIL       |(0%, 5%] |           0|      2|  24|
|0-24 months |MAL-ED     |BRAZIL       |(0%, 5%] |           1|      0|  24|
|0-24 months |MAL-ED     |BRAZIL       |>5%      |           0|      0|  24|
|0-24 months |MAL-ED     |BRAZIL       |>5%      |           1|      0|  24|
|0-24 months |MAL-ED     |BRAZIL       |0%       |           0|      4|  24|
|0-24 months |MAL-ED     |BRAZIL       |0%       |           1|     18|  24|
|0-24 months |MAL-ED     |TANZANIA     |(0%, 5%] |           0|      3|  51|
|0-24 months |MAL-ED     |TANZANIA     |(0%, 5%] |           1|     19|  51|
|0-24 months |MAL-ED     |TANZANIA     |>5%      |           0|      0|  51|
|0-24 months |MAL-ED     |TANZANIA     |>5%      |           1|      7|  51|
|0-24 months |MAL-ED     |TANZANIA     |0%       |           0|      6|  51|
|0-24 months |MAL-ED     |TANZANIA     |0%       |           1|     16|  51|
|0-24 months |MAL-ED     |SOUTH AFRICA |(0%, 5%] |           0|      2|  87|
|0-24 months |MAL-ED     |SOUTH AFRICA |(0%, 5%] |           1|     12|  87|
|0-24 months |MAL-ED     |SOUTH AFRICA |>5%      |           0|      0|  87|
|0-24 months |MAL-ED     |SOUTH AFRICA |>5%      |           1|      0|  87|
|0-24 months |MAL-ED     |SOUTH AFRICA |0%       |           0|     16|  87|
|0-24 months |MAL-ED     |SOUTH AFRICA |0%       |           1|     57|  87|
|0-24 months |NIH-Birth  |BANGLADESH   |(0%, 5%] |           0|     54| 417|
|0-24 months |NIH-Birth  |BANGLADESH   |(0%, 5%] |           1|     78| 417|
|0-24 months |NIH-Birth  |BANGLADESH   |>5%      |           0|     95| 417|
|0-24 months |NIH-Birth  |BANGLADESH   |>5%      |           1|     86| 417|
|0-24 months |NIH-Birth  |BANGLADESH   |0%       |           0|     52| 417|
|0-24 months |NIH-Birth  |BANGLADESH   |0%       |           1|     52| 417|
|0-24 months |NIH-Crypto |BANGLADESH   |(0%, 5%] |           0|     35| 310|
|0-24 months |NIH-Crypto |BANGLADESH   |(0%, 5%] |           1|     45| 310|
|0-24 months |NIH-Crypto |BANGLADESH   |>5%      |           0|     29| 310|
|0-24 months |NIH-Crypto |BANGLADESH   |>5%      |           1|     47| 310|
|0-24 months |NIH-Crypto |BANGLADESH   |0%       |           0|     53| 310|
|0-24 months |NIH-Crypto |BANGLADESH   |0%       |           1|    101| 310|
|0-24 months |PROVIDE    |BANGLADESH   |(0%, 5%] |           0|     49| 308|
|0-24 months |PROVIDE    |BANGLADESH   |(0%, 5%] |           1|     75| 308|
|0-24 months |PROVIDE    |BANGLADESH   |>5%      |           0|     42| 308|
|0-24 months |PROVIDE    |BANGLADESH   |>5%      |           1|     54| 308|
|0-24 months |PROVIDE    |BANGLADESH   |0%       |           0|     38| 308|
|0-24 months |PROVIDE    |BANGLADESH   |0%       |           1|     50| 308|
|0-6 months  |CMIN       |BANGLADESH   |(0%, 5%] |           0|      4|  52|
|0-6 months  |CMIN       |BANGLADESH   |(0%, 5%] |           1|      4|  52|
|0-6 months  |CMIN       |BANGLADESH   |>5%      |           0|     15|  52|
|0-6 months  |CMIN       |BANGLADESH   |>5%      |           1|     11|  52|
|0-6 months  |CMIN       |BANGLADESH   |0%       |           0|      6|  52|
|0-6 months  |CMIN       |BANGLADESH   |0%       |           1|     12|  52|
|0-6 months  |CONTENT    |PERU         |(0%, 5%] |           0|      0|   4|
|0-6 months  |CONTENT    |PERU         |(0%, 5%] |           1|      0|   4|
|0-6 months  |CONTENT    |PERU         |>5%      |           0|      0|   4|
|0-6 months  |CONTENT    |PERU         |>5%      |           1|      1|   4|
|0-6 months  |CONTENT    |PERU         |0%       |           0|      0|   4|
|0-6 months  |CONTENT    |PERU         |0%       |           1|      3|   4|
|0-6 months  |EE         |PAKISTAN     |(0%, 5%] |           0|      3| 127|
|0-6 months  |EE         |PAKISTAN     |(0%, 5%] |           1|      6| 127|
|0-6 months  |EE         |PAKISTAN     |>5%      |           0|      0| 127|
|0-6 months  |EE         |PAKISTAN     |>5%      |           1|      1| 127|
|0-6 months  |EE         |PAKISTAN     |0%       |           0|     52| 127|
|0-6 months  |EE         |PAKISTAN     |0%       |           1|     65| 127|
|0-6 months  |MAL-ED     |INDIA        |(0%, 5%] |           0|     14|  86|
|0-6 months  |MAL-ED     |INDIA        |(0%, 5%] |           1|     31|  86|
|0-6 months  |MAL-ED     |INDIA        |>5%      |           0|      7|  86|
|0-6 months  |MAL-ED     |INDIA        |>5%      |           1|     14|  86|
|0-6 months  |MAL-ED     |INDIA        |0%       |           0|      6|  86|
|0-6 months  |MAL-ED     |INDIA        |0%       |           1|     14|  86|
|0-6 months  |MAL-ED     |BANGLADESH   |(0%, 5%] |           0|      7|  63|
|0-6 months  |MAL-ED     |BANGLADESH   |(0%, 5%] |           1|     22|  63|
|0-6 months  |MAL-ED     |BANGLADESH   |>5%      |           0|      2|  63|
|0-6 months  |MAL-ED     |BANGLADESH   |>5%      |           1|      7|  63|
|0-6 months  |MAL-ED     |BANGLADESH   |0%       |           0|      4|  63|
|0-6 months  |MAL-ED     |BANGLADESH   |0%       |           1|     21|  63|
|0-6 months  |MAL-ED     |PERU         |(0%, 5%] |           0|      0|  11|
|0-6 months  |MAL-ED     |PERU         |(0%, 5%] |           1|      3|  11|
|0-6 months  |MAL-ED     |PERU         |>5%      |           0|      0|  11|
|0-6 months  |MAL-ED     |PERU         |>5%      |           1|      6|  11|
|0-6 months  |MAL-ED     |PERU         |0%       |           0|      0|  11|
|0-6 months  |MAL-ED     |PERU         |0%       |           1|      2|  11|
|0-6 months  |MAL-ED     |NEPAL        |(0%, 5%] |           0|      1|  48|
|0-6 months  |MAL-ED     |NEPAL        |(0%, 5%] |           1|      9|  48|
|0-6 months  |MAL-ED     |NEPAL        |>5%      |           0|      4|  48|
|0-6 months  |MAL-ED     |NEPAL        |>5%      |           1|     11|  48|
|0-6 months  |MAL-ED     |NEPAL        |0%       |           0|      4|  48|
|0-6 months  |MAL-ED     |NEPAL        |0%       |           1|     19|  48|
|0-6 months  |MAL-ED     |BRAZIL       |(0%, 5%] |           0|      0|  15|
|0-6 months  |MAL-ED     |BRAZIL       |(0%, 5%] |           1|      0|  15|
|0-6 months  |MAL-ED     |BRAZIL       |>5%      |           0|      0|  15|
|0-6 months  |MAL-ED     |BRAZIL       |>5%      |           1|      0|  15|
|0-6 months  |MAL-ED     |BRAZIL       |0%       |           0|      1|  15|
|0-6 months  |MAL-ED     |BRAZIL       |0%       |           1|     14|  15|
|0-6 months  |MAL-ED     |TANZANIA     |(0%, 5%] |           0|      0|  14|
|0-6 months  |MAL-ED     |TANZANIA     |(0%, 5%] |           1|      9|  14|
|0-6 months  |MAL-ED     |TANZANIA     |>5%      |           0|      0|  14|
|0-6 months  |MAL-ED     |TANZANIA     |>5%      |           1|      3|  14|
|0-6 months  |MAL-ED     |TANZANIA     |0%       |           0|      1|  14|
|0-6 months  |MAL-ED     |TANZANIA     |0%       |           1|      1|  14|
|0-6 months  |MAL-ED     |SOUTH AFRICA |(0%, 5%] |           0|      1|  36|
|0-6 months  |MAL-ED     |SOUTH AFRICA |(0%, 5%] |           1|      6|  36|
|0-6 months  |MAL-ED     |SOUTH AFRICA |>5%      |           0|      0|  36|
|0-6 months  |MAL-ED     |SOUTH AFRICA |>5%      |           1|      0|  36|
|0-6 months  |MAL-ED     |SOUTH AFRICA |0%       |           0|      8|  36|
|0-6 months  |MAL-ED     |SOUTH AFRICA |0%       |           1|     21|  36|
|0-6 months  |NIH-Birth  |BANGLADESH   |(0%, 5%] |           0|     15| 220|
|0-6 months  |NIH-Birth  |BANGLADESH   |(0%, 5%] |           1|     57| 220|
|0-6 months  |NIH-Birth  |BANGLADESH   |>5%      |           0|     29| 220|
|0-6 months  |NIH-Birth  |BANGLADESH   |>5%      |           1|     61| 220|
|0-6 months  |NIH-Birth  |BANGLADESH   |0%       |           0|     20| 220|
|0-6 months  |NIH-Birth  |BANGLADESH   |0%       |           1|     38| 220|
|0-6 months  |NIH-Crypto |BANGLADESH   |(0%, 5%] |           0|      6| 197|
|0-6 months  |NIH-Crypto |BANGLADESH   |(0%, 5%] |           1|     40| 197|
|0-6 months  |NIH-Crypto |BANGLADESH   |>5%      |           0|      3| 197|
|0-6 months  |NIH-Crypto |BANGLADESH   |>5%      |           1|     44| 197|
|0-6 months  |NIH-Crypto |BANGLADESH   |0%       |           0|     12| 197|
|0-6 months  |NIH-Crypto |BANGLADESH   |0%       |           1|     92| 197|
|0-6 months  |PROVIDE    |BANGLADESH   |(0%, 5%] |           0|     15| 185|
|0-6 months  |PROVIDE    |BANGLADESH   |(0%, 5%] |           1|     63| 185|
|0-6 months  |PROVIDE    |BANGLADESH   |>5%      |           0|     13| 185|
|0-6 months  |PROVIDE    |BANGLADESH   |>5%      |           1|     45| 185|
|0-6 months  |PROVIDE    |BANGLADESH   |0%       |           0|     12| 185|
|0-6 months  |PROVIDE    |BANGLADESH   |0%       |           1|     37| 185|
|6-24 months |CMIN       |BANGLADESH   |(0%, 5%] |           0|      8| 138|
|6-24 months |CMIN       |BANGLADESH   |(0%, 5%] |           1|     17| 138|
|6-24 months |CMIN       |BANGLADESH   |>5%      |           0|     36| 138|
|6-24 months |CMIN       |BANGLADESH   |>5%      |           1|     35| 138|
|6-24 months |CMIN       |BANGLADESH   |0%       |           0|     11| 138|
|6-24 months |CMIN       |BANGLADESH   |0%       |           1|     31| 138|
|6-24 months |CONTENT    |PERU         |(0%, 5%] |           0|      0|   3|
|6-24 months |CONTENT    |PERU         |(0%, 5%] |           1|      0|   3|
|6-24 months |CONTENT    |PERU         |>5%      |           0|      1|   3|
|6-24 months |CONTENT    |PERU         |>5%      |           1|      1|   3|
|6-24 months |CONTENT    |PERU         |0%       |           0|      0|   3|
|6-24 months |CONTENT    |PERU         |0%       |           1|      1|   3|
|6-24 months |EE         |PAKISTAN     |(0%, 5%] |           0|      4| 196|
|6-24 months |EE         |PAKISTAN     |(0%, 5%] |           1|      8| 196|
|6-24 months |EE         |PAKISTAN     |>5%      |           0|      0| 196|
|6-24 months |EE         |PAKISTAN     |>5%      |           1|      1| 196|
|6-24 months |EE         |PAKISTAN     |0%       |           0|    101| 196|
|6-24 months |EE         |PAKISTAN     |0%       |           1|     82| 196|
|6-24 months |MAL-ED     |INDIA        |(0%, 5%] |           0|     24|  95|
|6-24 months |MAL-ED     |INDIA        |(0%, 5%] |           1|     19|  95|
|6-24 months |MAL-ED     |INDIA        |>5%      |           0|     16|  95|
|6-24 months |MAL-ED     |INDIA        |>5%      |           1|     14|  95|
|6-24 months |MAL-ED     |INDIA        |0%       |           0|      4|  95|
|6-24 months |MAL-ED     |INDIA        |0%       |           1|     18|  95|
|6-24 months |MAL-ED     |BANGLADESH   |(0%, 5%] |           0|     12|  61|
|6-24 months |MAL-ED     |BANGLADESH   |(0%, 5%] |           1|      8|  61|
|6-24 months |MAL-ED     |BANGLADESH   |>5%      |           0|      5|  61|
|6-24 months |MAL-ED     |BANGLADESH   |>5%      |           1|      8|  61|
|6-24 months |MAL-ED     |BANGLADESH   |0%       |           0|     14|  61|
|6-24 months |MAL-ED     |BANGLADESH   |0%       |           1|     14|  61|
|6-24 months |MAL-ED     |PERU         |(0%, 5%] |           0|      3|  24|
|6-24 months |MAL-ED     |PERU         |(0%, 5%] |           1|      9|  24|
|6-24 months |MAL-ED     |PERU         |>5%      |           0|      1|  24|
|6-24 months |MAL-ED     |PERU         |>5%      |           1|      2|  24|
|6-24 months |MAL-ED     |PERU         |0%       |           0|      2|  24|
|6-24 months |MAL-ED     |PERU         |0%       |           1|      7|  24|
|6-24 months |MAL-ED     |NEPAL        |(0%, 5%] |           0|      2|  50|
|6-24 months |MAL-ED     |NEPAL        |(0%, 5%] |           1|      2|  50|
|6-24 months |MAL-ED     |NEPAL        |>5%      |           0|      4|  50|
|6-24 months |MAL-ED     |NEPAL        |>5%      |           1|     17|  50|
|6-24 months |MAL-ED     |NEPAL        |0%       |           0|      5|  50|
|6-24 months |MAL-ED     |NEPAL        |0%       |           1|     20|  50|
|6-24 months |MAL-ED     |BRAZIL       |(0%, 5%] |           0|      2|   9|
|6-24 months |MAL-ED     |BRAZIL       |(0%, 5%] |           1|      0|   9|
|6-24 months |MAL-ED     |BRAZIL       |>5%      |           0|      0|   9|
|6-24 months |MAL-ED     |BRAZIL       |>5%      |           1|      0|   9|
|6-24 months |MAL-ED     |BRAZIL       |0%       |           0|      3|   9|
|6-24 months |MAL-ED     |BRAZIL       |0%       |           1|      4|   9|
|6-24 months |MAL-ED     |TANZANIA     |(0%, 5%] |           0|      3|  37|
|6-24 months |MAL-ED     |TANZANIA     |(0%, 5%] |           1|     10|  37|
|6-24 months |MAL-ED     |TANZANIA     |>5%      |           0|      0|  37|
|6-24 months |MAL-ED     |TANZANIA     |>5%      |           1|      4|  37|
|6-24 months |MAL-ED     |TANZANIA     |0%       |           0|      5|  37|
|6-24 months |MAL-ED     |TANZANIA     |0%       |           1|     15|  37|
|6-24 months |MAL-ED     |SOUTH AFRICA |(0%, 5%] |           0|      1|  51|
|6-24 months |MAL-ED     |SOUTH AFRICA |(0%, 5%] |           1|      6|  51|
|6-24 months |MAL-ED     |SOUTH AFRICA |>5%      |           0|      0|  51|
|6-24 months |MAL-ED     |SOUTH AFRICA |>5%      |           1|      0|  51|
|6-24 months |MAL-ED     |SOUTH AFRICA |0%       |           0|      8|  51|
|6-24 months |MAL-ED     |SOUTH AFRICA |0%       |           1|     36|  51|
|6-24 months |NIH-Birth  |BANGLADESH   |(0%, 5%] |           0|     39| 197|
|6-24 months |NIH-Birth  |BANGLADESH   |(0%, 5%] |           1|     21| 197|
|6-24 months |NIH-Birth  |BANGLADESH   |>5%      |           0|     66| 197|
|6-24 months |NIH-Birth  |BANGLADESH   |>5%      |           1|     25| 197|
|6-24 months |NIH-Birth  |BANGLADESH   |0%       |           0|     32| 197|
|6-24 months |NIH-Birth  |BANGLADESH   |0%       |           1|     14| 197|
|6-24 months |NIH-Crypto |BANGLADESH   |(0%, 5%] |           0|     29| 113|
|6-24 months |NIH-Crypto |BANGLADESH   |(0%, 5%] |           1|      5| 113|
|6-24 months |NIH-Crypto |BANGLADESH   |>5%      |           0|     26| 113|
|6-24 months |NIH-Crypto |BANGLADESH   |>5%      |           1|      3| 113|
|6-24 months |NIH-Crypto |BANGLADESH   |0%       |           0|     41| 113|
|6-24 months |NIH-Crypto |BANGLADESH   |0%       |           1|      9| 113|
|6-24 months |PROVIDE    |BANGLADESH   |(0%, 5%] |           0|     34| 123|
|6-24 months |PROVIDE    |BANGLADESH   |(0%, 5%] |           1|     12| 123|
|6-24 months |PROVIDE    |BANGLADESH   |>5%      |           0|     29| 123|
|6-24 months |PROVIDE    |BANGLADESH   |>5%      |           1|      9| 123|
|6-24 months |PROVIDE    |BANGLADESH   |0%       |           0|     26| 123|
|6-24 months |PROVIDE    |BANGLADESH   |0%       |           1|     13| 123|


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

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


