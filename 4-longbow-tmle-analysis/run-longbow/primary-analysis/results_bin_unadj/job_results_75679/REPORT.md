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

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country    |vagbrth | ever_swasted| n_cell|     n|
|:---------------------------|:--------------|:----------|:-------|------------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |1       |            0|    290|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |1       |            1|     50|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |0       |            0|     23|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |0       |            1|      5|   368|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH |1       |            0|  24035| 26332|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH |1       |            1|    890| 26332|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH |0       |            0|   1360| 26332|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH |0       |            1|     47| 26332|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH |1       |            0|   3969|  4503|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH |1       |            1|    180|  4503|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH |0       |            0|    337|  4503|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH |0       |            1|     17|  4503|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |1       |            0|    268|   480|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |1       |            1|      8|   480|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |0       |            0|    198|   480|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |0       |            1|      6|   480|
|0-24 months (no birth wast) |PROBIT         |BELARUS    |1       |            0|  14828| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS    |1       |            1|    178| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS    |0       |            0|   1847| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS    |0       |            1|     26| 16879|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |1       |            0|    516|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |1       |            1|     12|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |0       |            0|    152|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |0       |            1|      7|   687|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA   |1       |            0|   2066|  2366|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA   |1       |            1|    112|  2366|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA   |0       |            0|    181|  2366|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA   |0       |            1|      7|  2366|
|0-24 months (no birth wast) |Vellore Crypto |INDIA      |1       |            0|    270|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA      |1       |            1|     61|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA      |0       |            0|     62|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA      |0       |            1|     16|   409|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE   |1       |            0|  11972| 13517|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE   |1       |            1|    444| 13517|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE   |0       |            0|   1069| 13517|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE   |0       |            1|     32| 13517|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA      |1       |            0|    297|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA      |1       |            1|     27|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA      |0       |            0|     23|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA      |0       |            1|      3|   350|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH |1       |            0|  24239| 26040|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH |1       |            1|    409| 26040|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH |0       |            0|   1369| 26040|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH |0       |            1|     23| 26040|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH |1       |            0|   3820|  4154|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH |1       |            1|     19|  4154|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH |0       |            0|    315|  4154|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH |0       |            1|      0|  4154|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH |1       |            0|    272|   476|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH |1       |            1|      1|   476|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH |0       |            0|    203|   476|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH |0       |            1|      0|   476|
|0-6 months (no birth wast)  |PROBIT         |BELARUS    |1       |            0|  14671| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS    |1       |            1|    167| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS    |0       |            0|   1830| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS    |0       |            1|     25| 16693|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH |1       |            0|    521|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH |1       |            1|      4|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH |0       |            0|    156|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH |0       |            1|      2|   683|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA   |1       |            0|   2133|  2358|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA   |1       |            1|     38|  2358|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA   |0       |            0|    185|  2358|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA   |0       |            1|      2|  2358|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA      |1       |            0|    271|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA      |1       |            1|     42|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA      |0       |            0|     62|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA      |0       |            1|     15|   390|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE   |1       |            0|  12044| 13258|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE   |1       |            1|    125| 13258|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE   |0       |            0|   1083| 13258|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE   |0       |            1|      6| 13258|
|6-24 months                 |CMC-V-BCS-2002 |INDIA      |1       |            0|    317|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA      |1       |            1|     28|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA      |0       |            0|     26|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA      |0       |            1|      2|   373|
|6-24 months                 |JiVitA-3       |BANGLADESH |1       |            0|  15652| 17178|
|6-24 months                 |JiVitA-3       |BANGLADESH |1       |            1|    520| 17178|
|6-24 months                 |JiVitA-3       |BANGLADESH |0       |            0|    981| 17178|
|6-24 months                 |JiVitA-3       |BANGLADESH |0       |            1|     25| 17178|
|6-24 months                 |JiVitA-4       |BANGLADESH |1       |            0|   3995|  4531|
|6-24 months                 |JiVitA-4       |BANGLADESH |1       |            1|    180|  4531|
|6-24 months                 |JiVitA-4       |BANGLADESH |0       |            0|    336|  4531|
|6-24 months                 |JiVitA-4       |BANGLADESH |0       |            1|     20|  4531|
|6-24 months                 |NIH-Crypto     |BANGLADESH |1       |            0|    259|   464|
|6-24 months                 |NIH-Crypto     |BANGLADESH |1       |            1|      7|   464|
|6-24 months                 |NIH-Crypto     |BANGLADESH |0       |            0|    192|   464|
|6-24 months                 |NIH-Crypto     |BANGLADESH |0       |            1|      6|   464|
|6-24 months                 |PROBIT         |BELARUS    |1       |            0|  14742| 16598|
|6-24 months                 |PROBIT         |BELARUS    |1       |            1|     11| 16598|
|6-24 months                 |PROBIT         |BELARUS    |0       |            0|   1844| 16598|
|6-24 months                 |PROBIT         |BELARUS    |0       |            1|      1| 16598|
|6-24 months                 |PROVIDE        |BANGLADESH |1       |            0|    474|   615|
|6-24 months                 |PROVIDE        |BANGLADESH |1       |            1|      8|   615|
|6-24 months                 |PROVIDE        |BANGLADESH |0       |            0|    128|   615|
|6-24 months                 |PROVIDE        |BANGLADESH |0       |            1|      5|   615|
|6-24 months                 |TanzaniaChild2 |TANZANIA   |1       |            0|   1782|  2004|
|6-24 months                 |TanzaniaChild2 |TANZANIA   |1       |            1|     77|  2004|
|6-24 months                 |TanzaniaChild2 |TANZANIA   |0       |            0|    139|  2004|
|6-24 months                 |TanzaniaChild2 |TANZANIA   |0       |            1|      6|  2004|
|6-24 months                 |Vellore Crypto |INDIA      |1       |            0|    308|   410|
|6-24 months                 |Vellore Crypto |INDIA      |1       |            1|     24|   410|
|6-24 months                 |Vellore Crypto |INDIA      |0       |            0|     76|   410|
|6-24 months                 |Vellore Crypto |INDIA      |0       |            1|      2|   410|
|6-24 months                 |ZVITAMBO       |ZIMBABWE   |1       |            0|   9537| 10718|
|6-24 months                 |ZVITAMBO       |ZIMBABWE   |1       |            1|    329| 10718|
|6-24 months                 |ZVITAMBO       |ZIMBABWE   |0       |            0|    826| 10718|
|6-24 months                 |ZVITAMBO       |ZIMBABWE   |0       |            1|     26| 10718|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


