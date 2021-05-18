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

**Outcome Variable:** wast_rec90d

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

|agecat      |studyid        |country    |hdlvry | wast_rec90d| n_cell|    n|
|:-----------|:--------------|:----------|:------|-----------:|------:|----:|
|0-24 months |CMC-V-BCS-2002 |INDIA      |1      |           0|      2|  321|
|0-24 months |CMC-V-BCS-2002 |INDIA      |1      |           1|      0|  321|
|0-24 months |CMC-V-BCS-2002 |INDIA      |0      |           0|    116|  321|
|0-24 months |CMC-V-BCS-2002 |INDIA      |0      |           1|    203|  321|
|0-24 months |COHORTS        |INDIA      |1      |           0|    552| 1849|
|0-24 months |COHORTS        |INDIA      |1      |           1|    187| 1849|
|0-24 months |COHORTS        |INDIA      |0      |           0|    843| 1849|
|0-24 months |COHORTS        |INDIA      |0      |           1|    267| 1849|
|0-24 months |EE             |PAKISTAN   |1      |           0|     50|  321|
|0-24 months |EE             |PAKISTAN   |1      |           1|     44|  321|
|0-24 months |EE             |PAKISTAN   |0      |           0|    109|  321|
|0-24 months |EE             |PAKISTAN   |0      |           1|    118|  321|
|0-24 months |GMS-Nepal      |NEPAL      |1      |           0|    209|  595|
|0-24 months |GMS-Nepal      |NEPAL      |1      |           1|    237|  595|
|0-24 months |GMS-Nepal      |NEPAL      |0      |           0|     67|  595|
|0-24 months |GMS-Nepal      |NEPAL      |0      |           1|     82|  595|
|0-24 months |JiVitA-3       |BANGLADESH |1      |           0|     55|   96|
|0-24 months |JiVitA-3       |BANGLADESH |1      |           1|     27|   96|
|0-24 months |JiVitA-3       |BANGLADESH |0      |           0|      8|   96|
|0-24 months |JiVitA-3       |BANGLADESH |0      |           1|      6|   96|
|0-24 months |JiVitA-4       |BANGLADESH |1      |           0|    926| 1718|
|0-24 months |JiVitA-4       |BANGLADESH |1      |           1|    333| 1718|
|0-24 months |JiVitA-4       |BANGLADESH |0      |           0|    346| 1718|
|0-24 months |JiVitA-4       |BANGLADESH |0      |           1|    113| 1718|
|0-24 months |NIH-Crypto     |BANGLADESH |1      |           0|     32|  310|
|0-24 months |NIH-Crypto     |BANGLADESH |1      |           1|     50|  310|
|0-24 months |NIH-Crypto     |BANGLADESH |0      |           0|     85|  310|
|0-24 months |NIH-Crypto     |BANGLADESH |0      |           1|    143|  310|
|0-24 months |PROVIDE        |BANGLADESH |1      |           0|     42|  308|
|0-24 months |PROVIDE        |BANGLADESH |1      |           1|     44|  308|
|0-24 months |PROVIDE        |BANGLADESH |0      |           0|     87|  308|
|0-24 months |PROVIDE        |BANGLADESH |0      |           1|    135|  308|
|0-24 months |SAS-CompFeed   |INDIA      |1      |           0|    358|  668|
|0-24 months |SAS-CompFeed   |INDIA      |1      |           1|    227|  668|
|0-24 months |SAS-CompFeed   |INDIA      |0      |           0|     54|  668|
|0-24 months |SAS-CompFeed   |INDIA      |0      |           1|     29|  668|
|0-24 months |SAS-FoodSuppl  |INDIA      |1      |           0|    173|  234|
|0-24 months |SAS-FoodSuppl  |INDIA      |1      |           1|     10|  234|
|0-24 months |SAS-FoodSuppl  |INDIA      |0      |           0|     48|  234|
|0-24 months |SAS-FoodSuppl  |INDIA      |0      |           1|      3|  234|
|0-24 months |TanzaniaChild2 |TANZANIA   |1      |           0|      3|  682|
|0-24 months |TanzaniaChild2 |TANZANIA   |1      |           1|      4|  682|
|0-24 months |TanzaniaChild2 |TANZANIA   |0      |           0|    249|  682|
|0-24 months |TanzaniaChild2 |TANZANIA   |0      |           1|    426|  682|
|0-24 months |Vellore Crypto |INDIA      |1      |           0|      7|  395|
|0-24 months |Vellore Crypto |INDIA      |1      |           1|      5|  395|
|0-24 months |Vellore Crypto |INDIA      |0      |           0|    155|  395|
|0-24 months |Vellore Crypto |INDIA      |0      |           1|    228|  395|
|0-6 months  |CMC-V-BCS-2002 |INDIA      |1      |           0|      1|  199|
|0-6 months  |CMC-V-BCS-2002 |INDIA      |1      |           1|      0|  199|
|0-6 months  |CMC-V-BCS-2002 |INDIA      |0      |           0|     63|  199|
|0-6 months  |CMC-V-BCS-2002 |INDIA      |0      |           1|    135|  199|
|0-6 months  |COHORTS        |INDIA      |1      |           0|    310| 1247|
|0-6 months  |COHORTS        |INDIA      |1      |           1|    187| 1247|
|0-6 months  |COHORTS        |INDIA      |0      |           0|    483| 1247|
|0-6 months  |COHORTS        |INDIA      |0      |           1|    267| 1247|
|0-6 months  |EE             |PAKISTAN   |1      |           0|     12|  126|
|0-6 months  |EE             |PAKISTAN   |1      |           1|     21|  126|
|0-6 months  |EE             |PAKISTAN   |0      |           0|     43|  126|
|0-6 months  |EE             |PAKISTAN   |0      |           1|     50|  126|
|0-6 months  |GMS-Nepal      |NEPAL      |1      |           0|     78|  244|
|0-6 months  |GMS-Nepal      |NEPAL      |1      |           1|    105|  244|
|0-6 months  |GMS-Nepal      |NEPAL      |0      |           0|     22|  244|
|0-6 months  |GMS-Nepal      |NEPAL      |0      |           1|     39|  244|
|0-6 months  |JiVitA-3       |BANGLADESH |1      |           0|     15|   50|
|0-6 months  |JiVitA-3       |BANGLADESH |1      |           1|     27|   50|
|0-6 months  |JiVitA-3       |BANGLADESH |0      |           0|      2|   50|
|0-6 months  |JiVitA-3       |BANGLADESH |0      |           1|      6|   50|
|0-6 months  |JiVitA-4       |BANGLADESH |1      |           0|    141|  465|
|0-6 months  |JiVitA-4       |BANGLADESH |1      |           1|    196|  465|
|0-6 months  |JiVitA-4       |BANGLADESH |0      |           0|     65|  465|
|0-6 months  |JiVitA-4       |BANGLADESH |0      |           1|     63|  465|
|0-6 months  |NIH-Crypto     |BANGLADESH |1      |           0|      4|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH |1      |           1|     46|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH |0      |           0|     17|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH |0      |           1|    130|  197|
|0-6 months  |PROVIDE        |BANGLADESH |1      |           0|     12|  185|
|0-6 months  |PROVIDE        |BANGLADESH |1      |           1|     37|  185|
|0-6 months  |PROVIDE        |BANGLADESH |0      |           0|     28|  185|
|0-6 months  |PROVIDE        |BANGLADESH |0      |           1|    108|  185|
|0-6 months  |SAS-CompFeed   |INDIA      |1      |           0|    121|  281|
|0-6 months  |SAS-CompFeed   |INDIA      |1      |           1|    124|  281|
|0-6 months  |SAS-CompFeed   |INDIA      |0      |           0|     17|  281|
|0-6 months  |SAS-CompFeed   |INDIA      |0      |           1|     19|  281|
|0-6 months  |SAS-FoodSuppl  |INDIA      |1      |           0|     65|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA      |1      |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA      |0      |           0|     13|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA      |0      |           1|      0|   78|
|0-6 months  |TanzaniaChild2 |TANZANIA   |1      |           0|      2|  330|
|0-6 months  |TanzaniaChild2 |TANZANIA   |1      |           1|      3|  330|
|0-6 months  |TanzaniaChild2 |TANZANIA   |0      |           0|     97|  330|
|0-6 months  |TanzaniaChild2 |TANZANIA   |0      |           1|    228|  330|
|0-6 months  |Vellore Crypto |INDIA      |1      |           0|      4|  240|
|0-6 months  |Vellore Crypto |INDIA      |1      |           1|      3|  240|
|0-6 months  |Vellore Crypto |INDIA      |0      |           0|     83|  240|
|0-6 months  |Vellore Crypto |INDIA      |0      |           1|    150|  240|
|6-24 months |CMC-V-BCS-2002 |INDIA      |1      |           0|      1|  122|
|6-24 months |CMC-V-BCS-2002 |INDIA      |1      |           1|      0|  122|
|6-24 months |CMC-V-BCS-2002 |INDIA      |0      |           0|     53|  122|
|6-24 months |CMC-V-BCS-2002 |INDIA      |0      |           1|     68|  122|
|6-24 months |COHORTS        |INDIA      |1      |           0|    242|  602|
|6-24 months |COHORTS        |INDIA      |1      |           1|      0|  602|
|6-24 months |COHORTS        |INDIA      |0      |           0|    360|  602|
|6-24 months |COHORTS        |INDIA      |0      |           1|      0|  602|
|6-24 months |EE             |PAKISTAN   |1      |           0|     38|  195|
|6-24 months |EE             |PAKISTAN   |1      |           1|     23|  195|
|6-24 months |EE             |PAKISTAN   |0      |           0|     66|  195|
|6-24 months |EE             |PAKISTAN   |0      |           1|     68|  195|
|6-24 months |GMS-Nepal      |NEPAL      |1      |           0|    131|  351|
|6-24 months |GMS-Nepal      |NEPAL      |1      |           1|    132|  351|
|6-24 months |GMS-Nepal      |NEPAL      |0      |           0|     45|  351|
|6-24 months |GMS-Nepal      |NEPAL      |0      |           1|     43|  351|
|6-24 months |JiVitA-3       |BANGLADESH |1      |           0|     40|   46|
|6-24 months |JiVitA-3       |BANGLADESH |1      |           1|      0|   46|
|6-24 months |JiVitA-3       |BANGLADESH |0      |           0|      6|   46|
|6-24 months |JiVitA-3       |BANGLADESH |0      |           1|      0|   46|
|6-24 months |JiVitA-4       |BANGLADESH |1      |           0|    785| 1253|
|6-24 months |JiVitA-4       |BANGLADESH |1      |           1|    137| 1253|
|6-24 months |JiVitA-4       |BANGLADESH |0      |           0|    281| 1253|
|6-24 months |JiVitA-4       |BANGLADESH |0      |           1|     50| 1253|
|6-24 months |NIH-Crypto     |BANGLADESH |1      |           0|     28|  113|
|6-24 months |NIH-Crypto     |BANGLADESH |1      |           1|      4|  113|
|6-24 months |NIH-Crypto     |BANGLADESH |0      |           0|     68|  113|
|6-24 months |NIH-Crypto     |BANGLADESH |0      |           1|     13|  113|
|6-24 months |PROVIDE        |BANGLADESH |1      |           0|     30|  123|
|6-24 months |PROVIDE        |BANGLADESH |1      |           1|      7|  123|
|6-24 months |PROVIDE        |BANGLADESH |0      |           0|     59|  123|
|6-24 months |PROVIDE        |BANGLADESH |0      |           1|     27|  123|
|6-24 months |SAS-CompFeed   |INDIA      |1      |           0|    237|  387|
|6-24 months |SAS-CompFeed   |INDIA      |1      |           1|    103|  387|
|6-24 months |SAS-CompFeed   |INDIA      |0      |           0|     37|  387|
|6-24 months |SAS-CompFeed   |INDIA      |0      |           1|     10|  387|
|6-24 months |SAS-FoodSuppl  |INDIA      |1      |           0|    108|  156|
|6-24 months |SAS-FoodSuppl  |INDIA      |1      |           1|     10|  156|
|6-24 months |SAS-FoodSuppl  |INDIA      |0      |           0|     35|  156|
|6-24 months |SAS-FoodSuppl  |INDIA      |0      |           1|      3|  156|
|6-24 months |TanzaniaChild2 |TANZANIA   |1      |           0|      1|  352|
|6-24 months |TanzaniaChild2 |TANZANIA   |1      |           1|      1|  352|
|6-24 months |TanzaniaChild2 |TANZANIA   |0      |           0|    152|  352|
|6-24 months |TanzaniaChild2 |TANZANIA   |0      |           1|    198|  352|
|6-24 months |Vellore Crypto |INDIA      |1      |           0|      3|  155|
|6-24 months |Vellore Crypto |INDIA      |1      |           1|      2|  155|
|6-24 months |Vellore Crypto |INDIA      |0      |           0|     72|  155|
|6-24 months |Vellore Crypto |INDIA      |0      |           1|     78|  155|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
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

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


