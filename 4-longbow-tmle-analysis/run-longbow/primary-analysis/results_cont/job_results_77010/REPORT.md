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

**Outcome Variable:** whz

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
|Birth     |CMC-V-BCS-2002 |INDIA        |[20-30) |     75|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |<20     |      7|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |>=30    |      4|    86|
|Birth     |COHORTS        |INDIA        |[20-30) |   2965|  4405|
|Birth     |COHORTS        |INDIA        |<20     |    337|  4405|
|Birth     |COHORTS        |INDIA        |>=30    |   1103|  4405|
|Birth     |COHORTS        |GUATEMALA    |[20-30) |    367|   756|
|Birth     |COHORTS        |GUATEMALA    |<20     |    101|   756|
|Birth     |COHORTS        |GUATEMALA    |>=30    |    288|   756|
|Birth     |COHORTS        |PHILIPPINES  |[20-30) |   1744|  2899|
|Birth     |COHORTS        |PHILIPPINES  |<20     |    354|  2899|
|Birth     |COHORTS        |PHILIPPINES  |>=30    |    801|  2899|
|Birth     |EE             |PAKISTAN     |[20-30) |     55|   177|
|Birth     |EE             |PAKISTAN     |<20     |      1|   177|
|Birth     |EE             |PAKISTAN     |>=30    |    121|   177|
|Birth     |GMS-Nepal      |NEPAL        |[20-30) |    421|   641|
|Birth     |GMS-Nepal      |NEPAL        |<20     |    125|   641|
|Birth     |GMS-Nepal      |NEPAL        |>=30    |     95|   641|
|Birth     |JiVitA-3       |BANGLADESH   |[20-30) |   9028| 18006|
|Birth     |JiVitA-3       |BANGLADESH   |<20     |   7251| 18006|
|Birth     |JiVitA-3       |BANGLADESH   |>=30    |   1727| 18006|
|Birth     |Keneba         |GAMBIA       |[20-30) |    670|  1466|
|Birth     |Keneba         |GAMBIA       |<20     |    224|  1466|
|Birth     |Keneba         |GAMBIA       |>=30    |    572|  1466|
|Birth     |MAL-ED         |INDIA        |[20-30) |     28|    45|
|Birth     |MAL-ED         |INDIA        |<20     |      8|    45|
|Birth     |MAL-ED         |INDIA        |>=30    |      9|    45|
|Birth     |MAL-ED         |BANGLADESH   |[20-30) |    148|   215|
|Birth     |MAL-ED         |BANGLADESH   |<20     |     28|   215|
|Birth     |MAL-ED         |BANGLADESH   |>=30    |     39|   215|
|Birth     |MAL-ED         |PERU         |[20-30) |    113|   228|
|Birth     |MAL-ED         |PERU         |<20     |     63|   228|
|Birth     |MAL-ED         |PERU         |>=30    |     52|   228|
|Birth     |MAL-ED         |NEPAL        |[20-30) |     21|    26|
|Birth     |MAL-ED         |NEPAL        |<20     |      0|    26|
|Birth     |MAL-ED         |NEPAL        |>=30    |      5|    26|
|Birth     |MAL-ED         |BRAZIL       |[20-30) |     39|    62|
|Birth     |MAL-ED         |BRAZIL       |<20     |      8|    62|
|Birth     |MAL-ED         |BRAZIL       |>=30    |     15|    62|
|Birth     |MAL-ED         |TANZANIA     |[20-30) |     66|   115|
|Birth     |MAL-ED         |TANZANIA     |<20     |      7|   115|
|Birth     |MAL-ED         |TANZANIA     |>=30    |     42|   115|
|Birth     |MAL-ED         |SOUTH AFRICA |[20-30) |     65|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |<20     |     22|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |>=30    |     33|   120|
|Birth     |NIH-Birth      |BANGLADESH   |[20-30) |    328|   570|
|Birth     |NIH-Birth      |BANGLADESH   |<20     |    110|   570|
|Birth     |NIH-Birth      |BANGLADESH   |>=30    |    132|   570|
|Birth     |NIH-Crypto     |BANGLADESH   |[20-30) |    469|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |<20     |    124|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |>=30    |    114|   707|
|Birth     |PROBIT         |BELARUS      |[20-30) |   9889| 13817|
|Birth     |PROBIT         |BELARUS      |<20     |   1402| 13817|
|Birth     |PROBIT         |BELARUS      |>=30    |   2526| 13817|
|Birth     |PROVIDE        |BANGLADESH   |[20-30) |    366|   532|
|Birth     |PROVIDE        |BANGLADESH   |<20     |     67|   532|
|Birth     |PROVIDE        |BANGLADESH   |>=30    |     99|   532|
|Birth     |SAS-CompFeed   |INDIA        |[20-30) |    850|  1101|
|Birth     |SAS-CompFeed   |INDIA        |<20     |    145|  1101|
|Birth     |SAS-CompFeed   |INDIA        |>=30    |    106|  1101|
|Birth     |Vellore Crypto |INDIA        |[20-30) |    289|   343|
|Birth     |Vellore Crypto |INDIA        |<20     |     28|   343|
|Birth     |Vellore Crypto |INDIA        |>=30    |     26|   343|
|Birth     |ZVITAMBO       |ZIMBABWE     |[20-30) |   8680| 12881|
|Birth     |ZVITAMBO       |ZIMBABWE     |<20     |   2030| 12881|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=30    |   2171| 12881|
|6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |    292|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |<20     |     33|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |     43|   368|
|6 months  |COHORTS        |INDIA        |[20-30) |   3326|  4897|
|6 months  |COHORTS        |INDIA        |<20     |    371|  4897|
|6 months  |COHORTS        |INDIA        |>=30    |   1200|  4897|
|6 months  |COHORTS        |GUATEMALA    |[20-30) |    471|   963|
|6 months  |COHORTS        |GUATEMALA    |<20     |    118|   963|
|6 months  |COHORTS        |GUATEMALA    |>=30    |    374|   963|
|6 months  |COHORTS        |PHILIPPINES  |[20-30) |   1600|  2706|
|6 months  |COHORTS        |PHILIPPINES  |<20     |    331|  2706|
|6 months  |COHORTS        |PHILIPPINES  |>=30    |    775|  2706|
|6 months  |EE             |PAKISTAN     |[20-30) |    133|   372|
|6 months  |EE             |PAKISTAN     |<20     |      1|   372|
|6 months  |EE             |PAKISTAN     |>=30    |    238|   372|
|6 months  |GMS-Nepal      |NEPAL        |[20-30) |    371|   564|
|6 months  |GMS-Nepal      |NEPAL        |<20     |    108|   564|
|6 months  |GMS-Nepal      |NEPAL        |>=30    |     85|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |    171|   276|
|6 months  |Guatemala BSC  |GUATEMALA    |<20     |     46|   276|
|6 months  |Guatemala BSC  |GUATEMALA    |>=30    |     59|   276|
|6 months  |JiVitA-3       |BANGLADESH   |[20-30) |   7656| 16779|
|6 months  |JiVitA-3       |BANGLADESH   |<20     |   7904| 16779|
|6 months  |JiVitA-3       |BANGLADESH   |>=30    |   1219| 16779|
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
|6 months  |PROBIT         |BELARUS      |[20-30) |  11314| 15757|
|6 months  |PROBIT         |BELARUS      |<20     |   1619| 15757|
|6 months  |PROBIT         |BELARUS      |>=30    |   2824| 15757|
|6 months  |PROVIDE        |BANGLADESH   |[20-30) |    424|   603|
|6 months  |PROVIDE        |BANGLADESH   |<20     |     66|   603|
|6 months  |PROVIDE        |BANGLADESH   |>=30    |    113|   603|
|6 months  |SAS-CompFeed   |INDIA        |[20-30) |   1028|  1332|
|6 months  |SAS-CompFeed   |INDIA        |<20     |    175|  1332|
|6 months  |SAS-CompFeed   |INDIA        |>=30    |    129|  1332|
|6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |    260|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |<20     |     36|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |>=30    |     84|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |   1317|  2011|
|6 months  |TanzaniaChild2 |TANZANIA     |<20     |    146|  2011|
|6 months  |TanzaniaChild2 |TANZANIA     |>=30    |    548|  2011|
|6 months  |Vellore Crypto |INDIA        |[20-30) |    342|   408|
|6 months  |Vellore Crypto |INDIA        |<20     |     37|   408|
|6 months  |Vellore Crypto |INDIA        |>=30    |     29|   408|
|6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |   5631|  8489|
|6 months  |ZVITAMBO       |ZIMBABWE     |<20     |   1292|  8489|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |   1566|  8489|
|24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |    296|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |<20     |     34|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |>=30    |     42|   372|
|24 months |COHORTS        |INDIA        |[20-30) |   2446|  3665|
|24 months |COHORTS        |INDIA        |<20     |    246|  3665|
|24 months |COHORTS        |INDIA        |>=30    |    973|  3665|
|24 months |COHORTS        |GUATEMALA    |[20-30) |    532|  1076|
|24 months |COHORTS        |GUATEMALA    |<20     |    154|  1076|
|24 months |COHORTS        |GUATEMALA    |>=30    |    390|  1076|
|24 months |COHORTS        |PHILIPPINES  |[20-30) |   1461|  2449|
|24 months |COHORTS        |PHILIPPINES  |<20     |    293|  2449|
|24 months |COHORTS        |PHILIPPINES  |>=30    |    695|  2449|
|24 months |EE             |PAKISTAN     |[20-30) |     58|   167|
|24 months |EE             |PAKISTAN     |<20     |      1|   167|
|24 months |EE             |PAKISTAN     |>=30    |    108|   167|
|24 months |GMS-Nepal      |NEPAL        |[20-30) |    317|   487|
|24 months |GMS-Nepal      |NEPAL        |<20     |     94|   487|
|24 months |GMS-Nepal      |NEPAL        |>=30    |     76|   487|
|24 months |JiVitA-3       |BANGLADESH   |[20-30) |   4041|  8598|
|24 months |JiVitA-3       |BANGLADESH   |<20     |   3845|  8598|
|24 months |JiVitA-3       |BANGLADESH   |>=30    |    712|  8598|
|24 months |Keneba         |GAMBIA       |[20-30) |    791|  1715|
|24 months |Keneba         |GAMBIA       |<20     |    217|  1715|
|24 months |Keneba         |GAMBIA       |>=30    |    707|  1715|
|24 months |LCNI-5         |MALAWI       |[20-30) |    241|   461|
|24 months |LCNI-5         |MALAWI       |<20     |     78|   461|
|24 months |LCNI-5         |MALAWI       |>=30    |    142|   461|
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
|24 months |NIH-Birth      |BANGLADESH   |[20-30) |    240|   424|
|24 months |NIH-Birth      |BANGLADESH   |<20     |     85|   424|
|24 months |NIH-Birth      |BANGLADESH   |>=30    |     99|   424|
|24 months |NIH-Crypto     |BANGLADESH   |[20-30) |    334|   514|
|24 months |NIH-Crypto     |BANGLADESH   |<20     |    101|   514|
|24 months |NIH-Crypto     |BANGLADESH   |>=30    |     79|   514|
|24 months |PROBIT         |BELARUS      |[20-30) |   2845|  3970|
|24 months |PROBIT         |BELARUS      |<20     |    365|  3970|
|24 months |PROBIT         |BELARUS      |>=30    |    760|  3970|
|24 months |PROVIDE        |BANGLADESH   |[20-30) |    409|   579|
|24 months |PROVIDE        |BANGLADESH   |<20     |     64|   579|
|24 months |PROVIDE        |BANGLADESH   |>=30    |    106|   579|
|24 months |TanzaniaChild2 |TANZANIA     |[20-30) |      3|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<20     |      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |>=30    |      2|     6|
|24 months |Vellore Crypto |INDIA        |[20-30) |    343|   409|
|24 months |Vellore Crypto |INDIA        |<20     |     37|   409|
|24 months |Vellore Crypto |INDIA        |>=30    |     29|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |    276|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |<20     |     69|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |>=30    |     87|   432|


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


