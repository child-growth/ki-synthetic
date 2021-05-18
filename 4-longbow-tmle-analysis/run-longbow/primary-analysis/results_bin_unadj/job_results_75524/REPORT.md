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

**Outcome Variable:** wasted

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

|agecat    |studyid    |country      |impsan | wasted| n_cell|     n|
|:---------|:----------|:------------|:------|------:|------:|-----:|
|Birth     |COHORTS    |INDIA        |1      |      0|   1760|  4889|
|Birth     |COHORTS    |INDIA        |1      |      1|    355|  4889|
|Birth     |COHORTS    |INDIA        |0      |      0|   2257|  4889|
|Birth     |COHORTS    |INDIA        |0      |      1|    517|  4889|
|Birth     |COHORTS    |GUATEMALA    |1      |      0|     41|   531|
|Birth     |COHORTS    |GUATEMALA    |1      |      1|     12|   531|
|Birth     |COHORTS    |GUATEMALA    |0      |      0|    351|   531|
|Birth     |COHORTS    |GUATEMALA    |0      |      1|    127|   531|
|Birth     |COHORTS    |PHILIPPINES  |1      |      0|    176|  1209|
|Birth     |COHORTS    |PHILIPPINES  |1      |      1|     33|  1209|
|Birth     |COHORTS    |PHILIPPINES  |0      |      0|    848|  1209|
|Birth     |COHORTS    |PHILIPPINES  |0      |      1|    152|  1209|
|Birth     |CONTENT    |PERU         |1      |      0|      2|     2|
|Birth     |CONTENT    |PERU         |1      |      1|      0|     2|
|Birth     |CONTENT    |PERU         |0      |      0|      0|     2|
|Birth     |CONTENT    |PERU         |0      |      1|      0|     2|
|Birth     |JiVitA-3   |BANGLADESH   |1      |      0|  11110| 17995|
|Birth     |JiVitA-3   |BANGLADESH   |1      |      1|   1360| 17995|
|Birth     |JiVitA-3   |BANGLADESH   |0      |      0|   4914| 17995|
|Birth     |JiVitA-3   |BANGLADESH   |0      |      1|    611| 17995|
|Birth     |JiVitA-4   |BANGLADESH   |1      |      0|   1638|  2394|
|Birth     |JiVitA-4   |BANGLADESH   |1      |      1|    189|  2394|
|Birth     |JiVitA-4   |BANGLADESH   |0      |      0|    517|  2394|
|Birth     |JiVitA-4   |BANGLADESH   |0      |      1|     50|  2394|
|Birth     |MAL-ED     |INDIA        |1      |      0|     15|    44|
|Birth     |MAL-ED     |INDIA        |1      |      1|      3|    44|
|Birth     |MAL-ED     |INDIA        |0      |      0|     24|    44|
|Birth     |MAL-ED     |INDIA        |0      |      1|      2|    44|
|Birth     |MAL-ED     |BANGLADESH   |1      |      0|    136|   198|
|Birth     |MAL-ED     |BANGLADESH   |1      |      1|     28|   198|
|Birth     |MAL-ED     |BANGLADESH   |0      |      0|     30|   198|
|Birth     |MAL-ED     |BANGLADESH   |0      |      1|      4|   198|
|Birth     |MAL-ED     |PERU         |1      |      0|     47|   198|
|Birth     |MAL-ED     |PERU         |1      |      1|      1|   198|
|Birth     |MAL-ED     |PERU         |0      |      0|    147|   198|
|Birth     |MAL-ED     |PERU         |0      |      1|      3|   198|
|Birth     |MAL-ED     |NEPAL        |1      |      0|     24|    26|
|Birth     |MAL-ED     |NEPAL        |1      |      1|      2|    26|
|Birth     |MAL-ED     |NEPAL        |0      |      0|      0|    26|
|Birth     |MAL-ED     |NEPAL        |0      |      1|      0|    26|
|Birth     |MAL-ED     |BRAZIL       |1      |      0|     50|    52|
|Birth     |MAL-ED     |BRAZIL       |1      |      1|      1|    52|
|Birth     |MAL-ED     |BRAZIL       |0      |      0|      0|    52|
|Birth     |MAL-ED     |BRAZIL       |0      |      1|      1|    52|
|Birth     |MAL-ED     |TANZANIA     |1      |      0|      0|   107|
|Birth     |MAL-ED     |TANZANIA     |1      |      1|      0|   107|
|Birth     |MAL-ED     |TANZANIA     |0      |      0|    106|   107|
|Birth     |MAL-ED     |TANZANIA     |0      |      1|      1|   107|
|Birth     |MAL-ED     |SOUTH AFRICA |1      |      0|      2|   103|
|Birth     |MAL-ED     |SOUTH AFRICA |1      |      1|      0|   103|
|Birth     |MAL-ED     |SOUTH AFRICA |0      |      0|     92|   103|
|Birth     |MAL-ED     |SOUTH AFRICA |0      |      1|      9|   103|
|Birth     |NIH-Birth  |BANGLADESH   |1      |      0|    148|   575|
|Birth     |NIH-Birth  |BANGLADESH   |1      |      1|     55|   575|
|Birth     |NIH-Birth  |BANGLADESH   |0      |      0|    259|   575|
|Birth     |NIH-Birth  |BANGLADESH   |0      |      1|    113|   575|
|Birth     |NIH-Crypto |BANGLADESH   |1      |      0|    457|   700|
|Birth     |NIH-Crypto |BANGLADESH   |1      |      1|    148|   700|
|Birth     |NIH-Crypto |BANGLADESH   |0      |      0|     73|   700|
|Birth     |NIH-Crypto |BANGLADESH   |0      |      1|     22|   700|
|Birth     |PROVIDE    |BANGLADESH   |1      |      0|     41|    53|
|Birth     |PROVIDE    |BANGLADESH   |1      |      1|     12|    53|
|Birth     |PROVIDE    |BANGLADESH   |0      |      0|      0|    53|
|Birth     |PROVIDE    |BANGLADESH   |0      |      1|      0|    53|
|6 months  |COHORTS    |INDIA        |1      |      0|   2076|  5427|
|6 months  |COHORTS    |INDIA        |1      |      1|    295|  5427|
|6 months  |COHORTS    |INDIA        |0      |      0|   2671|  5427|
|6 months  |COHORTS    |INDIA        |0      |      1|    385|  5427|
|6 months  |COHORTS    |GUATEMALA    |1      |      0|     74|   693|
|6 months  |COHORTS    |GUATEMALA    |1      |      1|      1|   693|
|6 months  |COHORTS    |GUATEMALA    |0      |      0|    600|   693|
|6 months  |COHORTS    |GUATEMALA    |0      |      1|     18|   693|
|6 months  |COHORTS    |PHILIPPINES  |1      |      0|    173|  1147|
|6 months  |COHORTS    |PHILIPPINES  |1      |      1|     14|  1147|
|6 months  |COHORTS    |PHILIPPINES  |0      |      0|    894|  1147|
|6 months  |COHORTS    |PHILIPPINES  |0      |      1|     66|  1147|
|6 months  |CONTENT    |PERU         |1      |      0|    195|   215|
|6 months  |CONTENT    |PERU         |1      |      1|      0|   215|
|6 months  |CONTENT    |PERU         |0      |      0|     20|   215|
|6 months  |CONTENT    |PERU         |0      |      1|      0|   215|
|6 months  |JiVitA-3   |BANGLADESH   |1      |      0|  10800| 16773|
|6 months  |JiVitA-3   |BANGLADESH   |1      |      1|   1007| 16773|
|6 months  |JiVitA-3   |BANGLADESH   |0      |      0|   4553| 16773|
|6 months  |JiVitA-3   |BANGLADESH   |0      |      1|    413| 16773|
|6 months  |JiVitA-4   |BANGLADESH   |1      |      0|   3549|  4829|
|6 months  |JiVitA-4   |BANGLADESH   |1      |      1|    214|  4829|
|6 months  |JiVitA-4   |BANGLADESH   |0      |      0|   1006|  4829|
|6 months  |JiVitA-4   |BANGLADESH   |0      |      1|     60|  4829|
|6 months  |LCNI-5     |MALAWI       |1      |      0|      2|   823|
|6 months  |LCNI-5     |MALAWI       |1      |      1|      0|   823|
|6 months  |LCNI-5     |MALAWI       |0      |      0|    807|   823|
|6 months  |LCNI-5     |MALAWI       |0      |      1|     14|   823|
|6 months  |MAL-ED     |INDIA        |1      |      0|    108|   226|
|6 months  |MAL-ED     |INDIA        |1      |      1|      9|   226|
|6 months  |MAL-ED     |INDIA        |0      |      0|    101|   226|
|6 months  |MAL-ED     |INDIA        |0      |      1|      8|   226|
|6 months  |MAL-ED     |BANGLADESH   |1      |      0|    183|   224|
|6 months  |MAL-ED     |BANGLADESH   |1      |      1|      5|   224|
|6 months  |MAL-ED     |BANGLADESH   |0      |      0|     34|   224|
|6 months  |MAL-ED     |BANGLADESH   |0      |      1|      2|   224|
|6 months  |MAL-ED     |PERU         |1      |      0|     57|   241|
|6 months  |MAL-ED     |PERU         |1      |      1|      0|   241|
|6 months  |MAL-ED     |PERU         |0      |      0|    184|   241|
|6 months  |MAL-ED     |PERU         |0      |      1|      0|   241|
|6 months  |MAL-ED     |NEPAL        |1      |      0|    230|   234|
|6 months  |MAL-ED     |NEPAL        |1      |      1|      4|   234|
|6 months  |MAL-ED     |NEPAL        |0      |      0|      0|   234|
|6 months  |MAL-ED     |NEPAL        |0      |      1|      0|   234|
|6 months  |MAL-ED     |BRAZIL       |1      |      0|    181|   187|
|6 months  |MAL-ED     |BRAZIL       |1      |      1|      1|   187|
|6 months  |MAL-ED     |BRAZIL       |0      |      0|      5|   187|
|6 months  |MAL-ED     |BRAZIL       |0      |      1|      0|   187|
|6 months  |MAL-ED     |TANZANIA     |1      |      0|      0|   236|
|6 months  |MAL-ED     |TANZANIA     |1      |      1|      0|   236|
|6 months  |MAL-ED     |TANZANIA     |0      |      0|    235|   236|
|6 months  |MAL-ED     |TANZANIA     |0      |      1|      1|   236|
|6 months  |MAL-ED     |SOUTH AFRICA |1      |      0|      6|   224|
|6 months  |MAL-ED     |SOUTH AFRICA |1      |      1|      0|   224|
|6 months  |MAL-ED     |SOUTH AFRICA |0      |      0|    211|   224|
|6 months  |MAL-ED     |SOUTH AFRICA |0      |      1|      7|   224|
|6 months  |NIH-Birth  |BANGLADESH   |1      |      0|    182|   537|
|6 months  |NIH-Birth  |BANGLADESH   |1      |      1|     10|   537|
|6 months  |NIH-Birth  |BANGLADESH   |0      |      0|    320|   537|
|6 months  |NIH-Birth  |BANGLADESH   |0      |      1|     25|   537|
|6 months  |NIH-Crypto |BANGLADESH   |1      |      0|    589|   708|
|6 months  |NIH-Crypto |BANGLADESH   |1      |      1|     19|   708|
|6 months  |NIH-Crypto |BANGLADESH   |0      |      0|     98|   708|
|6 months  |NIH-Crypto |BANGLADESH   |0      |      1|      2|   708|
|6 months  |PROVIDE    |BANGLADESH   |1      |      0|     48|    49|
|6 months  |PROVIDE    |BANGLADESH   |1      |      1|      1|    49|
|6 months  |PROVIDE    |BANGLADESH   |0      |      0|      0|    49|
|6 months  |PROVIDE    |BANGLADESH   |0      |      1|      0|    49|
|24 months |COHORTS    |INDIA        |1      |      0|   1670|  4159|
|24 months |COHORTS    |INDIA        |1      |      1|    173|  4159|
|24 months |COHORTS    |INDIA        |0      |      0|   2104|  4159|
|24 months |COHORTS    |INDIA        |0      |      1|    212|  4159|
|24 months |COHORTS    |GUATEMALA    |1      |      0|     79|   791|
|24 months |COHORTS    |GUATEMALA    |1      |      1|      3|   791|
|24 months |COHORTS    |GUATEMALA    |0      |      0|    676|   791|
|24 months |COHORTS    |GUATEMALA    |0      |      1|     33|   791|
|24 months |COHORTS    |PHILIPPINES  |1      |      0|    159|  1045|
|24 months |COHORTS    |PHILIPPINES  |1      |      1|     10|  1045|
|24 months |COHORTS    |PHILIPPINES  |0      |      0|    808|  1045|
|24 months |COHORTS    |PHILIPPINES  |0      |      1|     68|  1045|
|24 months |CONTENT    |PERU         |1      |      0|    150|   164|
|24 months |CONTENT    |PERU         |1      |      1|      1|   164|
|24 months |CONTENT    |PERU         |0      |      0|     13|   164|
|24 months |CONTENT    |PERU         |0      |      1|      0|   164|
|24 months |JiVitA-3   |BANGLADESH   |1      |      0|   4699|  8598|
|24 months |JiVitA-3   |BANGLADESH   |1      |      1|   1303|  8598|
|24 months |JiVitA-3   |BANGLADESH   |0      |      0|   2021|  8598|
|24 months |JiVitA-3   |BANGLADESH   |0      |      1|    575|  8598|
|24 months |JiVitA-4   |BANGLADESH   |1      |      0|   2976|  4731|
|24 months |JiVitA-4   |BANGLADESH   |1      |      1|    713|  4731|
|24 months |JiVitA-4   |BANGLADESH   |0      |      0|    835|  4731|
|24 months |JiVitA-4   |BANGLADESH   |0      |      1|    207|  4731|
|24 months |LCNI-5     |MALAWI       |1      |      0|      2|   554|
|24 months |LCNI-5     |MALAWI       |1      |      1|      0|   554|
|24 months |LCNI-5     |MALAWI       |0      |      0|    542|   554|
|24 months |LCNI-5     |MALAWI       |0      |      1|     10|   554|
|24 months |MAL-ED     |INDIA        |1      |      0|     99|   218|
|24 months |MAL-ED     |INDIA        |1      |      1|     13|   218|
|24 months |MAL-ED     |INDIA        |0      |      0|     93|   218|
|24 months |MAL-ED     |INDIA        |0      |      1|     13|   218|
|24 months |MAL-ED     |BANGLADESH   |1      |      0|    145|   195|
|24 months |MAL-ED     |BANGLADESH   |1      |      1|     17|   195|
|24 months |MAL-ED     |BANGLADESH   |0      |      0|     30|   195|
|24 months |MAL-ED     |BANGLADESH   |0      |      1|      3|   195|
|24 months |MAL-ED     |PERU         |1      |      0|     40|   174|
|24 months |MAL-ED     |PERU         |1      |      1|      1|   174|
|24 months |MAL-ED     |PERU         |0      |      0|    131|   174|
|24 months |MAL-ED     |PERU         |0      |      1|      2|   174|
|24 months |MAL-ED     |NEPAL        |1      |      0|    221|   226|
|24 months |MAL-ED     |NEPAL        |1      |      1|      5|   226|
|24 months |MAL-ED     |NEPAL        |0      |      0|      0|   226|
|24 months |MAL-ED     |NEPAL        |0      |      1|      0|   226|
|24 months |MAL-ED     |BRAZIL       |1      |      0|    141|   148|
|24 months |MAL-ED     |BRAZIL       |1      |      1|      2|   148|
|24 months |MAL-ED     |BRAZIL       |0      |      0|      5|   148|
|24 months |MAL-ED     |BRAZIL       |0      |      1|      0|   148|
|24 months |MAL-ED     |TANZANIA     |1      |      0|      0|   204|
|24 months |MAL-ED     |TANZANIA     |1      |      1|      0|   204|
|24 months |MAL-ED     |TANZANIA     |0      |      0|    200|   204|
|24 months |MAL-ED     |TANZANIA     |0      |      1|      4|   204|
|24 months |MAL-ED     |SOUTH AFRICA |1      |      0|      5|   210|
|24 months |MAL-ED     |SOUTH AFRICA |1      |      1|      0|   210|
|24 months |MAL-ED     |SOUTH AFRICA |0      |      0|    204|   210|
|24 months |MAL-ED     |SOUTH AFRICA |0      |      1|      1|   210|
|24 months |NIH-Birth  |BANGLADESH   |1      |      0|    129|   428|
|24 months |NIH-Birth  |BANGLADESH   |1      |      1|     23|   428|
|24 months |NIH-Birth  |BANGLADESH   |0      |      0|    246|   428|
|24 months |NIH-Birth  |BANGLADESH   |0      |      1|     30|   428|
|24 months |NIH-Crypto |BANGLADESH   |1      |      0|    400|   508|
|24 months |NIH-Crypto |BANGLADESH   |1      |      1|     36|   508|
|24 months |NIH-Crypto |BANGLADESH   |0      |      0|     63|   508|
|24 months |NIH-Crypto |BANGLADESH   |0      |      1|      9|   508|
|24 months |PROVIDE    |BANGLADESH   |1      |      0|     42|    46|
|24 months |PROVIDE    |BANGLADESH   |1      |      1|      4|    46|
|24 months |PROVIDE    |BANGLADESH   |0      |      0|      0|    46|
|24 months |PROVIDE    |BANGLADESH   |0      |      1|      0|    46|


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
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
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
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

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


