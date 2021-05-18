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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid    |country      |hfoodsec             | wast_rec90d| n_cell|    n|
|:-----------|:----------|:------------|:--------------------|-----------:|------:|----:|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |           0|     36|  614|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |           1|     39|  614|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |           0|    198|  614|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |           1|    230|  614|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |           0|     47|  614|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |           1|     64|  614|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |           0|    549| 5228|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |           1|    370| 5228|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |           0|   1551| 5228|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |           1|   1025| 5228|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |           0|   1066| 5228|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |           1|    667| 5228|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |           0|    192| 2059|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |           1|     69| 2059|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |           0|    798| 2059|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |           1|    278| 2059|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |           0|    537| 2059|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |           1|    185| 2059|
|0-24 months |MAL-ED     |INDIA        |Food Insecure        |           0|      6|  166|
|0-24 months |MAL-ED     |INDIA        |Food Insecure        |           1|      4|  166|
|0-24 months |MAL-ED     |INDIA        |Food Secure          |           0|     59|  166|
|0-24 months |MAL-ED     |INDIA        |Food Secure          |           1|     91|  166|
|0-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |           0|      2|  166|
|0-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |           1|      4|  166|
|0-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |           0|      5|   86|
|0-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |           1|      6|   86|
|0-24 months |MAL-ED     |BANGLADESH   |Food Secure          |           0|     26|   86|
|0-24 months |MAL-ED     |BANGLADESH   |Food Secure          |           1|     46|   86|
|0-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |           0|      1|   86|
|0-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |           1|      2|   86|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |           0|      0|   19|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |           1|     11|   19|
|0-24 months |MAL-ED     |PERU         |Food Secure          |           0|      2|   19|
|0-24 months |MAL-ED     |PERU         |Food Secure          |           1|      2|   19|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |           0|      0|   19|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |           1|      4|   19|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |           0|      3|   64|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |           1|      9|   64|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |           0|     11|   64|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |           1|     34|   64|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |           0|      0|   64|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |           1|      7|   64|
|0-24 months |MAL-ED     |BRAZIL       |Food Insecure        |           0|      4|   15|
|0-24 months |MAL-ED     |BRAZIL       |Food Insecure        |           1|     11|   15|
|0-24 months |MAL-ED     |BRAZIL       |Food Secure          |           0|      0|   15|
|0-24 months |MAL-ED     |BRAZIL       |Food Secure          |           1|      0|   15|
|0-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |           0|      0|   15|
|0-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |           1|      0|   15|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |           0|      4|   67|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |           1|     23|   67|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |           0|      7|   67|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |           1|     25|   67|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |           0|      1|   67|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |           1|      7|   67|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |           0|     13|  421|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |           1|     17|  421|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |           0|     23|  421|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |           1|     24|  421|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |           0|    166|  421|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |           1|    178|  421|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |           0|     14|  310|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |           1|     15|  310|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |           0|     76|  310|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |           1|    125|  310|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |           0|     27|  310|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |           1|     53|  310|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |           0|     11|  249|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |           1|     18|  249|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Secure          |           0|     74|  249|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Secure          |           1|     98|  249|
|0-6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |           0|     14|  249|
|0-6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |           1|     34|  249|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |           0|    132| 2831|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |           1|    370| 2831|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |           0|    388| 2831|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |           1|   1025| 2831|
|0-6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |           0|    249| 2831|
|0-6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |           1|    667| 2831|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |           0|     37|  549|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |           1|     38|  549|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |           0|    132|  549|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |           1|    166|  549|
|0-6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |           0|     73|  549|
|0-6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |           1|    103|  549|
|0-6 months  |MAL-ED     |INDIA        |Food Insecure        |           0|      3|   79|
|0-6 months  |MAL-ED     |INDIA        |Food Insecure        |           1|      3|   79|
|0-6 months  |MAL-ED     |INDIA        |Food Secure          |           0|     21|   79|
|0-6 months  |MAL-ED     |INDIA        |Food Secure          |           1|     49|   79|
|0-6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |           0|      0|   79|
|0-6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |           1|      3|   79|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |           0|      1|   40|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |           1|      3|   40|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Secure          |           0|      8|   40|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Secure          |           1|     28|   40|
|0-6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |           0|      0|   40|
|0-6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |           1|      0|   40|
|0-6 months  |MAL-ED     |PERU         |Food Insecure        |           0|      0|    8|
|0-6 months  |MAL-ED     |PERU         |Food Insecure        |           1|      5|    8|
|0-6 months  |MAL-ED     |PERU         |Food Secure          |           0|      0|    8|
|0-6 months  |MAL-ED     |PERU         |Food Secure          |           1|      0|    8|
|0-6 months  |MAL-ED     |PERU         |Mildly Food Insecure |           0|      0|    8|
|0-6 months  |MAL-ED     |PERU         |Mildly Food Insecure |           1|      3|    8|
|0-6 months  |MAL-ED     |NEPAL        |Food Insecure        |           0|      2|   30|
|0-6 months  |MAL-ED     |NEPAL        |Food Insecure        |           1|      4|   30|
|0-6 months  |MAL-ED     |NEPAL        |Food Secure          |           0|      5|   30|
|0-6 months  |MAL-ED     |NEPAL        |Food Secure          |           1|     15|   30|
|0-6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |           0|      0|   30|
|0-6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |           1|      4|   30|
|0-6 months  |MAL-ED     |BRAZIL       |Food Insecure        |           0|      1|    8|
|0-6 months  |MAL-ED     |BRAZIL       |Food Insecure        |           1|      7|    8|
|0-6 months  |MAL-ED     |BRAZIL       |Food Secure          |           0|      0|    8|
|0-6 months  |MAL-ED     |BRAZIL       |Food Secure          |           1|      0|    8|
|0-6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |           0|      0|    8|
|0-6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |           1|      0|    8|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |           0|      2|   28|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |           1|      9|   28|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |           0|      4|   28|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |           1|      9|   28|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |           0|      0|   28|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |           1|      4|   28|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |           0|      4|  223|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |           1|     13|  223|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |           0|      7|  223|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |           1|     15|  223|
|0-6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |           0|     53|  223|
|0-6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |           1|    131|  223|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |           0|      2|  197|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |           1|     15|  197|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |           0|     13|  197|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |           1|    117|  197|
|0-6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |           0|      6|  197|
|0-6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |           1|     44|  197|
|6-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |           0|     25|  365|
|6-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |           1|     21|  365|
|6-24 months |GMS-Nepal  |NEPAL        |Food Secure          |           0|    124|  365|
|6-24 months |GMS-Nepal  |NEPAL        |Food Secure          |           1|    132|  365|
|6-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |           0|     33|  365|
|6-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |           1|     30|  365|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |           0|    417| 2397|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |           1|      0| 2397|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |           0|   1163| 2397|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |           1|      0| 2397|
|6-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |           0|    817| 2397|
|6-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |           1|      0| 2397|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |           0|    155| 1510|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |           1|     31| 1510|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |           0|    666| 1510|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |           1|    112| 1510|
|6-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |           0|    464| 1510|
|6-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |           1|     82| 1510|
|6-24 months |MAL-ED     |INDIA        |Food Insecure        |           0|      3|   87|
|6-24 months |MAL-ED     |INDIA        |Food Insecure        |           1|      1|   87|
|6-24 months |MAL-ED     |INDIA        |Food Secure          |           0|     38|   87|
|6-24 months |MAL-ED     |INDIA        |Food Secure          |           1|     42|   87|
|6-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |           0|      2|   87|
|6-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |           1|      1|   87|
|6-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |           0|      4|   46|
|6-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |           1|      3|   46|
|6-24 months |MAL-ED     |BANGLADESH   |Food Secure          |           0|     18|   46|
|6-24 months |MAL-ED     |BANGLADESH   |Food Secure          |           1|     18|   46|
|6-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |           0|      1|   46|
|6-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |           1|      2|   46|
|6-24 months |MAL-ED     |PERU         |Food Insecure        |           0|      0|   11|
|6-24 months |MAL-ED     |PERU         |Food Insecure        |           1|      6|   11|
|6-24 months |MAL-ED     |PERU         |Food Secure          |           0|      2|   11|
|6-24 months |MAL-ED     |PERU         |Food Secure          |           1|      2|   11|
|6-24 months |MAL-ED     |PERU         |Mildly Food Insecure |           0|      0|   11|
|6-24 months |MAL-ED     |PERU         |Mildly Food Insecure |           1|      1|   11|
|6-24 months |MAL-ED     |NEPAL        |Food Insecure        |           0|      1|   34|
|6-24 months |MAL-ED     |NEPAL        |Food Insecure        |           1|      5|   34|
|6-24 months |MAL-ED     |NEPAL        |Food Secure          |           0|      6|   34|
|6-24 months |MAL-ED     |NEPAL        |Food Secure          |           1|     19|   34|
|6-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |           0|      0|   34|
|6-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |           1|      3|   34|
|6-24 months |MAL-ED     |BRAZIL       |Food Insecure        |           0|      3|    7|
|6-24 months |MAL-ED     |BRAZIL       |Food Insecure        |           1|      4|    7|
|6-24 months |MAL-ED     |BRAZIL       |Food Secure          |           0|      0|    7|
|6-24 months |MAL-ED     |BRAZIL       |Food Secure          |           1|      0|    7|
|6-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |           0|      0|    7|
|6-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |           1|      0|    7|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |           0|      2|   39|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |           1|     14|   39|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |           0|      3|   39|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |           1|     16|   39|
|6-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |           0|      1|   39|
|6-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |           1|      3|   39|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |           0|      9|  198|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |           1|      4|  198|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |           0|     16|  198|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |           1|      9|  198|
|6-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |           0|    113|  198|
|6-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |           1|     47|  198|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |           0|     12|  113|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |           1|      0|  113|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |           0|     63|  113|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |           1|      8|  113|
|6-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |           0|     21|  113|
|6-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |           1|      9|  113|


The following strata were considered:

* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
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


