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
|Birth     |CMC-V-BCS-2002 |INDIA        |[20-30) |     65|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |<20     |     16|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |>=30    |     11|    92|
|Birth     |COHORTS        |INDIA        |[20-30) |   3344|  5508|
|Birth     |COHORTS        |INDIA        |<20     |    871|  5508|
|Birth     |COHORTS        |INDIA        |>=30    |   1293|  5508|
|Birth     |COHORTS        |GUATEMALA    |[20-30) |    384|   848|
|Birth     |COHORTS        |GUATEMALA    |<20     |    174|   848|
|Birth     |COHORTS        |GUATEMALA    |>=30    |    290|   848|
|Birth     |COHORTS        |PHILIPPINES  |[20-30) |   1584|  3050|
|Birth     |COHORTS        |PHILIPPINES  |<20     |    525|  3050|
|Birth     |COHORTS        |PHILIPPINES  |>=30    |    941|  3050|
|Birth     |EE             |PAKISTAN     |[20-30) |     96|   240|
|Birth     |EE             |PAKISTAN     |<20     |      2|   240|
|Birth     |EE             |PAKISTAN     |>=30    |    142|   240|
|Birth     |GMS-Nepal      |NEPAL        |[20-30) |    418|   696|
|Birth     |GMS-Nepal      |NEPAL        |<20     |    172|   696|
|Birth     |GMS-Nepal      |NEPAL        |>=30    |    106|   696|
|Birth     |JiVitA-3       |BANGLADESH   |[20-30) |  10288| 22452|
|Birth     |JiVitA-3       |BANGLADESH   |<20     |  10144| 22452|
|Birth     |JiVitA-3       |BANGLADESH   |>=30    |   2020| 22452|
|Birth     |Keneba         |GAMBIA       |[20-30) |    499|  1541|
|Birth     |Keneba         |GAMBIA       |<20     |    146|  1541|
|Birth     |Keneba         |GAMBIA       |>=30    |    896|  1541|
|Birth     |MAL-ED         |INDIA        |[20-30) |     30|    47|
|Birth     |MAL-ED         |INDIA        |<20     |      6|    47|
|Birth     |MAL-ED         |INDIA        |>=30    |     11|    47|
|Birth     |MAL-ED         |BANGLADESH   |[20-30) |    132|   231|
|Birth     |MAL-ED         |BANGLADESH   |<20     |     35|   231|
|Birth     |MAL-ED         |BANGLADESH   |>=30    |     64|   231|
|Birth     |MAL-ED         |PERU         |[20-30) |    112|   233|
|Birth     |MAL-ED         |PERU         |<20     |     39|   233|
|Birth     |MAL-ED         |PERU         |>=30    |     82|   233|
|Birth     |MAL-ED         |NEPAL        |[20-30) |     16|    27|
|Birth     |MAL-ED         |NEPAL        |<20     |      1|    27|
|Birth     |MAL-ED         |NEPAL        |>=30    |     10|    27|
|Birth     |MAL-ED         |BRAZIL       |[20-30) |     32|    65|
|Birth     |MAL-ED         |BRAZIL       |<20     |     11|    65|
|Birth     |MAL-ED         |BRAZIL       |>=30    |     22|    65|
|Birth     |MAL-ED         |TANZANIA     |[20-30) |     56|   125|
|Birth     |MAL-ED         |TANZANIA     |<20     |      9|   125|
|Birth     |MAL-ED         |TANZANIA     |>=30    |     60|   125|
|Birth     |MAL-ED         |SOUTH AFRICA |[20-30) |     53|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |<20     |     15|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |>=30    |     55|   123|
|Birth     |NIH-Birth      |BANGLADESH   |[20-30) |    362|   607|
|Birth     |NIH-Birth      |BANGLADESH   |<20     |    116|   607|
|Birth     |NIH-Birth      |BANGLADESH   |>=30    |    129|   607|
|Birth     |NIH-Crypto     |BANGLADESH   |[20-30) |    499|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |<20     |     63|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |>=30    |    170|   732|
|Birth     |PROBIT         |BELARUS      |[20-30) |   9881| 13893|
|Birth     |PROBIT         |BELARUS      |<20     |   1485| 13893|
|Birth     |PROBIT         |BELARUS      |>=30    |   2527| 13893|
|Birth     |PROVIDE        |BANGLADESH   |[20-30) |    350|   539|
|Birth     |PROVIDE        |BANGLADESH   |<20     |     54|   539|
|Birth     |PROVIDE        |BANGLADESH   |>=30    |    135|   539|
|Birth     |SAS-CompFeed   |INDIA        |[20-30) |    921|  1251|
|Birth     |SAS-CompFeed   |INDIA        |<20     |    188|  1251|
|Birth     |SAS-CompFeed   |INDIA        |>=30    |    142|  1251|
|Birth     |Vellore Crypto |INDIA        |[20-30) |    268|   388|
|Birth     |Vellore Crypto |INDIA        |<20     |     51|   388|
|Birth     |Vellore Crypto |INDIA        |>=30    |     69|   388|
|Birth     |ZVITAMBO       |ZIMBABWE     |[20-30) |   9549| 13854|
|Birth     |ZVITAMBO       |ZIMBABWE     |<20     |   2576| 13854|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=30    |   1729| 13854|
|6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |    263|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |<20     |     66|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |     40|   369|
|6 months  |COHORTS        |INDIA        |[20-30) |   3435|  5698|
|6 months  |COHORTS        |INDIA        |<20     |    916|  5698|
|6 months  |COHORTS        |INDIA        |>=30    |   1347|  5698|
|6 months  |COHORTS        |GUATEMALA    |[20-30) |    411|   958|
|6 months  |COHORTS        |GUATEMALA    |<20     |    201|   958|
|6 months  |COHORTS        |GUATEMALA    |>=30    |    346|   958|
|6 months  |COHORTS        |PHILIPPINES  |[20-30) |   1413|  2708|
|6 months  |COHORTS        |PHILIPPINES  |<20     |    466|  2708|
|6 months  |COHORTS        |PHILIPPINES  |>=30    |    829|  2708|
|6 months  |EE             |PAKISTAN     |[20-30) |    155|   372|
|6 months  |EE             |PAKISTAN     |<20     |      2|   372|
|6 months  |EE             |PAKISTAN     |>=30    |    215|   372|
|6 months  |GMS-Nepal      |NEPAL        |[20-30) |    335|   564|
|6 months  |GMS-Nepal      |NEPAL        |<20     |    141|   564|
|6 months  |GMS-Nepal      |NEPAL        |>=30    |     88|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |    146|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |<20     |     58|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |>=30    |     82|   286|
|6 months  |JiVitA-3       |BANGLADESH   |[20-30) |   7514| 16808|
|6 months  |JiVitA-3       |BANGLADESH   |<20     |   8012| 16808|
|6 months  |JiVitA-3       |BANGLADESH   |>=30    |   1282| 16808|
|6 months  |Keneba         |GAMBIA       |[20-30) |    663|  2086|
|6 months  |Keneba         |GAMBIA       |<20     |    195|  2086|
|6 months  |Keneba         |GAMBIA       |>=30    |   1228|  2086|
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
|6 months  |PROBIT         |BELARUS      |[20-30) |  11264| 15760|
|6 months  |PROBIT         |BELARUS      |<20     |   1706| 15760|
|6 months  |PROBIT         |BELARUS      |>=30    |   2790| 15760|
|6 months  |PROVIDE        |BANGLADESH   |[20-30) |    391|   604|
|6 months  |PROVIDE        |BANGLADESH   |<20     |     60|   604|
|6 months  |PROVIDE        |BANGLADESH   |>=30    |    153|   604|
|6 months  |SAS-CompFeed   |INDIA        |[20-30) |    979|  1336|
|6 months  |SAS-CompFeed   |INDIA        |<20     |    205|  1336|
|6 months  |SAS-CompFeed   |INDIA        |>=30    |    152|  1336|
|6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |    243|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |<20     |     24|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |>=30    |    113|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |   1088|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |<20     |    337|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |>=30    |    602|  2027|
|6 months  |Vellore Crypto |INDIA        |[20-30) |    279|   407|
|6 months  |Vellore Crypto |INDIA        |<20     |     54|   407|
|6 months  |Vellore Crypto |INDIA        |>=30    |     74|   407|
|6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |   5989|  8657|
|6 months  |ZVITAMBO       |ZIMBABWE     |<20     |   1513|  8657|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |   1155|  8657|
|24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |    264|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |<20     |     67|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |>=30    |     40|   371|
|24 months |COHORTS        |INDIA        |[20-30) |   2666|  4412|
|24 months |COHORTS        |INDIA        |<20     |    714|  4412|
|24 months |COHORTS        |INDIA        |>=30    |   1032|  4412|
|24 months |COHORTS        |GUATEMALA    |[20-30) |    457|  1064|
|24 months |COHORTS        |GUATEMALA    |<20     |    214|  1064|
|24 months |COHORTS        |GUATEMALA    |>=30    |    393|  1064|
|24 months |COHORTS        |PHILIPPINES  |[20-30) |   1269|  2445|
|24 months |COHORTS        |PHILIPPINES  |<20     |    418|  2445|
|24 months |COHORTS        |PHILIPPINES  |>=30    |    758|  2445|
|24 months |EE             |PAKISTAN     |[20-30) |     65|   167|
|24 months |EE             |PAKISTAN     |<20     |      2|   167|
|24 months |EE             |PAKISTAN     |>=30    |    100|   167|
|24 months |GMS-Nepal      |NEPAL        |[20-30) |    288|   488|
|24 months |GMS-Nepal      |NEPAL        |<20     |    125|   488|
|24 months |GMS-Nepal      |NEPAL        |>=30    |     75|   488|
|24 months |JiVitA-3       |BANGLADESH   |[20-30) |   3936|  8630|
|24 months |JiVitA-3       |BANGLADESH   |<20     |   3968|  8630|
|24 months |JiVitA-3       |BANGLADESH   |>=30    |    726|  8630|
|24 months |Keneba         |GAMBIA       |[20-30) |    556|  1723|
|24 months |Keneba         |GAMBIA       |<20     |    150|  1723|
|24 months |Keneba         |GAMBIA       |>=30    |   1017|  1723|
|24 months |LCNI-5         |MALAWI       |[20-30) |    262|   526|
|24 months |LCNI-5         |MALAWI       |<20     |    115|   526|
|24 months |LCNI-5         |MALAWI       |>=30    |    149|   526|
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
|24 months |NIH-Birth      |BANGLADESH   |[20-30) |    257|   428|
|24 months |NIH-Birth      |BANGLADESH   |<20     |     80|   428|
|24 months |NIH-Birth      |BANGLADESH   |>=30    |     91|   428|
|24 months |NIH-Crypto     |BANGLADESH   |[20-30) |    349|   514|
|24 months |NIH-Crypto     |BANGLADESH   |<20     |     49|   514|
|24 months |NIH-Crypto     |BANGLADESH   |>=30    |    116|   514|
|24 months |PROBIT         |BELARUS      |[20-30) |   2857|  4035|
|24 months |PROBIT         |BELARUS      |<20     |    437|  4035|
|24 months |PROBIT         |BELARUS      |>=30    |    741|  4035|
|24 months |PROVIDE        |BANGLADESH   |[20-30) |    375|   578|
|24 months |PROVIDE        |BANGLADESH   |<20     |     59|   578|
|24 months |PROVIDE        |BANGLADESH   |>=30    |    144|   578|
|24 months |TanzaniaChild2 |TANZANIA     |[20-30) |      3|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<20     |      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |>=30    |      1|     6|
|24 months |Vellore Crypto |INDIA        |[20-30) |    280|   409|
|24 months |Vellore Crypto |INDIA        |<20     |     54|   409|
|24 months |Vellore Crypto |INDIA        |>=30    |     75|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |   1127|  1636|
|24 months |ZVITAMBO       |ZIMBABWE     |<20     |    288|  1636|
|24 months |ZVITAMBO       |ZIMBABWE     |>=30    |    221|  1636|


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


