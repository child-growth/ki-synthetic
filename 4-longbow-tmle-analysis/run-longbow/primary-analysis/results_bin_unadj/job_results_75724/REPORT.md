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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid    |country      |hfoodsec             | pers_wast| n_cell|     n|
|:-----------|:----------|:------------|:--------------------|---------:|------:|-----:|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |         0|     68|   570|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |         1|     11|   570|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |         0|    338|   570|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |         1|     54|   570|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |         0|     90|   570|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |         1|      9|   570|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |         0|   2060| 13542|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |         1|    138| 13542|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |         0|   6469| 13542|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |         1|    370| 13542|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |         0|   4266| 13542|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |         1|    239| 13542|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |         0|    593|  5255|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |         1|     53|  5255|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |         0|   2596|  5255|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |         1|    230|  5255|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |         0|   1644|  5255|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |         1|    139|  5255|
|0-24 months |MAL-ED     |INDIA        |Food Insecure        |         0|     16|   217|
|0-24 months |MAL-ED     |INDIA        |Food Insecure        |         1|      2|   217|
|0-24 months |MAL-ED     |INDIA        |Food Secure          |         0|    179|   217|
|0-24 months |MAL-ED     |INDIA        |Food Secure          |         1|     17|   217|
|0-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |         0|      3|   217|
|0-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |         1|      0|   217|
|0-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |         0|     28|   172|
|0-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |         1|      1|   172|
|0-24 months |MAL-ED     |BANGLADESH   |Food Secure          |         0|    130|   172|
|0-24 months |MAL-ED     |BANGLADESH   |Food Secure          |         1|      8|   172|
|0-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |         0|      5|   172|
|0-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |         1|      0|   172|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |         0|    101|   146|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |         1|      0|   146|
|0-24 months |MAL-ED     |PERU         |Food Secure          |         0|     27|   146|
|0-24 months |MAL-ED     |PERU         |Food Secure          |         1|      1|   146|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |         0|     17|   146|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |         1|      0|   146|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |         0|     17|   125|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |         1|      1|   125|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |         0|     93|   125|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |         1|      2|   125|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |         0|     12|   125|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |         1|      0|   125|
|0-24 months |MAL-ED     |BRAZIL       |Food Insecure        |         0|     93|   102|
|0-24 months |MAL-ED     |BRAZIL       |Food Insecure        |         1|      2|   102|
|0-24 months |MAL-ED     |BRAZIL       |Food Secure          |         0|      2|   102|
|0-24 months |MAL-ED     |BRAZIL       |Food Secure          |         1|      0|   102|
|0-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |         0|      5|   102|
|0-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |         1|      0|   102|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |         0|     85|   229|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |         1|      1|   229|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |         0|    109|   229|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |         1|      1|   229|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |         0|     33|   229|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |         1|      0|   229|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |         0|     44|   534|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |         1|      2|   534|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |         0|     56|   534|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |         1|     11|   534|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |         0|    387|   534|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |         1|     34|   534|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |         0|     66|   730|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |         1|      3|   730|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |         0|    441|   730|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |         1|     16|   730|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |         0|    197|   730|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |         1|      7|   730|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |         0|     67|   542|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |         1|      6|   542|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Secure          |         0|    326|   542|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Secure          |         1|     48|   542|
|0-6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |         0|     89|   542|
|0-6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |         1|      6|   542|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |         0|      8|    43|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |         1|      0|    43|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |         0|     23|    43|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |         1|      1|    43|
|0-6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |         0|     10|    43|
|0-6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |         1|      1|    43|
|0-6 months  |MAL-ED     |INDIA        |Food Insecure        |         0|     16|   217|
|0-6 months  |MAL-ED     |INDIA        |Food Insecure        |         1|      2|   217|
|0-6 months  |MAL-ED     |INDIA        |Food Secure          |         0|    183|   217|
|0-6 months  |MAL-ED     |INDIA        |Food Secure          |         1|     13|   217|
|0-6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |         0|      2|   217|
|0-6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |         1|      1|   217|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |         0|     28|   172|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |         1|      1|   172|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Secure          |         0|    133|   172|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Secure          |         1|      5|   172|
|0-6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |         0|      5|   172|
|0-6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |         1|      0|   172|
|0-6 months  |MAL-ED     |PERU         |Food Insecure        |         0|    101|   146|
|0-6 months  |MAL-ED     |PERU         |Food Insecure        |         1|      0|   146|
|0-6 months  |MAL-ED     |PERU         |Food Secure          |         0|     28|   146|
|0-6 months  |MAL-ED     |PERU         |Food Secure          |         1|      0|   146|
|0-6 months  |MAL-ED     |PERU         |Mildly Food Insecure |         0|     17|   146|
|0-6 months  |MAL-ED     |PERU         |Mildly Food Insecure |         1|      0|   146|
|0-6 months  |MAL-ED     |NEPAL        |Food Insecure        |         0|     17|   125|
|0-6 months  |MAL-ED     |NEPAL        |Food Insecure        |         1|      1|   125|
|0-6 months  |MAL-ED     |NEPAL        |Food Secure          |         0|     91|   125|
|0-6 months  |MAL-ED     |NEPAL        |Food Secure          |         1|      4|   125|
|0-6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |         0|     12|   125|
|0-6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |         1|      0|   125|
|0-6 months  |MAL-ED     |BRAZIL       |Food Insecure        |         0|     94|   102|
|0-6 months  |MAL-ED     |BRAZIL       |Food Insecure        |         1|      1|   102|
|0-6 months  |MAL-ED     |BRAZIL       |Food Secure          |         0|      2|   102|
|0-6 months  |MAL-ED     |BRAZIL       |Food Secure          |         1|      0|   102|
|0-6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |         0|      5|   102|
|0-6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |         1|      0|   102|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |         0|     84|   228|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |         1|      2|   228|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |         0|    110|   228|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |         1|      0|   228|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |         0|     32|   228|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |         1|      0|   228|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |         0|     12|   169|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |         1|      1|   169|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |         0|     15|   169|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |         1|      2|   169|
|0-6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |         0|    131|   169|
|0-6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |         1|      8|   169|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |         0|     20|   250|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |         1|      0|   250|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |         0|    149|   250|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |         1|      4|   250|
|0-6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |         0|     76|   250|
|0-6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |         1|      1|   250|
|6-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |         0|     68|   570|
|6-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |         1|     11|   570|
|6-24 months |GMS-Nepal  |NEPAL        |Food Secure          |         0|    338|   570|
|6-24 months |GMS-Nepal  |NEPAL        |Food Secure          |         1|     54|   570|
|6-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |         0|     90|   570|
|6-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |         1|      9|   570|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |         0|   2060| 13542|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |         1|    138| 13542|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |         0|   6469| 13542|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |         1|    370| 13542|
|6-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |         0|   4266| 13542|
|6-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |         1|    239| 13542|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |         0|    593|  5255|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |         1|     53|  5255|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |         0|   2596|  5255|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |         1|    230|  5255|
|6-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |         0|   1644|  5255|
|6-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |         1|    139|  5255|
|6-24 months |MAL-ED     |INDIA        |Food Insecure        |         0|     16|   217|
|6-24 months |MAL-ED     |INDIA        |Food Insecure        |         1|      2|   217|
|6-24 months |MAL-ED     |INDIA        |Food Secure          |         0|    179|   217|
|6-24 months |MAL-ED     |INDIA        |Food Secure          |         1|     17|   217|
|6-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |         0|      3|   217|
|6-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |         1|      0|   217|
|6-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |         0|     28|   172|
|6-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |         1|      1|   172|
|6-24 months |MAL-ED     |BANGLADESH   |Food Secure          |         0|    130|   172|
|6-24 months |MAL-ED     |BANGLADESH   |Food Secure          |         1|      8|   172|
|6-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |         0|      5|   172|
|6-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |         1|      0|   172|
|6-24 months |MAL-ED     |PERU         |Food Insecure        |         0|    101|   146|
|6-24 months |MAL-ED     |PERU         |Food Insecure        |         1|      0|   146|
|6-24 months |MAL-ED     |PERU         |Food Secure          |         0|     27|   146|
|6-24 months |MAL-ED     |PERU         |Food Secure          |         1|      1|   146|
|6-24 months |MAL-ED     |PERU         |Mildly Food Insecure |         0|     17|   146|
|6-24 months |MAL-ED     |PERU         |Mildly Food Insecure |         1|      0|   146|
|6-24 months |MAL-ED     |NEPAL        |Food Insecure        |         0|     17|   125|
|6-24 months |MAL-ED     |NEPAL        |Food Insecure        |         1|      1|   125|
|6-24 months |MAL-ED     |NEPAL        |Food Secure          |         0|     93|   125|
|6-24 months |MAL-ED     |NEPAL        |Food Secure          |         1|      2|   125|
|6-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |         0|     12|   125|
|6-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |         1|      0|   125|
|6-24 months |MAL-ED     |BRAZIL       |Food Insecure        |         0|     93|   102|
|6-24 months |MAL-ED     |BRAZIL       |Food Insecure        |         1|      2|   102|
|6-24 months |MAL-ED     |BRAZIL       |Food Secure          |         0|      2|   102|
|6-24 months |MAL-ED     |BRAZIL       |Food Secure          |         1|      0|   102|
|6-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |         0|      5|   102|
|6-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |         1|      0|   102|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |         0|     85|   229|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |         1|      1|   229|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |         0|    109|   229|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |         1|      1|   229|
|6-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |         0|     33|   229|
|6-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |         1|      0|   229|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |         0|     44|   534|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |         1|      2|   534|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |         0|     56|   534|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |         1|     11|   534|
|6-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |         0|    387|   534|
|6-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |         1|     34|   534|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |         0|     66|   730|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |         1|      3|   730|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |         0|    441|   730|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |         1|     16|   730|
|6-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |         0|    197|   730|
|6-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |         1|      7|   730|


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
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
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


