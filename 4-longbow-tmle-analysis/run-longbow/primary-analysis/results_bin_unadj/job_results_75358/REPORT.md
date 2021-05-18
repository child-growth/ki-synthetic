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

**Intervention Variable:** impsan

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid    |country      |impsan | stunted| n_cell|     n|
|:---------|:----------|:------------|:------|-------:|------:|-----:|
|Birth     |COHORTS    |INDIA        |1      |       0|   1988|  5255|
|Birth     |COHORTS    |INDIA        |1      |       1|    291|  5255|
|Birth     |COHORTS    |INDIA        |0      |       0|   2629|  5255|
|Birth     |COHORTS    |INDIA        |0      |       1|    347|  5255|
|Birth     |COHORTS    |GUATEMALA    |1      |       0|     59|   605|
|Birth     |COHORTS    |GUATEMALA    |1      |       1|      1|   605|
|Birth     |COHORTS    |GUATEMALA    |0      |       0|    511|   605|
|Birth     |COHORTS    |GUATEMALA    |0      |       1|     34|   605|
|Birth     |COHORTS    |PHILIPPINES  |1      |       0|    207|  1273|
|Birth     |COHORTS    |PHILIPPINES  |1      |       1|     13|  1273|
|Birth     |COHORTS    |PHILIPPINES  |0      |       0|    980|  1273|
|Birth     |COHORTS    |PHILIPPINES  |0      |       1|     73|  1273|
|Birth     |CONTENT    |PERU         |1      |       0|      2|     2|
|Birth     |CONTENT    |PERU         |1      |       1|      0|     2|
|Birth     |CONTENT    |PERU         |0      |       0|      0|     2|
|Birth     |CONTENT    |PERU         |0      |       1|      0|     2|
|Birth     |JiVitA-3   |BANGLADESH   |1      |       0|  10439| 22434|
|Birth     |JiVitA-3   |BANGLADESH   |1      |       1|   5051| 22434|
|Birth     |JiVitA-3   |BANGLADESH   |0      |       0|   4616| 22434|
|Birth     |JiVitA-3   |BANGLADESH   |0      |       1|   2328| 22434|
|Birth     |JiVitA-4   |BANGLADESH   |1      |       0|   1517|  2821|
|Birth     |JiVitA-4   |BANGLADESH   |1      |       1|    632|  2821|
|Birth     |JiVitA-4   |BANGLADESH   |0      |       0|    447|  2821|
|Birth     |JiVitA-4   |BANGLADESH   |0      |       1|    225|  2821|
|Birth     |MAL-ED     |INDIA        |1      |       0|     15|    46|
|Birth     |MAL-ED     |INDIA        |1      |       1|      4|    46|
|Birth     |MAL-ED     |INDIA        |0      |       0|     21|    46|
|Birth     |MAL-ED     |INDIA        |0      |       1|      6|    46|
|Birth     |MAL-ED     |BANGLADESH   |1      |       0|    143|   212|
|Birth     |MAL-ED     |BANGLADESH   |1      |       1|     33|   212|
|Birth     |MAL-ED     |BANGLADESH   |0      |       0|     30|   212|
|Birth     |MAL-ED     |BANGLADESH   |0      |       1|      6|   212|
|Birth     |MAL-ED     |PERU         |1      |       0|     43|   203|
|Birth     |MAL-ED     |PERU         |1      |       1|      6|   203|
|Birth     |MAL-ED     |PERU         |0      |       0|    139|   203|
|Birth     |MAL-ED     |PERU         |0      |       1|     15|   203|
|Birth     |MAL-ED     |NEPAL        |1      |       0|     25|    26|
|Birth     |MAL-ED     |NEPAL        |1      |       1|      1|    26|
|Birth     |MAL-ED     |NEPAL        |0      |       0|      0|    26|
|Birth     |MAL-ED     |NEPAL        |0      |       1|      0|    26|
|Birth     |MAL-ED     |BRAZIL       |1      |       0|     45|    55|
|Birth     |MAL-ED     |BRAZIL       |1      |       1|      9|    55|
|Birth     |MAL-ED     |BRAZIL       |0      |       0|      1|    55|
|Birth     |MAL-ED     |BRAZIL       |0      |       1|      0|    55|
|Birth     |MAL-ED     |TANZANIA     |1      |       0|      0|   115|
|Birth     |MAL-ED     |TANZANIA     |1      |       1|      0|   115|
|Birth     |MAL-ED     |TANZANIA     |0      |       0|     94|   115|
|Birth     |MAL-ED     |TANZANIA     |0      |       1|     21|   115|
|Birth     |MAL-ED     |SOUTH AFRICA |1      |       0|      2|   106|
|Birth     |MAL-ED     |SOUTH AFRICA |1      |       1|      0|   106|
|Birth     |MAL-ED     |SOUTH AFRICA |0      |       0|     94|   106|
|Birth     |MAL-ED     |SOUTH AFRICA |0      |       1|     10|   106|
|Birth     |NIH-Birth  |BANGLADESH   |1      |       0|    182|   608|
|Birth     |NIH-Birth  |BANGLADESH   |1      |       1|     35|   608|
|Birth     |NIH-Birth  |BANGLADESH   |0      |       0|    329|   608|
|Birth     |NIH-Birth  |BANGLADESH   |0      |       1|     62|   608|
|Birth     |NIH-Crypto |BANGLADESH   |1      |       0|    538|   725|
|Birth     |NIH-Crypto |BANGLADESH   |1      |       1|     85|   725|
|Birth     |NIH-Crypto |BANGLADESH   |0      |       0|     86|   725|
|Birth     |NIH-Crypto |BANGLADESH   |0      |       1|     16|   725|
|Birth     |PROVIDE    |BANGLADESH   |1      |       0|     49|    54|
|Birth     |PROVIDE    |BANGLADESH   |1      |       1|      5|    54|
|Birth     |PROVIDE    |BANGLADESH   |0      |       0|      0|    54|
|Birth     |PROVIDE    |BANGLADESH   |0      |       1|      0|    54|
|6 months  |COHORTS    |INDIA        |1      |       0|   1946|  5435|
|6 months  |COHORTS    |INDIA        |1      |       1|    432|  5435|
|6 months  |COHORTS    |INDIA        |0      |       0|   2494|  5435|
|6 months  |COHORTS    |INDIA        |0      |       1|    563|  5435|
|6 months  |COHORTS    |GUATEMALA    |1      |       0|     46|   692|
|6 months  |COHORTS    |GUATEMALA    |1      |       1|     29|   692|
|6 months  |COHORTS    |GUATEMALA    |0      |       0|    355|   692|
|6 months  |COHORTS    |GUATEMALA    |0      |       1|    262|   692|
|6 months  |COHORTS    |PHILIPPINES  |1      |       0|    156|  1149|
|6 months  |COHORTS    |PHILIPPINES  |1      |       1|     31|  1149|
|6 months  |COHORTS    |PHILIPPINES  |0      |       0|    732|  1149|
|6 months  |COHORTS    |PHILIPPINES  |0      |       1|    230|  1149|
|6 months  |CONTENT    |PERU         |1      |       0|    187|   215|
|6 months  |CONTENT    |PERU         |1      |       1|      8|   215|
|6 months  |CONTENT    |PERU         |0      |       0|     19|   215|
|6 months  |CONTENT    |PERU         |0      |       1|      1|   215|
|6 months  |JiVitA-3   |BANGLADESH   |1      |       0|   8895| 16800|
|6 months  |JiVitA-3   |BANGLADESH   |1      |       1|   2929| 16800|
|6 months  |JiVitA-3   |BANGLADESH   |0      |       0|   3683| 16800|
|6 months  |JiVitA-3   |BANGLADESH   |0      |       1|   1293| 16800|
|6 months  |JiVitA-4   |BANGLADESH   |1      |       0|   2832|  4827|
|6 months  |JiVitA-4   |BANGLADESH   |1      |       1|    929|  4827|
|6 months  |JiVitA-4   |BANGLADESH   |0      |       0|    776|  4827|
|6 months  |JiVitA-4   |BANGLADESH   |0      |       1|    290|  4827|
|6 months  |LCNI-5     |MALAWI       |1      |       0|      1|   823|
|6 months  |LCNI-5     |MALAWI       |1      |       1|      1|   823|
|6 months  |LCNI-5     |MALAWI       |0      |       0|    518|   823|
|6 months  |LCNI-5     |MALAWI       |0      |       1|    303|   823|
|6 months  |MAL-ED     |INDIA        |1      |       0|     97|   226|
|6 months  |MAL-ED     |INDIA        |1      |       1|     20|   226|
|6 months  |MAL-ED     |INDIA        |0      |       0|     86|   226|
|6 months  |MAL-ED     |INDIA        |0      |       1|     23|   226|
|6 months  |MAL-ED     |BANGLADESH   |1      |       0|    155|   224|
|6 months  |MAL-ED     |BANGLADESH   |1      |       1|     33|   224|
|6 months  |MAL-ED     |BANGLADESH   |0      |       0|     29|   224|
|6 months  |MAL-ED     |BANGLADESH   |0      |       1|      7|   224|
|6 months  |MAL-ED     |PERU         |1      |       0|     43|   241|
|6 months  |MAL-ED     |PERU         |1      |       1|     14|   241|
|6 months  |MAL-ED     |PERU         |0      |       0|    145|   241|
|6 months  |MAL-ED     |PERU         |0      |       1|     39|   241|
|6 months  |MAL-ED     |NEPAL        |1      |       0|    222|   234|
|6 months  |MAL-ED     |NEPAL        |1      |       1|     12|   234|
|6 months  |MAL-ED     |NEPAL        |0      |       0|      0|   234|
|6 months  |MAL-ED     |NEPAL        |0      |       1|      0|   234|
|6 months  |MAL-ED     |BRAZIL       |1      |       0|    178|   187|
|6 months  |MAL-ED     |BRAZIL       |1      |       1|      4|   187|
|6 months  |MAL-ED     |BRAZIL       |0      |       0|      4|   187|
|6 months  |MAL-ED     |BRAZIL       |0      |       1|      1|   187|
|6 months  |MAL-ED     |TANZANIA     |1      |       0|      0|   236|
|6 months  |MAL-ED     |TANZANIA     |1      |       1|      0|   236|
|6 months  |MAL-ED     |TANZANIA     |0      |       0|    181|   236|
|6 months  |MAL-ED     |TANZANIA     |0      |       1|     55|   236|
|6 months  |MAL-ED     |SOUTH AFRICA |1      |       0|      6|   224|
|6 months  |MAL-ED     |SOUTH AFRICA |1      |       1|      0|   224|
|6 months  |MAL-ED     |SOUTH AFRICA |0      |       0|    173|   224|
|6 months  |MAL-ED     |SOUTH AFRICA |0      |       1|     45|   224|
|6 months  |NIH-Birth  |BANGLADESH   |1      |       0|    137|   537|
|6 months  |NIH-Birth  |BANGLADESH   |1      |       1|     55|   537|
|6 months  |NIH-Birth  |BANGLADESH   |0      |       0|    256|   537|
|6 months  |NIH-Birth  |BANGLADESH   |0      |       1|     89|   537|
|6 months  |NIH-Crypto |BANGLADESH   |1      |       0|    485|   708|
|6 months  |NIH-Crypto |BANGLADESH   |1      |       1|    123|   708|
|6 months  |NIH-Crypto |BANGLADESH   |0      |       0|     76|   708|
|6 months  |NIH-Crypto |BANGLADESH   |0      |       1|     24|   708|
|6 months  |PROVIDE    |BANGLADESH   |1      |       0|     38|    49|
|6 months  |PROVIDE    |BANGLADESH   |1      |       1|     11|    49|
|6 months  |PROVIDE    |BANGLADESH   |0      |       0|      0|    49|
|6 months  |PROVIDE    |BANGLADESH   |0      |       1|      0|    49|
|24 months |COHORTS    |INDIA        |1      |       0|    868|  4193|
|24 months |COHORTS    |INDIA        |1      |       1|    983|  4193|
|24 months |COHORTS    |INDIA        |0      |       0|   1091|  4193|
|24 months |COHORTS    |INDIA        |0      |       1|   1251|  4193|
|24 months |COHORTS    |GUATEMALA    |1      |       0|     17|   782|
|24 months |COHORTS    |GUATEMALA    |1      |       1|     64|   782|
|24 months |COHORTS    |GUATEMALA    |0      |       0|    130|   782|
|24 months |COHORTS    |GUATEMALA    |0      |       1|    571|   782|
|24 months |COHORTS    |PHILIPPINES  |1      |       0|     84|  1043|
|24 months |COHORTS    |PHILIPPINES  |1      |       1|     86|  1043|
|24 months |COHORTS    |PHILIPPINES  |0      |       0|    251|  1043|
|24 months |COHORTS    |PHILIPPINES  |0      |       1|    622|  1043|
|24 months |CONTENT    |PERU         |1      |       0|    139|   164|
|24 months |CONTENT    |PERU         |1      |       1|     12|   164|
|24 months |CONTENT    |PERU         |0      |       0|     12|   164|
|24 months |CONTENT    |PERU         |0      |       1|      1|   164|
|24 months |JiVitA-3   |BANGLADESH   |1      |       0|   3105|  8627|
|24 months |JiVitA-3   |BANGLADESH   |1      |       1|   2918|  8627|
|24 months |JiVitA-3   |BANGLADESH   |0      |       0|   1285|  8627|
|24 months |JiVitA-3   |BANGLADESH   |0      |       1|   1319|  8627|
|24 months |JiVitA-4   |BANGLADESH   |1      |       0|   2243|  4748|
|24 months |JiVitA-4   |BANGLADESH   |1      |       1|   1460|  4748|
|24 months |JiVitA-4   |BANGLADESH   |0      |       0|    603|  4748|
|24 months |JiVitA-4   |BANGLADESH   |0      |       1|    442|  4748|
|24 months |LCNI-5     |MALAWI       |1      |       0|      1|   570|
|24 months |LCNI-5     |MALAWI       |1      |       1|      1|   570|
|24 months |LCNI-5     |MALAWI       |0      |       0|    313|   570|
|24 months |LCNI-5     |MALAWI       |0      |       1|    255|   570|
|24 months |MAL-ED     |INDIA        |1      |       0|     62|   218|
|24 months |MAL-ED     |INDIA        |1      |       1|     50|   218|
|24 months |MAL-ED     |INDIA        |0      |       0|     63|   218|
|24 months |MAL-ED     |INDIA        |0      |       1|     43|   218|
|24 months |MAL-ED     |BANGLADESH   |1      |       0|     86|   195|
|24 months |MAL-ED     |BANGLADESH   |1      |       1|     76|   195|
|24 months |MAL-ED     |BANGLADESH   |0      |       0|     18|   195|
|24 months |MAL-ED     |BANGLADESH   |0      |       1|     15|   195|
|24 months |MAL-ED     |PERU         |1      |       0|     23|   174|
|24 months |MAL-ED     |PERU         |1      |       1|     18|   174|
|24 months |MAL-ED     |PERU         |0      |       0|     88|   174|
|24 months |MAL-ED     |PERU         |0      |       1|     45|   174|
|24 months |MAL-ED     |NEPAL        |1      |       0|    178|   226|
|24 months |MAL-ED     |NEPAL        |1      |       1|     48|   226|
|24 months |MAL-ED     |NEPAL        |0      |       0|      0|   226|
|24 months |MAL-ED     |NEPAL        |0      |       1|      0|   226|
|24 months |MAL-ED     |BRAZIL       |1      |       0|    139|   148|
|24 months |MAL-ED     |BRAZIL       |1      |       1|      4|   148|
|24 months |MAL-ED     |BRAZIL       |0      |       0|      4|   148|
|24 months |MAL-ED     |BRAZIL       |0      |       1|      1|   148|
|24 months |MAL-ED     |TANZANIA     |1      |       0|      0|   204|
|24 months |MAL-ED     |TANZANIA     |1      |       1|      0|   204|
|24 months |MAL-ED     |TANZANIA     |0      |       0|     57|   204|
|24 months |MAL-ED     |TANZANIA     |0      |       1|    147|   204|
|24 months |MAL-ED     |SOUTH AFRICA |1      |       0|      3|   210|
|24 months |MAL-ED     |SOUTH AFRICA |1      |       1|      2|   210|
|24 months |MAL-ED     |SOUTH AFRICA |0      |       0|    135|   210|
|24 months |MAL-ED     |SOUTH AFRICA |0      |       1|     70|   210|
|24 months |NIH-Birth  |BANGLADESH   |1      |       0|     65|   429|
|24 months |NIH-Birth  |BANGLADESH   |1      |       1|     87|   429|
|24 months |NIH-Birth  |BANGLADESH   |0      |       0|    120|   429|
|24 months |NIH-Birth  |BANGLADESH   |0      |       1|    157|   429|
|24 months |NIH-Crypto |BANGLADESH   |1      |       0|    330|   508|
|24 months |NIH-Crypto |BANGLADESH   |1      |       1|    106|   508|
|24 months |NIH-Crypto |BANGLADESH   |0      |       0|     48|   508|
|24 months |NIH-Crypto |BANGLADESH   |0      |       1|     24|   508|
|24 months |PROVIDE    |BANGLADESH   |1      |       0|     28|    46|
|24 months |PROVIDE    |BANGLADESH   |1      |       1|     18|    46|
|24 months |PROVIDE    |BANGLADESH   |0      |       0|      0|    46|
|24 months |PROVIDE    |BANGLADESH   |0      |       1|      0|    46|


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

* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


