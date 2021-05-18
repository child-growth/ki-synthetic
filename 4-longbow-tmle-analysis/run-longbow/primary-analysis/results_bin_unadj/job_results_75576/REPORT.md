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

**Outcome Variable:** swasted

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

|agecat    |studyid        |country      |predexfd6 | swasted| n_cell|     n|
|:---------|:--------------|:------------|:---------|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |1         |       0|      6|     7|
|Birth     |CMC-V-BCS-2002 |INDIA        |1         |       1|      1|     7|
|Birth     |CMC-V-BCS-2002 |INDIA        |0         |       0|      0|     7|
|Birth     |CMC-V-BCS-2002 |INDIA        |0         |       1|      0|     7|
|Birth     |EE             |PAKISTAN     |1         |       0|     21|    22|
|Birth     |EE             |PAKISTAN     |1         |       1|      0|    22|
|Birth     |EE             |PAKISTAN     |0         |       0|      1|    22|
|Birth     |EE             |PAKISTAN     |0         |       1|      0|    22|
|Birth     |GMS-Nepal      |NEPAL        |1         |       0|    357|   500|
|Birth     |GMS-Nepal      |NEPAL        |1         |       1|     18|   500|
|Birth     |GMS-Nepal      |NEPAL        |0         |       0|    122|   500|
|Birth     |GMS-Nepal      |NEPAL        |0         |       1|      3|   500|
|Birth     |JiVitA-3       |BANGLADESH   |1         |       0|   8085| 10655|
|Birth     |JiVitA-3       |BANGLADESH   |1         |       1|    167| 10655|
|Birth     |JiVitA-3       |BANGLADESH   |0         |       0|   2358| 10655|
|Birth     |JiVitA-3       |BANGLADESH   |0         |       1|     45| 10655|
|Birth     |JiVitA-4       |BANGLADESH   |1         |       0|   1546|  2090|
|Birth     |JiVitA-4       |BANGLADESH   |1         |       1|     23|  2090|
|Birth     |JiVitA-4       |BANGLADESH   |0         |       0|    515|  2090|
|Birth     |JiVitA-4       |BANGLADESH   |0         |       1|      6|  2090|
|Birth     |Keneba         |GAMBIA       |1         |       0|    379|  1188|
|Birth     |Keneba         |GAMBIA       |1         |       1|     28|  1188|
|Birth     |Keneba         |GAMBIA       |0         |       0|    721|  1188|
|Birth     |Keneba         |GAMBIA       |0         |       1|     60|  1188|
|Birth     |MAL-ED         |INDIA        |1         |       0|      2|    40|
|Birth     |MAL-ED         |INDIA        |1         |       1|      0|    40|
|Birth     |MAL-ED         |INDIA        |0         |       0|     38|    40|
|Birth     |MAL-ED         |INDIA        |0         |       1|      0|    40|
|Birth     |MAL-ED         |BANGLADESH   |1         |       0|     60|   187|
|Birth     |MAL-ED         |BANGLADESH   |1         |       1|      5|   187|
|Birth     |MAL-ED         |BANGLADESH   |0         |       0|    119|   187|
|Birth     |MAL-ED         |BANGLADESH   |0         |       1|      3|   187|
|Birth     |MAL-ED         |PERU         |1         |       0|     58|   208|
|Birth     |MAL-ED         |PERU         |1         |       1|      0|   208|
|Birth     |MAL-ED         |PERU         |0         |       0|    150|   208|
|Birth     |MAL-ED         |PERU         |0         |       1|      0|   208|
|Birth     |MAL-ED         |NEPAL        |1         |       0|      2|    25|
|Birth     |MAL-ED         |NEPAL        |1         |       1|      0|    25|
|Birth     |MAL-ED         |NEPAL        |0         |       0|     22|    25|
|Birth     |MAL-ED         |NEPAL        |0         |       1|      1|    25|
|Birth     |MAL-ED         |BRAZIL       |1         |       0|     10|    52|
|Birth     |MAL-ED         |BRAZIL       |1         |       1|      0|    52|
|Birth     |MAL-ED         |BRAZIL       |0         |       0|     42|    52|
|Birth     |MAL-ED         |BRAZIL       |0         |       1|      0|    52|
|Birth     |MAL-ED         |TANZANIA     |1         |       0|      0|   101|
|Birth     |MAL-ED         |TANZANIA     |1         |       1|      0|   101|
|Birth     |MAL-ED         |TANZANIA     |0         |       0|    101|   101|
|Birth     |MAL-ED         |TANZANIA     |0         |       1|      0|   101|
|Birth     |MAL-ED         |SOUTH AFRICA |1         |       0|      1|    89|
|Birth     |MAL-ED         |SOUTH AFRICA |1         |       1|      0|    89|
|Birth     |MAL-ED         |SOUTH AFRICA |0         |       0|     88|    89|
|Birth     |MAL-ED         |SOUTH AFRICA |0         |       1|      0|    89|
|Birth     |PROVIDE        |BANGLADESH   |1         |       0|    132|   532|
|Birth     |PROVIDE        |BANGLADESH   |1         |       1|      4|   532|
|Birth     |PROVIDE        |BANGLADESH   |0         |       0|    387|   532|
|Birth     |PROVIDE        |BANGLADESH   |0         |       1|      9|   532|
|Birth     |SAS-CompFeed   |INDIA        |1         |       0|    296|   316|
|Birth     |SAS-CompFeed   |INDIA        |1         |       1|      5|   316|
|Birth     |SAS-CompFeed   |INDIA        |0         |       0|     14|   316|
|Birth     |SAS-CompFeed   |INDIA        |0         |       1|      1|   316|
|Birth     |Vellore Crypto |INDIA        |1         |       0|      0|     8|
|Birth     |Vellore Crypto |INDIA        |1         |       1|      0|     8|
|Birth     |Vellore Crypto |INDIA        |0         |       0|      8|     8|
|Birth     |Vellore Crypto |INDIA        |0         |       1|      0|     8|
|6 months  |CMC-V-BCS-2002 |INDIA        |1         |       0|     27|    28|
|6 months  |CMC-V-BCS-2002 |INDIA        |1         |       1|      1|    28|
|6 months  |CMC-V-BCS-2002 |INDIA        |0         |       0|      0|    28|
|6 months  |CMC-V-BCS-2002 |INDIA        |0         |       1|      0|    28|
|6 months  |EE             |PAKISTAN     |1         |       0|     50|    54|
|6 months  |EE             |PAKISTAN     |1         |       1|      4|    54|
|6 months  |EE             |PAKISTAN     |0         |       0|      0|    54|
|6 months  |EE             |PAKISTAN     |0         |       1|      0|    54|
|6 months  |GMS-Nepal      |NEPAL        |1         |       0|    338|   446|
|6 months  |GMS-Nepal      |NEPAL        |1         |       1|      4|   446|
|6 months  |GMS-Nepal      |NEPAL        |0         |       0|    103|   446|
|6 months  |GMS-Nepal      |NEPAL        |0         |       1|      1|   446|
|6 months  |JiVitA-3       |BANGLADESH   |1         |       0|   7530|  9871|
|6 months  |JiVitA-3       |BANGLADESH   |1         |       1|     98|  9871|
|6 months  |JiVitA-3       |BANGLADESH   |0         |       0|   2218|  9871|
|6 months  |JiVitA-3       |BANGLADESH   |0         |       1|     25|  9871|
|6 months  |JiVitA-4       |BANGLADESH   |1         |       0|   3215|  4232|
|6 months  |JiVitA-4       |BANGLADESH   |1         |       1|     18|  4232|
|6 months  |JiVitA-4       |BANGLADESH   |0         |       0|    993|  4232|
|6 months  |JiVitA-4       |BANGLADESH   |0         |       1|      6|  4232|
|6 months  |Keneba         |GAMBIA       |1         |       0|    559|  1669|
|6 months  |Keneba         |GAMBIA       |1         |       1|     15|  1669|
|6 months  |Keneba         |GAMBIA       |0         |       0|   1083|  1669|
|6 months  |Keneba         |GAMBIA       |0         |       1|     12|  1669|
|6 months  |LCNI-5         |MALAWI       |1         |       0|     36|   286|
|6 months  |LCNI-5         |MALAWI       |1         |       1|      0|   286|
|6 months  |LCNI-5         |MALAWI       |0         |       0|    250|   286|
|6 months  |LCNI-5         |MALAWI       |0         |       1|      0|   286|
|6 months  |MAL-ED         |INDIA        |1         |       0|     10|   206|
|6 months  |MAL-ED         |INDIA        |1         |       1|      0|   206|
|6 months  |MAL-ED         |INDIA        |0         |       0|    193|   206|
|6 months  |MAL-ED         |INDIA        |0         |       1|      3|   206|
|6 months  |MAL-ED         |BANGLADESH   |1         |       0|     76|   210|
|6 months  |MAL-ED         |BANGLADESH   |1         |       1|      0|   210|
|6 months  |MAL-ED         |BANGLADESH   |0         |       0|    133|   210|
|6 months  |MAL-ED         |BANGLADESH   |0         |       1|      1|   210|
|6 months  |MAL-ED         |PERU         |1         |       0|     78|   250|
|6 months  |MAL-ED         |PERU         |1         |       1|      0|   250|
|6 months  |MAL-ED         |PERU         |0         |       0|    172|   250|
|6 months  |MAL-ED         |PERU         |0         |       1|      0|   250|
|6 months  |MAL-ED         |NEPAL        |1         |       0|     16|   222|
|6 months  |MAL-ED         |NEPAL        |1         |       1|      0|   222|
|6 months  |MAL-ED         |NEPAL        |0         |       0|    206|   222|
|6 months  |MAL-ED         |NEPAL        |0         |       1|      0|   222|
|6 months  |MAL-ED         |BRAZIL       |1         |       0|     29|   187|
|6 months  |MAL-ED         |BRAZIL       |1         |       1|      0|   187|
|6 months  |MAL-ED         |BRAZIL       |0         |       0|    158|   187|
|6 months  |MAL-ED         |BRAZIL       |0         |       1|      0|   187|
|6 months  |MAL-ED         |TANZANIA     |1         |       0|      0|   227|
|6 months  |MAL-ED         |TANZANIA     |1         |       1|      0|   227|
|6 months  |MAL-ED         |TANZANIA     |0         |       0|    227|   227|
|6 months  |MAL-ED         |TANZANIA     |0         |       1|      0|   227|
|6 months  |MAL-ED         |SOUTH AFRICA |1         |       0|      1|   197|
|6 months  |MAL-ED         |SOUTH AFRICA |1         |       1|      0|   197|
|6 months  |MAL-ED         |SOUTH AFRICA |0         |       0|    194|   197|
|6 months  |MAL-ED         |SOUTH AFRICA |0         |       1|      2|   197|
|6 months  |PROVIDE        |BANGLADESH   |1         |       0|    157|   603|
|6 months  |PROVIDE        |BANGLADESH   |1         |       1|      1|   603|
|6 months  |PROVIDE        |BANGLADESH   |0         |       0|    441|   603|
|6 months  |PROVIDE        |BANGLADESH   |0         |       1|      4|   603|
|6 months  |SAS-CompFeed   |INDIA        |1         |       0|    342|   374|
|6 months  |SAS-CompFeed   |INDIA        |1         |       1|     11|   374|
|6 months  |SAS-CompFeed   |INDIA        |0         |       0|     21|   374|
|6 months  |SAS-CompFeed   |INDIA        |0         |       1|      0|   374|
|6 months  |SAS-FoodSuppl  |INDIA        |1         |       0|      0|   148|
|6 months  |SAS-FoodSuppl  |INDIA        |1         |       1|      0|   148|
|6 months  |SAS-FoodSuppl  |INDIA        |0         |       0|    143|   148|
|6 months  |SAS-FoodSuppl  |INDIA        |0         |       1|      5|   148|
|6 months  |Vellore Crypto |INDIA        |1         |       0|      0|    10|
|6 months  |Vellore Crypto |INDIA        |1         |       1|      0|    10|
|6 months  |Vellore Crypto |INDIA        |0         |       0|     10|    10|
|6 months  |Vellore Crypto |INDIA        |0         |       1|      0|    10|
|24 months |CMC-V-BCS-2002 |INDIA        |1         |       0|     28|    28|
|24 months |CMC-V-BCS-2002 |INDIA        |1         |       1|      0|    28|
|24 months |CMC-V-BCS-2002 |INDIA        |0         |       0|      0|    28|
|24 months |CMC-V-BCS-2002 |INDIA        |0         |       1|      0|    28|
|24 months |EE             |PAKISTAN     |1         |       0|     23|    24|
|24 months |EE             |PAKISTAN     |1         |       1|      1|    24|
|24 months |EE             |PAKISTAN     |0         |       0|      0|    24|
|24 months |EE             |PAKISTAN     |0         |       1|      0|    24|
|24 months |GMS-Nepal      |NEPAL        |1         |       0|    284|   383|
|24 months |GMS-Nepal      |NEPAL        |1         |       1|     10|   383|
|24 months |GMS-Nepal      |NEPAL        |0         |       0|     87|   383|
|24 months |GMS-Nepal      |NEPAL        |0         |       1|      2|   383|
|24 months |JiVitA-3       |BANGLADESH   |1         |       0|   3749|  5066|
|24 months |JiVitA-3       |BANGLADESH   |1         |       1|    142|  5066|
|24 months |JiVitA-3       |BANGLADESH   |0         |       0|   1134|  5066|
|24 months |JiVitA-3       |BANGLADESH   |0         |       1|     41|  5066|
|24 months |JiVitA-4       |BANGLADESH   |1         |       0|   3086|  4138|
|24 months |JiVitA-4       |BANGLADESH   |1         |       1|     90|  4138|
|24 months |JiVitA-4       |BANGLADESH   |0         |       0|    934|  4138|
|24 months |JiVitA-4       |BANGLADESH   |0         |       1|     28|  4138|
|24 months |Keneba         |GAMBIA       |1         |       0|    479|  1387|
|24 months |Keneba         |GAMBIA       |1         |       1|     11|  1387|
|24 months |Keneba         |GAMBIA       |0         |       0|    883|  1387|
|24 months |Keneba         |GAMBIA       |0         |       1|     14|  1387|
|24 months |LCNI-5         |MALAWI       |1         |       0|     25|   202|
|24 months |LCNI-5         |MALAWI       |1         |       1|      0|   202|
|24 months |LCNI-5         |MALAWI       |0         |       0|    177|   202|
|24 months |LCNI-5         |MALAWI       |0         |       1|      0|   202|
|24 months |MAL-ED         |INDIA        |1         |       0|      9|   198|
|24 months |MAL-ED         |INDIA        |1         |       1|      0|   198|
|24 months |MAL-ED         |INDIA        |0         |       0|    187|   198|
|24 months |MAL-ED         |INDIA        |0         |       1|      2|   198|
|24 months |MAL-ED         |BANGLADESH   |1         |       0|     68|   183|
|24 months |MAL-ED         |BANGLADESH   |1         |       1|      0|   183|
|24 months |MAL-ED         |BANGLADESH   |0         |       0|    115|   183|
|24 months |MAL-ED         |BANGLADESH   |0         |       1|      0|   183|
|24 months |MAL-ED         |PERU         |1         |       0|     54|   182|
|24 months |MAL-ED         |PERU         |1         |       1|      0|   182|
|24 months |MAL-ED         |PERU         |0         |       0|    127|   182|
|24 months |MAL-ED         |PERU         |0         |       1|      1|   182|
|24 months |MAL-ED         |NEPAL        |1         |       0|     16|   214|
|24 months |MAL-ED         |NEPAL        |1         |       1|      0|   214|
|24 months |MAL-ED         |NEPAL        |0         |       0|    198|   214|
|24 months |MAL-ED         |NEPAL        |0         |       1|      0|   214|
|24 months |MAL-ED         |BRAZIL       |1         |       0|     22|   148|
|24 months |MAL-ED         |BRAZIL       |1         |       1|      0|   148|
|24 months |MAL-ED         |BRAZIL       |0         |       0|    125|   148|
|24 months |MAL-ED         |BRAZIL       |0         |       1|      1|   148|
|24 months |MAL-ED         |TANZANIA     |1         |       0|      0|   198|
|24 months |MAL-ED         |TANZANIA     |1         |       1|      0|   198|
|24 months |MAL-ED         |TANZANIA     |0         |       0|    198|   198|
|24 months |MAL-ED         |TANZANIA     |0         |       1|      0|   198|
|24 months |MAL-ED         |SOUTH AFRICA |1         |       0|      1|   180|
|24 months |MAL-ED         |SOUTH AFRICA |1         |       1|      0|   180|
|24 months |MAL-ED         |SOUTH AFRICA |0         |       0|    179|   180|
|24 months |MAL-ED         |SOUTH AFRICA |0         |       1|      0|   180|
|24 months |PROVIDE        |BANGLADESH   |1         |       0|    152|   579|
|24 months |PROVIDE        |BANGLADESH   |1         |       1|      4|   579|
|24 months |PROVIDE        |BANGLADESH   |0         |       0|    418|   579|
|24 months |PROVIDE        |BANGLADESH   |0         |       1|      5|   579|
|24 months |Vellore Crypto |INDIA        |1         |       0|      0|     9|
|24 months |Vellore Crypto |INDIA        |1         |       1|      0|     9|
|24 months |Vellore Crypto |INDIA        |0         |       0|      9|     9|
|24 months |Vellore Crypto |INDIA        |0         |       1|      0|     9|


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
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
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


