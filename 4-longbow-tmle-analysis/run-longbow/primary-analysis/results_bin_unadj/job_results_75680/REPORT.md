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

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country    |hdlvry | ever_swasted| n_cell|    n|
|:---------------------------|:--------------|:----------|:------|------------:|------:|----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |1      |            0|      2|  366|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |1      |            1|      0|  366|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |0      |            0|    309|  366|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |0      |            1|     55|  366|
|0-24 months (no birth wast) |COHORTS        |INDIA      |1      |            0|   1806| 4923|
|0-24 months (no birth wast) |COHORTS        |INDIA      |1      |            1|     89| 4923|
|0-24 months (no birth wast) |COHORTS        |INDIA      |0      |            0|   2896| 4923|
|0-24 months (no birth wast) |COHORTS        |INDIA      |0      |            1|    132| 4923|
|0-24 months (no birth wast) |EE             |PAKISTAN   |1      |            0|    100|  375|
|0-24 months (no birth wast) |EE             |PAKISTAN   |1      |            1|     22|  375|
|0-24 months (no birth wast) |EE             |PAKISTAN   |0      |            0|    209|  375|
|0-24 months (no birth wast) |EE             |PAKISTAN   |0      |            1|     44|  375|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL      |1      |            0|    371|  609|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL      |1      |            1|     90|  609|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL      |0      |            0|    116|  609|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL      |0      |            1|     32|  609|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH |1      |            0|    293|  349|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH |1      |            1|      9|  349|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH |0      |            0|     44|  349|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH |0      |            1|      3|  349|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH |1      |            0|   3175| 4486|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH |1      |            1|    147| 4486|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH |0      |            0|   1114| 4486|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH |0      |            1|     50| 4486|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |1      |            0|    153|  754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |1      |            1|      3|  754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |0      |            0|    581|  754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |0      |            1|     17|  754|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |1      |            0|    176|  687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |1      |            1|      4|  687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |0      |            0|    492|  687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |0      |            1|     15|  687|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA      |1      |            0|    937| 1225|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA      |1      |            1|    127| 1225|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA      |0      |            0|    145| 1225|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA      |0      |            1|     16| 1225|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA      |1      |            0|    290|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA      |1      |            1|     25|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA      |0      |            0|     67|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA      |0      |            1|     15|  397|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA   |1      |            0|     33| 2277|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA   |1      |            1|      1| 2277|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA   |0      |            0|   2130| 2277|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA   |0      |            1|    113| 2277|
|0-24 months (no birth wast) |Vellore Crypto |INDIA      |1      |            0|      8|  409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA      |1      |            1|      3|  409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA      |0      |            0|    324|  409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA      |0      |            1|     74|  409|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA      |1      |            0|      2|  349|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA      |1      |            1|      0|  349|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA      |0      |            0|    317|  349|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA      |0      |            1|     30|  349|
|0-6 months (no birth wast)  |COHORTS        |INDIA      |1      |            0|   1684| 4477|
|0-6 months (no birth wast)  |COHORTS        |INDIA      |1      |            1|     32| 4477|
|0-6 months (no birth wast)  |COHORTS        |INDIA      |0      |            0|   2716| 4477|
|0-6 months (no birth wast)  |COHORTS        |INDIA      |0      |            1|     45| 4477|
|0-6 months (no birth wast)  |EE             |PAKISTAN   |1      |            0|    114|  373|
|0-6 months (no birth wast)  |EE             |PAKISTAN   |1      |            1|      7|  373|
|0-6 months (no birth wast)  |EE             |PAKISTAN   |0      |            0|    239|  373|
|0-6 months (no birth wast)  |EE             |PAKISTAN   |0      |            1|     13|  373|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL      |1      |            0|    426|  593|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL      |1      |            1|     21|  593|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL      |0      |            0|    136|  593|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL      |0      |            1|     10|  593|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH |1      |            0|    296|  345|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH |1      |            1|      3|  345|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH |0      |            0|     45|  345|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH |0      |            1|      1|  345|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH |1      |            0|   3062| 4139|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH |1      |            1|     16| 4139|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH |0      |            0|   1058| 4139|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH |0      |            1|      3| 4139|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH |1      |            0|    156|  749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH |1      |            1|      0|  749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH |0      |            0|    592|  749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH |0      |            1|      1|  749|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH |1      |            0|    179|  683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH |1      |            1|      0|  683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH |0      |            0|    498|  683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH |0      |            1|      6|  683|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA      |1      |            0|   1018| 1201|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA      |1      |            1|     30| 1201|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA      |0      |            0|    148| 1201|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA      |0      |            1|      5| 1201|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA      |1      |            0|    271|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA      |1      |            1|      0|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA      |0      |            0|     70|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA      |0      |            1|      0|  341|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA   |1      |            0|     32| 2269|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA   |1      |            1|      1| 2269|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA   |0      |            0|   2197| 2269|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA   |0      |            1|     39| 2269|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA      |1      |            0|      9|  390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA      |1      |            1|      1|  390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA      |0      |            0|    324|  390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA      |0      |            1|     56|  390|
|6-24 months                 |CMC-V-BCS-2002 |INDIA      |1      |            0|      2|  370|
|6-24 months                 |CMC-V-BCS-2002 |INDIA      |1      |            1|      0|  370|
|6-24 months                 |CMC-V-BCS-2002 |INDIA      |0      |            0|    338|  370|
|6-24 months                 |CMC-V-BCS-2002 |INDIA      |0      |            1|     30|  370|
|6-24 months                 |COHORTS        |INDIA      |1      |            0|   1784| 4779|
|6-24 months                 |COHORTS        |INDIA      |1      |            1|     66| 4779|
|6-24 months                 |COHORTS        |INDIA      |0      |            0|   2831| 4779|
|6-24 months                 |COHORTS        |INDIA      |0      |            1|     98| 4779|
|6-24 months                 |EE             |PAKISTAN   |1      |            0|    105|  372|
|6-24 months                 |EE             |PAKISTAN   |1      |            1|     15|  372|
|6-24 months                 |EE             |PAKISTAN   |0      |            0|    216|  372|
|6-24 months                 |EE             |PAKISTAN   |0      |            1|     36|  372|
|6-24 months                 |GMS-Nepal      |NEPAL      |1      |            0|    337|  543|
|6-24 months                 |GMS-Nepal      |NEPAL      |1      |            1|     79|  543|
|6-24 months                 |GMS-Nepal      |NEPAL      |0      |            0|    103|  543|
|6-24 months                 |GMS-Nepal      |NEPAL      |0      |            1|     24|  543|
|6-24 months                 |JiVitA-3       |BANGLADESH |1      |            0|    209|  243|
|6-24 months                 |JiVitA-3       |BANGLADESH |1      |            1|      6|  243|
|6-24 months                 |JiVitA-3       |BANGLADESH |0      |            0|     26|  243|
|6-24 months                 |JiVitA-3       |BANGLADESH |0      |            1|      2|  243|
|6-24 months                 |JiVitA-4       |BANGLADESH |1      |            0|   3198| 4514|
|6-24 months                 |JiVitA-4       |BANGLADESH |1      |            1|    148| 4514|
|6-24 months                 |JiVitA-4       |BANGLADESH |0      |            0|   1116| 4514|
|6-24 months                 |JiVitA-4       |BANGLADESH |0      |            1|     52| 4514|
|6-24 months                 |NIH-Crypto     |BANGLADESH |1      |            0|    149|  730|
|6-24 months                 |NIH-Crypto     |BANGLADESH |1      |            1|      3|  730|
|6-24 months                 |NIH-Crypto     |BANGLADESH |0      |            0|    561|  730|
|6-24 months                 |NIH-Crypto     |BANGLADESH |0      |            1|     17|  730|
|6-24 months                 |PROVIDE        |BANGLADESH |1      |            0|    161|  615|
|6-24 months                 |PROVIDE        |BANGLADESH |1      |            1|      4|  615|
|6-24 months                 |PROVIDE        |BANGLADESH |0      |            0|    441|  615|
|6-24 months                 |PROVIDE        |BANGLADESH |0      |            1|      9|  615|
|6-24 months                 |SAS-CompFeed   |INDIA      |1      |            0|    883| 1131|
|6-24 months                 |SAS-CompFeed   |INDIA      |1      |            1|    103| 1131|
|6-24 months                 |SAS-CompFeed   |INDIA      |0      |            0|    133| 1131|
|6-24 months                 |SAS-CompFeed   |INDIA      |0      |            1|     12| 1131|
|6-24 months                 |SAS-FoodSuppl  |INDIA      |1      |            0|    288|  402|
|6-24 months                 |SAS-FoodSuppl  |INDIA      |1      |            1|     35|  402|
|6-24 months                 |SAS-FoodSuppl  |INDIA      |0      |            0|     63|  402|
|6-24 months                 |SAS-FoodSuppl  |INDIA      |0      |            1|     16|  402|
|6-24 months                 |TanzaniaChild2 |TANZANIA   |1      |            0|     24| 1931|
|6-24 months                 |TanzaniaChild2 |TANZANIA   |1      |            1|      0| 1931|
|6-24 months                 |TanzaniaChild2 |TANZANIA   |0      |            0|   1829| 1931|
|6-24 months                 |TanzaniaChild2 |TANZANIA   |0      |            1|     78| 1931|
|6-24 months                 |Vellore Crypto |INDIA      |1      |            0|      9|  410|
|6-24 months                 |Vellore Crypto |INDIA      |1      |            1|      2|  410|
|6-24 months                 |Vellore Crypto |INDIA      |0      |            0|    375|  410|
|6-24 months                 |Vellore Crypto |INDIA      |0      |            1|     24|  410|


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
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
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


