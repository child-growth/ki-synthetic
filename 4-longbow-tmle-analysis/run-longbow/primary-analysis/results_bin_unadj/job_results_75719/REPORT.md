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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |nchldlt5 | pers_wast| n_cell|     n|
|:-----------|:--------------|:------------|:--------|---------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |1        |         0|    479|  1643|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |1        |         1|     60|  1643|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |2+       |         0|    970|  1643|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |2+       |         1|    134|  1643|
|0-24 months |JiVitA-3       |BANGLADESH   |1        |         0|   9460| 15796|
|0-24 months |JiVitA-3       |BANGLADESH   |1        |         1|    575| 15796|
|0-24 months |JiVitA-3       |BANGLADESH   |2+       |         0|   5438| 15796|
|0-24 months |JiVitA-3       |BANGLADESH   |2+       |         1|    323| 15796|
|0-24 months |LCNI-5         |MALAWI       |1        |         0|    344|   708|
|0-24 months |LCNI-5         |MALAWI       |1        |         1|      3|   708|
|0-24 months |LCNI-5         |MALAWI       |2+       |         0|    358|   708|
|0-24 months |LCNI-5         |MALAWI       |2+       |         1|      3|   708|
|0-24 months |NIH-Crypto     |BANGLADESH   |1        |         0|    474|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |1        |         1|     16|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |2+       |         0|    230|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |2+       |         1|     10|   730|
|0-24 months |PROVIDE        |BANGLADESH   |1        |         0|    457|   641|
|0-24 months |PROVIDE        |BANGLADESH   |1        |         1|     11|   641|
|0-24 months |PROVIDE        |BANGLADESH   |2+       |         0|    169|   641|
|0-24 months |PROVIDE        |BANGLADESH   |2+       |         1|      4|   641|
|0-24 months |TanzaniaChild2 |TANZANIA     |1        |         0|   1454|  2165|
|0-24 months |TanzaniaChild2 |TANZANIA     |1        |         1|     39|  2165|
|0-24 months |TanzaniaChild2 |TANZANIA     |2+       |         0|    653|  2165|
|0-24 months |TanzaniaChild2 |TANZANIA     |2+       |         1|     19|  2165|
|0-24 months |Vellore Crypto |INDIA        |1        |         0|     70|   410|
|0-24 months |Vellore Crypto |INDIA        |1        |         1|     10|   410|
|0-24 months |Vellore Crypto |INDIA        |2+       |         0|    292|   410|
|0-24 months |Vellore Crypto |INDIA        |2+       |         1|     38|   410|
|0-6 months  |JiVitA-3       |BANGLADESH   |1        |         0|     27|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |1        |         1|      1|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |2+       |         0|     21|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |2+       |         1|      1|    50|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1        |         0|    159|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1        |         1|      5|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |2+       |         0|     86|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |2+       |         1|      0|   250|
|0-6 months  |PROVIDE        |BANGLADESH   |1        |         0|    458|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |1        |         1|      8|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |2+       |         0|    166|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |2+       |         1|      6|   638|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1        |         0|   1381|  2060|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1        |         1|     38|  2060|
|0-6 months  |TanzaniaChild2 |TANZANIA     |2+       |         0|    627|  2060|
|0-6 months  |TanzaniaChild2 |TANZANIA     |2+       |         1|     14|  2060|
|0-6 months  |Vellore Crypto |INDIA        |1        |         0|     67|   402|
|0-6 months  |Vellore Crypto |INDIA        |1        |         1|     11|   402|
|0-6 months  |Vellore Crypto |INDIA        |2+       |         0|    271|   402|
|0-6 months  |Vellore Crypto |INDIA        |2+       |         1|     53|   402|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |1        |         0|    479|  1643|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |1        |         1|     60|  1643|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |2+       |         0|    970|  1643|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |2+       |         1|    134|  1643|
|6-24 months |JiVitA-3       |BANGLADESH   |1        |         0|   9460| 15796|
|6-24 months |JiVitA-3       |BANGLADESH   |1        |         1|    575| 15796|
|6-24 months |JiVitA-3       |BANGLADESH   |2+       |         0|   5438| 15796|
|6-24 months |JiVitA-3       |BANGLADESH   |2+       |         1|    323| 15796|
|6-24 months |LCNI-5         |MALAWI       |1        |         0|    344|   708|
|6-24 months |LCNI-5         |MALAWI       |1        |         1|      3|   708|
|6-24 months |LCNI-5         |MALAWI       |2+       |         0|    358|   708|
|6-24 months |LCNI-5         |MALAWI       |2+       |         1|      3|   708|
|6-24 months |NIH-Crypto     |BANGLADESH   |1        |         0|    474|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |1        |         1|     16|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |2+       |         0|    230|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |2+       |         1|     10|   730|
|6-24 months |PROVIDE        |BANGLADESH   |1        |         0|    457|   641|
|6-24 months |PROVIDE        |BANGLADESH   |1        |         1|     11|   641|
|6-24 months |PROVIDE        |BANGLADESH   |2+       |         0|    169|   641|
|6-24 months |PROVIDE        |BANGLADESH   |2+       |         1|      4|   641|
|6-24 months |TanzaniaChild2 |TANZANIA     |1        |         0|   1454|  2165|
|6-24 months |TanzaniaChild2 |TANZANIA     |1        |         1|     39|  2165|
|6-24 months |TanzaniaChild2 |TANZANIA     |2+       |         0|    653|  2165|
|6-24 months |TanzaniaChild2 |TANZANIA     |2+       |         1|     19|  2165|
|6-24 months |Vellore Crypto |INDIA        |1        |         0|     70|   410|
|6-24 months |Vellore Crypto |INDIA        |1        |         1|     10|   410|
|6-24 months |Vellore Crypto |INDIA        |2+       |         0|    292|   410|
|6-24 months |Vellore Crypto |INDIA        |2+       |         1|     38|   410|


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
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


