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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** safeh20

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* W_parity
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
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid       |country                      |safeh20 | ever_swasted| n_cell|     n|
|:---------------------------|:-------------|:----------------------------|:-------|------------:|------:|-----:|
|0-24 months (no birth wast) |CONTENT       |PERU                         |1       |            0|     54|    57|
|0-24 months (no birth wast) |CONTENT       |PERU                         |1       |            1|      0|    57|
|0-24 months (no birth wast) |CONTENT       |PERU                         |0       |            0|      3|    57|
|0-24 months (no birth wast) |CONTENT       |PERU                         |0       |            1|      0|    57|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |1       |            0|  25516| 26503|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |1       |            1|    945| 26503|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |0       |            0|     40| 26503|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |0       |            1|      2| 26503|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |1       |            0|   5149|  5381|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |1       |            1|    231|  5381|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |0       |            0|      1|  5381|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |0       |            1|      0|  5381|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |1       |            0|    668|   814|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |1       |            1|      3|   814|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |0       |            0|    139|   814|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |0       |            1|      4|   814|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |1       |            0|      0|   242|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |1       |            1|      0|   242|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |0       |            0|    230|   242|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |0       |            1|     12|   242|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |1       |            0|      0|   142|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |1       |            1|      0|   142|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |0       |            0|    139|   142|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |0       |            1|      3|   142|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |1       |            0|      0|   231|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |1       |            1|      0|   231|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |0       |            0|    219|   231|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |0       |            1|     12|   231|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |1       |            0|      1|   233|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |1       |            1|      0|   233|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |0       |            0|    229|   233|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |0       |            1|      3|   233|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |1       |            0|     11|   259|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |1       |            1|      0|   259|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |0       |            0|    244|   259|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |0       |            1|      4|   259|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |1       |            0|     35|   254|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |1       |            1|      3|   254|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |0       |            0|    207|   254|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |0       |            1|      9|   254|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1       |            0|    163|   249|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1       |            1|      7|   249|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0       |            0|     78|   249|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0       |            1|      1|   249|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH                   |1       |            0|    546|   602|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH                   |1       |            1|     54|   602|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH                   |0       |            0|      2|   602|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH                   |0       |            1|      0|   602|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH                   |1       |            0|    734|   754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH                   |1       |            1|     20|   754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH                   |0       |            0|      0|   754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH                   |0       |            1|      0|   754|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH                   |1       |            0|     52|    52|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH                   |1       |            1|      0|    52|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH                   |0       |            0|      0|    52|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH                   |0       |            1|      0|    52|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |1       |            0|    357|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |1       |            1|     40|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |0       |            0|      0|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |0       |            1|      0|   397|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA


ALL STRATA DROPPED. JOB FINISHED
















