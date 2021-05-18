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
|Birth     |CMC-V-BCS-2002 |INDIA        |[20-30) |     61|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |<20     |     15|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |>=30    |     10|    86|
|Birth     |COHORTS        |INDIA        |[20-30) |   3126|  5142|
|Birth     |COHORTS        |INDIA        |<20     |    812|  5142|
|Birth     |COHORTS        |INDIA        |>=30    |   1204|  5142|
|Birth     |COHORTS        |GUATEMALA    |[20-30) |    343|   753|
|Birth     |COHORTS        |GUATEMALA    |<20     |    152|   753|
|Birth     |COHORTS        |GUATEMALA    |>=30    |    258|   753|
|Birth     |COHORTS        |PHILIPPINES  |[20-30) |   1503|  2899|
|Birth     |COHORTS        |PHILIPPINES  |<20     |    498|  2899|
|Birth     |COHORTS        |PHILIPPINES  |>=30    |    898|  2899|
|Birth     |EE             |PAKISTAN     |[20-30) |     71|   177|
|Birth     |EE             |PAKISTAN     |<20     |      2|   177|
|Birth     |EE             |PAKISTAN     |>=30    |    104|   177|
|Birth     |GMS-Nepal      |NEPAL        |[20-30) |    385|   641|
|Birth     |GMS-Nepal      |NEPAL        |<20     |    159|   641|
|Birth     |GMS-Nepal      |NEPAL        |>=30    |     97|   641|
|Birth     |JiVitA-3       |BANGLADESH   |[20-30) |   8250| 18011|
|Birth     |JiVitA-3       |BANGLADESH   |<20     |   8156| 18011|
|Birth     |JiVitA-3       |BANGLADESH   |>=30    |   1605| 18011|
|Birth     |Keneba         |GAMBIA       |[20-30) |    471|  1464|
|Birth     |Keneba         |GAMBIA       |<20     |    139|  1464|
|Birth     |Keneba         |GAMBIA       |>=30    |    854|  1464|
|Birth     |MAL-ED         |INDIA        |[20-30) |     29|    45|
|Birth     |MAL-ED         |INDIA        |<20     |      6|    45|
|Birth     |MAL-ED         |INDIA        |>=30    |     10|    45|
|Birth     |MAL-ED         |BANGLADESH   |[20-30) |    123|   215|
|Birth     |MAL-ED         |BANGLADESH   |<20     |     31|   215|
|Birth     |MAL-ED         |BANGLADESH   |>=30    |     61|   215|
|Birth     |MAL-ED         |PERU         |[20-30) |    109|   228|
|Birth     |MAL-ED         |PERU         |<20     |     39|   228|
|Birth     |MAL-ED         |PERU         |>=30    |     80|   228|
|Birth     |MAL-ED         |NEPAL        |[20-30) |     15|    26|
|Birth     |MAL-ED         |NEPAL        |<20     |      1|    26|
|Birth     |MAL-ED         |NEPAL        |>=30    |     10|    26|
|Birth     |MAL-ED         |BRAZIL       |[20-30) |     32|    62|
|Birth     |MAL-ED         |BRAZIL       |<20     |      9|    62|
|Birth     |MAL-ED         |BRAZIL       |>=30    |     21|    62|
|Birth     |MAL-ED         |TANZANIA     |[20-30) |     53|   115|
|Birth     |MAL-ED         |TANZANIA     |<20     |      9|   115|
|Birth     |MAL-ED         |TANZANIA     |>=30    |     53|   115|
|Birth     |MAL-ED         |SOUTH AFRICA |[20-30) |     52|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |<20     |     15|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |>=30    |     53|   120|
|Birth     |NIH-Birth      |BANGLADESH   |[20-30) |    342|   574|
|Birth     |NIH-Birth      |BANGLADESH   |<20     |    111|   574|
|Birth     |NIH-Birth      |BANGLADESH   |>=30    |    121|   574|
|Birth     |NIH-Crypto     |BANGLADESH   |[20-30) |    480|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |<20     |     60|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |>=30    |    167|   707|
|Birth     |PROBIT         |BELARUS      |[20-30) |   9822| 13817|
|Birth     |PROBIT         |BELARUS      |<20     |   1479| 13817|
|Birth     |PROBIT         |BELARUS      |>=30    |   2516| 13817|
|Birth     |PROVIDE        |BANGLADESH   |[20-30) |    344|   532|
|Birth     |PROVIDE        |BANGLADESH   |<20     |     53|   532|
|Birth     |PROVIDE        |BANGLADESH   |>=30    |    135|   532|
|Birth     |SAS-CompFeed   |INDIA        |[20-30) |    812|  1102|
|Birth     |SAS-CompFeed   |INDIA        |<20     |    164|  1102|
|Birth     |SAS-CompFeed   |INDIA        |>=30    |    126|  1102|
|Birth     |Vellore Crypto |INDIA        |[20-30) |    235|   343|
|Birth     |Vellore Crypto |INDIA        |<20     |     48|   343|
|Birth     |Vellore Crypto |INDIA        |>=30    |     60|   343|
|Birth     |ZVITAMBO       |ZIMBABWE     |[20-30) |   8924| 12900|
|Birth     |ZVITAMBO       |ZIMBABWE     |<20     |   2368| 12900|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=30    |   1608| 12900|
|6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |    262|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |<20     |     66|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |     40|   368|
|6 months  |COHORTS        |INDIA        |[20-30) |   3434|  5690|
|6 months  |COHORTS        |INDIA        |<20     |    915|  5690|
|6 months  |COHORTS        |INDIA        |>=30    |   1341|  5690|
|6 months  |COHORTS        |GUATEMALA    |[20-30) |    413|   960|
|6 months  |COHORTS        |GUATEMALA    |<20     |    201|   960|
|6 months  |COHORTS        |GUATEMALA    |>=30    |    346|   960|
|6 months  |COHORTS        |PHILIPPINES  |[20-30) |   1412|  2706|
|6 months  |COHORTS        |PHILIPPINES  |<20     |    467|  2706|
|6 months  |COHORTS        |PHILIPPINES  |>=30    |    827|  2706|
|6 months  |EE             |PAKISTAN     |[20-30) |    156|   374|
|6 months  |EE             |PAKISTAN     |<20     |      2|   374|
|6 months  |EE             |PAKISTAN     |>=30    |    216|   374|
|6 months  |GMS-Nepal      |NEPAL        |[20-30) |    335|   564|
|6 months  |GMS-Nepal      |NEPAL        |<20     |    141|   564|
|6 months  |GMS-Nepal      |NEPAL        |>=30    |     88|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |    146|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |<20     |     58|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |>=30    |     82|   286|
|6 months  |JiVitA-3       |BANGLADESH   |[20-30) |   7497| 16781|
|6 months  |JiVitA-3       |BANGLADESH   |<20     |   8004| 16781|
|6 months  |JiVitA-3       |BANGLADESH   |>=30    |   1280| 16781|
|6 months  |Keneba         |GAMBIA       |[20-30) |    664|  2086|
|6 months  |Keneba         |GAMBIA       |<20     |    195|  2086|
|6 months  |Keneba         |GAMBIA       |>=30    |   1227|  2086|
|6 months  |LCNI-5         |MALAWI       |[20-30) |    400|   760|
|6 months  |LCNI-5         |MALAWI       |<20     |    154|   760|
|6 months  |LCNI-5         |MALAWI       |>=30    |    206|   760|
|6 months  |MAL-ED         |INDIA        |[20-30) |    151|   236|
|6 months  |MAL-ED         |INDIA        |<20     |     36|   236|
|6 months  |MAL-ED         |INDIA        |>=30    |     49|   236|
|6 months  |MAL-ED         |BANGLADESH   |[20-30) |    141|   241|
|6 months  |MAL-ED         |BANGLADESH   |<20     |     35|   241|
|6 months  |MAL-ED         |BANGLADESH   |>=30    |     65|   241|
|6 months  |MAL-ED         |PERU         |[20-30) |    136|   273|
|6 months  |MAL-ED         |PERU         |<20     |     44|   273|
|6 months  |MAL-ED         |PERU         |>=30    |     93|   273|
|6 months  |MAL-ED         |NEPAL        |[20-30) |    146|   236|
|6 months  |MAL-ED         |NEPAL        |<20     |      9|   236|
|6 months  |MAL-ED         |NEPAL        |>=30    |     81|   236|
|6 months  |MAL-ED         |BRAZIL       |[20-30) |    110|   209|
|6 months  |MAL-ED         |BRAZIL       |<20     |     23|   209|
|6 months  |MAL-ED         |BRAZIL       |>=30    |     76|   209|
|6 months  |MAL-ED         |TANZANIA     |[20-30) |    106|   247|
|6 months  |MAL-ED         |TANZANIA     |<20     |     12|   247|
|6 months  |MAL-ED         |TANZANIA     |>=30    |    129|   247|
|6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |    114|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |<20     |     33|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |>=30    |    107|   254|
|6 months  |NIH-Birth      |BANGLADESH   |[20-30) |    323|   536|
|6 months  |NIH-Birth      |BANGLADESH   |<20     |    100|   536|
|6 months  |NIH-Birth      |BANGLADESH   |>=30    |    113|   536|
|6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |    487|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |<20     |     59|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |>=30    |    169|   715|
|6 months  |PROBIT         |BELARUS      |[20-30) |  11262| 15757|
|6 months  |PROBIT         |BELARUS      |<20     |   1705| 15757|
|6 months  |PROBIT         |BELARUS      |>=30    |   2790| 15757|
|6 months  |PROVIDE        |BANGLADESH   |[20-30) |    391|   603|
|6 months  |PROVIDE        |BANGLADESH   |<20     |     60|   603|
|6 months  |PROVIDE        |BANGLADESH   |>=30    |    152|   603|
|6 months  |SAS-CompFeed   |INDIA        |[20-30) |    978|  1334|
|6 months  |SAS-CompFeed   |INDIA        |<20     |    204|  1334|
|6 months  |SAS-CompFeed   |INDIA        |>=30    |    152|  1334|
|6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |    243|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |<20     |     24|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |>=30    |    113|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |   1088|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |<20     |    336|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |>=30    |    602|  2026|
|6 months  |Vellore Crypto |INDIA        |[20-30) |    280|   408|
|6 months  |Vellore Crypto |INDIA        |<20     |     53|   408|
|6 months  |Vellore Crypto |INDIA        |>=30    |     75|   408|
|6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |   5876|  8493|
|6 months  |ZVITAMBO       |ZIMBABWE     |<20     |   1487|  8493|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |   1130|  8493|
|24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |    265|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |<20     |     67|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |>=30    |     40|   372|
|24 months |COHORTS        |INDIA        |[20-30) |   2646|  4376|
|24 months |COHORTS        |INDIA        |<20     |    708|  4376|
|24 months |COHORTS        |INDIA        |>=30    |   1022|  4376|
|24 months |COHORTS        |GUATEMALA    |[20-30) |    464|  1076|
|24 months |COHORTS        |GUATEMALA    |<20     |    214|  1076|
|24 months |COHORTS        |GUATEMALA    |>=30    |    398|  1076|
|24 months |COHORTS        |PHILIPPINES  |[20-30) |   1271|  2449|
|24 months |COHORTS        |PHILIPPINES  |<20     |    419|  2449|
|24 months |COHORTS        |PHILIPPINES  |>=30    |    759|  2449|
|24 months |EE             |PAKISTAN     |[20-30) |     65|   168|
|24 months |EE             |PAKISTAN     |<20     |      2|   168|
|24 months |EE             |PAKISTAN     |>=30    |    101|   168|
|24 months |GMS-Nepal      |NEPAL        |[20-30) |    288|   487|
|24 months |GMS-Nepal      |NEPAL        |<20     |    124|   487|
|24 months |GMS-Nepal      |NEPAL        |>=30    |     75|   487|
|24 months |JiVitA-3       |BANGLADESH   |[20-30) |   3923|  8601|
|24 months |JiVitA-3       |BANGLADESH   |<20     |   3954|  8601|
|24 months |JiVitA-3       |BANGLADESH   |>=30    |    724|  8601|
|24 months |Keneba         |GAMBIA       |[20-30) |    556|  1724|
|24 months |Keneba         |GAMBIA       |<20     |    151|  1724|
|24 months |Keneba         |GAMBIA       |>=30    |   1017|  1724|
|24 months |LCNI-5         |MALAWI       |[20-30) |    258|   511|
|24 months |LCNI-5         |MALAWI       |<20     |    109|   511|
|24 months |LCNI-5         |MALAWI       |>=30    |    144|   511|
|24 months |MAL-ED         |INDIA        |[20-30) |    143|   227|
|24 months |MAL-ED         |INDIA        |<20     |     36|   227|
|24 months |MAL-ED         |INDIA        |>=30    |     48|   227|
|24 months |MAL-ED         |BANGLADESH   |[20-30) |    125|   212|
|24 months |MAL-ED         |BANGLADESH   |<20     |     31|   212|
|24 months |MAL-ED         |BANGLADESH   |>=30    |     56|   212|
|24 months |MAL-ED         |PERU         |[20-30) |     97|   201|
|24 months |MAL-ED         |PERU         |<20     |     33|   201|
|24 months |MAL-ED         |PERU         |>=30    |     71|   201|
|24 months |MAL-ED         |NEPAL        |[20-30) |    141|   228|
|24 months |MAL-ED         |NEPAL        |<20     |      9|   228|
|24 months |MAL-ED         |NEPAL        |>=30    |     78|   228|
|24 months |MAL-ED         |BRAZIL       |[20-30) |     91|   169|
|24 months |MAL-ED         |BRAZIL       |<20     |     17|   169|
|24 months |MAL-ED         |BRAZIL       |>=30    |     61|   169|
|24 months |MAL-ED         |TANZANIA     |[20-30) |     87|   214|
|24 months |MAL-ED         |TANZANIA     |<20     |     10|   214|
|24 months |MAL-ED         |TANZANIA     |>=30    |    117|   214|
|24 months |MAL-ED         |SOUTH AFRICA |[20-30) |    108|   238|
|24 months |MAL-ED         |SOUTH AFRICA |<20     |     31|   238|
|24 months |MAL-ED         |SOUTH AFRICA |>=30    |     99|   238|
|24 months |NIH-Birth      |BANGLADESH   |[20-30) |    256|   427|
|24 months |NIH-Birth      |BANGLADESH   |<20     |     80|   427|
|24 months |NIH-Birth      |BANGLADESH   |>=30    |     91|   427|
|24 months |NIH-Crypto     |BANGLADESH   |[20-30) |    349|   514|
|24 months |NIH-Crypto     |BANGLADESH   |<20     |     49|   514|
|24 months |NIH-Crypto     |BANGLADESH   |>=30    |    116|   514|
|24 months |PROBIT         |BELARUS      |[20-30) |   2811|  3970|
|24 months |PROBIT         |BELARUS      |<20     |    430|  3970|
|24 months |PROBIT         |BELARUS      |>=30    |    729|  3970|
|24 months |PROVIDE        |BANGLADESH   |[20-30) |    375|   579|
|24 months |PROVIDE        |BANGLADESH   |<20     |     59|   579|
|24 months |PROVIDE        |BANGLADESH   |>=30    |    145|   579|
|24 months |TanzaniaChild2 |TANZANIA     |[20-30) |      3|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<20     |      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |>=30    |      1|     6|
|24 months |Vellore Crypto |INDIA        |[20-30) |    280|   409|
|24 months |Vellore Crypto |INDIA        |<20     |     54|   409|
|24 months |Vellore Crypto |INDIA        |>=30    |     75|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |    292|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |<20     |     77|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |>=30    |     63|   432|


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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


