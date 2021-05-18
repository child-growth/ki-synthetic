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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid        |country    |hdlvry | ever_stunted| n_cell|    n|
|:--------------------------|:--------------|:----------|:------|------------:|------:|----:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA      |1      |            0|      0|  294|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA      |1      |            1|      2|  294|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA      |0      |            0|     28|  294|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA      |0      |            1|    264|  294|
|0-24 months (no birth st.) |COHORTS        |INDIA      |1      |            0|   1210| 4461|
|0-24 months (no birth st.) |COHORTS        |INDIA      |1      |            1|    508| 4461|
|0-24 months (no birth st.) |COHORTS        |INDIA      |0      |            0|   2016| 4461|
|0-24 months (no birth st.) |COHORTS        |INDIA      |0      |            1|    727| 4461|
|0-24 months (no birth st.) |EE             |PAKISTAN   |1      |            0|     18|  211|
|0-24 months (no birth st.) |EE             |PAKISTAN   |1      |            1|     51|  211|
|0-24 months (no birth st.) |EE             |PAKISTAN   |0      |            0|     23|  211|
|0-24 months (no birth st.) |EE             |PAKISTAN   |0      |            1|    119|  211|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL      |1      |            0|    174|  535|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL      |1      |            1|    231|  535|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL      |0      |            0|     65|  535|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL      |0      |            1|     65|  535|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH |1      |            0|    164|  245|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH |1      |            1|     46|  245|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH |0      |            0|     23|  245|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH |0      |            1|     12|  245|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH |1      |            0|   1427| 3242|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH |1      |            1|    974| 3242|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH |0      |            0|    501| 3242|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH |0      |            1|    340| 3242|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH |1      |            0|     74|  653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH |1      |            1|     57|  653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH |0      |            0|    322|  653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH |0      |            1|    200|  653|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH |1      |            0|     85|  633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH |1      |            1|     76|  633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH |0      |            0|    310|  633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH |0      |            1|    162|  633|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA      |1      |            0|    331|  897|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA      |1      |            1|    449|  897|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA      |0      |            0|     50|  897|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA      |0      |            1|     67|  897|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA      |1      |            0|     52|  257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA      |1      |            1|    151|  257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA      |0      |            0|     20|  257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA      |0      |            1|     34|  257|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA   |1      |            0|     23| 2135|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA   |1      |            1|     11| 2135|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA   |0      |            0|   1472| 2135|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA   |0      |            1|    629| 2135|
|0-24 months (no birth st.) |Vellore Crypto |INDIA      |1      |            0|      2|  360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA      |1      |            1|      8|  360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA      |0      |            0|    145|  360|
|0-24 months (no birth st.) |Vellore Crypto |INDIA      |0      |            1|    205|  360|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA      |1      |            0|      1|  290|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA      |1      |            1|      1|  290|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA      |0      |            0|    177|  290|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA      |0      |            1|    111|  290|
|0-6 months (no birth st.)  |COHORTS        |INDIA      |1      |            0|   1535| 4319|
|0-6 months (no birth st.)  |COHORTS        |INDIA      |1      |            1|    130| 4319|
|0-6 months (no birth st.)  |COHORTS        |INDIA      |0      |            0|   2475| 4319|
|0-6 months (no birth st.)  |COHORTS        |INDIA      |0      |            1|    179| 4319|
|0-6 months (no birth st.)  |EE             |PAKISTAN   |1      |            0|     31|  211|
|0-6 months (no birth st.)  |EE             |PAKISTAN   |1      |            1|     38|  211|
|0-6 months (no birth st.)  |EE             |PAKISTAN   |0      |            0|     63|  211|
|0-6 months (no birth st.)  |EE             |PAKISTAN   |0      |            1|     79|  211|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL      |1      |            0|    336|  535|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL      |1      |            1|     69|  535|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL      |0      |            0|    106|  535|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL      |0      |            1|     24|  535|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH |1      |            0|    182|  244|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH |1      |            1|     27|  244|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH |0      |            0|     30|  244|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH |0      |            1|      5|  244|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH |1      |            0|   2076| 3062|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH |1      |            1|    200| 3062|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH |0      |            0|    727| 3062|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH |0      |            1|     59| 3062|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH |1      |            0|    101|  653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH |1      |            1|     30|  653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH |0      |            0|    428|  653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH |0      |            1|     94|  653|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH |1      |            0|    128|  633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH |1      |            1|     33|  633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH |0      |            0|    404|  633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH |0      |            1|     68|  633|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA      |1      |            0|    619|  896|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA      |1      |            1|    160|  896|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA      |0      |            0|     99|  896|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA      |0      |            1|     18|  896|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA      |1      |            0|    200|  257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA      |1      |            1|      3|  257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA      |0      |            0|     54|  257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA      |0      |            1|      0|  257|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA   |1      |            0|     28| 2135|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA   |1      |            1|      6| 2135|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA   |0      |            0|   1814| 2135|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA   |0      |            1|    287| 2135|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA      |1      |            0|      6|  360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA      |1      |            1|      4|  360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA      |0      |            0|    230|  360|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA      |0      |            1|    120|  360|
|6-24 months                |CMC-V-BCS-2002 |INDIA      |1      |            0|      0|  183|
|6-24 months                |CMC-V-BCS-2002 |INDIA      |1      |            1|      1|  183|
|6-24 months                |CMC-V-BCS-2002 |INDIA      |0      |            0|     28|  183|
|6-24 months                |CMC-V-BCS-2002 |INDIA      |0      |            1|    154|  183|
|6-24 months                |COHORTS        |INDIA      |1      |            0|   1115| 3927|
|6-24 months                |COHORTS        |INDIA      |1      |            1|    392| 3927|
|6-24 months                |COHORTS        |INDIA      |0      |            0|   1853| 3927|
|6-24 months                |COHORTS        |INDIA      |0      |            1|    567| 3927|
|6-24 months                |EE             |PAKISTAN   |1      |            0|     17|   92|
|6-24 months                |EE             |PAKISTAN   |1      |            1|     13|   92|
|6-24 months                |EE             |PAKISTAN   |0      |            0|     22|   92|
|6-24 months                |EE             |PAKISTAN   |0      |            1|     40|   92|
|6-24 months                |GMS-Nepal      |NEPAL      |1      |            0|    118|  365|
|6-24 months                |GMS-Nepal      |NEPAL      |1      |            1|    162|  365|
|6-24 months                |GMS-Nepal      |NEPAL      |0      |            0|     44|  365|
|6-24 months                |GMS-Nepal      |NEPAL      |0      |            1|     41|  365|
|6-24 months                |JiVitA-3       |BANGLADESH |1      |            0|    110|  147|
|6-24 months                |JiVitA-3       |BANGLADESH |1      |            1|     19|  147|
|6-24 months                |JiVitA-3       |BANGLADESH |0      |            0|     11|  147|
|6-24 months                |JiVitA-3       |BANGLADESH |0      |            1|      7|  147|
|6-24 months                |JiVitA-4       |BANGLADESH |1      |            0|   1421| 3040|
|6-24 months                |JiVitA-4       |BANGLADESH |1      |            1|    826| 3040|
|6-24 months                |JiVitA-4       |BANGLADESH |0      |            0|    499| 3040|
|6-24 months                |JiVitA-4       |BANGLADESH |0      |            1|    294| 3040|
|6-24 months                |NIH-Crypto     |BANGLADESH |1      |            0|     71|  506|
|6-24 months                |NIH-Crypto     |BANGLADESH |1      |            1|     27|  506|
|6-24 months                |NIH-Crypto     |BANGLADESH |0      |            0|    302|  506|
|6-24 months                |NIH-Crypto     |BANGLADESH |0      |            1|    106|  506|
|6-24 months                |PROVIDE        |BANGLADESH |1      |            0|     67|  456|
|6-24 months                |PROVIDE        |BANGLADESH |1      |            1|     43|  456|
|6-24 months                |PROVIDE        |BANGLADESH |0      |            0|    252|  456|
|6-24 months                |PROVIDE        |BANGLADESH |0      |            1|     94|  456|
|6-24 months                |SAS-CompFeed   |INDIA      |1      |            0|    286|  664|
|6-24 months                |SAS-CompFeed   |INDIA      |1      |            1|    290|  664|
|6-24 months                |SAS-CompFeed   |INDIA      |0      |            0|     38|  664|
|6-24 months                |SAS-CompFeed   |INDIA      |0      |            1|     50|  664|
|6-24 months                |SAS-FoodSuppl  |INDIA      |1      |            0|     41|  243|
|6-24 months                |SAS-FoodSuppl  |INDIA      |1      |            1|    150|  243|
|6-24 months                |SAS-FoodSuppl  |INDIA      |0      |            0|     18|  243|
|6-24 months                |SAS-FoodSuppl  |INDIA      |0      |            1|     34|  243|
|6-24 months                |TanzaniaChild2 |TANZANIA   |1      |            0|     15| 1533|
|6-24 months                |TanzaniaChild2 |TANZANIA   |1      |            1|      5| 1533|
|6-24 months                |TanzaniaChild2 |TANZANIA   |0      |            0|   1171| 1533|
|6-24 months                |TanzaniaChild2 |TANZANIA   |0      |            1|    342| 1533|
|6-24 months                |Vellore Crypto |INDIA      |1      |            0|      2|  236|
|6-24 months                |Vellore Crypto |INDIA      |1      |            1|      4|  236|
|6-24 months                |Vellore Crypto |INDIA      |0      |            0|    145|  236|
|6-24 months                |Vellore Crypto |INDIA      |0      |            1|     85|  236|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


