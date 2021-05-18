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

**Intervention Variable:** impsan

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid    |country      |impsan | wast_rec90d| n_cell|    n|
|:-----------|:----------|:------------|:------|-----------:|------:|----:|
|0-24 months |COHORTS    |INDIA        |1      |           0|    713| 2115|
|0-24 months |COHORTS    |INDIA        |1      |           1|    210| 2115|
|0-24 months |COHORTS    |INDIA        |0      |           0|    881| 2115|
|0-24 months |COHORTS    |INDIA        |0      |           1|    311| 2115|
|0-24 months |COHORTS    |GUATEMALA    |1      |           0|     12|  265|
|0-24 months |COHORTS    |GUATEMALA    |1      |           1|     12|  265|
|0-24 months |COHORTS    |GUATEMALA    |0      |           0|    129|  265|
|0-24 months |COHORTS    |GUATEMALA    |0      |           1|    112|  265|
|0-24 months |COHORTS    |PHILIPPINES  |1      |           0|     38|  761|
|0-24 months |COHORTS    |PHILIPPINES  |1      |           1|     74|  761|
|0-24 months |COHORTS    |PHILIPPINES  |0      |           0|    267|  761|
|0-24 months |COHORTS    |PHILIPPINES  |0      |           1|    382|  761|
|0-24 months |CONTENT    |PERU         |1      |           0|      1|    7|
|0-24 months |CONTENT    |PERU         |1      |           1|      6|    7|
|0-24 months |CONTENT    |PERU         |0      |           0|      0|    7|
|0-24 months |CONTENT    |PERU         |0      |           1|      0|    7|
|0-24 months |JiVitA-3   |BANGLADESH   |1      |           0|   3015| 7565|
|0-24 months |JiVitA-3   |BANGLADESH   |1      |           1|   2228| 7565|
|0-24 months |JiVitA-3   |BANGLADESH   |0      |           0|   1356| 7565|
|0-24 months |JiVitA-3   |BANGLADESH   |0      |           1|    966| 7565|
|0-24 months |JiVitA-4   |BANGLADESH   |1      |           0|   1169| 2068|
|0-24 months |JiVitA-4   |BANGLADESH   |1      |           1|    418| 2068|
|0-24 months |JiVitA-4   |BANGLADESH   |0      |           0|    365| 2068|
|0-24 months |JiVitA-4   |BANGLADESH   |0      |           1|    116| 2068|
|0-24 months |LCNI-5     |MALAWI       |1      |           0|      0|   78|
|0-24 months |LCNI-5     |MALAWI       |1      |           1|      0|   78|
|0-24 months |LCNI-5     |MALAWI       |0      |           0|     65|   78|
|0-24 months |LCNI-5     |MALAWI       |0      |           1|     13|   78|
|0-24 months |MAL-ED     |INDIA        |1      |           0|     37|  173|
|0-24 months |MAL-ED     |INDIA        |1      |           1|     53|  173|
|0-24 months |MAL-ED     |INDIA        |0      |           0|     30|  173|
|0-24 months |MAL-ED     |INDIA        |0      |           1|     53|  173|
|0-24 months |MAL-ED     |BANGLADESH   |1      |           0|     35|  114|
|0-24 months |MAL-ED     |BANGLADESH   |1      |           1|     64|  114|
|0-24 months |MAL-ED     |BANGLADESH   |0      |           0|      6|  114|
|0-24 months |MAL-ED     |BANGLADESH   |0      |           1|      9|  114|
|0-24 months |MAL-ED     |PERU         |1      |           0|      1|   30|
|0-24 months |MAL-ED     |PERU         |1      |           1|      6|   30|
|0-24 months |MAL-ED     |PERU         |0      |           0|      4|   30|
|0-24 months |MAL-ED     |PERU         |0      |           1|     19|   30|
|0-24 months |MAL-ED     |NEPAL        |1      |           0|     20|   98|
|0-24 months |MAL-ED     |NEPAL        |1      |           1|     78|   98|
|0-24 months |MAL-ED     |NEPAL        |0      |           0|      0|   98|
|0-24 months |MAL-ED     |NEPAL        |0      |           1|      0|   98|
|0-24 months |MAL-ED     |BRAZIL       |1      |           0|      4|   21|
|0-24 months |MAL-ED     |BRAZIL       |1      |           1|     16|   21|
|0-24 months |MAL-ED     |BRAZIL       |0      |           0|      0|   21|
|0-24 months |MAL-ED     |BRAZIL       |0      |           1|      1|   21|
|0-24 months |MAL-ED     |TANZANIA     |1      |           0|      0|   51|
|0-24 months |MAL-ED     |TANZANIA     |1      |           1|      0|   51|
|0-24 months |MAL-ED     |TANZANIA     |0      |           0|      9|   51|
|0-24 months |MAL-ED     |TANZANIA     |0      |           1|     42|   51|
|0-24 months |MAL-ED     |SOUTH AFRICA |1      |           0|      0|   75|
|0-24 months |MAL-ED     |SOUTH AFRICA |1      |           1|      2|   75|
|0-24 months |MAL-ED     |SOUTH AFRICA |0      |           0|     13|   75|
|0-24 months |MAL-ED     |SOUTH AFRICA |0      |           1|     60|   75|
|0-24 months |NIH-Birth  |BANGLADESH   |1      |           0|     76|  421|
|0-24 months |NIH-Birth  |BANGLADESH   |1      |           1|     81|  421|
|0-24 months |NIH-Birth  |BANGLADESH   |0      |           0|    126|  421|
|0-24 months |NIH-Birth  |BANGLADESH   |0      |           1|    138|  421|
|0-24 months |NIH-Crypto |BANGLADESH   |1      |           0|     95|  305|
|0-24 months |NIH-Crypto |BANGLADESH   |1      |           1|    165|  305|
|0-24 months |NIH-Crypto |BANGLADESH   |0      |           0|     21|  305|
|0-24 months |NIH-Crypto |BANGLADESH   |0      |           1|     24|  305|
|0-24 months |PROVIDE    |BANGLADESH   |1      |           0|     15|   32|
|0-24 months |PROVIDE    |BANGLADESH   |1      |           1|     17|   32|
|0-24 months |PROVIDE    |BANGLADESH   |0      |           0|      0|   32|
|0-24 months |PROVIDE    |BANGLADESH   |0      |           1|      0|   32|
|0-6 months  |COHORTS    |INDIA        |1      |           0|    391| 1425|
|0-6 months  |COHORTS    |INDIA        |1      |           1|    210| 1425|
|0-6 months  |COHORTS    |INDIA        |0      |           0|    513| 1425|
|0-6 months  |COHORTS    |INDIA        |0      |           1|    311| 1425|
|0-6 months  |COHORTS    |GUATEMALA    |1      |           0|      2|  155|
|0-6 months  |COHORTS    |GUATEMALA    |1      |           1|     11|  155|
|0-6 months  |COHORTS    |GUATEMALA    |0      |           0|     36|  155|
|0-6 months  |COHORTS    |GUATEMALA    |0      |           1|    106|  155|
|0-6 months  |COHORTS    |PHILIPPINES  |1      |           0|     12|  316|
|0-6 months  |COHORTS    |PHILIPPINES  |1      |           1|     44|  316|
|0-6 months  |COHORTS    |PHILIPPINES  |0      |           0|     73|  316|
|0-6 months  |COHORTS    |PHILIPPINES  |0      |           1|    187|  316|
|0-6 months  |CONTENT    |PERU         |1      |           0|      0|    4|
|0-6 months  |CONTENT    |PERU         |1      |           1|      4|    4|
|0-6 months  |CONTENT    |PERU         |0      |           0|      0|    4|
|0-6 months  |CONTENT    |PERU         |0      |           1|      0|    4|
|0-6 months  |JiVitA-3   |BANGLADESH   |1      |           0|   1031| 4730|
|0-6 months  |JiVitA-3   |BANGLADESH   |1      |           1|   2228| 4730|
|0-6 months  |JiVitA-3   |BANGLADESH   |0      |           0|    505| 4730|
|0-6 months  |JiVitA-3   |BANGLADESH   |0      |           1|    966| 4730|
|0-6 months  |JiVitA-4   |BANGLADESH   |1      |           0|    182|  553|
|0-6 months  |JiVitA-4   |BANGLADESH   |1      |           1|    244|  553|
|0-6 months  |JiVitA-4   |BANGLADESH   |0      |           0|     62|  553|
|0-6 months  |JiVitA-4   |BANGLADESH   |0      |           1|     65|  553|
|0-6 months  |LCNI-5     |MALAWI       |1      |           0|      0|    4|
|0-6 months  |LCNI-5     |MALAWI       |1      |           1|      0|    4|
|0-6 months  |LCNI-5     |MALAWI       |0      |           0|      4|    4|
|0-6 months  |LCNI-5     |MALAWI       |0      |           1|      0|    4|
|0-6 months  |MAL-ED     |INDIA        |1      |           0|     10|   80|
|0-6 months  |MAL-ED     |INDIA        |1      |           1|     29|   80|
|0-6 months  |MAL-ED     |INDIA        |0      |           0|     14|   80|
|0-6 months  |MAL-ED     |INDIA        |0      |           1|     27|   80|
|0-6 months  |MAL-ED     |BANGLADESH   |1      |           0|      8|   57|
|0-6 months  |MAL-ED     |BANGLADESH   |1      |           1|     40|   57|
|0-6 months  |MAL-ED     |BANGLADESH   |0      |           0|      3|   57|
|0-6 months  |MAL-ED     |BANGLADESH   |0      |           1|      6|   57|
|0-6 months  |MAL-ED     |PERU         |1      |           0|      0|    9|
|0-6 months  |MAL-ED     |PERU         |1      |           1|      3|    9|
|0-6 months  |MAL-ED     |PERU         |0      |           0|      0|    9|
|0-6 months  |MAL-ED     |PERU         |0      |           1|      6|    9|
|0-6 months  |MAL-ED     |NEPAL        |1      |           0|      9|   48|
|0-6 months  |MAL-ED     |NEPAL        |1      |           1|     39|   48|
|0-6 months  |MAL-ED     |NEPAL        |0      |           0|      0|   48|
|0-6 months  |MAL-ED     |NEPAL        |0      |           1|      0|   48|
|0-6 months  |MAL-ED     |BRAZIL       |1      |           0|      1|   14|
|0-6 months  |MAL-ED     |BRAZIL       |1      |           1|     12|   14|
|0-6 months  |MAL-ED     |BRAZIL       |0      |           0|      0|   14|
|0-6 months  |MAL-ED     |BRAZIL       |0      |           1|      1|   14|
|0-6 months  |MAL-ED     |TANZANIA     |1      |           0|      0|   14|
|0-6 months  |MAL-ED     |TANZANIA     |1      |           1|      0|   14|
|0-6 months  |MAL-ED     |TANZANIA     |0      |           0|      1|   14|
|0-6 months  |MAL-ED     |TANZANIA     |0      |           1|     13|   14|
|0-6 months  |MAL-ED     |SOUTH AFRICA |1      |           0|      0|   30|
|0-6 months  |MAL-ED     |SOUTH AFRICA |1      |           1|      1|   30|
|0-6 months  |MAL-ED     |SOUTH AFRICA |0      |           0|      6|   30|
|0-6 months  |MAL-ED     |SOUTH AFRICA |0      |           1|     23|   30|
|0-6 months  |NIH-Birth  |BANGLADESH   |1      |           0|     18|  223|
|0-6 months  |NIH-Birth  |BANGLADESH   |1      |           1|     58|  223|
|0-6 months  |NIH-Birth  |BANGLADESH   |0      |           0|     46|  223|
|0-6 months  |NIH-Birth  |BANGLADESH   |0      |           1|    101|  223|
|0-6 months  |NIH-Crypto |BANGLADESH   |1      |           0|     19|  194|
|0-6 months  |NIH-Crypto |BANGLADESH   |1      |           1|    152|  194|
|0-6 months  |NIH-Crypto |BANGLADESH   |0      |           0|      2|  194|
|0-6 months  |NIH-Crypto |BANGLADESH   |0      |           1|     21|  194|
|0-6 months  |PROVIDE    |BANGLADESH   |1      |           0|      4|   16|
|0-6 months  |PROVIDE    |BANGLADESH   |1      |           1|     12|   16|
|0-6 months  |PROVIDE    |BANGLADESH   |0      |           0|      0|   16|
|0-6 months  |PROVIDE    |BANGLADESH   |0      |           1|      0|   16|
|6-24 months |COHORTS    |INDIA        |1      |           0|    322|  690|
|6-24 months |COHORTS    |INDIA        |1      |           1|      0|  690|
|6-24 months |COHORTS    |INDIA        |0      |           0|    368|  690|
|6-24 months |COHORTS    |INDIA        |0      |           1|      0|  690|
|6-24 months |COHORTS    |GUATEMALA    |1      |           0|     10|  110|
|6-24 months |COHORTS    |GUATEMALA    |1      |           1|      1|  110|
|6-24 months |COHORTS    |GUATEMALA    |0      |           0|     93|  110|
|6-24 months |COHORTS    |GUATEMALA    |0      |           1|      6|  110|
|6-24 months |COHORTS    |PHILIPPINES  |1      |           0|     26|  445|
|6-24 months |COHORTS    |PHILIPPINES  |1      |           1|     30|  445|
|6-24 months |COHORTS    |PHILIPPINES  |0      |           0|    194|  445|
|6-24 months |COHORTS    |PHILIPPINES  |0      |           1|    195|  445|
|6-24 months |CONTENT    |PERU         |1      |           0|      1|    3|
|6-24 months |CONTENT    |PERU         |1      |           1|      2|    3|
|6-24 months |CONTENT    |PERU         |0      |           0|      0|    3|
|6-24 months |CONTENT    |PERU         |0      |           1|      0|    3|
|6-24 months |JiVitA-3   |BANGLADESH   |1      |           0|   1984| 2835|
|6-24 months |JiVitA-3   |BANGLADESH   |1      |           1|      0| 2835|
|6-24 months |JiVitA-3   |BANGLADESH   |0      |           0|    851| 2835|
|6-24 months |JiVitA-3   |BANGLADESH   |0      |           1|      0| 2835|
|6-24 months |JiVitA-4   |BANGLADESH   |1      |           0|    987| 1515|
|6-24 months |JiVitA-4   |BANGLADESH   |1      |           1|    174| 1515|
|6-24 months |JiVitA-4   |BANGLADESH   |0      |           0|    303| 1515|
|6-24 months |JiVitA-4   |BANGLADESH   |0      |           1|     51| 1515|
|6-24 months |LCNI-5     |MALAWI       |1      |           0|      0|   74|
|6-24 months |LCNI-5     |MALAWI       |1      |           1|      0|   74|
|6-24 months |LCNI-5     |MALAWI       |0      |           0|     61|   74|
|6-24 months |LCNI-5     |MALAWI       |0      |           1|     13|   74|
|6-24 months |MAL-ED     |INDIA        |1      |           0|     27|   93|
|6-24 months |MAL-ED     |INDIA        |1      |           1|     24|   93|
|6-24 months |MAL-ED     |INDIA        |0      |           0|     16|   93|
|6-24 months |MAL-ED     |INDIA        |0      |           1|     26|   93|
|6-24 months |MAL-ED     |BANGLADESH   |1      |           0|     27|   57|
|6-24 months |MAL-ED     |BANGLADESH   |1      |           1|     24|   57|
|6-24 months |MAL-ED     |BANGLADESH   |0      |           0|      3|   57|
|6-24 months |MAL-ED     |BANGLADESH   |0      |           1|      3|   57|
|6-24 months |MAL-ED     |PERU         |1      |           0|      1|   21|
|6-24 months |MAL-ED     |PERU         |1      |           1|      3|   21|
|6-24 months |MAL-ED     |PERU         |0      |           0|      4|   21|
|6-24 months |MAL-ED     |PERU         |0      |           1|     13|   21|
|6-24 months |MAL-ED     |NEPAL        |1      |           0|     11|   50|
|6-24 months |MAL-ED     |NEPAL        |1      |           1|     39|   50|
|6-24 months |MAL-ED     |NEPAL        |0      |           0|      0|   50|
|6-24 months |MAL-ED     |NEPAL        |0      |           1|      0|   50|
|6-24 months |MAL-ED     |BRAZIL       |1      |           0|      3|    7|
|6-24 months |MAL-ED     |BRAZIL       |1      |           1|      4|    7|
|6-24 months |MAL-ED     |BRAZIL       |0      |           0|      0|    7|
|6-24 months |MAL-ED     |BRAZIL       |0      |           1|      0|    7|
|6-24 months |MAL-ED     |TANZANIA     |1      |           0|      0|   37|
|6-24 months |MAL-ED     |TANZANIA     |1      |           1|      0|   37|
|6-24 months |MAL-ED     |TANZANIA     |0      |           0|      8|   37|
|6-24 months |MAL-ED     |TANZANIA     |0      |           1|     29|   37|
|6-24 months |MAL-ED     |SOUTH AFRICA |1      |           0|      0|   45|
|6-24 months |MAL-ED     |SOUTH AFRICA |1      |           1|      1|   45|
|6-24 months |MAL-ED     |SOUTH AFRICA |0      |           0|      7|   45|
|6-24 months |MAL-ED     |SOUTH AFRICA |0      |           1|     37|   45|
|6-24 months |NIH-Birth  |BANGLADESH   |1      |           0|     58|  198|
|6-24 months |NIH-Birth  |BANGLADESH   |1      |           1|     23|  198|
|6-24 months |NIH-Birth  |BANGLADESH   |0      |           0|     80|  198|
|6-24 months |NIH-Birth  |BANGLADESH   |0      |           1|     37|  198|
|6-24 months |NIH-Crypto |BANGLADESH   |1      |           0|     76|  111|
|6-24 months |NIH-Crypto |BANGLADESH   |1      |           1|     13|  111|
|6-24 months |NIH-Crypto |BANGLADESH   |0      |           0|     19|  111|
|6-24 months |NIH-Crypto |BANGLADESH   |0      |           1|      3|  111|
|6-24 months |PROVIDE    |BANGLADESH   |1      |           0|     11|   16|
|6-24 months |PROVIDE    |BANGLADESH   |1      |           1|      5|   16|
|6-24 months |PROVIDE    |BANGLADESH   |0      |           0|      0|   16|
|6-24 months |PROVIDE    |BANGLADESH   |0      |           1|      0|   16|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


