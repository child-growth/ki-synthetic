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

**Outcome Variable:** sstunted

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

|agecat    |studyid    |country      |impsan | sstunted| n_cell|     n|
|:---------|:----------|:------------|:------|--------:|------:|-----:|
|Birth     |COHORTS    |INDIA        |1      |        0|   2199|  5255|
|Birth     |COHORTS    |INDIA        |1      |        1|     80|  5255|
|Birth     |COHORTS    |INDIA        |0      |        0|   2884|  5255|
|Birth     |COHORTS    |INDIA        |0      |        1|     92|  5255|
|Birth     |COHORTS    |GUATEMALA    |1      |        0|     59|   605|
|Birth     |COHORTS    |GUATEMALA    |1      |        1|      1|   605|
|Birth     |COHORTS    |GUATEMALA    |0      |        0|    537|   605|
|Birth     |COHORTS    |GUATEMALA    |0      |        1|      8|   605|
|Birth     |COHORTS    |PHILIPPINES  |1      |        0|    215|  1273|
|Birth     |COHORTS    |PHILIPPINES  |1      |        1|      5|  1273|
|Birth     |COHORTS    |PHILIPPINES  |0      |        0|   1039|  1273|
|Birth     |COHORTS    |PHILIPPINES  |0      |        1|     14|  1273|
|Birth     |CONTENT    |PERU         |1      |        0|      2|     2|
|Birth     |CONTENT    |PERU         |1      |        1|      0|     2|
|Birth     |CONTENT    |PERU         |0      |        0|      0|     2|
|Birth     |CONTENT    |PERU         |0      |        1|      0|     2|
|Birth     |JiVitA-3   |BANGLADESH   |1      |        0|  13859| 22434|
|Birth     |JiVitA-3   |BANGLADESH   |1      |        1|   1631| 22434|
|Birth     |JiVitA-3   |BANGLADESH   |0      |        0|   6129| 22434|
|Birth     |JiVitA-3   |BANGLADESH   |0      |        1|    815| 22434|
|Birth     |JiVitA-4   |BANGLADESH   |1      |        0|   1982|  2821|
|Birth     |JiVitA-4   |BANGLADESH   |1      |        1|    167|  2821|
|Birth     |JiVitA-4   |BANGLADESH   |0      |        0|    606|  2821|
|Birth     |JiVitA-4   |BANGLADESH   |0      |        1|     66|  2821|
|Birth     |MAL-ED     |INDIA        |1      |        0|     18|    46|
|Birth     |MAL-ED     |INDIA        |1      |        1|      1|    46|
|Birth     |MAL-ED     |INDIA        |0      |        0|     26|    46|
|Birth     |MAL-ED     |INDIA        |0      |        1|      1|    46|
|Birth     |MAL-ED     |BANGLADESH   |1      |        0|    170|   212|
|Birth     |MAL-ED     |BANGLADESH   |1      |        1|      6|   212|
|Birth     |MAL-ED     |BANGLADESH   |0      |        0|     34|   212|
|Birth     |MAL-ED     |BANGLADESH   |0      |        1|      2|   212|
|Birth     |MAL-ED     |PERU         |1      |        0|     49|   203|
|Birth     |MAL-ED     |PERU         |1      |        1|      0|   203|
|Birth     |MAL-ED     |PERU         |0      |        0|    151|   203|
|Birth     |MAL-ED     |PERU         |0      |        1|      3|   203|
|Birth     |MAL-ED     |NEPAL        |1      |        0|     26|    26|
|Birth     |MAL-ED     |NEPAL        |1      |        1|      0|    26|
|Birth     |MAL-ED     |NEPAL        |0      |        0|      0|    26|
|Birth     |MAL-ED     |NEPAL        |0      |        1|      0|    26|
|Birth     |MAL-ED     |BRAZIL       |1      |        0|     51|    55|
|Birth     |MAL-ED     |BRAZIL       |1      |        1|      3|    55|
|Birth     |MAL-ED     |BRAZIL       |0      |        0|      1|    55|
|Birth     |MAL-ED     |BRAZIL       |0      |        1|      0|    55|
|Birth     |MAL-ED     |TANZANIA     |1      |        0|      0|   115|
|Birth     |MAL-ED     |TANZANIA     |1      |        1|      0|   115|
|Birth     |MAL-ED     |TANZANIA     |0      |        0|    107|   115|
|Birth     |MAL-ED     |TANZANIA     |0      |        1|      8|   115|
|Birth     |MAL-ED     |SOUTH AFRICA |1      |        0|      2|   106|
|Birth     |MAL-ED     |SOUTH AFRICA |1      |        1|      0|   106|
|Birth     |MAL-ED     |SOUTH AFRICA |0      |        0|    102|   106|
|Birth     |MAL-ED     |SOUTH AFRICA |0      |        1|      2|   106|
|Birth     |NIH-Birth  |BANGLADESH   |1      |        0|    209|   608|
|Birth     |NIH-Birth  |BANGLADESH   |1      |        1|      8|   608|
|Birth     |NIH-Birth  |BANGLADESH   |0      |        0|    380|   608|
|Birth     |NIH-Birth  |BANGLADESH   |0      |        1|     11|   608|
|Birth     |NIH-Crypto |BANGLADESH   |1      |        0|    615|   725|
|Birth     |NIH-Crypto |BANGLADESH   |1      |        1|      8|   725|
|Birth     |NIH-Crypto |BANGLADESH   |0      |        0|    100|   725|
|Birth     |NIH-Crypto |BANGLADESH   |0      |        1|      2|   725|
|Birth     |PROVIDE    |BANGLADESH   |1      |        0|     53|    54|
|Birth     |PROVIDE    |BANGLADESH   |1      |        1|      1|    54|
|Birth     |PROVIDE    |BANGLADESH   |0      |        0|      0|    54|
|Birth     |PROVIDE    |BANGLADESH   |0      |        1|      0|    54|
|6 months  |COHORTS    |INDIA        |1      |        0|   2281|  5435|
|6 months  |COHORTS    |INDIA        |1      |        1|     97|  5435|
|6 months  |COHORTS    |INDIA        |0      |        0|   2907|  5435|
|6 months  |COHORTS    |INDIA        |0      |        1|    150|  5435|
|6 months  |COHORTS    |GUATEMALA    |1      |        0|     65|   692|
|6 months  |COHORTS    |GUATEMALA    |1      |        1|     10|   692|
|6 months  |COHORTS    |GUATEMALA    |0      |        0|    534|   692|
|6 months  |COHORTS    |GUATEMALA    |0      |        1|     83|   692|
|6 months  |COHORTS    |PHILIPPINES  |1      |        0|    179|  1149|
|6 months  |COHORTS    |PHILIPPINES  |1      |        1|      8|  1149|
|6 months  |COHORTS    |PHILIPPINES  |0      |        0|    911|  1149|
|6 months  |COHORTS    |PHILIPPINES  |0      |        1|     51|  1149|
|6 months  |CONTENT    |PERU         |1      |        0|    194|   215|
|6 months  |CONTENT    |PERU         |1      |        1|      1|   215|
|6 months  |CONTENT    |PERU         |0      |        0|     20|   215|
|6 months  |CONTENT    |PERU         |0      |        1|      0|   215|
|6 months  |JiVitA-3   |BANGLADESH   |1      |        0|  11131| 16800|
|6 months  |JiVitA-3   |BANGLADESH   |1      |        1|    693| 16800|
|6 months  |JiVitA-3   |BANGLADESH   |0      |        0|   4651| 16800|
|6 months  |JiVitA-3   |BANGLADESH   |0      |        1|    325| 16800|
|6 months  |JiVitA-4   |BANGLADESH   |1      |        0|   3555|  4827|
|6 months  |JiVitA-4   |BANGLADESH   |1      |        1|    206|  4827|
|6 months  |JiVitA-4   |BANGLADESH   |0      |        0|   1001|  4827|
|6 months  |JiVitA-4   |BANGLADESH   |0      |        1|     65|  4827|
|6 months  |LCNI-5     |MALAWI       |1      |        0|      2|   823|
|6 months  |LCNI-5     |MALAWI       |1      |        1|      0|   823|
|6 months  |LCNI-5     |MALAWI       |0      |        0|    752|   823|
|6 months  |LCNI-5     |MALAWI       |0      |        1|     69|   823|
|6 months  |MAL-ED     |INDIA        |1      |        0|    112|   226|
|6 months  |MAL-ED     |INDIA        |1      |        1|      5|   226|
|6 months  |MAL-ED     |INDIA        |0      |        0|    105|   226|
|6 months  |MAL-ED     |INDIA        |0      |        1|      4|   226|
|6 months  |MAL-ED     |BANGLADESH   |1      |        0|    181|   224|
|6 months  |MAL-ED     |BANGLADESH   |1      |        1|      7|   224|
|6 months  |MAL-ED     |BANGLADESH   |0      |        0|     35|   224|
|6 months  |MAL-ED     |BANGLADESH   |0      |        1|      1|   224|
|6 months  |MAL-ED     |PERU         |1      |        0|     55|   241|
|6 months  |MAL-ED     |PERU         |1      |        1|      2|   241|
|6 months  |MAL-ED     |PERU         |0      |        0|    177|   241|
|6 months  |MAL-ED     |PERU         |0      |        1|      7|   241|
|6 months  |MAL-ED     |NEPAL        |1      |        0|    233|   234|
|6 months  |MAL-ED     |NEPAL        |1      |        1|      1|   234|
|6 months  |MAL-ED     |NEPAL        |0      |        0|      0|   234|
|6 months  |MAL-ED     |NEPAL        |0      |        1|      0|   234|
|6 months  |MAL-ED     |BRAZIL       |1      |        0|    182|   187|
|6 months  |MAL-ED     |BRAZIL       |1      |        1|      0|   187|
|6 months  |MAL-ED     |BRAZIL       |0      |        0|      5|   187|
|6 months  |MAL-ED     |BRAZIL       |0      |        1|      0|   187|
|6 months  |MAL-ED     |TANZANIA     |1      |        0|      0|   236|
|6 months  |MAL-ED     |TANZANIA     |1      |        1|      0|   236|
|6 months  |MAL-ED     |TANZANIA     |0      |        0|    222|   236|
|6 months  |MAL-ED     |TANZANIA     |0      |        1|     14|   236|
|6 months  |MAL-ED     |SOUTH AFRICA |1      |        0|      6|   224|
|6 months  |MAL-ED     |SOUTH AFRICA |1      |        1|      0|   224|
|6 months  |MAL-ED     |SOUTH AFRICA |0      |        0|    212|   224|
|6 months  |MAL-ED     |SOUTH AFRICA |0      |        1|      6|   224|
|6 months  |NIH-Birth  |BANGLADESH   |1      |        0|    179|   537|
|6 months  |NIH-Birth  |BANGLADESH   |1      |        1|     13|   537|
|6 months  |NIH-Birth  |BANGLADESH   |0      |        0|    323|   537|
|6 months  |NIH-Birth  |BANGLADESH   |0      |        1|     22|   537|
|6 months  |NIH-Crypto |BANGLADESH   |1      |        0|    592|   708|
|6 months  |NIH-Crypto |BANGLADESH   |1      |        1|     16|   708|
|6 months  |NIH-Crypto |BANGLADESH   |0      |        0|     94|   708|
|6 months  |NIH-Crypto |BANGLADESH   |0      |        1|      6|   708|
|6 months  |PROVIDE    |BANGLADESH   |1      |        0|     47|    49|
|6 months  |PROVIDE    |BANGLADESH   |1      |        1|      2|    49|
|6 months  |PROVIDE    |BANGLADESH   |0      |        0|      0|    49|
|6 months  |PROVIDE    |BANGLADESH   |0      |        1|      0|    49|
|24 months |COHORTS    |INDIA        |1      |        0|   1432|  4193|
|24 months |COHORTS    |INDIA        |1      |        1|    419|  4193|
|24 months |COHORTS    |INDIA        |0      |        0|   1806|  4193|
|24 months |COHORTS    |INDIA        |0      |        1|    536|  4193|
|24 months |COHORTS    |GUATEMALA    |1      |        0|     48|   782|
|24 months |COHORTS    |GUATEMALA    |1      |        1|     33|   782|
|24 months |COHORTS    |GUATEMALA    |0      |        0|    336|   782|
|24 months |COHORTS    |GUATEMALA    |0      |        1|    365|   782|
|24 months |COHORTS    |PHILIPPINES  |1      |        0|    138|  1043|
|24 months |COHORTS    |PHILIPPINES  |1      |        1|     32|  1043|
|24 months |COHORTS    |PHILIPPINES  |0      |        0|    549|  1043|
|24 months |COHORTS    |PHILIPPINES  |0      |        1|    324|  1043|
|24 months |CONTENT    |PERU         |1      |        0|    150|   164|
|24 months |CONTENT    |PERU         |1      |        1|      1|   164|
|24 months |CONTENT    |PERU         |0      |        0|     13|   164|
|24 months |CONTENT    |PERU         |0      |        1|      0|   164|
|24 months |JiVitA-3   |BANGLADESH   |1      |        0|   5114|  8627|
|24 months |JiVitA-3   |BANGLADESH   |1      |        1|    909|  8627|
|24 months |JiVitA-3   |BANGLADESH   |0      |        0|   2167|  8627|
|24 months |JiVitA-3   |BANGLADESH   |0      |        1|    437|  8627|
|24 months |JiVitA-4   |BANGLADESH   |1      |        0|   3363|  4748|
|24 months |JiVitA-4   |BANGLADESH   |1      |        1|    340|  4748|
|24 months |JiVitA-4   |BANGLADESH   |0      |        0|    933|  4748|
|24 months |JiVitA-4   |BANGLADESH   |0      |        1|    112|  4748|
|24 months |LCNI-5     |MALAWI       |1      |        0|      2|   570|
|24 months |LCNI-5     |MALAWI       |1      |        1|      0|   570|
|24 months |LCNI-5     |MALAWI       |0      |        0|    499|   570|
|24 months |LCNI-5     |MALAWI       |0      |        1|     69|   570|
|24 months |MAL-ED     |INDIA        |1      |        0|     94|   218|
|24 months |MAL-ED     |INDIA        |1      |        1|     18|   218|
|24 months |MAL-ED     |INDIA        |0      |        0|     94|   218|
|24 months |MAL-ED     |INDIA        |0      |        1|     12|   218|
|24 months |MAL-ED     |BANGLADESH   |1      |        0|    142|   195|
|24 months |MAL-ED     |BANGLADESH   |1      |        1|     20|   195|
|24 months |MAL-ED     |BANGLADESH   |0      |        0|     29|   195|
|24 months |MAL-ED     |BANGLADESH   |0      |        1|      4|   195|
|24 months |MAL-ED     |PERU         |1      |        0|     38|   174|
|24 months |MAL-ED     |PERU         |1      |        1|      3|   174|
|24 months |MAL-ED     |PERU         |0      |        0|    123|   174|
|24 months |MAL-ED     |PERU         |0      |        1|     10|   174|
|24 months |MAL-ED     |NEPAL        |1      |        0|    219|   226|
|24 months |MAL-ED     |NEPAL        |1      |        1|      7|   226|
|24 months |MAL-ED     |NEPAL        |0      |        0|      0|   226|
|24 months |MAL-ED     |NEPAL        |0      |        1|      0|   226|
|24 months |MAL-ED     |BRAZIL       |1      |        0|    142|   148|
|24 months |MAL-ED     |BRAZIL       |1      |        1|      1|   148|
|24 months |MAL-ED     |BRAZIL       |0      |        0|      5|   148|
|24 months |MAL-ED     |BRAZIL       |0      |        1|      0|   148|
|24 months |MAL-ED     |TANZANIA     |1      |        0|      0|   204|
|24 months |MAL-ED     |TANZANIA     |1      |        1|      0|   204|
|24 months |MAL-ED     |TANZANIA     |0      |        0|    137|   204|
|24 months |MAL-ED     |TANZANIA     |0      |        1|     67|   204|
|24 months |MAL-ED     |SOUTH AFRICA |1      |        0|      5|   210|
|24 months |MAL-ED     |SOUTH AFRICA |1      |        1|      0|   210|
|24 months |MAL-ED     |SOUTH AFRICA |0      |        0|    182|   210|
|24 months |MAL-ED     |SOUTH AFRICA |0      |        1|     23|   210|
|24 months |NIH-Birth  |BANGLADESH   |1      |        0|    119|   429|
|24 months |NIH-Birth  |BANGLADESH   |1      |        1|     33|   429|
|24 months |NIH-Birth  |BANGLADESH   |0      |        0|    215|   429|
|24 months |NIH-Birth  |BANGLADESH   |0      |        1|     62|   429|
|24 months |NIH-Crypto |BANGLADESH   |1      |        0|    409|   508|
|24 months |NIH-Crypto |BANGLADESH   |1      |        1|     27|   508|
|24 months |NIH-Crypto |BANGLADESH   |0      |        0|     65|   508|
|24 months |NIH-Crypto |BANGLADESH   |0      |        1|      7|   508|
|24 months |PROVIDE    |BANGLADESH   |1      |        0|     42|    46|
|24 months |PROVIDE    |BANGLADESH   |1      |        1|      4|    46|
|24 months |PROVIDE    |BANGLADESH   |0      |        0|      0|    46|
|24 months |PROVIDE    |BANGLADESH   |0      |        1|      0|    46|


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
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
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


