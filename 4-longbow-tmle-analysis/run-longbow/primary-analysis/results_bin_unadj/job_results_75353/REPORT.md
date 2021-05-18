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

**Intervention Variable:** anywast06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |anywast06 | stunted| n_cell|    n|
|:---------|:--------------|:------------|:---------|-------:|------:|----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |0         |       0|     30|   92|
|Birth     |CMC-V-BCS-2002 |INDIA        |0         |       1|      7|   92|
|Birth     |CMC-V-BCS-2002 |INDIA        |1         |       0|     45|   92|
|Birth     |CMC-V-BCS-2002 |INDIA        |1         |       1|     10|   92|
|Birth     |CMIN           |BANGLADESH   |0         |       0|     13|   20|
|Birth     |CMIN           |BANGLADESH   |0         |       1|      2|   20|
|Birth     |CMIN           |BANGLADESH   |1         |       0|      4|   20|
|Birth     |CMIN           |BANGLADESH   |1         |       1|      1|   20|
|Birth     |CONTENT        |PERU         |0         |       0|      2|    2|
|Birth     |CONTENT        |PERU         |0         |       1|      0|    2|
|Birth     |CONTENT        |PERU         |1         |       0|      0|    2|
|Birth     |CONTENT        |PERU         |1         |       1|      0|    2|
|Birth     |EE             |PAKISTAN     |0         |       0|     86|  240|
|Birth     |EE             |PAKISTAN     |0         |       1|     70|  240|
|Birth     |EE             |PAKISTAN     |1         |       0|     54|  240|
|Birth     |EE             |PAKISTAN     |1         |       1|     30|  240|
|Birth     |GMS-Nepal      |NEPAL        |0         |       0|    340|  684|
|Birth     |GMS-Nepal      |NEPAL        |0         |       1|     82|  684|
|Birth     |GMS-Nepal      |NEPAL        |1         |       0|    234|  684|
|Birth     |GMS-Nepal      |NEPAL        |1         |       1|     28|  684|
|Birth     |Keneba         |GAMBIA       |0         |       0|    934| 1542|
|Birth     |Keneba         |GAMBIA       |0         |       1|     60| 1542|
|Birth     |Keneba         |GAMBIA       |1         |       0|    526| 1542|
|Birth     |Keneba         |GAMBIA       |1         |       1|     22| 1542|
|Birth     |MAL-ED         |INDIA        |0         |       0|     25|   47|
|Birth     |MAL-ED         |INDIA        |0         |       1|      8|   47|
|Birth     |MAL-ED         |INDIA        |1         |       0|     12|   47|
|Birth     |MAL-ED         |INDIA        |1         |       1|      2|   47|
|Birth     |MAL-ED         |BANGLADESH   |0         |       0|    146|  229|
|Birth     |MAL-ED         |BANGLADESH   |0         |       1|     31|  229|
|Birth     |MAL-ED         |BANGLADESH   |1         |       0|     41|  229|
|Birth     |MAL-ED         |BANGLADESH   |1         |       1|     11|  229|
|Birth     |MAL-ED         |PERU         |0         |       0|    199|  233|
|Birth     |MAL-ED         |PERU         |0         |       1|     24|  233|
|Birth     |MAL-ED         |PERU         |1         |       0|      8|  233|
|Birth     |MAL-ED         |PERU         |1         |       1|      2|  233|
|Birth     |MAL-ED         |NEPAL        |0         |       0|     22|   27|
|Birth     |MAL-ED         |NEPAL        |0         |       1|      1|   27|
|Birth     |MAL-ED         |NEPAL        |1         |       0|      3|   27|
|Birth     |MAL-ED         |NEPAL        |1         |       1|      1|   27|
|Birth     |MAL-ED         |BRAZIL       |0         |       0|     53|   65|
|Birth     |MAL-ED         |BRAZIL       |0         |       1|      9|   65|
|Birth     |MAL-ED         |BRAZIL       |1         |       0|      3|   65|
|Birth     |MAL-ED         |BRAZIL       |1         |       1|      0|   65|
|Birth     |MAL-ED         |TANZANIA     |0         |       0|     99|  124|
|Birth     |MAL-ED         |TANZANIA     |0         |       1|     20|  124|
|Birth     |MAL-ED         |TANZANIA     |1         |       0|      3|  124|
|Birth     |MAL-ED         |TANZANIA     |1         |       1|      2|  124|
|Birth     |MAL-ED         |SOUTH AFRICA |0         |       0|     93|  122|
|Birth     |MAL-ED         |SOUTH AFRICA |0         |       1|      8|  122|
|Birth     |MAL-ED         |SOUTH AFRICA |1         |       0|     20|  122|
|Birth     |MAL-ED         |SOUTH AFRICA |1         |       1|      1|  122|
|Birth     |PROVIDE        |BANGLADESH   |0         |       0|    365|  539|
|Birth     |PROVIDE        |BANGLADESH   |0         |       1|     31|  539|
|Birth     |PROVIDE        |BANGLADESH   |1         |       0|    126|  539|
|Birth     |PROVIDE        |BANGLADESH   |1         |       1|     17|  539|
|Birth     |ResPak         |PAKISTAN     |0         |       0|     18|   42|
|Birth     |ResPak         |PAKISTAN     |0         |       1|     10|   42|
|Birth     |ResPak         |PAKISTAN     |1         |       0|     10|   42|
|Birth     |ResPak         |PAKISTAN     |1         |       1|      4|   42|
|Birth     |Vellore Crypto |INDIA        |0         |       0|    137|  388|
|Birth     |Vellore Crypto |INDIA        |0         |       1|     27|  388|
|Birth     |Vellore Crypto |INDIA        |1         |       0|    206|  388|
|Birth     |Vellore Crypto |INDIA        |1         |       1|     18|  388|
|6 months  |CMC-V-BCS-2002 |INDIA        |0         |       0|    120|  365|
|6 months  |CMC-V-BCS-2002 |INDIA        |0         |       1|     57|  365|
|6 months  |CMC-V-BCS-2002 |INDIA        |1         |       0|    134|  365|
|6 months  |CMC-V-BCS-2002 |INDIA        |1         |       1|     54|  365|
|6 months  |CMIN           |BANGLADESH   |0         |       0|    125|  243|
|6 months  |CMIN           |BANGLADESH   |0         |       1|     76|  243|
|6 months  |CMIN           |BANGLADESH   |1         |       0|     25|  243|
|6 months  |CMIN           |BANGLADESH   |1         |       1|     17|  243|
|6 months  |CONTENT        |PERU         |0         |       0|    202|  215|
|6 months  |CONTENT        |PERU         |0         |       1|      9|  215|
|6 months  |CONTENT        |PERU         |1         |       0|      4|  215|
|6 months  |CONTENT        |PERU         |1         |       1|      0|  215|
|6 months  |EE             |PAKISTAN     |0         |       0|    131|  373|
|6 months  |EE             |PAKISTAN     |0         |       1|    118|  373|
|6 months  |EE             |PAKISTAN     |1         |       0|     59|  373|
|6 months  |EE             |PAKISTAN     |1         |       1|     65|  373|
|6 months  |GMS-Nepal      |NEPAL        |0         |       0|    259|  564|
|6 months  |GMS-Nepal      |NEPAL        |0         |       1|     77|  564|
|6 months  |GMS-Nepal      |NEPAL        |1         |       0|    183|  564|
|6 months  |GMS-Nepal      |NEPAL        |1         |       1|     45|  564|
|6 months  |Guatemala BSC  |GUATEMALA    |0         |       0|    192|  280|
|6 months  |Guatemala BSC  |GUATEMALA    |0         |       1|     78|  280|
|6 months  |Guatemala BSC  |GUATEMALA    |1         |       0|      2|  280|
|6 months  |Guatemala BSC  |GUATEMALA    |1         |       1|      8|  280|
|6 months  |Keneba         |GAMBIA       |0         |       0|   1252| 2056|
|6 months  |Keneba         |GAMBIA       |0         |       1|    189| 2056|
|6 months  |Keneba         |GAMBIA       |1         |       0|    512| 2056|
|6 months  |Keneba         |GAMBIA       |1         |       1|    103| 2056|
|6 months  |MAL-ED         |INDIA        |0         |       0|    128|  236|
|6 months  |MAL-ED         |INDIA        |0         |       1|     31|  236|
|6 months  |MAL-ED         |INDIA        |1         |       0|     63|  236|
|6 months  |MAL-ED         |INDIA        |1         |       1|     14|  236|
|6 months  |MAL-ED         |BANGLADESH   |0         |       0|    151|  241|
|6 months  |MAL-ED         |BANGLADESH   |0         |       1|     32|  241|
|6 months  |MAL-ED         |BANGLADESH   |1         |       0|     46|  241|
|6 months  |MAL-ED         |BANGLADESH   |1         |       1|     12|  241|
|6 months  |MAL-ED         |PERU         |0         |       0|    204|  273|
|6 months  |MAL-ED         |PERU         |0         |       1|     59|  273|
|6 months  |MAL-ED         |PERU         |1         |       0|      9|  273|
|6 months  |MAL-ED         |PERU         |1         |       1|      1|  273|
|6 months  |MAL-ED         |NEPAL        |0         |       0|    181|  236|
|6 months  |MAL-ED         |NEPAL        |0         |       1|      7|  236|
|6 months  |MAL-ED         |NEPAL        |1         |       0|     43|  236|
|6 months  |MAL-ED         |NEPAL        |1         |       1|      5|  236|
|6 months  |MAL-ED         |BRAZIL       |0         |       0|    188|  209|
|6 months  |MAL-ED         |BRAZIL       |0         |       1|      6|  209|
|6 months  |MAL-ED         |BRAZIL       |1         |       0|     15|  209|
|6 months  |MAL-ED         |BRAZIL       |1         |       1|      0|  209|
|6 months  |MAL-ED         |TANZANIA     |0         |       0|    179|  247|
|6 months  |MAL-ED         |TANZANIA     |0         |       1|     55|  247|
|6 months  |MAL-ED         |TANZANIA     |1         |       0|      9|  247|
|6 months  |MAL-ED         |TANZANIA     |1         |       1|      4|  247|
|6 months  |MAL-ED         |SOUTH AFRICA |0         |       0|    178|  254|
|6 months  |MAL-ED         |SOUTH AFRICA |0         |       1|     45|  254|
|6 months  |MAL-ED         |SOUTH AFRICA |1         |       0|     26|  254|
|6 months  |MAL-ED         |SOUTH AFRICA |1         |       1|      5|  254|
|6 months  |PROVIDE        |BANGLADESH   |0         |       0|    381|  604|
|6 months  |PROVIDE        |BANGLADESH   |0         |       1|     69|  604|
|6 months  |PROVIDE        |BANGLADESH   |1         |       0|    127|  604|
|6 months  |PROVIDE        |BANGLADESH   |1         |       1|     27|  604|
|6 months  |ResPak         |PAKISTAN     |0         |       0|     80|  239|
|6 months  |ResPak         |PAKISTAN     |0         |       1|     63|  239|
|6 months  |ResPak         |PAKISTAN     |1         |       0|     73|  239|
|6 months  |ResPak         |PAKISTAN     |1         |       1|     23|  239|
|6 months  |TanzaniaChild2 |TANZANIA     |0         |       0|   1559| 2029|
|6 months  |TanzaniaChild2 |TANZANIA     |0         |       1|    169| 2029|
|6 months  |TanzaniaChild2 |TANZANIA     |1         |       0|    273| 2029|
|6 months  |TanzaniaChild2 |TANZANIA     |1         |       1|     28| 2029|
|6 months  |Vellore Crypto |INDIA        |0         |       0|    131|  407|
|6 months  |Vellore Crypto |INDIA        |0         |       1|     49|  407|
|6 months  |Vellore Crypto |INDIA        |1         |       0|    176|  407|
|6 months  |Vellore Crypto |INDIA        |1         |       1|     51|  407|
|24 months |CMC-V-BCS-2002 |INDIA        |0         |       0|     48|  366|
|24 months |CMC-V-BCS-2002 |INDIA        |0         |       1|    128|  366|
|24 months |CMC-V-BCS-2002 |INDIA        |1         |       0|     56|  366|
|24 months |CMC-V-BCS-2002 |INDIA        |1         |       1|    134|  366|
|24 months |CMIN           |BANGLADESH   |0         |       0|     64|  242|
|24 months |CMIN           |BANGLADESH   |0         |       1|    136|  242|
|24 months |CMIN           |BANGLADESH   |1         |       0|     13|  242|
|24 months |CMIN           |BANGLADESH   |1         |       1|     29|  242|
|24 months |CONTENT        |PERU         |0         |       0|    149|  164|
|24 months |CONTENT        |PERU         |0         |       1|     13|  164|
|24 months |CONTENT        |PERU         |1         |       0|      2|  164|
|24 months |CONTENT        |PERU         |1         |       1|      0|  164|
|24 months |EE             |PAKISTAN     |0         |       0|     32|  167|
|24 months |EE             |PAKISTAN     |0         |       1|     77|  167|
|24 months |EE             |PAKISTAN     |1         |       0|     17|  167|
|24 months |EE             |PAKISTAN     |1         |       1|     41|  167|
|24 months |GMS-Nepal      |NEPAL        |0         |       0|    166|  488|
|24 months |GMS-Nepal      |NEPAL        |0         |       1|    134|  488|
|24 months |GMS-Nepal      |NEPAL        |1         |       0|    103|  488|
|24 months |GMS-Nepal      |NEPAL        |1         |       1|     85|  488|
|24 months |Keneba         |GAMBIA       |0         |       0|    739| 1563|
|24 months |Keneba         |GAMBIA       |0         |       1|    352| 1563|
|24 months |Keneba         |GAMBIA       |1         |       0|    301| 1563|
|24 months |Keneba         |GAMBIA       |1         |       1|    171| 1563|
|24 months |MAL-ED         |INDIA        |0         |       0|     80|  227|
|24 months |MAL-ED         |INDIA        |0         |       1|     71|  227|
|24 months |MAL-ED         |INDIA        |1         |       0|     50|  227|
|24 months |MAL-ED         |INDIA        |1         |       1|     26|  227|
|24 months |MAL-ED         |BANGLADESH   |0         |       0|     82|  212|
|24 months |MAL-ED         |BANGLADESH   |0         |       1|     80|  212|
|24 months |MAL-ED         |BANGLADESH   |1         |       0|     29|  212|
|24 months |MAL-ED         |BANGLADESH   |1         |       1|     21|  212|
|24 months |MAL-ED         |PERU         |0         |       0|    122|  201|
|24 months |MAL-ED         |PERU         |0         |       1|     71|  201|
|24 months |MAL-ED         |PERU         |1         |       0|      5|  201|
|24 months |MAL-ED         |PERU         |1         |       1|      3|  201|
|24 months |MAL-ED         |NEPAL        |0         |       0|    143|  228|
|24 months |MAL-ED         |NEPAL        |0         |       1|     39|  228|
|24 months |MAL-ED         |NEPAL        |1         |       0|     35|  228|
|24 months |MAL-ED         |NEPAL        |1         |       1|     11|  228|
|24 months |MAL-ED         |BRAZIL       |0         |       0|    150|  169|
|24 months |MAL-ED         |BRAZIL       |0         |       1|      6|  169|
|24 months |MAL-ED         |BRAZIL       |1         |       0|     12|  169|
|24 months |MAL-ED         |BRAZIL       |1         |       1|      1|  169|
|24 months |MAL-ED         |TANZANIA     |0         |       0|     55|  214|
|24 months |MAL-ED         |TANZANIA     |0         |       1|    147|  214|
|24 months |MAL-ED         |TANZANIA     |1         |       0|      4|  214|
|24 months |MAL-ED         |TANZANIA     |1         |       1|      8|  214|
|24 months |MAL-ED         |SOUTH AFRICA |0         |       0|    135|  238|
|24 months |MAL-ED         |SOUTH AFRICA |0         |       1|     77|  238|
|24 months |MAL-ED         |SOUTH AFRICA |1         |       0|     19|  238|
|24 months |MAL-ED         |SOUTH AFRICA |1         |       1|      7|  238|
|24 months |PROVIDE        |BANGLADESH   |0         |       0|    290|  578|
|24 months |PROVIDE        |BANGLADESH   |0         |       1|    142|  578|
|24 months |PROVIDE        |BANGLADESH   |1         |       0|     98|  578|
|24 months |PROVIDE        |BANGLADESH   |1         |       1|     48|  578|
|24 months |TanzaniaChild2 |TANZANIA     |0         |       0|      4|    6|
|24 months |TanzaniaChild2 |TANZANIA     |0         |       1|      1|    6|
|24 months |TanzaniaChild2 |TANZANIA     |1         |       0|      1|    6|
|24 months |TanzaniaChild2 |TANZANIA     |1         |       1|      0|    6|
|24 months |Vellore Crypto |INDIA        |0         |       0|    104|  409|
|24 months |Vellore Crypto |INDIA        |0         |       1|     77|  409|
|24 months |Vellore Crypto |INDIA        |1         |       0|    133|  409|
|24 months |Vellore Crypto |INDIA        |1         |       1|     95|  409|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


