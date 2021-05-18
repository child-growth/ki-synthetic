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

**Intervention Variable:** anywast06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |anywast06 | sstunted| n_cell|    n|
|:---------|:--------------|:------------|:---------|--------:|------:|----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |0         |        0|     37|   92|
|Birth     |CMC-V-BCS-2002 |INDIA        |0         |        1|      0|   92|
|Birth     |CMC-V-BCS-2002 |INDIA        |1         |        0|     51|   92|
|Birth     |CMC-V-BCS-2002 |INDIA        |1         |        1|      4|   92|
|Birth     |CMIN           |BANGLADESH   |0         |        0|     15|   20|
|Birth     |CMIN           |BANGLADESH   |0         |        1|      0|   20|
|Birth     |CMIN           |BANGLADESH   |1         |        0|      5|   20|
|Birth     |CMIN           |BANGLADESH   |1         |        1|      0|   20|
|Birth     |CONTENT        |PERU         |0         |        0|      2|    2|
|Birth     |CONTENT        |PERU         |0         |        1|      0|    2|
|Birth     |CONTENT        |PERU         |1         |        0|      0|    2|
|Birth     |CONTENT        |PERU         |1         |        1|      0|    2|
|Birth     |EE             |PAKISTAN     |0         |        0|    119|  240|
|Birth     |EE             |PAKISTAN     |0         |        1|     37|  240|
|Birth     |EE             |PAKISTAN     |1         |        0|     73|  240|
|Birth     |EE             |PAKISTAN     |1         |        1|     11|  240|
|Birth     |GMS-Nepal      |NEPAL        |0         |        0|    406|  684|
|Birth     |GMS-Nepal      |NEPAL        |0         |        1|     16|  684|
|Birth     |GMS-Nepal      |NEPAL        |1         |        0|    257|  684|
|Birth     |GMS-Nepal      |NEPAL        |1         |        1|      5|  684|
|Birth     |Keneba         |GAMBIA       |0         |        0|    970| 1542|
|Birth     |Keneba         |GAMBIA       |0         |        1|     24| 1542|
|Birth     |Keneba         |GAMBIA       |1         |        0|    543| 1542|
|Birth     |Keneba         |GAMBIA       |1         |        1|      5| 1542|
|Birth     |MAL-ED         |INDIA        |0         |        0|     32|   47|
|Birth     |MAL-ED         |INDIA        |0         |        1|      1|   47|
|Birth     |MAL-ED         |INDIA        |1         |        0|     13|   47|
|Birth     |MAL-ED         |INDIA        |1         |        1|      1|   47|
|Birth     |MAL-ED         |BANGLADESH   |0         |        0|    170|  229|
|Birth     |MAL-ED         |BANGLADESH   |0         |        1|      7|  229|
|Birth     |MAL-ED         |BANGLADESH   |1         |        0|     50|  229|
|Birth     |MAL-ED         |BANGLADESH   |1         |        1|      2|  229|
|Birth     |MAL-ED         |PERU         |0         |        0|    219|  233|
|Birth     |MAL-ED         |PERU         |0         |        1|      4|  233|
|Birth     |MAL-ED         |PERU         |1         |        0|     10|  233|
|Birth     |MAL-ED         |PERU         |1         |        1|      0|  233|
|Birth     |MAL-ED         |NEPAL        |0         |        0|     22|   27|
|Birth     |MAL-ED         |NEPAL        |0         |        1|      1|   27|
|Birth     |MAL-ED         |NEPAL        |1         |        0|      4|   27|
|Birth     |MAL-ED         |NEPAL        |1         |        1|      0|   27|
|Birth     |MAL-ED         |BRAZIL       |0         |        0|     59|   65|
|Birth     |MAL-ED         |BRAZIL       |0         |        1|      3|   65|
|Birth     |MAL-ED         |BRAZIL       |1         |        0|      3|   65|
|Birth     |MAL-ED         |BRAZIL       |1         |        1|      0|   65|
|Birth     |MAL-ED         |TANZANIA     |0         |        0|    110|  124|
|Birth     |MAL-ED         |TANZANIA     |0         |        1|      9|  124|
|Birth     |MAL-ED         |TANZANIA     |1         |        0|      5|  124|
|Birth     |MAL-ED         |TANZANIA     |1         |        1|      0|  124|
|Birth     |MAL-ED         |SOUTH AFRICA |0         |        0|    100|  122|
|Birth     |MAL-ED         |SOUTH AFRICA |0         |        1|      1|  122|
|Birth     |MAL-ED         |SOUTH AFRICA |1         |        0|     21|  122|
|Birth     |MAL-ED         |SOUTH AFRICA |1         |        1|      0|  122|
|Birth     |PROVIDE        |BANGLADESH   |0         |        0|    392|  539|
|Birth     |PROVIDE        |BANGLADESH   |0         |        1|      4|  539|
|Birth     |PROVIDE        |BANGLADESH   |1         |        0|    143|  539|
|Birth     |PROVIDE        |BANGLADESH   |1         |        1|      0|  539|
|Birth     |ResPak         |PAKISTAN     |0         |        0|     27|   42|
|Birth     |ResPak         |PAKISTAN     |0         |        1|      1|   42|
|Birth     |ResPak         |PAKISTAN     |1         |        0|     13|   42|
|Birth     |ResPak         |PAKISTAN     |1         |        1|      1|   42|
|Birth     |Vellore Crypto |INDIA        |0         |        0|    155|  388|
|Birth     |Vellore Crypto |INDIA        |0         |        1|      9|  388|
|Birth     |Vellore Crypto |INDIA        |1         |        0|    217|  388|
|Birth     |Vellore Crypto |INDIA        |1         |        1|      7|  388|
|6 months  |CMC-V-BCS-2002 |INDIA        |0         |        0|    155|  365|
|6 months  |CMC-V-BCS-2002 |INDIA        |0         |        1|     22|  365|
|6 months  |CMC-V-BCS-2002 |INDIA        |1         |        0|    168|  365|
|6 months  |CMC-V-BCS-2002 |INDIA        |1         |        1|     20|  365|
|6 months  |CMIN           |BANGLADESH   |0         |        0|    179|  243|
|6 months  |CMIN           |BANGLADESH   |0         |        1|     22|  243|
|6 months  |CMIN           |BANGLADESH   |1         |        0|     36|  243|
|6 months  |CMIN           |BANGLADESH   |1         |        1|      6|  243|
|6 months  |CONTENT        |PERU         |0         |        0|    210|  215|
|6 months  |CONTENT        |PERU         |0         |        1|      1|  215|
|6 months  |CONTENT        |PERU         |1         |        0|      4|  215|
|6 months  |CONTENT        |PERU         |1         |        1|      0|  215|
|6 months  |EE             |PAKISTAN     |0         |        0|    196|  373|
|6 months  |EE             |PAKISTAN     |0         |        1|     53|  373|
|6 months  |EE             |PAKISTAN     |1         |        0|     96|  373|
|6 months  |EE             |PAKISTAN     |1         |        1|     28|  373|
|6 months  |GMS-Nepal      |NEPAL        |0         |        0|    324|  564|
|6 months  |GMS-Nepal      |NEPAL        |0         |        1|     12|  564|
|6 months  |GMS-Nepal      |NEPAL        |1         |        0|    219|  564|
|6 months  |GMS-Nepal      |NEPAL        |1         |        1|      9|  564|
|6 months  |Guatemala BSC  |GUATEMALA    |0         |        0|    247|  280|
|6 months  |Guatemala BSC  |GUATEMALA    |0         |        1|     23|  280|
|6 months  |Guatemala BSC  |GUATEMALA    |1         |        0|      6|  280|
|6 months  |Guatemala BSC  |GUATEMALA    |1         |        1|      4|  280|
|6 months  |Keneba         |GAMBIA       |0         |        0|   1411| 2056|
|6 months  |Keneba         |GAMBIA       |0         |        1|     30| 2056|
|6 months  |Keneba         |GAMBIA       |1         |        0|    578| 2056|
|6 months  |Keneba         |GAMBIA       |1         |        1|     37| 2056|
|6 months  |MAL-ED         |INDIA        |0         |        0|    154|  236|
|6 months  |MAL-ED         |INDIA        |0         |        1|      5|  236|
|6 months  |MAL-ED         |INDIA        |1         |        0|     73|  236|
|6 months  |MAL-ED         |INDIA        |1         |        1|      4|  236|
|6 months  |MAL-ED         |BANGLADESH   |0         |        0|    179|  241|
|6 months  |MAL-ED         |BANGLADESH   |0         |        1|      4|  241|
|6 months  |MAL-ED         |BANGLADESH   |1         |        0|     54|  241|
|6 months  |MAL-ED         |BANGLADESH   |1         |        1|      4|  241|
|6 months  |MAL-ED         |PERU         |0         |        0|    254|  273|
|6 months  |MAL-ED         |PERU         |0         |        1|      9|  273|
|6 months  |MAL-ED         |PERU         |1         |        0|      9|  273|
|6 months  |MAL-ED         |PERU         |1         |        1|      1|  273|
|6 months  |MAL-ED         |NEPAL        |0         |        0|    188|  236|
|6 months  |MAL-ED         |NEPAL        |0         |        1|      0|  236|
|6 months  |MAL-ED         |NEPAL        |1         |        0|     47|  236|
|6 months  |MAL-ED         |NEPAL        |1         |        1|      1|  236|
|6 months  |MAL-ED         |BRAZIL       |0         |        0|    194|  209|
|6 months  |MAL-ED         |BRAZIL       |0         |        1|      0|  209|
|6 months  |MAL-ED         |BRAZIL       |1         |        0|     15|  209|
|6 months  |MAL-ED         |BRAZIL       |1         |        1|      0|  209|
|6 months  |MAL-ED         |TANZANIA     |0         |        0|    220|  247|
|6 months  |MAL-ED         |TANZANIA     |0         |        1|     14|  247|
|6 months  |MAL-ED         |TANZANIA     |1         |        0|     13|  247|
|6 months  |MAL-ED         |TANZANIA     |1         |        1|      0|  247|
|6 months  |MAL-ED         |SOUTH AFRICA |0         |        0|    218|  254|
|6 months  |MAL-ED         |SOUTH AFRICA |0         |        1|      5|  254|
|6 months  |MAL-ED         |SOUTH AFRICA |1         |        0|     30|  254|
|6 months  |MAL-ED         |SOUTH AFRICA |1         |        1|      1|  254|
|6 months  |PROVIDE        |BANGLADESH   |0         |        0|    443|  604|
|6 months  |PROVIDE        |BANGLADESH   |0         |        1|      7|  604|
|6 months  |PROVIDE        |BANGLADESH   |1         |        0|    147|  604|
|6 months  |PROVIDE        |BANGLADESH   |1         |        1|      7|  604|
|6 months  |ResPak         |PAKISTAN     |0         |        0|    111|  239|
|6 months  |ResPak         |PAKISTAN     |0         |        1|     32|  239|
|6 months  |ResPak         |PAKISTAN     |1         |        0|     81|  239|
|6 months  |ResPak         |PAKISTAN     |1         |        1|     15|  239|
|6 months  |TanzaniaChild2 |TANZANIA     |0         |        0|   1713| 2029|
|6 months  |TanzaniaChild2 |TANZANIA     |0         |        1|     15| 2029|
|6 months  |TanzaniaChild2 |TANZANIA     |1         |        0|    297| 2029|
|6 months  |TanzaniaChild2 |TANZANIA     |1         |        1|      4| 2029|
|6 months  |Vellore Crypto |INDIA        |0         |        0|    162|  407|
|6 months  |Vellore Crypto |INDIA        |0         |        1|     18|  407|
|6 months  |Vellore Crypto |INDIA        |1         |        0|    216|  407|
|6 months  |Vellore Crypto |INDIA        |1         |        1|     11|  407|
|24 months |CMC-V-BCS-2002 |INDIA        |0         |        0|    125|  366|
|24 months |CMC-V-BCS-2002 |INDIA        |0         |        1|     51|  366|
|24 months |CMC-V-BCS-2002 |INDIA        |1         |        0|    120|  366|
|24 months |CMC-V-BCS-2002 |INDIA        |1         |        1|     70|  366|
|24 months |CMIN           |BANGLADESH   |0         |        0|    147|  242|
|24 months |CMIN           |BANGLADESH   |0         |        1|     53|  242|
|24 months |CMIN           |BANGLADESH   |1         |        0|     27|  242|
|24 months |CMIN           |BANGLADESH   |1         |        1|     15|  242|
|24 months |CONTENT        |PERU         |0         |        0|    161|  164|
|24 months |CONTENT        |PERU         |0         |        1|      1|  164|
|24 months |CONTENT        |PERU         |1         |        0|      2|  164|
|24 months |CONTENT        |PERU         |1         |        1|      0|  164|
|24 months |EE             |PAKISTAN     |0         |        0|     73|  167|
|24 months |EE             |PAKISTAN     |0         |        1|     36|  167|
|24 months |EE             |PAKISTAN     |1         |        0|     35|  167|
|24 months |EE             |PAKISTAN     |1         |        1|     23|  167|
|24 months |GMS-Nepal      |NEPAL        |0         |        0|    267|  488|
|24 months |GMS-Nepal      |NEPAL        |0         |        1|     33|  488|
|24 months |GMS-Nepal      |NEPAL        |1         |        0|    168|  488|
|24 months |GMS-Nepal      |NEPAL        |1         |        1|     20|  488|
|24 months |Keneba         |GAMBIA       |0         |        0|   1009| 1563|
|24 months |Keneba         |GAMBIA       |0         |        1|     82| 1563|
|24 months |Keneba         |GAMBIA       |1         |        0|    425| 1563|
|24 months |Keneba         |GAMBIA       |1         |        1|     47| 1563|
|24 months |MAL-ED         |INDIA        |0         |        0|    129|  227|
|24 months |MAL-ED         |INDIA        |0         |        1|     22|  227|
|24 months |MAL-ED         |INDIA        |1         |        0|     68|  227|
|24 months |MAL-ED         |INDIA        |1         |        1|      8|  227|
|24 months |MAL-ED         |BANGLADESH   |0         |        0|    142|  212|
|24 months |MAL-ED         |BANGLADESH   |0         |        1|     20|  212|
|24 months |MAL-ED         |BANGLADESH   |1         |        0|     42|  212|
|24 months |MAL-ED         |BANGLADESH   |1         |        1|      8|  212|
|24 months |MAL-ED         |PERU         |0         |        0|    179|  201|
|24 months |MAL-ED         |PERU         |0         |        1|     14|  201|
|24 months |MAL-ED         |PERU         |1         |        0|      7|  201|
|24 months |MAL-ED         |PERU         |1         |        1|      1|  201|
|24 months |MAL-ED         |NEPAL        |0         |        0|    178|  228|
|24 months |MAL-ED         |NEPAL        |0         |        1|      4|  228|
|24 months |MAL-ED         |NEPAL        |1         |        0|     43|  228|
|24 months |MAL-ED         |NEPAL        |1         |        1|      3|  228|
|24 months |MAL-ED         |BRAZIL       |0         |        0|    156|  169|
|24 months |MAL-ED         |BRAZIL       |0         |        1|      0|  169|
|24 months |MAL-ED         |BRAZIL       |1         |        0|     12|  169|
|24 months |MAL-ED         |BRAZIL       |1         |        1|      1|  169|
|24 months |MAL-ED         |TANZANIA     |0         |        0|    136|  214|
|24 months |MAL-ED         |TANZANIA     |0         |        1|     66|  214|
|24 months |MAL-ED         |TANZANIA     |1         |        0|      8|  214|
|24 months |MAL-ED         |TANZANIA     |1         |        1|      4|  214|
|24 months |MAL-ED         |SOUTH AFRICA |0         |        0|    190|  238|
|24 months |MAL-ED         |SOUTH AFRICA |0         |        1|     22|  238|
|24 months |MAL-ED         |SOUTH AFRICA |1         |        0|     21|  238|
|24 months |MAL-ED         |SOUTH AFRICA |1         |        1|      5|  238|
|24 months |PROVIDE        |BANGLADESH   |0         |        0|    390|  578|
|24 months |PROVIDE        |BANGLADESH   |0         |        1|     42|  578|
|24 months |PROVIDE        |BANGLADESH   |1         |        0|    136|  578|
|24 months |PROVIDE        |BANGLADESH   |1         |        1|     10|  578|
|24 months |TanzaniaChild2 |TANZANIA     |0         |        0|      4|    6|
|24 months |TanzaniaChild2 |TANZANIA     |0         |        1|      1|    6|
|24 months |TanzaniaChild2 |TANZANIA     |1         |        0|      1|    6|
|24 months |TanzaniaChild2 |TANZANIA     |1         |        1|      0|    6|
|24 months |Vellore Crypto |INDIA        |0         |        0|    163|  409|
|24 months |Vellore Crypto |INDIA        |0         |        1|     18|  409|
|24 months |Vellore Crypto |INDIA        |1         |        0|    205|  409|
|24 months |Vellore Crypto |INDIA        |1         |        1|     23|  409|


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

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
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


