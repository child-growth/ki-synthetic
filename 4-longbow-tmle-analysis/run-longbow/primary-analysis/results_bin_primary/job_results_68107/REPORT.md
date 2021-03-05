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

|agecat      |studyid       |country                      |safeh20 | pers_wast| n_cell|     n|
|:-----------|:-------------|:----------------------------|:-------|---------:|------:|-----:|
|0-24 months |CONTENT       |PERU                         |1       |         0|     54|    57|
|0-24 months |CONTENT       |PERU                         |1       |         1|      0|    57|
|0-24 months |CONTENT       |PERU                         |0       |         0|      3|    57|
|0-24 months |CONTENT       |PERU                         |0       |         1|      0|    57|
|0-24 months |JiVitA-3      |BANGLADESH                   |1       |         0|  14882| 15796|
|0-24 months |JiVitA-3      |BANGLADESH                   |1       |         1|    896| 15796|
|0-24 months |JiVitA-3      |BANGLADESH                   |0       |         0|     17| 15796|
|0-24 months |JiVitA-3      |BANGLADESH                   |0       |         1|      1| 15796|
|0-24 months |JiVitA-4      |BANGLADESH                   |1       |         0|   4852|  5279|
|0-24 months |JiVitA-4      |BANGLADESH                   |1       |         1|    426|  5279|
|0-24 months |JiVitA-4      |BANGLADESH                   |0       |         0|      1|  5279|
|0-24 months |JiVitA-4      |BANGLADESH                   |0       |         1|      0|  5279|
|0-24 months |LCNI-5        |MALAWI                       |1       |         0|    586|   715|
|0-24 months |LCNI-5        |MALAWI                       |1       |         1|      4|   715|
|0-24 months |LCNI-5        |MALAWI                       |0       |         0|    123|   715|
|0-24 months |LCNI-5        |MALAWI                       |0       |         1|      2|   715|
|0-24 months |MAL-ED        |BANGLADESH                   |1       |         0|      0|   242|
|0-24 months |MAL-ED        |BANGLADESH                   |1       |         1|      0|   242|
|0-24 months |MAL-ED        |BANGLADESH                   |0       |         0|    229|   242|
|0-24 months |MAL-ED        |BANGLADESH                   |0       |         1|     13|   242|
|0-24 months |MAL-ED        |BRAZIL                       |1       |         0|      0|   142|
|0-24 months |MAL-ED        |BRAZIL                       |1       |         1|      0|   142|
|0-24 months |MAL-ED        |BRAZIL                       |0       |         0|    140|   142|
|0-24 months |MAL-ED        |BRAZIL                       |0       |         1|      2|   142|
|0-24 months |MAL-ED        |INDIA                        |1       |         0|      0|   235|
|0-24 months |MAL-ED        |INDIA                        |1       |         1|      0|   235|
|0-24 months |MAL-ED        |INDIA                        |0       |         0|    215|   235|
|0-24 months |MAL-ED        |INDIA                        |0       |         1|     20|   235|
|0-24 months |MAL-ED        |NEPAL                        |1       |         0|      1|   233|
|0-24 months |MAL-ED        |NEPAL                        |1       |         1|      0|   233|
|0-24 months |MAL-ED        |NEPAL                        |0       |         0|    229|   233|
|0-24 months |MAL-ED        |NEPAL                        |0       |         1|      3|   233|
|0-24 months |MAL-ED        |PERU                         |1       |         0|     11|   259|
|0-24 months |MAL-ED        |PERU                         |1       |         1|      0|   259|
|0-24 months |MAL-ED        |PERU                         |0       |         0|    247|   259|
|0-24 months |MAL-ED        |PERU                         |0       |         1|      1|   259|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |1       |         0|     38|   254|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |1       |         1|      0|   254|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |0       |         0|    214|   254|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |0       |         1|      2|   254|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1       |         0|    170|   249|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1       |         1|      0|   249|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0       |         0|     79|   249|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0       |         1|      0|   249|
|0-24 months |NIH-Birth     |BANGLADESH                   |1       |         0|    485|   534|
|0-24 months |NIH-Birth     |BANGLADESH                   |1       |         1|     47|   534|
|0-24 months |NIH-Birth     |BANGLADESH                   |0       |         0|      2|   534|
|0-24 months |NIH-Birth     |BANGLADESH                   |0       |         1|      0|   534|
|0-24 months |NIH-Crypto    |BANGLADESH                   |1       |         0|    704|   730|
|0-24 months |NIH-Crypto    |BANGLADESH                   |1       |         1|     26|   730|
|0-24 months |NIH-Crypto    |BANGLADESH                   |0       |         0|      0|   730|
|0-24 months |NIH-Crypto    |BANGLADESH                   |0       |         1|      0|   730|
|0-24 months |PROVIDE       |BANGLADESH                   |1       |         0|     13|    13|
|0-24 months |PROVIDE       |BANGLADESH                   |1       |         1|      0|    13|
|0-24 months |PROVIDE       |BANGLADESH                   |0       |         0|      0|    13|
|0-24 months |PROVIDE       |BANGLADESH                   |0       |         1|      0|    13|
|0-24 months |SAS-FoodSuppl |INDIA                        |1       |         0|    310|   375|
|0-24 months |SAS-FoodSuppl |INDIA                        |1       |         1|     65|   375|
|0-24 months |SAS-FoodSuppl |INDIA                        |0       |         0|      0|   375|
|0-24 months |SAS-FoodSuppl |INDIA                        |0       |         1|      0|   375|


The following strata were considered:

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
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

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
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA


ALL STRATA DROPPED. JOB FINISHED
















