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

**Intervention Variable:** impsan

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid    |country      |impsan | pers_wast| n_cell|     n|
|:-----------|:----------|:------------|:------|---------:|------:|-----:|
|0-24 months |COHORTS    |INDIA        |1      |         0|   1787|  4521|
|0-24 months |COHORTS    |INDIA        |1      |         1|    193|  4521|
|0-24 months |COHORTS    |INDIA        |0      |         0|   2305|  4521|
|0-24 months |COHORTS    |INDIA        |0      |         1|    236|  4521|
|0-24 months |COHORTS    |GUATEMALA    |1      |         0|     78|   761|
|0-24 months |COHORTS    |GUATEMALA    |1      |         1|      2|   761|
|0-24 months |COHORTS    |GUATEMALA    |0      |         0|    658|   761|
|0-24 months |COHORTS    |GUATEMALA    |0      |         1|     23|   761|
|0-24 months |COHORTS    |PHILIPPINES  |1      |         0|    191|  1186|
|0-24 months |COHORTS    |PHILIPPINES  |1      |         1|      8|  1186|
|0-24 months |COHORTS    |PHILIPPINES  |0      |         0|    928|  1186|
|0-24 months |COHORTS    |PHILIPPINES  |0      |         1|     59|  1186|
|0-24 months |CONTENT    |PERU         |1      |         0|    195|   215|
|0-24 months |CONTENT    |PERU         |1      |         1|      0|   215|
|0-24 months |CONTENT    |PERU         |0      |         0|     20|   215|
|0-24 months |CONTENT    |PERU         |0      |         1|      0|   215|
|0-24 months |JiVitA-3   |BANGLADESH   |1      |         0|  10484| 15793|
|0-24 months |JiVitA-3   |BANGLADESH   |1      |         1|    621| 15793|
|0-24 months |JiVitA-3   |BANGLADESH   |0      |         0|   4412| 15793|
|0-24 months |JiVitA-3   |BANGLADESH   |0      |         1|    276| 15793|
|0-24 months |JiVitA-4   |BANGLADESH   |1      |         0|   3765|  5277|
|0-24 months |JiVitA-4   |BANGLADESH   |1      |         1|    330|  5277|
|0-24 months |JiVitA-4   |BANGLADESH   |0      |         0|   1086|  5277|
|0-24 months |JiVitA-4   |BANGLADESH   |0      |         1|     96|  5277|
|0-24 months |LCNI-5     |MALAWI       |1      |         0|      2|   706|
|0-24 months |LCNI-5     |MALAWI       |1      |         1|      0|   706|
|0-24 months |LCNI-5     |MALAWI       |0      |         0|    698|   706|
|0-24 months |LCNI-5     |MALAWI       |0      |         1|      6|   706|
|0-24 months |MAL-ED     |INDIA        |1      |         0|    110|   230|
|0-24 months |MAL-ED     |INDIA        |1      |         1|      9|   230|
|0-24 months |MAL-ED     |INDIA        |0      |         0|    100|   230|
|0-24 months |MAL-ED     |INDIA        |0      |         1|     11|   230|
|0-24 months |MAL-ED     |BANGLADESH   |1      |         0|    183|   230|
|0-24 months |MAL-ED     |BANGLADESH   |1      |         1|     10|   230|
|0-24 months |MAL-ED     |BANGLADESH   |0      |         0|     35|   230|
|0-24 months |MAL-ED     |BANGLADESH   |0      |         1|      2|   230|
|0-24 months |MAL-ED     |PERU         |1      |         0|     58|   252|
|0-24 months |MAL-ED     |PERU         |1      |         1|      0|   252|
|0-24 months |MAL-ED     |PERU         |0      |         0|    193|   252|
|0-24 months |MAL-ED     |PERU         |0      |         1|      1|   252|
|0-24 months |MAL-ED     |NEPAL        |1      |         0|    232|   236|
|0-24 months |MAL-ED     |NEPAL        |1      |         1|      4|   236|
|0-24 months |MAL-ED     |NEPAL        |0      |         0|      0|   236|
|0-24 months |MAL-ED     |NEPAL        |0      |         1|      0|   236|
|0-24 months |MAL-ED     |BRAZIL       |1      |         0|    187|   194|
|0-24 months |MAL-ED     |BRAZIL       |1      |         1|      2|   194|
|0-24 months |MAL-ED     |BRAZIL       |0      |         0|      5|   194|
|0-24 months |MAL-ED     |BRAZIL       |0      |         1|      0|   194|
|0-24 months |MAL-ED     |TANZANIA     |1      |         0|      0|   241|
|0-24 months |MAL-ED     |TANZANIA     |1      |         1|      0|   241|
|0-24 months |MAL-ED     |TANZANIA     |0      |         0|    241|   241|
|0-24 months |MAL-ED     |TANZANIA     |0      |         1|      0|   241|
|0-24 months |MAL-ED     |SOUTH AFRICA |1      |         0|      6|   237|
|0-24 months |MAL-ED     |SOUTH AFRICA |1      |         1|      0|   237|
|0-24 months |MAL-ED     |SOUTH AFRICA |0      |         0|    229|   237|
|0-24 months |MAL-ED     |SOUTH AFRICA |0      |         1|      2|   237|
|0-24 months |NIH-Birth  |BANGLADESH   |1      |         0|    170|   534|
|0-24 months |NIH-Birth  |BANGLADESH   |1      |         1|     16|   534|
|0-24 months |NIH-Birth  |BANGLADESH   |0      |         0|    317|   534|
|0-24 months |NIH-Birth  |BANGLADESH   |0      |         1|     31|   534|
|0-24 months |NIH-Crypto |BANGLADESH   |1      |         0|    600|   723|
|0-24 months |NIH-Crypto |BANGLADESH   |1      |         1|     21|   723|
|0-24 months |NIH-Crypto |BANGLADESH   |0      |         0|     97|   723|
|0-24 months |NIH-Crypto |BANGLADESH   |0      |         1|      5|   723|
|0-24 months |PROVIDE    |BANGLADESH   |1      |         0|     53|    53|
|0-24 months |PROVIDE    |BANGLADESH   |1      |         1|      0|    53|
|0-24 months |PROVIDE    |BANGLADESH   |0      |         0|      0|    53|
|0-24 months |PROVIDE    |BANGLADESH   |0      |         1|      0|    53|
|0-6 months  |COHORTS    |PHILIPPINES  |1      |         0|     51|   364|
|0-6 months  |COHORTS    |PHILIPPINES  |1      |         1|      4|   364|
|0-6 months  |COHORTS    |PHILIPPINES  |0      |         0|    292|   364|
|0-6 months  |COHORTS    |PHILIPPINES  |0      |         1|     17|   364|
|0-6 months  |CONTENT    |PERU         |1      |         0|    195|   215|
|0-6 months  |CONTENT    |PERU         |1      |         1|      0|   215|
|0-6 months  |CONTENT    |PERU         |0      |         0|     20|   215|
|0-6 months  |CONTENT    |PERU         |0      |         1|      0|   215|
|0-6 months  |JiVitA-3   |BANGLADESH   |1      |         0|     36|    50|
|0-6 months  |JiVitA-3   |BANGLADESH   |1      |         1|      2|    50|
|0-6 months  |JiVitA-3   |BANGLADESH   |0      |         0|     12|    50|
|0-6 months  |JiVitA-3   |BANGLADESH   |0      |         1|      0|    50|
|0-6 months  |MAL-ED     |INDIA        |1      |         0|    111|   229|
|0-6 months  |MAL-ED     |INDIA        |1      |         1|      8|   229|
|0-6 months  |MAL-ED     |INDIA        |0      |         0|    101|   229|
|0-6 months  |MAL-ED     |INDIA        |0      |         1|      9|   229|
|0-6 months  |MAL-ED     |BANGLADESH   |1      |         0|    189|   230|
|0-6 months  |MAL-ED     |BANGLADESH   |1      |         1|      4|   230|
|0-6 months  |MAL-ED     |BANGLADESH   |0      |         0|     35|   230|
|0-6 months  |MAL-ED     |BANGLADESH   |0      |         1|      2|   230|
|0-6 months  |MAL-ED     |PERU         |1      |         0|     58|   252|
|0-6 months  |MAL-ED     |PERU         |1      |         1|      0|   252|
|0-6 months  |MAL-ED     |PERU         |0      |         0|    194|   252|
|0-6 months  |MAL-ED     |PERU         |0      |         1|      0|   252|
|0-6 months  |MAL-ED     |NEPAL        |1      |         0|    229|   236|
|0-6 months  |MAL-ED     |NEPAL        |1      |         1|      7|   236|
|0-6 months  |MAL-ED     |NEPAL        |0      |         0|      0|   236|
|0-6 months  |MAL-ED     |NEPAL        |0      |         1|      0|   236|
|0-6 months  |MAL-ED     |BRAZIL       |1      |         0|    188|   194|
|0-6 months  |MAL-ED     |BRAZIL       |1      |         1|      1|   194|
|0-6 months  |MAL-ED     |BRAZIL       |0      |         0|      5|   194|
|0-6 months  |MAL-ED     |BRAZIL       |0      |         1|      0|   194|
|0-6 months  |MAL-ED     |TANZANIA     |1      |         0|      0|   241|
|0-6 months  |MAL-ED     |TANZANIA     |1      |         1|      0|   241|
|0-6 months  |MAL-ED     |TANZANIA     |0      |         0|    241|   241|
|0-6 months  |MAL-ED     |TANZANIA     |0      |         1|      0|   241|
|0-6 months  |MAL-ED     |SOUTH AFRICA |1      |         0|      6|   236|
|0-6 months  |MAL-ED     |SOUTH AFRICA |1      |         1|      0|   236|
|0-6 months  |MAL-ED     |SOUTH AFRICA |0      |         0|    228|   236|
|0-6 months  |MAL-ED     |SOUTH AFRICA |0      |         1|      2|   236|
|0-6 months  |NIH-Birth  |BANGLADESH   |1      |         0|     54|   169|
|0-6 months  |NIH-Birth  |BANGLADESH   |1      |         1|      6|   169|
|0-6 months  |NIH-Birth  |BANGLADESH   |0      |         0|    104|   169|
|0-6 months  |NIH-Birth  |BANGLADESH   |0      |         1|      5|   169|
|0-6 months  |NIH-Crypto |BANGLADESH   |1      |         0|    204|   246|
|0-6 months  |NIH-Crypto |BANGLADESH   |1      |         1|      5|   246|
|0-6 months  |NIH-Crypto |BANGLADESH   |0      |         0|     37|   246|
|0-6 months  |NIH-Crypto |BANGLADESH   |0      |         1|      0|   246|
|0-6 months  |PROVIDE    |BANGLADESH   |1      |         0|     52|    53|
|0-6 months  |PROVIDE    |BANGLADESH   |1      |         1|      1|    53|
|0-6 months  |PROVIDE    |BANGLADESH   |0      |         0|      0|    53|
|0-6 months  |PROVIDE    |BANGLADESH   |0      |         1|      0|    53|
|6-24 months |COHORTS    |INDIA        |1      |         0|   1787|  4521|
|6-24 months |COHORTS    |INDIA        |1      |         1|    193|  4521|
|6-24 months |COHORTS    |INDIA        |0      |         0|   2305|  4521|
|6-24 months |COHORTS    |INDIA        |0      |         1|    236|  4521|
|6-24 months |COHORTS    |GUATEMALA    |1      |         0|     78|   761|
|6-24 months |COHORTS    |GUATEMALA    |1      |         1|      2|   761|
|6-24 months |COHORTS    |GUATEMALA    |0      |         0|    658|   761|
|6-24 months |COHORTS    |GUATEMALA    |0      |         1|     23|   761|
|6-24 months |COHORTS    |PHILIPPINES  |1      |         0|    191|  1186|
|6-24 months |COHORTS    |PHILIPPINES  |1      |         1|      8|  1186|
|6-24 months |COHORTS    |PHILIPPINES  |0      |         0|    928|  1186|
|6-24 months |COHORTS    |PHILIPPINES  |0      |         1|     59|  1186|
|6-24 months |CONTENT    |PERU         |1      |         0|    195|   215|
|6-24 months |CONTENT    |PERU         |1      |         1|      0|   215|
|6-24 months |CONTENT    |PERU         |0      |         0|     20|   215|
|6-24 months |CONTENT    |PERU         |0      |         1|      0|   215|
|6-24 months |JiVitA-3   |BANGLADESH   |1      |         0|  10484| 15793|
|6-24 months |JiVitA-3   |BANGLADESH   |1      |         1|    621| 15793|
|6-24 months |JiVitA-3   |BANGLADESH   |0      |         0|   4412| 15793|
|6-24 months |JiVitA-3   |BANGLADESH   |0      |         1|    276| 15793|
|6-24 months |JiVitA-4   |BANGLADESH   |1      |         0|   3765|  5277|
|6-24 months |JiVitA-4   |BANGLADESH   |1      |         1|    330|  5277|
|6-24 months |JiVitA-4   |BANGLADESH   |0      |         0|   1086|  5277|
|6-24 months |JiVitA-4   |BANGLADESH   |0      |         1|     96|  5277|
|6-24 months |LCNI-5     |MALAWI       |1      |         0|      2|   706|
|6-24 months |LCNI-5     |MALAWI       |1      |         1|      0|   706|
|6-24 months |LCNI-5     |MALAWI       |0      |         0|    698|   706|
|6-24 months |LCNI-5     |MALAWI       |0      |         1|      6|   706|
|6-24 months |MAL-ED     |INDIA        |1      |         0|    110|   230|
|6-24 months |MAL-ED     |INDIA        |1      |         1|      9|   230|
|6-24 months |MAL-ED     |INDIA        |0      |         0|    100|   230|
|6-24 months |MAL-ED     |INDIA        |0      |         1|     11|   230|
|6-24 months |MAL-ED     |BANGLADESH   |1      |         0|    183|   230|
|6-24 months |MAL-ED     |BANGLADESH   |1      |         1|     10|   230|
|6-24 months |MAL-ED     |BANGLADESH   |0      |         0|     35|   230|
|6-24 months |MAL-ED     |BANGLADESH   |0      |         1|      2|   230|
|6-24 months |MAL-ED     |PERU         |1      |         0|     58|   252|
|6-24 months |MAL-ED     |PERU         |1      |         1|      0|   252|
|6-24 months |MAL-ED     |PERU         |0      |         0|    193|   252|
|6-24 months |MAL-ED     |PERU         |0      |         1|      1|   252|
|6-24 months |MAL-ED     |NEPAL        |1      |         0|    232|   236|
|6-24 months |MAL-ED     |NEPAL        |1      |         1|      4|   236|
|6-24 months |MAL-ED     |NEPAL        |0      |         0|      0|   236|
|6-24 months |MAL-ED     |NEPAL        |0      |         1|      0|   236|
|6-24 months |MAL-ED     |BRAZIL       |1      |         0|    187|   194|
|6-24 months |MAL-ED     |BRAZIL       |1      |         1|      2|   194|
|6-24 months |MAL-ED     |BRAZIL       |0      |         0|      5|   194|
|6-24 months |MAL-ED     |BRAZIL       |0      |         1|      0|   194|
|6-24 months |MAL-ED     |TANZANIA     |1      |         0|      0|   241|
|6-24 months |MAL-ED     |TANZANIA     |1      |         1|      0|   241|
|6-24 months |MAL-ED     |TANZANIA     |0      |         0|    241|   241|
|6-24 months |MAL-ED     |TANZANIA     |0      |         1|      0|   241|
|6-24 months |MAL-ED     |SOUTH AFRICA |1      |         0|      6|   237|
|6-24 months |MAL-ED     |SOUTH AFRICA |1      |         1|      0|   237|
|6-24 months |MAL-ED     |SOUTH AFRICA |0      |         0|    229|   237|
|6-24 months |MAL-ED     |SOUTH AFRICA |0      |         1|      2|   237|
|6-24 months |NIH-Birth  |BANGLADESH   |1      |         0|    170|   534|
|6-24 months |NIH-Birth  |BANGLADESH   |1      |         1|     16|   534|
|6-24 months |NIH-Birth  |BANGLADESH   |0      |         0|    317|   534|
|6-24 months |NIH-Birth  |BANGLADESH   |0      |         1|     31|   534|
|6-24 months |NIH-Crypto |BANGLADESH   |1      |         0|    600|   723|
|6-24 months |NIH-Crypto |BANGLADESH   |1      |         1|     21|   723|
|6-24 months |NIH-Crypto |BANGLADESH   |0      |         0|     97|   723|
|6-24 months |NIH-Crypto |BANGLADESH   |0      |         1|      5|   723|
|6-24 months |PROVIDE    |BANGLADESH   |1      |         0|     53|    53|
|6-24 months |PROVIDE    |BANGLADESH   |1      |         1|      0|    53|
|6-24 months |PROVIDE    |BANGLADESH   |0      |         0|      0|    53|
|6-24 months |PROVIDE    |BANGLADESH   |0      |         1|      0|    53|


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
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
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

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
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


