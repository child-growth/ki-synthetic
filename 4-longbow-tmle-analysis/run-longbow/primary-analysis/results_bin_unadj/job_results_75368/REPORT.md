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

**Intervention Variable:** predexfd6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |predexfd6 | stunted| n_cell|     n|
|:---------|:--------------|:------------|:---------|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |1         |       0|      5|     8|
|Birth     |CMC-V-BCS-2002 |INDIA        |1         |       1|      3|     8|
|Birth     |CMC-V-BCS-2002 |INDIA        |0         |       0|      0|     8|
|Birth     |CMC-V-BCS-2002 |INDIA        |0         |       1|      0|     8|
|Birth     |EE             |PAKISTAN     |1         |       0|     17|    28|
|Birth     |EE             |PAKISTAN     |1         |       1|     10|    28|
|Birth     |EE             |PAKISTAN     |0         |       0|      1|    28|
|Birth     |EE             |PAKISTAN     |0         |       1|      0|    28|
|Birth     |GMS-Nepal      |NEPAL        |1         |       0|    332|   546|
|Birth     |GMS-Nepal      |NEPAL        |1         |       1|     76|   546|
|Birth     |GMS-Nepal      |NEPAL        |0         |       0|    110|   546|
|Birth     |GMS-Nepal      |NEPAL        |0         |       1|     28|   546|
|Birth     |JiVitA-3       |BANGLADESH   |1         |       0|   6901| 13310|
|Birth     |JiVitA-3       |BANGLADESH   |1         |       1|   3406| 13310|
|Birth     |JiVitA-3       |BANGLADESH   |0         |       0|   2005| 13310|
|Birth     |JiVitA-3       |BANGLADESH   |0         |       1|    998| 13310|
|Birth     |JiVitA-4       |BANGLADESH   |1         |       0|   1287|  2465|
|Birth     |JiVitA-4       |BANGLADESH   |1         |       1|    577|  2465|
|Birth     |JiVitA-4       |BANGLADESH   |0         |       0|    434|  2465|
|Birth     |JiVitA-4       |BANGLADESH   |0         |       1|    167|  2465|
|Birth     |Keneba         |GAMBIA       |1         |       0|    407|  1256|
|Birth     |Keneba         |GAMBIA       |1         |       1|     25|  1256|
|Birth     |Keneba         |GAMBIA       |0         |       0|    773|  1256|
|Birth     |Keneba         |GAMBIA       |0         |       1|     51|  1256|
|Birth     |MAL-ED         |INDIA        |1         |       0|      1|    42|
|Birth     |MAL-ED         |INDIA        |1         |       1|      1|    42|
|Birth     |MAL-ED         |INDIA        |0         |       0|     32|    42|
|Birth     |MAL-ED         |INDIA        |0         |       1|      8|    42|
|Birth     |MAL-ED         |BANGLADESH   |1         |       0|     62|   200|
|Birth     |MAL-ED         |BANGLADESH   |1         |       1|     10|   200|
|Birth     |MAL-ED         |BANGLADESH   |0         |       0|    104|   200|
|Birth     |MAL-ED         |BANGLADESH   |0         |       1|     24|   200|
|Birth     |MAL-ED         |PERU         |1         |       0|     54|   212|
|Birth     |MAL-ED         |PERU         |1         |       1|      7|   212|
|Birth     |MAL-ED         |PERU         |0         |       0|    135|   212|
|Birth     |MAL-ED         |PERU         |0         |       1|     16|   212|
|Birth     |MAL-ED         |NEPAL        |1         |       0|      2|    25|
|Birth     |MAL-ED         |NEPAL        |1         |       1|      0|    25|
|Birth     |MAL-ED         |NEPAL        |0         |       0|     22|    25|
|Birth     |MAL-ED         |NEPAL        |0         |       1|      1|    25|
|Birth     |MAL-ED         |BRAZIL       |1         |       0|     10|    55|
|Birth     |MAL-ED         |BRAZIL       |1         |       1|      1|    55|
|Birth     |MAL-ED         |BRAZIL       |0         |       0|     36|    55|
|Birth     |MAL-ED         |BRAZIL       |0         |       1|      8|    55|
|Birth     |MAL-ED         |TANZANIA     |1         |       0|      0|   108|
|Birth     |MAL-ED         |TANZANIA     |1         |       1|      0|   108|
|Birth     |MAL-ED         |TANZANIA     |0         |       0|     88|   108|
|Birth     |MAL-ED         |TANZANIA     |0         |       1|     20|   108|
|Birth     |MAL-ED         |SOUTH AFRICA |1         |       0|      0|    91|
|Birth     |MAL-ED         |SOUTH AFRICA |1         |       1|      1|    91|
|Birth     |MAL-ED         |SOUTH AFRICA |0         |       0|     82|    91|
|Birth     |MAL-ED         |SOUTH AFRICA |0         |       1|      8|    91|
|Birth     |PROVIDE        |BANGLADESH   |1         |       0|    125|   539|
|Birth     |PROVIDE        |BANGLADESH   |1         |       1|     15|   539|
|Birth     |PROVIDE        |BANGLADESH   |0         |       0|    366|   539|
|Birth     |PROVIDE        |BANGLADESH   |0         |       1|     33|   539|
|Birth     |SAS-CompFeed   |INDIA        |1         |       0|    248|   350|
|Birth     |SAS-CompFeed   |INDIA        |1         |       1|     84|   350|
|Birth     |SAS-CompFeed   |INDIA        |0         |       0|      8|   350|
|Birth     |SAS-CompFeed   |INDIA        |0         |       1|     10|   350|
|Birth     |Vellore Crypto |INDIA        |1         |       0|      0|    10|
|Birth     |Vellore Crypto |INDIA        |1         |       1|      0|    10|
|Birth     |Vellore Crypto |INDIA        |0         |       0|      7|    10|
|Birth     |Vellore Crypto |INDIA        |0         |       1|      3|    10|
|6 months  |CMC-V-BCS-2002 |INDIA        |1         |       0|     15|    27|
|6 months  |CMC-V-BCS-2002 |INDIA        |1         |       1|     12|    27|
|6 months  |CMC-V-BCS-2002 |INDIA        |0         |       0|      0|    27|
|6 months  |CMC-V-BCS-2002 |INDIA        |0         |       1|      0|    27|
|6 months  |EE             |PAKISTAN     |1         |       0|     26|    54|
|6 months  |EE             |PAKISTAN     |1         |       1|     28|    54|
|6 months  |EE             |PAKISTAN     |0         |       0|      0|    54|
|6 months  |EE             |PAKISTAN     |0         |       1|      0|    54|
|6 months  |GMS-Nepal      |NEPAL        |1         |       0|    265|   446|
|6 months  |GMS-Nepal      |NEPAL        |1         |       1|     77|   446|
|6 months  |GMS-Nepal      |NEPAL        |0         |       0|     80|   446|
|6 months  |GMS-Nepal      |NEPAL        |0         |       1|     24|   446|
|6 months  |JiVitA-3       |BANGLADESH   |1         |       0|   5705|  9893|
|6 months  |JiVitA-3       |BANGLADESH   |1         |       1|   1943|  9893|
|6 months  |JiVitA-3       |BANGLADESH   |0         |       0|   1704|  9893|
|6 months  |JiVitA-3       |BANGLADESH   |0         |       1|    541|  9893|
|6 months  |JiVitA-4       |BANGLADESH   |1         |       0|   2408|  4232|
|6 months  |JiVitA-4       |BANGLADESH   |1         |       1|    828|  4232|
|6 months  |JiVitA-4       |BANGLADESH   |0         |       0|    739|  4232|
|6 months  |JiVitA-4       |BANGLADESH   |0         |       1|    257|  4232|
|6 months  |Keneba         |GAMBIA       |1         |       0|    481|  1669|
|6 months  |Keneba         |GAMBIA       |1         |       1|     92|  1669|
|6 months  |Keneba         |GAMBIA       |0         |       0|    941|  1669|
|6 months  |Keneba         |GAMBIA       |0         |       1|    155|  1669|
|6 months  |LCNI-5         |MALAWI       |1         |       0|     26|   286|
|6 months  |LCNI-5         |MALAWI       |1         |       1|     10|   286|
|6 months  |LCNI-5         |MALAWI       |0         |       0|    145|   286|
|6 months  |LCNI-5         |MALAWI       |0         |       1|    105|   286|
|6 months  |MAL-ED         |INDIA        |1         |       0|      9|   206|
|6 months  |MAL-ED         |INDIA        |1         |       1|      1|   206|
|6 months  |MAL-ED         |INDIA        |0         |       0|    159|   206|
|6 months  |MAL-ED         |INDIA        |0         |       1|     37|   206|
|6 months  |MAL-ED         |BANGLADESH   |1         |       0|     60|   210|
|6 months  |MAL-ED         |BANGLADESH   |1         |       1|     16|   210|
|6 months  |MAL-ED         |BANGLADESH   |0         |       0|    113|   210|
|6 months  |MAL-ED         |BANGLADESH   |0         |       1|     21|   210|
|6 months  |MAL-ED         |PERU         |1         |       0|     59|   250|
|6 months  |MAL-ED         |PERU         |1         |       1|     19|   250|
|6 months  |MAL-ED         |PERU         |0         |       0|    137|   250|
|6 months  |MAL-ED         |PERU         |0         |       1|     35|   250|
|6 months  |MAL-ED         |NEPAL        |1         |       0|     16|   222|
|6 months  |MAL-ED         |NEPAL        |1         |       1|      0|   222|
|6 months  |MAL-ED         |NEPAL        |0         |       0|    195|   222|
|6 months  |MAL-ED         |NEPAL        |0         |       1|     11|   222|
|6 months  |MAL-ED         |BRAZIL       |1         |       0|     27|   187|
|6 months  |MAL-ED         |BRAZIL       |1         |       1|      2|   187|
|6 months  |MAL-ED         |BRAZIL       |0         |       0|    155|   187|
|6 months  |MAL-ED         |BRAZIL       |0         |       1|      3|   187|
|6 months  |MAL-ED         |TANZANIA     |1         |       0|      0|   227|
|6 months  |MAL-ED         |TANZANIA     |1         |       1|      0|   227|
|6 months  |MAL-ED         |TANZANIA     |0         |       0|    173|   227|
|6 months  |MAL-ED         |TANZANIA     |0         |       1|     54|   227|
|6 months  |MAL-ED         |SOUTH AFRICA |1         |       0|      0|   197|
|6 months  |MAL-ED         |SOUTH AFRICA |1         |       1|      1|   197|
|6 months  |MAL-ED         |SOUTH AFRICA |0         |       0|    156|   197|
|6 months  |MAL-ED         |SOUTH AFRICA |0         |       1|     40|   197|
|6 months  |PROVIDE        |BANGLADESH   |1         |       0|    135|   604|
|6 months  |PROVIDE        |BANGLADESH   |1         |       1|     24|   604|
|6 months  |PROVIDE        |BANGLADESH   |0         |       0|    373|   604|
|6 months  |PROVIDE        |BANGLADESH   |0         |       1|     72|   604|
|6 months  |SAS-CompFeed   |INDIA        |1         |       0|    253|   375|
|6 months  |SAS-CompFeed   |INDIA        |1         |       1|    101|   375|
|6 months  |SAS-CompFeed   |INDIA        |0         |       0|     11|   375|
|6 months  |SAS-CompFeed   |INDIA        |0         |       1|     10|   375|
|6 months  |SAS-FoodSuppl  |INDIA        |1         |       0|      0|   148|
|6 months  |SAS-FoodSuppl  |INDIA        |1         |       1|      0|   148|
|6 months  |SAS-FoodSuppl  |INDIA        |0         |       0|     86|   148|
|6 months  |SAS-FoodSuppl  |INDIA        |0         |       1|     62|   148|
|6 months  |Vellore Crypto |INDIA        |1         |       0|      0|     9|
|6 months  |Vellore Crypto |INDIA        |1         |       1|      0|     9|
|6 months  |Vellore Crypto |INDIA        |0         |       0|      5|     9|
|6 months  |Vellore Crypto |INDIA        |0         |       1|      4|     9|
|24 months |CMC-V-BCS-2002 |INDIA        |1         |       0|      6|    28|
|24 months |CMC-V-BCS-2002 |INDIA        |1         |       1|     22|    28|
|24 months |CMC-V-BCS-2002 |INDIA        |0         |       0|      0|    28|
|24 months |CMC-V-BCS-2002 |INDIA        |0         |       1|      0|    28|
|24 months |EE             |PAKISTAN     |1         |       0|      7|    24|
|24 months |EE             |PAKISTAN     |1         |       1|     17|    24|
|24 months |EE             |PAKISTAN     |0         |       0|      0|    24|
|24 months |EE             |PAKISTAN     |0         |       1|      0|    24|
|24 months |GMS-Nepal      |NEPAL        |1         |       0|    159|   384|
|24 months |GMS-Nepal      |NEPAL        |1         |       1|    136|   384|
|24 months |GMS-Nepal      |NEPAL        |0         |       0|     48|   384|
|24 months |GMS-Nepal      |NEPAL        |0         |       1|     41|   384|
|24 months |JiVitA-3       |BANGLADESH   |1         |       0|   1966|  5085|
|24 months |JiVitA-3       |BANGLADESH   |1         |       1|   1943|  5085|
|24 months |JiVitA-3       |BANGLADESH   |0         |       0|    604|  5085|
|24 months |JiVitA-3       |BANGLADESH   |0         |       1|    572|  5085|
|24 months |JiVitA-4       |BANGLADESH   |1         |       0|   1906|  4154|
|24 months |JiVitA-4       |BANGLADESH   |1         |       1|   1280|  4154|
|24 months |JiVitA-4       |BANGLADESH   |0         |       0|    570|  4154|
|24 months |JiVitA-4       |BANGLADESH   |0         |       1|    398|  4154|
|24 months |Keneba         |GAMBIA       |1         |       0|    315|  1386|
|24 months |Keneba         |GAMBIA       |1         |       1|    175|  1386|
|24 months |Keneba         |GAMBIA       |0         |       0|    589|  1386|
|24 months |Keneba         |GAMBIA       |0         |       1|    307|  1386|
|24 months |LCNI-5         |MALAWI       |1         |       0|     14|   207|
|24 months |LCNI-5         |MALAWI       |1         |       1|     11|   207|
|24 months |LCNI-5         |MALAWI       |0         |       0|     85|   207|
|24 months |LCNI-5         |MALAWI       |0         |       1|     97|   207|
|24 months |MAL-ED         |INDIA        |1         |       0|      7|   198|
|24 months |MAL-ED         |INDIA        |1         |       1|      2|   198|
|24 months |MAL-ED         |INDIA        |0         |       0|    110|   198|
|24 months |MAL-ED         |INDIA        |0         |       1|     79|   198|
|24 months |MAL-ED         |BANGLADESH   |1         |       0|     33|   183|
|24 months |MAL-ED         |BANGLADESH   |1         |       1|     35|   183|
|24 months |MAL-ED         |BANGLADESH   |0         |       0|     64|   183|
|24 months |MAL-ED         |BANGLADESH   |0         |       1|     51|   183|
|24 months |MAL-ED         |PERU         |1         |       0|     35|   182|
|24 months |MAL-ED         |PERU         |1         |       1|     19|   182|
|24 months |MAL-ED         |PERU         |0         |       0|     81|   182|
|24 months |MAL-ED         |PERU         |0         |       1|     47|   182|
|24 months |MAL-ED         |NEPAL        |1         |       0|     11|   214|
|24 months |MAL-ED         |NEPAL        |1         |       1|      5|   214|
|24 months |MAL-ED         |NEPAL        |0         |       0|    156|   214|
|24 months |MAL-ED         |NEPAL        |0         |       1|     42|   214|
|24 months |MAL-ED         |BRAZIL       |1         |       0|     21|   148|
|24 months |MAL-ED         |BRAZIL       |1         |       1|      1|   148|
|24 months |MAL-ED         |BRAZIL       |0         |       0|    122|   148|
|24 months |MAL-ED         |BRAZIL       |0         |       1|      4|   148|
|24 months |MAL-ED         |TANZANIA     |1         |       0|      0|   198|
|24 months |MAL-ED         |TANZANIA     |1         |       1|      0|   198|
|24 months |MAL-ED         |TANZANIA     |0         |       0|     54|   198|
|24 months |MAL-ED         |TANZANIA     |0         |       1|    144|   198|
|24 months |MAL-ED         |SOUTH AFRICA |1         |       0|      1|   180|
|24 months |MAL-ED         |SOUTH AFRICA |1         |       1|      0|   180|
|24 months |MAL-ED         |SOUTH AFRICA |0         |       0|    113|   180|
|24 months |MAL-ED         |SOUTH AFRICA |0         |       1|     66|   180|
|24 months |PROVIDE        |BANGLADESH   |1         |       0|    111|   578|
|24 months |PROVIDE        |BANGLADESH   |1         |       1|     44|   578|
|24 months |PROVIDE        |BANGLADESH   |0         |       0|    277|   578|
|24 months |PROVIDE        |BANGLADESH   |0         |       1|    146|   578|
|24 months |Vellore Crypto |INDIA        |1         |       0|      0|     9|
|24 months |Vellore Crypto |INDIA        |1         |       1|      0|     9|
|24 months |Vellore Crypto |INDIA        |0         |       0|      5|     9|
|24 months |Vellore Crypto |INDIA        |0         |       1|      4|     9|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: INDIA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


