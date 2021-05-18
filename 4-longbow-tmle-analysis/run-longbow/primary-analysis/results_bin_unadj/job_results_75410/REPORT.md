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

**Intervention Variable:** predexfd6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |predexfd6 | sstunted| n_cell|     n|
|:---------|:--------------|:------------|:---------|--------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |1         |        0|      8|     8|
|Birth     |CMC-V-BCS-2002 |INDIA        |1         |        1|      0|     8|
|Birth     |CMC-V-BCS-2002 |INDIA        |0         |        0|      0|     8|
|Birth     |CMC-V-BCS-2002 |INDIA        |0         |        1|      0|     8|
|Birth     |EE             |PAKISTAN     |1         |        0|     22|    28|
|Birth     |EE             |PAKISTAN     |1         |        1|      5|    28|
|Birth     |EE             |PAKISTAN     |0         |        0|      1|    28|
|Birth     |EE             |PAKISTAN     |0         |        1|      0|    28|
|Birth     |GMS-Nepal      |NEPAL        |1         |        0|    390|   546|
|Birth     |GMS-Nepal      |NEPAL        |1         |        1|     18|   546|
|Birth     |GMS-Nepal      |NEPAL        |0         |        0|    129|   546|
|Birth     |GMS-Nepal      |NEPAL        |0         |        1|      9|   546|
|Birth     |JiVitA-3       |BANGLADESH   |1         |        0|   9190| 13310|
|Birth     |JiVitA-3       |BANGLADESH   |1         |        1|   1117| 13310|
|Birth     |JiVitA-3       |BANGLADESH   |0         |        0|   2690| 13310|
|Birth     |JiVitA-3       |BANGLADESH   |0         |        1|    313| 13310|
|Birth     |JiVitA-4       |BANGLADESH   |1         |        0|   1716|  2465|
|Birth     |JiVitA-4       |BANGLADESH   |1         |        1|    148|  2465|
|Birth     |JiVitA-4       |BANGLADESH   |0         |        0|    553|  2465|
|Birth     |JiVitA-4       |BANGLADESH   |0         |        1|     48|  2465|
|Birth     |Keneba         |GAMBIA       |1         |        0|    424|  1256|
|Birth     |Keneba         |GAMBIA       |1         |        1|      8|  1256|
|Birth     |Keneba         |GAMBIA       |0         |        0|    803|  1256|
|Birth     |Keneba         |GAMBIA       |0         |        1|     21|  1256|
|Birth     |MAL-ED         |INDIA        |1         |        0|      2|    42|
|Birth     |MAL-ED         |INDIA        |1         |        1|      0|    42|
|Birth     |MAL-ED         |INDIA        |0         |        0|     38|    42|
|Birth     |MAL-ED         |INDIA        |0         |        1|      2|    42|
|Birth     |MAL-ED         |BANGLADESH   |1         |        0|     69|   200|
|Birth     |MAL-ED         |BANGLADESH   |1         |        1|      3|   200|
|Birth     |MAL-ED         |BANGLADESH   |0         |        0|    123|   200|
|Birth     |MAL-ED         |BANGLADESH   |0         |        1|      5|   200|
|Birth     |MAL-ED         |PERU         |1         |        0|     59|   212|
|Birth     |MAL-ED         |PERU         |1         |        1|      2|   212|
|Birth     |MAL-ED         |PERU         |0         |        0|    151|   212|
|Birth     |MAL-ED         |PERU         |0         |        1|      0|   212|
|Birth     |MAL-ED         |NEPAL        |1         |        0|      2|    25|
|Birth     |MAL-ED         |NEPAL        |1         |        1|      0|    25|
|Birth     |MAL-ED         |NEPAL        |0         |        0|     23|    25|
|Birth     |MAL-ED         |NEPAL        |0         |        1|      0|    25|
|Birth     |MAL-ED         |BRAZIL       |1         |        0|     10|    55|
|Birth     |MAL-ED         |BRAZIL       |1         |        1|      1|    55|
|Birth     |MAL-ED         |BRAZIL       |0         |        0|     42|    55|
|Birth     |MAL-ED         |BRAZIL       |0         |        1|      2|    55|
|Birth     |MAL-ED         |TANZANIA     |1         |        0|      0|   108|
|Birth     |MAL-ED         |TANZANIA     |1         |        1|      0|   108|
|Birth     |MAL-ED         |TANZANIA     |0         |        0|    101|   108|
|Birth     |MAL-ED         |TANZANIA     |0         |        1|      7|   108|
|Birth     |MAL-ED         |SOUTH AFRICA |1         |        0|      1|    91|
|Birth     |MAL-ED         |SOUTH AFRICA |1         |        1|      0|    91|
|Birth     |MAL-ED         |SOUTH AFRICA |0         |        0|     89|    91|
|Birth     |MAL-ED         |SOUTH AFRICA |0         |        1|      1|    91|
|Birth     |PROVIDE        |BANGLADESH   |1         |        0|    138|   539|
|Birth     |PROVIDE        |BANGLADESH   |1         |        1|      2|   539|
|Birth     |PROVIDE        |BANGLADESH   |0         |        0|    397|   539|
|Birth     |PROVIDE        |BANGLADESH   |0         |        1|      2|   539|
|Birth     |SAS-CompFeed   |INDIA        |1         |        0|    310|   350|
|Birth     |SAS-CompFeed   |INDIA        |1         |        1|     22|   350|
|Birth     |SAS-CompFeed   |INDIA        |0         |        0|     17|   350|
|Birth     |SAS-CompFeed   |INDIA        |0         |        1|      1|   350|
|Birth     |Vellore Crypto |INDIA        |1         |        0|      0|    10|
|Birth     |Vellore Crypto |INDIA        |1         |        1|      0|    10|
|Birth     |Vellore Crypto |INDIA        |0         |        0|      9|    10|
|Birth     |Vellore Crypto |INDIA        |0         |        1|      1|    10|
|6 months  |CMC-V-BCS-2002 |INDIA        |1         |        0|     22|    27|
|6 months  |CMC-V-BCS-2002 |INDIA        |1         |        1|      5|    27|
|6 months  |CMC-V-BCS-2002 |INDIA        |0         |        0|      0|    27|
|6 months  |CMC-V-BCS-2002 |INDIA        |0         |        1|      0|    27|
|6 months  |EE             |PAKISTAN     |1         |        0|     43|    54|
|6 months  |EE             |PAKISTAN     |1         |        1|     11|    54|
|6 months  |EE             |PAKISTAN     |0         |        0|      0|    54|
|6 months  |EE             |PAKISTAN     |0         |        1|      0|    54|
|6 months  |GMS-Nepal      |NEPAL        |1         |        0|    333|   446|
|6 months  |GMS-Nepal      |NEPAL        |1         |        1|      9|   446|
|6 months  |GMS-Nepal      |NEPAL        |0         |        0|     96|   446|
|6 months  |GMS-Nepal      |NEPAL        |0         |        1|      8|   446|
|6 months  |JiVitA-3       |BANGLADESH   |1         |        0|   7201|  9893|
|6 months  |JiVitA-3       |BANGLADESH   |1         |        1|    447|  9893|
|6 months  |JiVitA-3       |BANGLADESH   |0         |        0|   2110|  9893|
|6 months  |JiVitA-3       |BANGLADESH   |0         |        1|    135|  9893|
|6 months  |JiVitA-4       |BANGLADESH   |1         |        0|   3059|  4232|
|6 months  |JiVitA-4       |BANGLADESH   |1         |        1|    177|  4232|
|6 months  |JiVitA-4       |BANGLADESH   |0         |        0|    936|  4232|
|6 months  |JiVitA-4       |BANGLADESH   |0         |        1|     60|  4232|
|6 months  |Keneba         |GAMBIA       |1         |        0|    553|  1669|
|6 months  |Keneba         |GAMBIA       |1         |        1|     20|  1669|
|6 months  |Keneba         |GAMBIA       |0         |        0|   1060|  1669|
|6 months  |Keneba         |GAMBIA       |0         |        1|     36|  1669|
|6 months  |LCNI-5         |MALAWI       |1         |        0|     31|   286|
|6 months  |LCNI-5         |MALAWI       |1         |        1|      5|   286|
|6 months  |LCNI-5         |MALAWI       |0         |        0|    227|   286|
|6 months  |LCNI-5         |MALAWI       |0         |        1|     23|   286|
|6 months  |MAL-ED         |INDIA        |1         |        0|     10|   206|
|6 months  |MAL-ED         |INDIA        |1         |        1|      0|   206|
|6 months  |MAL-ED         |INDIA        |0         |        0|    189|   206|
|6 months  |MAL-ED         |INDIA        |0         |        1|      7|   206|
|6 months  |MAL-ED         |BANGLADESH   |1         |        0|     74|   210|
|6 months  |MAL-ED         |BANGLADESH   |1         |        1|      2|   210|
|6 months  |MAL-ED         |BANGLADESH   |0         |        0|    128|   210|
|6 months  |MAL-ED         |BANGLADESH   |0         |        1|      6|   210|
|6 months  |MAL-ED         |PERU         |1         |        0|     77|   250|
|6 months  |MAL-ED         |PERU         |1         |        1|      1|   250|
|6 months  |MAL-ED         |PERU         |0         |        0|    164|   250|
|6 months  |MAL-ED         |PERU         |0         |        1|      8|   250|
|6 months  |MAL-ED         |NEPAL        |1         |        0|     16|   222|
|6 months  |MAL-ED         |NEPAL        |1         |        1|      0|   222|
|6 months  |MAL-ED         |NEPAL        |0         |        0|    205|   222|
|6 months  |MAL-ED         |NEPAL        |0         |        1|      1|   222|
|6 months  |MAL-ED         |BRAZIL       |1         |        0|     29|   187|
|6 months  |MAL-ED         |BRAZIL       |1         |        1|      0|   187|
|6 months  |MAL-ED         |BRAZIL       |0         |        0|    158|   187|
|6 months  |MAL-ED         |BRAZIL       |0         |        1|      0|   187|
|6 months  |MAL-ED         |TANZANIA     |1         |        0|      0|   227|
|6 months  |MAL-ED         |TANZANIA     |1         |        1|      0|   227|
|6 months  |MAL-ED         |TANZANIA     |0         |        0|    215|   227|
|6 months  |MAL-ED         |TANZANIA     |0         |        1|     12|   227|
|6 months  |MAL-ED         |SOUTH AFRICA |1         |        0|      1|   197|
|6 months  |MAL-ED         |SOUTH AFRICA |1         |        1|      0|   197|
|6 months  |MAL-ED         |SOUTH AFRICA |0         |        0|    191|   197|
|6 months  |MAL-ED         |SOUTH AFRICA |0         |        1|      5|   197|
|6 months  |PROVIDE        |BANGLADESH   |1         |        0|    155|   604|
|6 months  |PROVIDE        |BANGLADESH   |1         |        1|      4|   604|
|6 months  |PROVIDE        |BANGLADESH   |0         |        0|    435|   604|
|6 months  |PROVIDE        |BANGLADESH   |0         |        1|     10|   604|
|6 months  |SAS-CompFeed   |INDIA        |1         |        0|    325|   375|
|6 months  |SAS-CompFeed   |INDIA        |1         |        1|     29|   375|
|6 months  |SAS-CompFeed   |INDIA        |0         |        0|     17|   375|
|6 months  |SAS-CompFeed   |INDIA        |0         |        1|      4|   375|
|6 months  |SAS-FoodSuppl  |INDIA        |1         |        0|      0|   148|
|6 months  |SAS-FoodSuppl  |INDIA        |1         |        1|      0|   148|
|6 months  |SAS-FoodSuppl  |INDIA        |0         |        0|    127|   148|
|6 months  |SAS-FoodSuppl  |INDIA        |0         |        1|     21|   148|
|6 months  |Vellore Crypto |INDIA        |1         |        0|      0|     9|
|6 months  |Vellore Crypto |INDIA        |1         |        1|      0|     9|
|6 months  |Vellore Crypto |INDIA        |0         |        0|      8|     9|
|6 months  |Vellore Crypto |INDIA        |0         |        1|      1|     9|
|24 months |CMC-V-BCS-2002 |INDIA        |1         |        0|     17|    28|
|24 months |CMC-V-BCS-2002 |INDIA        |1         |        1|     11|    28|
|24 months |CMC-V-BCS-2002 |INDIA        |0         |        0|      0|    28|
|24 months |CMC-V-BCS-2002 |INDIA        |0         |        1|      0|    28|
|24 months |EE             |PAKISTAN     |1         |        0|     16|    24|
|24 months |EE             |PAKISTAN     |1         |        1|      8|    24|
|24 months |EE             |PAKISTAN     |0         |        0|      0|    24|
|24 months |EE             |PAKISTAN     |0         |        1|      0|    24|
|24 months |GMS-Nepal      |NEPAL        |1         |        0|    260|   384|
|24 months |GMS-Nepal      |NEPAL        |1         |        1|     35|   384|
|24 months |GMS-Nepal      |NEPAL        |0         |        0|     79|   384|
|24 months |GMS-Nepal      |NEPAL        |0         |        1|     10|   384|
|24 months |JiVitA-3       |BANGLADESH   |1         |        0|   3292|  5085|
|24 months |JiVitA-3       |BANGLADESH   |1         |        1|    617|  5085|
|24 months |JiVitA-3       |BANGLADESH   |0         |        0|    998|  5085|
|24 months |JiVitA-3       |BANGLADESH   |0         |        1|    178|  5085|
|24 months |JiVitA-4       |BANGLADESH   |1         |        0|   2892|  4154|
|24 months |JiVitA-4       |BANGLADESH   |1         |        1|    294|  4154|
|24 months |JiVitA-4       |BANGLADESH   |0         |        0|    868|  4154|
|24 months |JiVitA-4       |BANGLADESH   |0         |        1|    100|  4154|
|24 months |Keneba         |GAMBIA       |1         |        0|    444|  1386|
|24 months |Keneba         |GAMBIA       |1         |        1|     46|  1386|
|24 months |Keneba         |GAMBIA       |0         |        0|    823|  1386|
|24 months |Keneba         |GAMBIA       |0         |        1|     73|  1386|
|24 months |LCNI-5         |MALAWI       |1         |        0|     22|   207|
|24 months |LCNI-5         |MALAWI       |1         |        1|      3|   207|
|24 months |LCNI-5         |MALAWI       |0         |        0|    157|   207|
|24 months |LCNI-5         |MALAWI       |0         |        1|     25|   207|
|24 months |MAL-ED         |INDIA        |1         |        0|      8|   198|
|24 months |MAL-ED         |INDIA        |1         |        1|      1|   198|
|24 months |MAL-ED         |INDIA        |0         |        0|    163|   198|
|24 months |MAL-ED         |INDIA        |0         |        1|     26|   198|
|24 months |MAL-ED         |BANGLADESH   |1         |        0|     58|   183|
|24 months |MAL-ED         |BANGLADESH   |1         |        1|     10|   183|
|24 months |MAL-ED         |BANGLADESH   |0         |        0|    102|   183|
|24 months |MAL-ED         |BANGLADESH   |0         |        1|     13|   183|
|24 months |MAL-ED         |PERU         |1         |        0|     50|   182|
|24 months |MAL-ED         |PERU         |1         |        1|      4|   182|
|24 months |MAL-ED         |PERU         |0         |        0|    119|   182|
|24 months |MAL-ED         |PERU         |0         |        1|      9|   182|
|24 months |MAL-ED         |NEPAL        |1         |        0|     16|   214|
|24 months |MAL-ED         |NEPAL        |1         |        1|      0|   214|
|24 months |MAL-ED         |NEPAL        |0         |        0|    192|   214|
|24 months |MAL-ED         |NEPAL        |0         |        1|      6|   214|
|24 months |MAL-ED         |BRAZIL       |1         |        0|     22|   148|
|24 months |MAL-ED         |BRAZIL       |1         |        1|      0|   148|
|24 months |MAL-ED         |BRAZIL       |0         |        0|    125|   148|
|24 months |MAL-ED         |BRAZIL       |0         |        1|      1|   148|
|24 months |MAL-ED         |TANZANIA     |1         |        0|      0|   198|
|24 months |MAL-ED         |TANZANIA     |1         |        1|      0|   198|
|24 months |MAL-ED         |TANZANIA     |0         |        0|    132|   198|
|24 months |MAL-ED         |TANZANIA     |0         |        1|     66|   198|
|24 months |MAL-ED         |SOUTH AFRICA |1         |        0|      1|   180|
|24 months |MAL-ED         |SOUTH AFRICA |1         |        1|      0|   180|
|24 months |MAL-ED         |SOUTH AFRICA |0         |        0|    160|   180|
|24 months |MAL-ED         |SOUTH AFRICA |0         |        1|     19|   180|
|24 months |PROVIDE        |BANGLADESH   |1         |        0|    142|   578|
|24 months |PROVIDE        |BANGLADESH   |1         |        1|     13|   578|
|24 months |PROVIDE        |BANGLADESH   |0         |        0|    384|   578|
|24 months |PROVIDE        |BANGLADESH   |0         |        1|     39|   578|
|24 months |Vellore Crypto |INDIA        |1         |        0|      0|     9|
|24 months |Vellore Crypto |INDIA        |1         |        1|      0|     9|
|24 months |Vellore Crypto |INDIA        |0         |        0|      7|     9|
|24 months |Vellore Crypto |INDIA        |0         |        1|      2|     9|


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
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: INDIA
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


