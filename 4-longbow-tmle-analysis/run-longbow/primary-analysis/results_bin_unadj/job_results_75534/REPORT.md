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

**Intervention Variable:** predexfd6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |predexfd6 | wasted| n_cell|     n|
|:---------|:--------------|:------------|:---------|------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |1         |      0|      5|     7|
|Birth     |CMC-V-BCS-2002 |INDIA        |1         |      1|      2|     7|
|Birth     |CMC-V-BCS-2002 |INDIA        |0         |      0|      0|     7|
|Birth     |CMC-V-BCS-2002 |INDIA        |0         |      1|      0|     7|
|Birth     |EE             |PAKISTAN     |1         |      0|     19|    22|
|Birth     |EE             |PAKISTAN     |1         |      1|      2|    22|
|Birth     |EE             |PAKISTAN     |0         |      0|      1|    22|
|Birth     |EE             |PAKISTAN     |0         |      1|      0|    22|
|Birth     |GMS-Nepal      |NEPAL        |1         |      0|    293|   500|
|Birth     |GMS-Nepal      |NEPAL        |1         |      1|     82|   500|
|Birth     |GMS-Nepal      |NEPAL        |0         |      0|    100|   500|
|Birth     |GMS-Nepal      |NEPAL        |0         |      1|     25|   500|
|Birth     |JiVitA-3       |BANGLADESH   |1         |      0|   7331| 10655|
|Birth     |JiVitA-3       |BANGLADESH   |1         |      1|    921| 10655|
|Birth     |JiVitA-3       |BANGLADESH   |0         |      0|   2159| 10655|
|Birth     |JiVitA-3       |BANGLADESH   |0         |      1|    244| 10655|
|Birth     |JiVitA-4       |BANGLADESH   |1         |      0|   1412|  2090|
|Birth     |JiVitA-4       |BANGLADESH   |1         |      1|    157|  2090|
|Birth     |JiVitA-4       |BANGLADESH   |0         |      0|    462|  2090|
|Birth     |JiVitA-4       |BANGLADESH   |0         |      1|     59|  2090|
|Birth     |Keneba         |GAMBIA       |1         |      0|    304|  1188|
|Birth     |Keneba         |GAMBIA       |1         |      1|    103|  1188|
|Birth     |Keneba         |GAMBIA       |0         |      0|    583|  1188|
|Birth     |Keneba         |GAMBIA       |0         |      1|    198|  1188|
|Birth     |MAL-ED         |INDIA        |1         |      0|      2|    40|
|Birth     |MAL-ED         |INDIA        |1         |      1|      0|    40|
|Birth     |MAL-ED         |INDIA        |0         |      0|     34|    40|
|Birth     |MAL-ED         |INDIA        |0         |      1|      4|    40|
|Birth     |MAL-ED         |BANGLADESH   |1         |      0|     53|   187|
|Birth     |MAL-ED         |BANGLADESH   |1         |      1|     12|   187|
|Birth     |MAL-ED         |BANGLADESH   |0         |      0|    104|   187|
|Birth     |MAL-ED         |BANGLADESH   |0         |      1|     18|   187|
|Birth     |MAL-ED         |PERU         |1         |      0|     56|   208|
|Birth     |MAL-ED         |PERU         |1         |      1|      2|   208|
|Birth     |MAL-ED         |PERU         |0         |      0|    147|   208|
|Birth     |MAL-ED         |PERU         |0         |      1|      3|   208|
|Birth     |MAL-ED         |NEPAL        |1         |      0|      2|    25|
|Birth     |MAL-ED         |NEPAL        |1         |      1|      0|    25|
|Birth     |MAL-ED         |NEPAL        |0         |      0|     21|    25|
|Birth     |MAL-ED         |NEPAL        |0         |      1|      2|    25|
|Birth     |MAL-ED         |BRAZIL       |1         |      0|     10|    52|
|Birth     |MAL-ED         |BRAZIL       |1         |      1|      0|    52|
|Birth     |MAL-ED         |BRAZIL       |0         |      0|     40|    52|
|Birth     |MAL-ED         |BRAZIL       |0         |      1|      2|    52|
|Birth     |MAL-ED         |TANZANIA     |1         |      0|      0|   101|
|Birth     |MAL-ED         |TANZANIA     |1         |      1|      0|   101|
|Birth     |MAL-ED         |TANZANIA     |0         |      0|    100|   101|
|Birth     |MAL-ED         |TANZANIA     |0         |      1|      1|   101|
|Birth     |MAL-ED         |SOUTH AFRICA |1         |      0|      1|    89|
|Birth     |MAL-ED         |SOUTH AFRICA |1         |      1|      0|    89|
|Birth     |MAL-ED         |SOUTH AFRICA |0         |      0|     82|    89|
|Birth     |MAL-ED         |SOUTH AFRICA |0         |      1|      6|    89|
|Birth     |PROVIDE        |BANGLADESH   |1         |      0|    106|   532|
|Birth     |PROVIDE        |BANGLADESH   |1         |      1|     30|   532|
|Birth     |PROVIDE        |BANGLADESH   |0         |      0|    309|   532|
|Birth     |PROVIDE        |BANGLADESH   |0         |      1|     87|   532|
|Birth     |SAS-CompFeed   |INDIA        |1         |      0|    273|   316|
|Birth     |SAS-CompFeed   |INDIA        |1         |      1|     28|   316|
|Birth     |SAS-CompFeed   |INDIA        |0         |      0|     13|   316|
|Birth     |SAS-CompFeed   |INDIA        |0         |      1|      2|   316|
|Birth     |Vellore Crypto |INDIA        |1         |      0|      0|     8|
|Birth     |Vellore Crypto |INDIA        |1         |      1|      0|     8|
|Birth     |Vellore Crypto |INDIA        |0         |      0|      8|     8|
|Birth     |Vellore Crypto |INDIA        |0         |      1|      0|     8|
|6 months  |CMC-V-BCS-2002 |INDIA        |1         |      0|     25|    28|
|6 months  |CMC-V-BCS-2002 |INDIA        |1         |      1|      3|    28|
|6 months  |CMC-V-BCS-2002 |INDIA        |0         |      0|      0|    28|
|6 months  |CMC-V-BCS-2002 |INDIA        |0         |      1|      0|    28|
|6 months  |EE             |PAKISTAN     |1         |      0|     43|    54|
|6 months  |EE             |PAKISTAN     |1         |      1|     11|    54|
|6 months  |EE             |PAKISTAN     |0         |      0|      0|    54|
|6 months  |EE             |PAKISTAN     |0         |      1|      0|    54|
|6 months  |GMS-Nepal      |NEPAL        |1         |      0|    309|   446|
|6 months  |GMS-Nepal      |NEPAL        |1         |      1|     33|   446|
|6 months  |GMS-Nepal      |NEPAL        |0         |      0|     95|   446|
|6 months  |GMS-Nepal      |NEPAL        |0         |      1|      9|   446|
|6 months  |JiVitA-3       |BANGLADESH   |1         |      0|   6998|  9871|
|6 months  |JiVitA-3       |BANGLADESH   |1         |      1|    630|  9871|
|6 months  |JiVitA-3       |BANGLADESH   |0         |      0|   2070|  9871|
|6 months  |JiVitA-3       |BANGLADESH   |0         |      1|    173|  9871|
|6 months  |JiVitA-4       |BANGLADESH   |1         |      0|   3055|  4232|
|6 months  |JiVitA-4       |BANGLADESH   |1         |      1|    178|  4232|
|6 months  |JiVitA-4       |BANGLADESH   |0         |      0|    940|  4232|
|6 months  |JiVitA-4       |BANGLADESH   |0         |      1|     59|  4232|
|6 months  |Keneba         |GAMBIA       |1         |      0|    538|  1669|
|6 months  |Keneba         |GAMBIA       |1         |      1|     36|  1669|
|6 months  |Keneba         |GAMBIA       |0         |      0|   1035|  1669|
|6 months  |Keneba         |GAMBIA       |0         |      1|     60|  1669|
|6 months  |LCNI-5         |MALAWI       |1         |      0|     34|   286|
|6 months  |LCNI-5         |MALAWI       |1         |      1|      2|   286|
|6 months  |LCNI-5         |MALAWI       |0         |      0|    245|   286|
|6 months  |LCNI-5         |MALAWI       |0         |      1|      5|   286|
|6 months  |MAL-ED         |INDIA        |1         |      0|      9|   206|
|6 months  |MAL-ED         |INDIA        |1         |      1|      1|   206|
|6 months  |MAL-ED         |INDIA        |0         |      0|    183|   206|
|6 months  |MAL-ED         |INDIA        |0         |      1|     13|   206|
|6 months  |MAL-ED         |BANGLADESH   |1         |      0|     75|   210|
|6 months  |MAL-ED         |BANGLADESH   |1         |      1|      1|   210|
|6 months  |MAL-ED         |BANGLADESH   |0         |      0|    128|   210|
|6 months  |MAL-ED         |BANGLADESH   |0         |      1|      6|   210|
|6 months  |MAL-ED         |PERU         |1         |      0|     78|   250|
|6 months  |MAL-ED         |PERU         |1         |      1|      0|   250|
|6 months  |MAL-ED         |PERU         |0         |      0|    172|   250|
|6 months  |MAL-ED         |PERU         |0         |      1|      0|   250|
|6 months  |MAL-ED         |NEPAL        |1         |      0|     16|   222|
|6 months  |MAL-ED         |NEPAL        |1         |      1|      0|   222|
|6 months  |MAL-ED         |NEPAL        |0         |      0|    203|   222|
|6 months  |MAL-ED         |NEPAL        |0         |      1|      3|   222|
|6 months  |MAL-ED         |BRAZIL       |1         |      0|     29|   187|
|6 months  |MAL-ED         |BRAZIL       |1         |      1|      0|   187|
|6 months  |MAL-ED         |BRAZIL       |0         |      0|    157|   187|
|6 months  |MAL-ED         |BRAZIL       |0         |      1|      1|   187|
|6 months  |MAL-ED         |TANZANIA     |1         |      0|      0|   227|
|6 months  |MAL-ED         |TANZANIA     |1         |      1|      0|   227|
|6 months  |MAL-ED         |TANZANIA     |0         |      0|    226|   227|
|6 months  |MAL-ED         |TANZANIA     |0         |      1|      1|   227|
|6 months  |MAL-ED         |SOUTH AFRICA |1         |      0|      1|   197|
|6 months  |MAL-ED         |SOUTH AFRICA |1         |      1|      0|   197|
|6 months  |MAL-ED         |SOUTH AFRICA |0         |      0|    192|   197|
|6 months  |MAL-ED         |SOUTH AFRICA |0         |      1|      4|   197|
|6 months  |PROVIDE        |BANGLADESH   |1         |      0|    154|   603|
|6 months  |PROVIDE        |BANGLADESH   |1         |      1|      4|   603|
|6 months  |PROVIDE        |BANGLADESH   |0         |      0|    424|   603|
|6 months  |PROVIDE        |BANGLADESH   |0         |      1|     21|   603|
|6 months  |SAS-CompFeed   |INDIA        |1         |      0|    317|   374|
|6 months  |SAS-CompFeed   |INDIA        |1         |      1|     36|   374|
|6 months  |SAS-CompFeed   |INDIA        |0         |      0|     18|   374|
|6 months  |SAS-CompFeed   |INDIA        |0         |      1|      3|   374|
|6 months  |SAS-FoodSuppl  |INDIA        |1         |      0|      0|   148|
|6 months  |SAS-FoodSuppl  |INDIA        |1         |      1|      0|   148|
|6 months  |SAS-FoodSuppl  |INDIA        |0         |      0|    120|   148|
|6 months  |SAS-FoodSuppl  |INDIA        |0         |      1|     28|   148|
|6 months  |Vellore Crypto |INDIA        |1         |      0|      0|    10|
|6 months  |Vellore Crypto |INDIA        |1         |      1|      0|    10|
|6 months  |Vellore Crypto |INDIA        |0         |      0|     10|    10|
|6 months  |Vellore Crypto |INDIA        |0         |      1|      0|    10|
|24 months |CMC-V-BCS-2002 |INDIA        |1         |      0|     26|    28|
|24 months |CMC-V-BCS-2002 |INDIA        |1         |      1|      2|    28|
|24 months |CMC-V-BCS-2002 |INDIA        |0         |      0|      0|    28|
|24 months |CMC-V-BCS-2002 |INDIA        |0         |      1|      0|    28|
|24 months |EE             |PAKISTAN     |1         |      0|     19|    24|
|24 months |EE             |PAKISTAN     |1         |      1|      5|    24|
|24 months |EE             |PAKISTAN     |0         |      0|      0|    24|
|24 months |EE             |PAKISTAN     |0         |      1|      0|    24|
|24 months |GMS-Nepal      |NEPAL        |1         |      0|    234|   383|
|24 months |GMS-Nepal      |NEPAL        |1         |      1|     60|   383|
|24 months |GMS-Nepal      |NEPAL        |0         |      0|     74|   383|
|24 months |GMS-Nepal      |NEPAL        |0         |      1|     15|   383|
|24 months |JiVitA-3       |BANGLADESH   |1         |      0|   3050|  5066|
|24 months |JiVitA-3       |BANGLADESH   |1         |      1|    841|  5066|
|24 months |JiVitA-3       |BANGLADESH   |0         |      0|    914|  5066|
|24 months |JiVitA-3       |BANGLADESH   |0         |      1|    261|  5066|
|24 months |JiVitA-4       |BANGLADESH   |1         |      0|   2564|  4138|
|24 months |JiVitA-4       |BANGLADESH   |1         |      1|    612|  4138|
|24 months |JiVitA-4       |BANGLADESH   |0         |      0|    769|  4138|
|24 months |JiVitA-4       |BANGLADESH   |0         |      1|    193|  4138|
|24 months |Keneba         |GAMBIA       |1         |      0|    431|  1387|
|24 months |Keneba         |GAMBIA       |1         |      1|     59|  1387|
|24 months |Keneba         |GAMBIA       |0         |      0|    794|  1387|
|24 months |Keneba         |GAMBIA       |0         |      1|    103|  1387|
|24 months |LCNI-5         |MALAWI       |1         |      0|     25|   202|
|24 months |LCNI-5         |MALAWI       |1         |      1|      0|   202|
|24 months |LCNI-5         |MALAWI       |0         |      0|    171|   202|
|24 months |LCNI-5         |MALAWI       |0         |      1|      6|   202|
|24 months |MAL-ED         |INDIA        |1         |      0|      8|   198|
|24 months |MAL-ED         |INDIA        |1         |      1|      1|   198|
|24 months |MAL-ED         |INDIA        |0         |      0|    167|   198|
|24 months |MAL-ED         |INDIA        |0         |      1|     22|   198|
|24 months |MAL-ED         |BANGLADESH   |1         |      0|     64|   183|
|24 months |MAL-ED         |BANGLADESH   |1         |      1|      4|   183|
|24 months |MAL-ED         |BANGLADESH   |0         |      0|    102|   183|
|24 months |MAL-ED         |BANGLADESH   |0         |      1|     13|   183|
|24 months |MAL-ED         |PERU         |1         |      0|     54|   182|
|24 months |MAL-ED         |PERU         |1         |      1|      0|   182|
|24 months |MAL-ED         |PERU         |0         |      0|    125|   182|
|24 months |MAL-ED         |PERU         |0         |      1|      3|   182|
|24 months |MAL-ED         |NEPAL        |1         |      0|     16|   214|
|24 months |MAL-ED         |NEPAL        |1         |      1|      0|   214|
|24 months |MAL-ED         |NEPAL        |0         |      0|    194|   214|
|24 months |MAL-ED         |NEPAL        |0         |      1|      4|   214|
|24 months |MAL-ED         |BRAZIL       |1         |      0|     22|   148|
|24 months |MAL-ED         |BRAZIL       |1         |      1|      0|   148|
|24 months |MAL-ED         |BRAZIL       |0         |      0|    124|   148|
|24 months |MAL-ED         |BRAZIL       |0         |      1|      2|   148|
|24 months |MAL-ED         |TANZANIA     |1         |      0|      0|   198|
|24 months |MAL-ED         |TANZANIA     |1         |      1|      0|   198|
|24 months |MAL-ED         |TANZANIA     |0         |      0|    195|   198|
|24 months |MAL-ED         |TANZANIA     |0         |      1|      3|   198|
|24 months |MAL-ED         |SOUTH AFRICA |1         |      0|      1|   180|
|24 months |MAL-ED         |SOUTH AFRICA |1         |      1|      0|   180|
|24 months |MAL-ED         |SOUTH AFRICA |0         |      0|    179|   180|
|24 months |MAL-ED         |SOUTH AFRICA |0         |      1|      0|   180|
|24 months |PROVIDE        |BANGLADESH   |1         |      0|    137|   579|
|24 months |PROVIDE        |BANGLADESH   |1         |      1|     19|   579|
|24 months |PROVIDE        |BANGLADESH   |0         |      0|    380|   579|
|24 months |PROVIDE        |BANGLADESH   |0         |      1|     43|   579|
|24 months |Vellore Crypto |INDIA        |1         |      0|      0|     9|
|24 months |Vellore Crypto |INDIA        |1         |      1|      0|     9|
|24 months |Vellore Crypto |INDIA        |0         |      0|      8|     9|
|24 months |Vellore Crypto |INDIA        |0         |      1|      1|     9|


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
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
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


