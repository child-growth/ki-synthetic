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

**Intervention Variable:** impfloor

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |impfloor | wasted| n_cell|     n|
|:---------|:--------------|:------------|:--------|------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |1        |      0|     54|    59|
|Birth     |CMC-V-BCS-2002 |INDIA        |1        |      1|      5|    59|
|Birth     |CMC-V-BCS-2002 |INDIA        |0        |      0|      0|    59|
|Birth     |CMC-V-BCS-2002 |INDIA        |0        |      1|      0|    59|
|Birth     |CONTENT        |PERU         |1        |      0|      2|     2|
|Birth     |CONTENT        |PERU         |1        |      1|      0|     2|
|Birth     |CONTENT        |PERU         |0        |      0|      0|     2|
|Birth     |CONTENT        |PERU         |0        |      1|      0|     2|
|Birth     |GMS-Nepal      |NEPAL        |1        |      0|     70|   513|
|Birth     |GMS-Nepal      |NEPAL        |1        |      1|     20|   513|
|Birth     |GMS-Nepal      |NEPAL        |0        |      0|    340|   513|
|Birth     |GMS-Nepal      |NEPAL        |0        |      1|     83|   513|
|Birth     |JiVitA-3       |BANGLADESH   |1        |      0|   1242| 17967|
|Birth     |JiVitA-3       |BANGLADESH   |1        |      1|    176| 17967|
|Birth     |JiVitA-3       |BANGLADESH   |0        |      0|  14757| 17967|
|Birth     |JiVitA-3       |BANGLADESH   |0        |      1|   1792| 17967|
|Birth     |JiVitA-4       |BANGLADESH   |1        |      0|    272|  2394|
|Birth     |JiVitA-4       |BANGLADESH   |1        |      1|     43|  2394|
|Birth     |JiVitA-4       |BANGLADESH   |0        |      0|   1883|  2394|
|Birth     |JiVitA-4       |BANGLADESH   |0        |      1|    196|  2394|
|Birth     |MAL-ED         |INDIA        |1        |      0|     34|    44|
|Birth     |MAL-ED         |INDIA        |1        |      1|      5|    44|
|Birth     |MAL-ED         |INDIA        |0        |      0|      5|    44|
|Birth     |MAL-ED         |INDIA        |0        |      1|      0|    44|
|Birth     |MAL-ED         |BANGLADESH   |1        |      0|    156|   198|
|Birth     |MAL-ED         |BANGLADESH   |1        |      1|     30|   198|
|Birth     |MAL-ED         |BANGLADESH   |0        |      0|     10|   198|
|Birth     |MAL-ED         |BANGLADESH   |0        |      1|      2|   198|
|Birth     |MAL-ED         |PERU         |1        |      0|     34|   212|
|Birth     |MAL-ED         |PERU         |1        |      1|      0|   212|
|Birth     |MAL-ED         |PERU         |0        |      0|    173|   212|
|Birth     |MAL-ED         |PERU         |0        |      1|      5|   212|
|Birth     |MAL-ED         |NEPAL        |1        |      0|     11|    25|
|Birth     |MAL-ED         |NEPAL        |1        |      1|      0|    25|
|Birth     |MAL-ED         |NEPAL        |0        |      0|     12|    25|
|Birth     |MAL-ED         |NEPAL        |0        |      1|      2|    25|
|Birth     |MAL-ED         |BRAZIL       |1        |      0|     49|    52|
|Birth     |MAL-ED         |BRAZIL       |1        |      1|      2|    52|
|Birth     |MAL-ED         |BRAZIL       |0        |      0|      1|    52|
|Birth     |MAL-ED         |BRAZIL       |0        |      1|      0|    52|
|Birth     |MAL-ED         |TANZANIA     |1        |      0|      4|   109|
|Birth     |MAL-ED         |TANZANIA     |1        |      1|      0|   109|
|Birth     |MAL-ED         |TANZANIA     |0        |      0|    104|   109|
|Birth     |MAL-ED         |TANZANIA     |0        |      1|      1|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |1        |      0|     83|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |1        |      1|      7|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |0        |      0|     12|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |0        |      1|      2|   104|
|Birth     |NIH-Birth      |BANGLADESH   |1        |      0|    359|   573|
|Birth     |NIH-Birth      |BANGLADESH   |1        |      1|    147|   573|
|Birth     |NIH-Birth      |BANGLADESH   |0        |      0|     46|   573|
|Birth     |NIH-Birth      |BANGLADESH   |0        |      1|     21|   573|
|Birth     |NIH-Crypto     |BANGLADESH   |1        |      0|    429|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |1        |      1|    130|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |0        |      0|    106|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |0        |      1|     42|   707|
|Birth     |PROVIDE        |BANGLADESH   |1        |      0|    383|   532|
|Birth     |PROVIDE        |BANGLADESH   |1        |      1|    104|   532|
|Birth     |PROVIDE        |BANGLADESH   |0        |      0|     32|   532|
|Birth     |PROVIDE        |BANGLADESH   |0        |      1|     13|   532|
|Birth     |Vellore Crypto |INDIA        |1        |      0|    194|   265|
|Birth     |Vellore Crypto |INDIA        |1        |      1|     71|   265|
|Birth     |Vellore Crypto |INDIA        |0        |      0|      0|   265|
|Birth     |Vellore Crypto |INDIA        |0        |      1|      0|   265|
|6 months  |CMC-V-BCS-2002 |INDIA        |1        |      0|    228|   266|
|6 months  |CMC-V-BCS-2002 |INDIA        |1        |      1|     38|   266|
|6 months  |CMC-V-BCS-2002 |INDIA        |0        |      0|      0|   266|
|6 months  |CMC-V-BCS-2002 |INDIA        |0        |      1|      0|   266|
|6 months  |CONTENT        |PERU         |1        |      0|    195|   215|
|6 months  |CONTENT        |PERU         |1        |      1|      0|   215|
|6 months  |CONTENT        |PERU         |0        |      0|     20|   215|
|6 months  |CONTENT        |PERU         |0        |      1|      0|   215|
|6 months  |GMS-Nepal      |NEPAL        |1        |      0|     71|   445|
|6 months  |GMS-Nepal      |NEPAL        |1        |      1|      7|   445|
|6 months  |GMS-Nepal      |NEPAL        |0        |      0|    334|   445|
|6 months  |GMS-Nepal      |NEPAL        |0        |      1|     33|   445|
|6 months  |JiVitA-3       |BANGLADESH   |1        |      0|   1367| 16743|
|6 months  |JiVitA-3       |BANGLADESH   |1        |      1|    107| 16743|
|6 months  |JiVitA-3       |BANGLADESH   |0        |      0|  13956| 16743|
|6 months  |JiVitA-3       |BANGLADESH   |0        |      1|   1313| 16743|
|6 months  |JiVitA-4       |BANGLADESH   |1        |      0|    577|  4829|
|6 months  |JiVitA-4       |BANGLADESH   |1        |      1|     29|  4829|
|6 months  |JiVitA-4       |BANGLADESH   |0        |      0|   3978|  4829|
|6 months  |JiVitA-4       |BANGLADESH   |0        |      1|    245|  4829|
|6 months  |MAL-ED         |INDIA        |1        |      0|    192|   227|
|6 months  |MAL-ED         |INDIA        |1        |      1|     16|   227|
|6 months  |MAL-ED         |INDIA        |0        |      0|     18|   227|
|6 months  |MAL-ED         |INDIA        |0        |      1|      1|   227|
|6 months  |MAL-ED         |BANGLADESH   |1        |      0|    200|   224|
|6 months  |MAL-ED         |BANGLADESH   |1        |      1|      7|   224|
|6 months  |MAL-ED         |BANGLADESH   |0        |      0|     17|   224|
|6 months  |MAL-ED         |BANGLADESH   |0        |      1|      0|   224|
|6 months  |MAL-ED         |PERU         |1        |      0|     44|   255|
|6 months  |MAL-ED         |PERU         |1        |      1|      0|   255|
|6 months  |MAL-ED         |PERU         |0        |      0|    211|   255|
|6 months  |MAL-ED         |PERU         |0        |      1|      0|   255|
|6 months  |MAL-ED         |NEPAL        |1        |      0|    101|   228|
|6 months  |MAL-ED         |NEPAL        |1        |      1|      2|   228|
|6 months  |MAL-ED         |NEPAL        |0        |      0|    123|   228|
|6 months  |MAL-ED         |NEPAL        |0        |      1|      2|   228|
|6 months  |MAL-ED         |BRAZIL       |1        |      0|    183|   187|
|6 months  |MAL-ED         |BRAZIL       |1        |      1|      1|   187|
|6 months  |MAL-ED         |BRAZIL       |0        |      0|      3|   187|
|6 months  |MAL-ED         |BRAZIL       |0        |      1|      0|   187|
|6 months  |MAL-ED         |TANZANIA     |1        |      0|      6|   240|
|6 months  |MAL-ED         |TANZANIA     |1        |      1|      0|   240|
|6 months  |MAL-ED         |TANZANIA     |0        |      0|    233|   240|
|6 months  |MAL-ED         |TANZANIA     |0        |      1|      1|   240|
|6 months  |MAL-ED         |SOUTH AFRICA |1        |      0|    204|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |1        |      1|      6|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |0        |      0|     19|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |0        |      1|      1|   230|
|6 months  |NIH-Birth      |BANGLADESH   |1        |      0|    445|   535|
|6 months  |NIH-Birth      |BANGLADESH   |1        |      1|     29|   535|
|6 months  |NIH-Birth      |BANGLADESH   |0        |      0|     55|   535|
|6 months  |NIH-Birth      |BANGLADESH   |0        |      1|      6|   535|
|6 months  |NIH-Crypto     |BANGLADESH   |1        |      0|    551|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |1        |      1|     15|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |0        |      0|    143|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |0        |      1|      6|   715|
|6 months  |PROVIDE        |BANGLADESH   |1        |      0|    535|   603|
|6 months  |PROVIDE        |BANGLADESH   |1        |      1|     23|   603|
|6 months  |PROVIDE        |BANGLADESH   |0        |      0|     43|   603|
|6 months  |PROVIDE        |BANGLADESH   |0        |      1|      2|   603|
|6 months  |Vellore Crypto |INDIA        |1        |      0|    270|   313|
|6 months  |Vellore Crypto |INDIA        |1        |      1|     43|   313|
|6 months  |Vellore Crypto |INDIA        |0        |      0|      0|   313|
|6 months  |Vellore Crypto |INDIA        |0        |      1|      0|   313|
|24 months |CMC-V-BCS-2002 |INDIA        |1        |      0|    252|   269|
|24 months |CMC-V-BCS-2002 |INDIA        |1        |      1|     17|   269|
|24 months |CMC-V-BCS-2002 |INDIA        |0        |      0|      0|   269|
|24 months |CMC-V-BCS-2002 |INDIA        |0        |      1|      0|   269|
|24 months |CONTENT        |PERU         |1        |      0|    148|   164|
|24 months |CONTENT        |PERU         |1        |      1|      1|   164|
|24 months |CONTENT        |PERU         |0        |      0|     15|   164|
|24 months |CONTENT        |PERU         |0        |      1|      0|   164|
|24 months |GMS-Nepal      |NEPAL        |1        |      0|     53|   389|
|24 months |GMS-Nepal      |NEPAL        |1        |      1|     16|   389|
|24 months |GMS-Nepal      |NEPAL        |0        |      0|    261|   389|
|24 months |GMS-Nepal      |NEPAL        |0        |      1|     59|   389|
|24 months |JiVitA-3       |BANGLADESH   |1        |      0|    530|  8581|
|24 months |JiVitA-3       |BANGLADESH   |1        |      1|    157|  8581|
|24 months |JiVitA-3       |BANGLADESH   |0        |      0|   6174|  8581|
|24 months |JiVitA-3       |BANGLADESH   |0        |      1|   1720|  8581|
|24 months |JiVitA-4       |BANGLADESH   |1        |      0|    501|  4731|
|24 months |JiVitA-4       |BANGLADESH   |1        |      1|    100|  4731|
|24 months |JiVitA-4       |BANGLADESH   |0        |      0|   3310|  4731|
|24 months |JiVitA-4       |BANGLADESH   |0        |      1|    820|  4731|
|24 months |MAL-ED         |INDIA        |1        |      0|    178|   218|
|24 months |MAL-ED         |INDIA        |1        |      1|     23|   218|
|24 months |MAL-ED         |INDIA        |0        |      0|     14|   218|
|24 months |MAL-ED         |INDIA        |0        |      1|      3|   218|
|24 months |MAL-ED         |BANGLADESH   |1        |      0|    159|   195|
|24 months |MAL-ED         |BANGLADESH   |1        |      1|     20|   195|
|24 months |MAL-ED         |BANGLADESH   |0        |      0|     16|   195|
|24 months |MAL-ED         |BANGLADESH   |0        |      1|      0|   195|
|24 months |MAL-ED         |PERU         |1        |      0|     29|   185|
|24 months |MAL-ED         |PERU         |1        |      1|      1|   185|
|24 months |MAL-ED         |PERU         |0        |      0|    153|   185|
|24 months |MAL-ED         |PERU         |0        |      1|      2|   185|
|24 months |MAL-ED         |NEPAL        |1        |      0|     98|   220|
|24 months |MAL-ED         |NEPAL        |1        |      1|      1|   220|
|24 months |MAL-ED         |NEPAL        |0        |      0|    117|   220|
|24 months |MAL-ED         |NEPAL        |0        |      1|      4|   220|
|24 months |MAL-ED         |BRAZIL       |1        |      0|    144|   148|
|24 months |MAL-ED         |BRAZIL       |1        |      1|      2|   148|
|24 months |MAL-ED         |BRAZIL       |0        |      0|      2|   148|
|24 months |MAL-ED         |BRAZIL       |0        |      1|      0|   148|
|24 months |MAL-ED         |TANZANIA     |1        |      0|      5|   209|
|24 months |MAL-ED         |TANZANIA     |1        |      1|      1|   209|
|24 months |MAL-ED         |TANZANIA     |0        |      0|    200|   209|
|24 months |MAL-ED         |TANZANIA     |0        |      1|      3|   209|
|24 months |MAL-ED         |SOUTH AFRICA |1        |      0|    195|   215|
|24 months |MAL-ED         |SOUTH AFRICA |1        |      1|      1|   215|
|24 months |MAL-ED         |SOUTH AFRICA |0        |      0|     19|   215|
|24 months |MAL-ED         |SOUTH AFRICA |0        |      1|      0|   215|
|24 months |NIH-Birth      |BANGLADESH   |1        |      0|    334|   427|
|24 months |NIH-Birth      |BANGLADESH   |1        |      1|     43|   427|
|24 months |NIH-Birth      |BANGLADESH   |0        |      0|     40|   427|
|24 months |NIH-Birth      |BANGLADESH   |0        |      1|     10|   427|
|24 months |NIH-Crypto     |BANGLADESH   |1        |      0|    369|   514|
|24 months |NIH-Crypto     |BANGLADESH   |1        |      1|     36|   514|
|24 months |NIH-Crypto     |BANGLADESH   |0        |      0|    100|   514|
|24 months |NIH-Crypto     |BANGLADESH   |0        |      1|      9|   514|
|24 months |PROVIDE        |BANGLADESH   |1        |      0|    481|   579|
|24 months |PROVIDE        |BANGLADESH   |1        |      1|     56|   579|
|24 months |PROVIDE        |BANGLADESH   |0        |      0|     36|   579|
|24 months |PROVIDE        |BANGLADESH   |0        |      1|      6|   579|
|24 months |Vellore Crypto |INDIA        |1        |      0|    291|   314|
|24 months |Vellore Crypto |INDIA        |1        |      1|     23|   314|
|24 months |Vellore Crypto |INDIA        |0        |      0|      0|   314|
|24 months |Vellore Crypto |INDIA        |0        |      1|      0|   314|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


