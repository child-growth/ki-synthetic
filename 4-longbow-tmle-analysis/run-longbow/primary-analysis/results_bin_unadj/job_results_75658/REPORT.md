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

**Outcome Variable:** ever_wasted

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

|agecat                      |studyid        |country    |hdlvry | ever_wasted| n_cell|    n|
|:---------------------------|:--------------|:----------|:------|-----------:|------:|----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |1      |           0|      0|  366|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |1      |           1|      2|  366|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |0      |           0|    201|  366|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |0      |           1|    163|  366|
|0-24 months (no birth wast) |COHORTS        |INDIA      |1      |           0|   1541| 4923|
|0-24 months (no birth wast) |COHORTS        |INDIA      |1      |           1|    354| 4923|
|0-24 months (no birth wast) |COHORTS        |INDIA      |0      |           0|   2477| 4923|
|0-24 months (no birth wast) |COHORTS        |INDIA      |0      |           1|    551| 4923|
|0-24 months (no birth wast) |EE             |PAKISTAN   |1      |           0|     55|  375|
|0-24 months (no birth wast) |EE             |PAKISTAN   |1      |           1|     67|  375|
|0-24 months (no birth wast) |EE             |PAKISTAN   |0      |           0|    118|  375|
|0-24 months (no birth wast) |EE             |PAKISTAN   |0      |           1|    135|  375|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL      |1      |           0|    230|  609|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL      |1      |           1|    231|  609|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL      |0      |           0|     71|  609|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL      |0      |           1|     77|  609|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH |1      |           0|    245|  349|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH |1      |           1|     57|  349|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH |0      |           0|     39|  349|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH |0      |           1|      8|  349|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH |1      |           0|   2477| 4486|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH |1      |           1|    845| 4486|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH |0      |           0|    855| 4486|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH |0      |           1|    309| 4486|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |1      |           0|    129|  754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |1      |           1|     27|  754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |0      |           0|    517|  754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |0      |           1|     81|  754|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |1      |           0|    142|  687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |1      |           1|     38|  687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |0      |           0|    423|  687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |0      |           1|     84|  687|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA      |1      |           0|    670| 1225|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA      |1      |           1|    394| 1225|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA      |0      |           0|    105| 1225|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA      |0      |           1|     56| 1225|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA      |1      |           0|    205|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA      |1      |           1|    110|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA      |0      |           0|     49|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA      |0      |           1|     33|  397|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA   |1      |           0|     31| 2277|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA   |1      |           1|      3| 2277|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA   |0      |           0|   1793| 2277|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA   |0      |           1|    450| 2277|
|0-24 months (no birth wast) |Vellore Crypto |INDIA      |1      |           0|      3|  409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA      |1      |           1|      8|  409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA      |0      |           0|    193|  409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA      |0      |           1|    205|  409|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA      |1      |           0|      1|  349|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA      |1      |           1|      1|  349|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA      |0      |           0|    240|  349|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA      |0      |           1|    107|  349|
|0-6 months (no birth wast)  |COHORTS        |INDIA      |1      |           0|   1577| 4477|
|0-6 months (no birth wast)  |COHORTS        |INDIA      |1      |           1|    139| 4477|
|0-6 months (no birth wast)  |COHORTS        |INDIA      |0      |           0|   2539| 4477|
|0-6 months (no birth wast)  |COHORTS        |INDIA      |0      |           1|    222| 4477|
|0-6 months (no birth wast)  |EE             |PAKISTAN   |1      |           0|    101|  373|
|0-6 months (no birth wast)  |EE             |PAKISTAN   |1      |           1|     20|  373|
|0-6 months (no birth wast)  |EE             |PAKISTAN   |0      |           0|    192|  373|
|0-6 months (no birth wast)  |EE             |PAKISTAN   |0      |           1|     60|  373|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL      |1      |           0|    361|  593|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL      |1      |           1|     86|  593|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL      |0      |           0|    113|  593|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL      |0      |           1|     33|  593|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH |1      |           0|    280|  345|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH |1      |           1|     19|  345|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH |0      |           0|     44|  345|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH |0      |           1|      2|  345|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH |1      |           0|   2999| 4139|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH |1      |           1|     79| 4139|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH |0      |           0|   1031| 4139|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH |0      |           1|     30| 4139|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH |1      |           0|    151|  749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH |1      |           1|      5|  749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH |0      |           0|    578|  749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH |0      |           1|     15|  749|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH |1      |           0|    168|  683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH |1      |           1|     11|  683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH |0      |           0|    478|  683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH |0      |           1|     26|  683|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA      |1      |           0|    910| 1201|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA      |1      |           1|    138| 1201|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA      |0      |           0|    136| 1201|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA      |0      |           1|     17| 1201|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA      |1      |           0|    271|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA      |1      |           1|      0|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA      |0      |           0|     70|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA      |0      |           1|      0|  341|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA   |1      |           0|     32| 2269|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA   |1      |           1|      1| 2269|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA   |0      |           0|   2040| 2269|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA   |0      |           1|    196| 2269|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA      |1      |           0|      6|  390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA      |1      |           1|      4|  390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA      |0      |           0|    251|  390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA      |0      |           1|    129|  390|
|6-24 months                 |CMC-V-BCS-2002 |INDIA      |1      |           0|      1|  370|
|6-24 months                 |CMC-V-BCS-2002 |INDIA      |1      |           1|      1|  370|
|6-24 months                 |CMC-V-BCS-2002 |INDIA      |0      |           0|    271|  370|
|6-24 months                 |CMC-V-BCS-2002 |INDIA      |0      |           1|     97|  370|
|6-24 months                 |COHORTS        |INDIA      |1      |           0|   1615| 4779|
|6-24 months                 |COHORTS        |INDIA      |1      |           1|    235| 4779|
|6-24 months                 |COHORTS        |INDIA      |0      |           0|   2576| 4779|
|6-24 months                 |COHORTS        |INDIA      |0      |           1|    353| 4779|
|6-24 months                 |EE             |PAKISTAN   |1      |           0|     69|  372|
|6-24 months                 |EE             |PAKISTAN   |1      |           1|     51|  372|
|6-24 months                 |EE             |PAKISTAN   |0      |           0|    143|  372|
|6-24 months                 |EE             |PAKISTAN   |0      |           1|    109|  372|
|6-24 months                 |GMS-Nepal      |NEPAL      |1      |           0|    222|  543|
|6-24 months                 |GMS-Nepal      |NEPAL      |1      |           1|    194|  543|
|6-24 months                 |GMS-Nepal      |NEPAL      |0      |           0|     63|  543|
|6-24 months                 |GMS-Nepal      |NEPAL      |0      |           1|     64|  543|
|6-24 months                 |JiVitA-3       |BANGLADESH |1      |           0|    175|  243|
|6-24 months                 |JiVitA-3       |BANGLADESH |1      |           1|     40|  243|
|6-24 months                 |JiVitA-3       |BANGLADESH |0      |           0|     22|  243|
|6-24 months                 |JiVitA-3       |BANGLADESH |0      |           1|      6|  243|
|6-24 months                 |JiVitA-4       |BANGLADESH |1      |           0|   2528| 4514|
|6-24 months                 |JiVitA-4       |BANGLADESH |1      |           1|    818| 4514|
|6-24 months                 |JiVitA-4       |BANGLADESH |0      |           0|    874| 4514|
|6-24 months                 |JiVitA-4       |BANGLADESH |0      |           1|    294| 4514|
|6-24 months                 |NIH-Crypto     |BANGLADESH |1      |           0|    127|  730|
|6-24 months                 |NIH-Crypto     |BANGLADESH |1      |           1|     25|  730|
|6-24 months                 |NIH-Crypto     |BANGLADESH |0      |           0|    507|  730|
|6-24 months                 |NIH-Crypto     |BANGLADESH |0      |           1|     71|  730|
|6-24 months                 |PROVIDE        |BANGLADESH |1      |           0|    135|  615|
|6-24 months                 |PROVIDE        |BANGLADESH |1      |           1|     30|  615|
|6-24 months                 |PROVIDE        |BANGLADESH |0      |           0|    381|  615|
|6-24 months                 |PROVIDE        |BANGLADESH |0      |           1|     69|  615|
|6-24 months                 |SAS-CompFeed   |INDIA      |1      |           0|    683| 1131|
|6-24 months                 |SAS-CompFeed   |INDIA      |1      |           1|    303| 1131|
|6-24 months                 |SAS-CompFeed   |INDIA      |0      |           0|    101| 1131|
|6-24 months                 |SAS-CompFeed   |INDIA      |0      |           1|     44| 1131|
|6-24 months                 |SAS-FoodSuppl  |INDIA      |1      |           0|    213|  402|
|6-24 months                 |SAS-FoodSuppl  |INDIA      |1      |           1|    110|  402|
|6-24 months                 |SAS-FoodSuppl  |INDIA      |0      |           0|     46|  402|
|6-24 months                 |SAS-FoodSuppl  |INDIA      |0      |           1|     33|  402|
|6-24 months                 |TanzaniaChild2 |TANZANIA   |1      |           0|     22| 1931|
|6-24 months                 |TanzaniaChild2 |TANZANIA   |1      |           1|      2| 1931|
|6-24 months                 |TanzaniaChild2 |TANZANIA   |0      |           0|   1601| 1931|
|6-24 months                 |TanzaniaChild2 |TANZANIA   |0      |           1|    306| 1931|
|6-24 months                 |Vellore Crypto |INDIA      |1      |           0|      7|  410|
|6-24 months                 |Vellore Crypto |INDIA      |1      |           1|      4|  410|
|6-24 months                 |Vellore Crypto |INDIA      |0      |           0|    276|  410|
|6-24 months                 |Vellore Crypto |INDIA      |0      |           1|    123|  410|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: Vellore Crypto, country: INDIA
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

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
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


