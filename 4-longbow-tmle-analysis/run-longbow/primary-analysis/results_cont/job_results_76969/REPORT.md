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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** mage

**Adjustment Set:**

* arm
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_arm
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |mage    | n_cell|     n|
|:---------|:--------------|:------------|:-------|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |[20-30) |     79|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |<20     |      9|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |>=30    |      4|    92|
|Birth     |COHORTS        |INDIA        |[20-30) |   3180|  4715|
|Birth     |COHORTS        |INDIA        |<20     |    368|  4715|
|Birth     |COHORTS        |INDIA        |>=30    |   1167|  4715|
|Birth     |COHORTS        |GUATEMALA    |[20-30) |    405|   852|
|Birth     |COHORTS        |GUATEMALA    |<20     |    121|   852|
|Birth     |COHORTS        |GUATEMALA    |>=30    |    326|   852|
|Birth     |COHORTS        |PHILIPPINES  |[20-30) |   1821|  3050|
|Birth     |COHORTS        |PHILIPPINES  |<20     |    378|  3050|
|Birth     |COHORTS        |PHILIPPINES  |>=30    |    851|  3050|
|Birth     |EE             |PAKISTAN     |[20-30) |     76|   239|
|Birth     |EE             |PAKISTAN     |<20     |      1|   239|
|Birth     |EE             |PAKISTAN     |>=30    |    162|   239|
|Birth     |GMS-Nepal      |NEPAL        |[20-30) |    446|   696|
|Birth     |GMS-Nepal      |NEPAL        |<20     |    149|   696|
|Birth     |GMS-Nepal      |NEPAL        |>=30    |    101|   696|
|Birth     |JiVitA-3       |BANGLADESH   |[20-30) |  10853| 22444|
|Birth     |JiVitA-3       |BANGLADESH   |<20     |   9472| 22444|
|Birth     |JiVitA-3       |BANGLADESH   |>=30    |   2119| 22444|
|Birth     |Keneba         |GAMBIA       |[20-30) |    705|  1543|
|Birth     |Keneba         |GAMBIA       |<20     |    238|  1543|
|Birth     |Keneba         |GAMBIA       |>=30    |    600|  1543|
|Birth     |MAL-ED         |INDIA        |[20-30) |     29|    47|
|Birth     |MAL-ED         |INDIA        |<20     |      9|    47|
|Birth     |MAL-ED         |INDIA        |>=30    |      9|    47|
|Birth     |MAL-ED         |BANGLADESH   |[20-30) |    160|   231|
|Birth     |MAL-ED         |BANGLADESH   |<20     |     30|   231|
|Birth     |MAL-ED         |BANGLADESH   |>=30    |     41|   231|
|Birth     |MAL-ED         |PERU         |[20-30) |    114|   233|
|Birth     |MAL-ED         |PERU         |<20     |     66|   233|
|Birth     |MAL-ED         |PERU         |>=30    |     53|   233|
|Birth     |MAL-ED         |NEPAL        |[20-30) |     22|    27|
|Birth     |MAL-ED         |NEPAL        |<20     |      0|    27|
|Birth     |MAL-ED         |NEPAL        |>=30    |      5|    27|
|Birth     |MAL-ED         |BRAZIL       |[20-30) |     41|    65|
|Birth     |MAL-ED         |BRAZIL       |<20     |      8|    65|
|Birth     |MAL-ED         |BRAZIL       |>=30    |     16|    65|
|Birth     |MAL-ED         |TANZANIA     |[20-30) |     72|   125|
|Birth     |MAL-ED         |TANZANIA     |<20     |      7|   125|
|Birth     |MAL-ED         |TANZANIA     |>=30    |     46|   125|
|Birth     |MAL-ED         |SOUTH AFRICA |[20-30) |     67|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |<20     |     23|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |>=30    |     33|   123|
|Birth     |NIH-Birth      |BANGLADESH   |[20-30) |    347|   602|
|Birth     |NIH-Birth      |BANGLADESH   |<20     |    118|   602|
|Birth     |NIH-Birth      |BANGLADESH   |>=30    |    137|   602|
|Birth     |NIH-Crypto     |BANGLADESH   |[20-30) |    483|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |<20     |    130|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |>=30    |    119|   732|
|Birth     |PROBIT         |BELARUS      |[20-30) |   9943| 13893|
|Birth     |PROBIT         |BELARUS      |<20     |   1408| 13893|
|Birth     |PROBIT         |BELARUS      |>=30    |   2542| 13893|
|Birth     |PROVIDE        |BANGLADESH   |[20-30) |    371|   539|
|Birth     |PROVIDE        |BANGLADESH   |<20     |     67|   539|
|Birth     |PROVIDE        |BANGLADESH   |>=30    |    101|   539|
|Birth     |SAS-CompFeed   |INDIA        |[20-30) |    962|  1250|
|Birth     |SAS-CompFeed   |INDIA        |<20     |    170|  1250|
|Birth     |SAS-CompFeed   |INDIA        |>=30    |    118|  1250|
|Birth     |Vellore Crypto |INDIA        |[20-30) |    325|   388|
|Birth     |Vellore Crypto |INDIA        |<20     |     35|   388|
|Birth     |Vellore Crypto |INDIA        |>=30    |     28|   388|
|Birth     |ZVITAMBO       |ZIMBABWE     |[20-30) |   9299| 13835|
|Birth     |ZVITAMBO       |ZIMBABWE     |<20     |   2205| 13835|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=30    |   2331| 13835|
|6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |    293|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |<20     |     33|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |     43|   369|
|6 months  |COHORTS        |INDIA        |[20-30) |   3331|  4904|
|6 months  |COHORTS        |INDIA        |<20     |    371|  4904|
|6 months  |COHORTS        |INDIA        |>=30    |   1202|  4904|
|6 months  |COHORTS        |GUATEMALA    |[20-30) |    470|   961|
|6 months  |COHORTS        |GUATEMALA    |<20     |    118|   961|
|6 months  |COHORTS        |GUATEMALA    |>=30    |    373|   961|
|6 months  |COHORTS        |PHILIPPINES  |[20-30) |   1601|  2708|
|6 months  |COHORTS        |PHILIPPINES  |<20     |    331|  2708|
|6 months  |COHORTS        |PHILIPPINES  |>=30    |    776|  2708|
|6 months  |EE             |PAKISTAN     |[20-30) |    133|   370|
|6 months  |EE             |PAKISTAN     |<20     |      1|   370|
|6 months  |EE             |PAKISTAN     |>=30    |    236|   370|
|6 months  |GMS-Nepal      |NEPAL        |[20-30) |    371|   564|
|6 months  |GMS-Nepal      |NEPAL        |<20     |    108|   564|
|6 months  |GMS-Nepal      |NEPAL        |>=30    |     85|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |    171|   276|
|6 months  |Guatemala BSC  |GUATEMALA    |<20     |     46|   276|
|6 months  |Guatemala BSC  |GUATEMALA    |>=30    |     59|   276|
|6 months  |JiVitA-3       |BANGLADESH   |[20-30) |   7679| 16805|
|6 months  |JiVitA-3       |BANGLADESH   |<20     |   7905| 16805|
|6 months  |JiVitA-3       |BANGLADESH   |>=30    |   1221| 16805|
|6 months  |Keneba         |GAMBIA       |[20-30) |    987|  2080|
|6 months  |Keneba         |GAMBIA       |<20     |    288|  2080|
|6 months  |Keneba         |GAMBIA       |>=30    |    805|  2080|
|6 months  |LCNI-5         |MALAWI       |[20-30) |    364|   669|
|6 months  |LCNI-5         |MALAWI       |<20     |    107|   669|
|6 months  |LCNI-5         |MALAWI       |>=30    |    198|   669|
|6 months  |MAL-ED         |INDIA        |[20-30) |    143|   233|
|6 months  |MAL-ED         |INDIA        |<20     |     41|   233|
|6 months  |MAL-ED         |INDIA        |>=30    |     49|   233|
|6 months  |MAL-ED         |BANGLADESH   |[20-30) |    165|   241|
|6 months  |MAL-ED         |BANGLADESH   |<20     |     35|   241|
|6 months  |MAL-ED         |BANGLADESH   |>=30    |     41|   241|
|6 months  |MAL-ED         |PERU         |[20-30) |    136|   273|
|6 months  |MAL-ED         |PERU         |<20     |     76|   273|
|6 months  |MAL-ED         |PERU         |>=30    |     61|   273|
|6 months  |MAL-ED         |NEPAL        |[20-30) |    160|   236|
|6 months  |MAL-ED         |NEPAL        |<20     |     12|   236|
|6 months  |MAL-ED         |NEPAL        |>=30    |     64|   236|
|6 months  |MAL-ED         |BRAZIL       |[20-30) |    125|   209|
|6 months  |MAL-ED         |BRAZIL       |<20     |     37|   209|
|6 months  |MAL-ED         |BRAZIL       |>=30    |     47|   209|
|6 months  |MAL-ED         |TANZANIA     |[20-30) |    128|   247|
|6 months  |MAL-ED         |TANZANIA     |<20     |     15|   247|
|6 months  |MAL-ED         |TANZANIA     |>=30    |    104|   247|
|6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |    118|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |<20     |     42|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |>=30    |     94|   254|
|6 months  |NIH-Birth      |BANGLADESH   |[20-30) |    300|   532|
|6 months  |NIH-Birth      |BANGLADESH   |<20     |    107|   532|
|6 months  |NIH-Birth      |BANGLADESH   |>=30    |    125|   532|
|6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |    462|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |<20     |    131|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |>=30    |    122|   715|
|6 months  |PROBIT         |BELARUS      |[20-30) |  11316| 15760|
|6 months  |PROBIT         |BELARUS      |<20     |   1619| 15760|
|6 months  |PROBIT         |BELARUS      |>=30    |   2825| 15760|
|6 months  |PROVIDE        |BANGLADESH   |[20-30) |    424|   604|
|6 months  |PROVIDE        |BANGLADESH   |<20     |     66|   604|
|6 months  |PROVIDE        |BANGLADESH   |>=30    |    114|   604|
|6 months  |SAS-CompFeed   |INDIA        |[20-30) |   1030|  1334|
|6 months  |SAS-CompFeed   |INDIA        |<20     |    175|  1334|
|6 months  |SAS-CompFeed   |INDIA        |>=30    |    129|  1334|
|6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |    261|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |<20     |     36|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |>=30    |     83|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |   1318|  2012|
|6 months  |TanzaniaChild2 |TANZANIA     |<20     |    146|  2012|
|6 months  |TanzaniaChild2 |TANZANIA     |>=30    |    548|  2012|
|6 months  |Vellore Crypto |INDIA        |[20-30) |    342|   407|
|6 months  |Vellore Crypto |INDIA        |<20     |     36|   407|
|6 months  |Vellore Crypto |INDIA        |>=30    |     29|   407|
|6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |   5738|  8653|
|6 months  |ZVITAMBO       |ZIMBABWE     |<20     |   1315|  8653|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |   1600|  8653|
|24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |    295|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |<20     |     34|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |>=30    |     42|   371|
|24 months |COHORTS        |INDIA        |[20-30) |   2463|  3692|
|24 months |COHORTS        |INDIA        |<20     |    247|  3692|
|24 months |COHORTS        |INDIA        |>=30    |    982|  3692|
|24 months |COHORTS        |GUATEMALA    |[20-30) |    527|  1064|
|24 months |COHORTS        |GUATEMALA    |<20     |    152|  1064|
|24 months |COHORTS        |GUATEMALA    |>=30    |    385|  1064|
|24 months |COHORTS        |PHILIPPINES  |[20-30) |   1460|  2445|
|24 months |COHORTS        |PHILIPPINES  |<20     |    292|  2445|
|24 months |COHORTS        |PHILIPPINES  |>=30    |    693|  2445|
|24 months |EE             |PAKISTAN     |[20-30) |     57|   166|
|24 months |EE             |PAKISTAN     |<20     |      1|   166|
|24 months |EE             |PAKISTAN     |>=30    |    108|   166|
|24 months |GMS-Nepal      |NEPAL        |[20-30) |    318|   488|
|24 months |GMS-Nepal      |NEPAL        |<20     |     94|   488|
|24 months |GMS-Nepal      |NEPAL        |>=30    |     76|   488|
|24 months |JiVitA-3       |BANGLADESH   |[20-30) |   4058|  8627|
|24 months |JiVitA-3       |BANGLADESH   |<20     |   3855|  8627|
|24 months |JiVitA-3       |BANGLADESH   |>=30    |    714|  8627|
|24 months |Keneba         |GAMBIA       |[20-30) |    790|  1714|
|24 months |Keneba         |GAMBIA       |<20     |    217|  1714|
|24 months |Keneba         |GAMBIA       |>=30    |    707|  1714|
|24 months |LCNI-5         |MALAWI       |[20-30) |    250|   475|
|24 months |LCNI-5         |MALAWI       |<20     |     80|   475|
|24 months |LCNI-5         |MALAWI       |>=30    |    145|   475|
|24 months |MAL-ED         |INDIA        |[20-30) |    137|   224|
|24 months |MAL-ED         |INDIA        |<20     |     40|   224|
|24 months |MAL-ED         |INDIA        |>=30    |     47|   224|
|24 months |MAL-ED         |BANGLADESH   |[20-30) |    146|   212|
|24 months |MAL-ED         |BANGLADESH   |<20     |     29|   212|
|24 months |MAL-ED         |BANGLADESH   |>=30    |     37|   212|
|24 months |MAL-ED         |PERU         |[20-30) |     98|   201|
|24 months |MAL-ED         |PERU         |<20     |     55|   201|
|24 months |MAL-ED         |PERU         |>=30    |     48|   201|
|24 months |MAL-ED         |NEPAL        |[20-30) |    153|   228|
|24 months |MAL-ED         |NEPAL        |<20     |     12|   228|
|24 months |MAL-ED         |NEPAL        |>=30    |     63|   228|
|24 months |MAL-ED         |BRAZIL       |[20-30) |    102|   169|
|24 months |MAL-ED         |BRAZIL       |<20     |     27|   169|
|24 months |MAL-ED         |BRAZIL       |>=30    |     40|   169|
|24 months |MAL-ED         |TANZANIA     |[20-30) |    113|   214|
|24 months |MAL-ED         |TANZANIA     |<20     |      9|   214|
|24 months |MAL-ED         |TANZANIA     |>=30    |     92|   214|
|24 months |MAL-ED         |SOUTH AFRICA |[20-30) |    106|   238|
|24 months |MAL-ED         |SOUTH AFRICA |<20     |     39|   238|
|24 months |MAL-ED         |SOUTH AFRICA |>=30    |     93|   238|
|24 months |NIH-Birth      |BANGLADESH   |[20-30) |    241|   425|
|24 months |NIH-Birth      |BANGLADESH   |<20     |     85|   425|
|24 months |NIH-Birth      |BANGLADESH   |>=30    |     99|   425|
|24 months |NIH-Crypto     |BANGLADESH   |[20-30) |    334|   514|
|24 months |NIH-Crypto     |BANGLADESH   |<20     |    101|   514|
|24 months |NIH-Crypto     |BANGLADESH   |>=30    |     79|   514|
|24 months |PROBIT         |BELARUS      |[20-30) |   2893|  4035|
|24 months |PROBIT         |BELARUS      |<20     |    369|  4035|
|24 months |PROBIT         |BELARUS      |>=30    |    773|  4035|
|24 months |PROVIDE        |BANGLADESH   |[20-30) |    409|   578|
|24 months |PROVIDE        |BANGLADESH   |<20     |     64|   578|
|24 months |PROVIDE        |BANGLADESH   |>=30    |    105|   578|
|24 months |TanzaniaChild2 |TANZANIA     |[20-30) |      3|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<20     |      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |>=30    |      2|     6|
|24 months |Vellore Crypto |INDIA        |[20-30) |    343|   409|
|24 months |Vellore Crypto |INDIA        |<20     |     37|   409|
|24 months |Vellore Crypto |INDIA        |>=30    |     29|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |   1101|  1638|
|24 months |ZVITAMBO       |ZIMBABWE     |<20     |    219|  1638|
|24 months |ZVITAMBO       |ZIMBABWE     |>=30    |    318|  1638|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: EE, country: PAKISTAN
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


