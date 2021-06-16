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

* syntype
* agecat
* studyid
* country

## Data Summary

|syntype |agecat    |studyid        |country      |mage    | n_cell|     n|
|:-------|:---------|:--------------|:------------|:-------|------:|-----:|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |[20-30) |     65|    92|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |<20     |     16|    92|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |>=30    |     11|    92|
|BC      |Birth     |COHORTS        |INDIA        |[20-30) |   3344|  5508|
|BC      |Birth     |COHORTS        |INDIA        |<20     |    871|  5508|
|BC      |Birth     |COHORTS        |INDIA        |>=30    |   1293|  5508|
|BC      |Birth     |COHORTS        |GUATEMALA    |[20-30) |    384|   848|
|BC      |Birth     |COHORTS        |GUATEMALA    |<20     |    174|   848|
|BC      |Birth     |COHORTS        |GUATEMALA    |>=30    |    290|   848|
|BC      |Birth     |COHORTS        |PHILIPPINES  |[20-30) |   1584|  3050|
|BC      |Birth     |COHORTS        |PHILIPPINES  |<20     |    525|  3050|
|BC      |Birth     |COHORTS        |PHILIPPINES  |>=30    |    941|  3050|
|BC      |Birth     |EE             |PAKISTAN     |[20-30) |     96|   240|
|BC      |Birth     |EE             |PAKISTAN     |<20     |      2|   240|
|BC      |Birth     |EE             |PAKISTAN     |>=30    |    142|   240|
|BC      |Birth     |GMS-Nepal      |NEPAL        |[20-30) |    418|   696|
|BC      |Birth     |GMS-Nepal      |NEPAL        |<20     |    172|   696|
|BC      |Birth     |GMS-Nepal      |NEPAL        |>=30    |    106|   696|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |[20-30) |  10288| 22452|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |<20     |  10144| 22452|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |>=30    |   2020| 22452|
|BC      |Birth     |Keneba         |GAMBIA       |[20-30) |    499|  1541|
|BC      |Birth     |Keneba         |GAMBIA       |<20     |    146|  1541|
|BC      |Birth     |Keneba         |GAMBIA       |>=30    |    896|  1541|
|BC      |Birth     |MAL-ED         |INDIA        |[20-30) |     30|    47|
|BC      |Birth     |MAL-ED         |INDIA        |<20     |      6|    47|
|BC      |Birth     |MAL-ED         |INDIA        |>=30    |     11|    47|
|BC      |Birth     |MAL-ED         |BANGLADESH   |[20-30) |    132|   231|
|BC      |Birth     |MAL-ED         |BANGLADESH   |<20     |     35|   231|
|BC      |Birth     |MAL-ED         |BANGLADESH   |>=30    |     64|   231|
|BC      |Birth     |MAL-ED         |PERU         |[20-30) |    112|   233|
|BC      |Birth     |MAL-ED         |PERU         |<20     |     39|   233|
|BC      |Birth     |MAL-ED         |PERU         |>=30    |     82|   233|
|BC      |Birth     |MAL-ED         |NEPAL        |[20-30) |     16|    27|
|BC      |Birth     |MAL-ED         |NEPAL        |<20     |      1|    27|
|BC      |Birth     |MAL-ED         |NEPAL        |>=30    |     10|    27|
|BC      |Birth     |MAL-ED         |BRAZIL       |[20-30) |     32|    65|
|BC      |Birth     |MAL-ED         |BRAZIL       |<20     |     11|    65|
|BC      |Birth     |MAL-ED         |BRAZIL       |>=30    |     22|    65|
|BC      |Birth     |MAL-ED         |TANZANIA     |[20-30) |     56|   125|
|BC      |Birth     |MAL-ED         |TANZANIA     |<20     |      9|   125|
|BC      |Birth     |MAL-ED         |TANZANIA     |>=30    |     60|   125|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |[20-30) |     53|   123|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |<20     |     15|   123|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |>=30    |     55|   123|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |[20-30) |    362|   607|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |<20     |    116|   607|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |>=30    |    129|   607|
|BC      |Birth     |NIH-Crypto     |BANGLADESH   |[20-30) |    499|   732|
|BC      |Birth     |NIH-Crypto     |BANGLADESH   |<20     |     63|   732|
|BC      |Birth     |NIH-Crypto     |BANGLADESH   |>=30    |    170|   732|
|BC      |Birth     |PROBIT         |BELARUS      |[20-30) |   9881| 13893|
|BC      |Birth     |PROBIT         |BELARUS      |<20     |   1485| 13893|
|BC      |Birth     |PROBIT         |BELARUS      |>=30    |   2527| 13893|
|BC      |Birth     |PROVIDE        |BANGLADESH   |[20-30) |    350|   539|
|BC      |Birth     |PROVIDE        |BANGLADESH   |<20     |     54|   539|
|BC      |Birth     |PROVIDE        |BANGLADESH   |>=30    |    135|   539|
|BC      |Birth     |SAS-CompFeed   |INDIA        |[20-30) |    921|  1251|
|BC      |Birth     |SAS-CompFeed   |INDIA        |<20     |    188|  1251|
|BC      |Birth     |SAS-CompFeed   |INDIA        |>=30    |    142|  1251|
|BC      |Birth     |Vellore Crypto |INDIA        |[20-30) |    268|   388|
|BC      |Birth     |Vellore Crypto |INDIA        |<20     |     51|   388|
|BC      |Birth     |Vellore Crypto |INDIA        |>=30    |     69|   388|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |[20-30) |   9549| 13854|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |<20     |   2576| 13854|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |>=30    |   1729| 13854|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |    263|   369|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |<20     |     66|   369|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |     40|   369|
|BC      |6 months  |COHORTS        |INDIA        |[20-30) |   3435|  5698|
|BC      |6 months  |COHORTS        |INDIA        |<20     |    916|  5698|
|BC      |6 months  |COHORTS        |INDIA        |>=30    |   1347|  5698|
|BC      |6 months  |COHORTS        |GUATEMALA    |[20-30) |    411|   958|
|BC      |6 months  |COHORTS        |GUATEMALA    |<20     |    201|   958|
|BC      |6 months  |COHORTS        |GUATEMALA    |>=30    |    346|   958|
|BC      |6 months  |COHORTS        |PHILIPPINES  |[20-30) |   1413|  2708|
|BC      |6 months  |COHORTS        |PHILIPPINES  |<20     |    466|  2708|
|BC      |6 months  |COHORTS        |PHILIPPINES  |>=30    |    829|  2708|
|BC      |6 months  |EE             |PAKISTAN     |[20-30) |    155|   372|
|BC      |6 months  |EE             |PAKISTAN     |<20     |      2|   372|
|BC      |6 months  |EE             |PAKISTAN     |>=30    |    215|   372|
|BC      |6 months  |GMS-Nepal      |NEPAL        |[20-30) |    335|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL        |<20     |    141|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL        |>=30    |     88|   564|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |    146|   286|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |<20     |     58|   286|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |>=30    |     82|   286|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |[20-30) |   7514| 16808|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |<20     |   8012| 16808|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |>=30    |   1282| 16808|
|BC      |6 months  |Keneba         |GAMBIA       |[20-30) |    663|  2086|
|BC      |6 months  |Keneba         |GAMBIA       |<20     |    195|  2086|
|BC      |6 months  |Keneba         |GAMBIA       |>=30    |   1228|  2086|
|BC      |6 months  |LCNI-5         |MALAWI       |[20-30) |    400|   760|
|BC      |6 months  |LCNI-5         |MALAWI       |<20     |    154|   760|
|BC      |6 months  |LCNI-5         |MALAWI       |>=30    |    206|   760|
|BC      |6 months  |MAL-ED         |INDIA        |[20-30) |    151|   236|
|BC      |6 months  |MAL-ED         |INDIA        |<20     |     36|   236|
|BC      |6 months  |MAL-ED         |INDIA        |>=30    |     49|   236|
|BC      |6 months  |MAL-ED         |BANGLADESH   |[20-30) |    141|   241|
|BC      |6 months  |MAL-ED         |BANGLADESH   |<20     |     35|   241|
|BC      |6 months  |MAL-ED         |BANGLADESH   |>=30    |     65|   241|
|BC      |6 months  |MAL-ED         |PERU         |[20-30) |    136|   273|
|BC      |6 months  |MAL-ED         |PERU         |<20     |     44|   273|
|BC      |6 months  |MAL-ED         |PERU         |>=30    |     93|   273|
|BC      |6 months  |MAL-ED         |NEPAL        |[20-30) |    146|   236|
|BC      |6 months  |MAL-ED         |NEPAL        |<20     |      9|   236|
|BC      |6 months  |MAL-ED         |NEPAL        |>=30    |     81|   236|
|BC      |6 months  |MAL-ED         |BRAZIL       |[20-30) |    110|   209|
|BC      |6 months  |MAL-ED         |BRAZIL       |<20     |     23|   209|
|BC      |6 months  |MAL-ED         |BRAZIL       |>=30    |     76|   209|
|BC      |6 months  |MAL-ED         |TANZANIA     |[20-30) |    106|   247|
|BC      |6 months  |MAL-ED         |TANZANIA     |<20     |     12|   247|
|BC      |6 months  |MAL-ED         |TANZANIA     |>=30    |    129|   247|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |    114|   254|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |<20     |     33|   254|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |>=30    |    107|   254|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |[20-30) |    323|   536|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |<20     |    100|   536|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |>=30    |    113|   536|
|BC      |6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |    487|   715|
|BC      |6 months  |NIH-Crypto     |BANGLADESH   |<20     |     59|   715|
|BC      |6 months  |NIH-Crypto     |BANGLADESH   |>=30    |    169|   715|
|BC      |6 months  |PROBIT         |BELARUS      |[20-30) |  11264| 15760|
|BC      |6 months  |PROBIT         |BELARUS      |<20     |   1706| 15760|
|BC      |6 months  |PROBIT         |BELARUS      |>=30    |   2790| 15760|
|BC      |6 months  |PROVIDE        |BANGLADESH   |[20-30) |    391|   604|
|BC      |6 months  |PROVIDE        |BANGLADESH   |<20     |     60|   604|
|BC      |6 months  |PROVIDE        |BANGLADESH   |>=30    |    153|   604|
|BC      |6 months  |SAS-CompFeed   |INDIA        |[20-30) |    979|  1336|
|BC      |6 months  |SAS-CompFeed   |INDIA        |<20     |    205|  1336|
|BC      |6 months  |SAS-CompFeed   |INDIA        |>=30    |    152|  1336|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |    243|   380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |<20     |     24|   380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |>=30    |    113|   380|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |   1088|  2027|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |<20     |    337|  2027|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |>=30    |    602|  2027|
|BC      |6 months  |Vellore Crypto |INDIA        |[20-30) |    279|   407|
|BC      |6 months  |Vellore Crypto |INDIA        |<20     |     54|   407|
|BC      |6 months  |Vellore Crypto |INDIA        |>=30    |     74|   407|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |   5989|  8657|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |<20     |   1513|  8657|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |   1155|  8657|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |    264|   371|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |<20     |     67|   371|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |>=30    |     40|   371|
|BC      |24 months |COHORTS        |INDIA        |[20-30) |   2666|  4412|
|BC      |24 months |COHORTS        |INDIA        |<20     |    714|  4412|
|BC      |24 months |COHORTS        |INDIA        |>=30    |   1032|  4412|
|BC      |24 months |COHORTS        |GUATEMALA    |[20-30) |    457|  1064|
|BC      |24 months |COHORTS        |GUATEMALA    |<20     |    214|  1064|
|BC      |24 months |COHORTS        |GUATEMALA    |>=30    |    393|  1064|
|BC      |24 months |COHORTS        |PHILIPPINES  |[20-30) |   1269|  2445|
|BC      |24 months |COHORTS        |PHILIPPINES  |<20     |    418|  2445|
|BC      |24 months |COHORTS        |PHILIPPINES  |>=30    |    758|  2445|
|BC      |24 months |EE             |PAKISTAN     |[20-30) |     65|   167|
|BC      |24 months |EE             |PAKISTAN     |<20     |      2|   167|
|BC      |24 months |EE             |PAKISTAN     |>=30    |    100|   167|
|BC      |24 months |GMS-Nepal      |NEPAL        |[20-30) |    288|   488|
|BC      |24 months |GMS-Nepal      |NEPAL        |<20     |    125|   488|
|BC      |24 months |GMS-Nepal      |NEPAL        |>=30    |     75|   488|
|BC      |24 months |JiVitA-3       |BANGLADESH   |[20-30) |   3936|  8630|
|BC      |24 months |JiVitA-3       |BANGLADESH   |<20     |   3968|  8630|
|BC      |24 months |JiVitA-3       |BANGLADESH   |>=30    |    726|  8630|
|BC      |24 months |Keneba         |GAMBIA       |[20-30) |    556|  1723|
|BC      |24 months |Keneba         |GAMBIA       |<20     |    150|  1723|
|BC      |24 months |Keneba         |GAMBIA       |>=30    |   1017|  1723|
|BC      |24 months |LCNI-5         |MALAWI       |[20-30) |    262|   526|
|BC      |24 months |LCNI-5         |MALAWI       |<20     |    115|   526|
|BC      |24 months |LCNI-5         |MALAWI       |>=30    |    149|   526|
|BC      |24 months |MAL-ED         |INDIA        |[20-30) |    143|   227|
|BC      |24 months |MAL-ED         |INDIA        |<20     |     36|   227|
|BC      |24 months |MAL-ED         |INDIA        |>=30    |     48|   227|
|BC      |24 months |MAL-ED         |BANGLADESH   |[20-30) |    125|   212|
|BC      |24 months |MAL-ED         |BANGLADESH   |<20     |     31|   212|
|BC      |24 months |MAL-ED         |BANGLADESH   |>=30    |     56|   212|
|BC      |24 months |MAL-ED         |PERU         |[20-30) |     97|   201|
|BC      |24 months |MAL-ED         |PERU         |<20     |     33|   201|
|BC      |24 months |MAL-ED         |PERU         |>=30    |     71|   201|
|BC      |24 months |MAL-ED         |NEPAL        |[20-30) |    141|   228|
|BC      |24 months |MAL-ED         |NEPAL        |<20     |      9|   228|
|BC      |24 months |MAL-ED         |NEPAL        |>=30    |     78|   228|
|BC      |24 months |MAL-ED         |BRAZIL       |[20-30) |     91|   169|
|BC      |24 months |MAL-ED         |BRAZIL       |<20     |     17|   169|
|BC      |24 months |MAL-ED         |BRAZIL       |>=30    |     61|   169|
|BC      |24 months |MAL-ED         |TANZANIA     |[20-30) |     87|   214|
|BC      |24 months |MAL-ED         |TANZANIA     |<20     |     10|   214|
|BC      |24 months |MAL-ED         |TANZANIA     |>=30    |    117|   214|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |[20-30) |    108|   238|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |<20     |     31|   238|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |>=30    |     99|   238|
|BC      |24 months |NIH-Birth      |BANGLADESH   |[20-30) |    257|   428|
|BC      |24 months |NIH-Birth      |BANGLADESH   |<20     |     80|   428|
|BC      |24 months |NIH-Birth      |BANGLADESH   |>=30    |     91|   428|
|BC      |24 months |NIH-Crypto     |BANGLADESH   |[20-30) |    349|   514|
|BC      |24 months |NIH-Crypto     |BANGLADESH   |<20     |     49|   514|
|BC      |24 months |NIH-Crypto     |BANGLADESH   |>=30    |    116|   514|
|BC      |24 months |PROBIT         |BELARUS      |[20-30) |   2857|  4035|
|BC      |24 months |PROBIT         |BELARUS      |<20     |    437|  4035|
|BC      |24 months |PROBIT         |BELARUS      |>=30    |    741|  4035|
|BC      |24 months |PROVIDE        |BANGLADESH   |[20-30) |    375|   578|
|BC      |24 months |PROVIDE        |BANGLADESH   |<20     |     59|   578|
|BC      |24 months |PROVIDE        |BANGLADESH   |>=30    |    144|   578|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |[20-30) |      3|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |<20     |      2|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |>=30    |      1|     6|
|BC      |24 months |Vellore Crypto |INDIA        |[20-30) |    280|   409|
|BC      |24 months |Vellore Crypto |INDIA        |<20     |     54|   409|
|BC      |24 months |Vellore Crypto |INDIA        |>=30    |     75|   409|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |   1127|  1636|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |<20     |    288|  1636|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |>=30    |    221|  1636|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |[20-30) |     79|    92|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |<20     |      9|    92|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |>=30    |      4|    92|
|FULL    |Birth     |COHORTS        |INDIA        |[20-30) |   3180|  4715|
|FULL    |Birth     |COHORTS        |INDIA        |<20     |    368|  4715|
|FULL    |Birth     |COHORTS        |INDIA        |>=30    |   1167|  4715|
|FULL    |Birth     |COHORTS        |GUATEMALA    |[20-30) |    405|   852|
|FULL    |Birth     |COHORTS        |GUATEMALA    |<20     |    121|   852|
|FULL    |Birth     |COHORTS        |GUATEMALA    |>=30    |    326|   852|
|FULL    |Birth     |COHORTS        |PHILIPPINES  |[20-30) |   1821|  3050|
|FULL    |Birth     |COHORTS        |PHILIPPINES  |<20     |    378|  3050|
|FULL    |Birth     |COHORTS        |PHILIPPINES  |>=30    |    851|  3050|
|FULL    |Birth     |EE             |PAKISTAN     |[20-30) |     76|   239|
|FULL    |Birth     |EE             |PAKISTAN     |<20     |      1|   239|
|FULL    |Birth     |EE             |PAKISTAN     |>=30    |    162|   239|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |[20-30) |    446|   696|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |<20     |    149|   696|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |>=30    |    101|   696|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |[20-30) |  10853| 22444|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |<20     |   9472| 22444|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |>=30    |   2119| 22444|
|FULL    |Birth     |Keneba         |GAMBIA       |[20-30) |    705|  1543|
|FULL    |Birth     |Keneba         |GAMBIA       |<20     |    238|  1543|
|FULL    |Birth     |Keneba         |GAMBIA       |>=30    |    600|  1543|
|FULL    |Birth     |MAL-ED         |INDIA        |[20-30) |     29|    47|
|FULL    |Birth     |MAL-ED         |INDIA        |<20     |      9|    47|
|FULL    |Birth     |MAL-ED         |INDIA        |>=30    |      9|    47|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |[20-30) |    160|   231|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |<20     |     30|   231|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |>=30    |     41|   231|
|FULL    |Birth     |MAL-ED         |PERU         |[20-30) |    114|   233|
|FULL    |Birth     |MAL-ED         |PERU         |<20     |     66|   233|
|FULL    |Birth     |MAL-ED         |PERU         |>=30    |     53|   233|
|FULL    |Birth     |MAL-ED         |NEPAL        |[20-30) |     22|    27|
|FULL    |Birth     |MAL-ED         |NEPAL        |<20     |      0|    27|
|FULL    |Birth     |MAL-ED         |NEPAL        |>=30    |      5|    27|
|FULL    |Birth     |MAL-ED         |BRAZIL       |[20-30) |     41|    65|
|FULL    |Birth     |MAL-ED         |BRAZIL       |<20     |      8|    65|
|FULL    |Birth     |MAL-ED         |BRAZIL       |>=30    |     16|    65|
|FULL    |Birth     |MAL-ED         |TANZANIA     |[20-30) |     72|   125|
|FULL    |Birth     |MAL-ED         |TANZANIA     |<20     |      7|   125|
|FULL    |Birth     |MAL-ED         |TANZANIA     |>=30    |     46|   125|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |[20-30) |     67|   123|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |<20     |     23|   123|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |>=30    |     33|   123|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |[20-30) |    347|   602|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |<20     |    118|   602|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |>=30    |    137|   602|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH   |[20-30) |    483|   732|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH   |<20     |    130|   732|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH   |>=30    |    119|   732|
|FULL    |Birth     |PROBIT         |BELARUS      |[20-30) |   9943| 13893|
|FULL    |Birth     |PROBIT         |BELARUS      |<20     |   1408| 13893|
|FULL    |Birth     |PROBIT         |BELARUS      |>=30    |   2542| 13893|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |[20-30) |    371|   539|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |<20     |     67|   539|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |>=30    |    101|   539|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |[20-30) |    962|  1250|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |<20     |    170|  1250|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |>=30    |    118|  1250|
|FULL    |Birth     |Vellore Crypto |INDIA        |[20-30) |    325|   388|
|FULL    |Birth     |Vellore Crypto |INDIA        |<20     |     35|   388|
|FULL    |Birth     |Vellore Crypto |INDIA        |>=30    |     28|   388|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |[20-30) |   9299| 13835|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |<20     |   2205| 13835|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |>=30    |   2331| 13835|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |    293|   369|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |<20     |     33|   369|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |     43|   369|
|FULL    |6 months  |COHORTS        |INDIA        |[20-30) |   3331|  4904|
|FULL    |6 months  |COHORTS        |INDIA        |<20     |    371|  4904|
|FULL    |6 months  |COHORTS        |INDIA        |>=30    |   1202|  4904|
|FULL    |6 months  |COHORTS        |GUATEMALA    |[20-30) |    470|   961|
|FULL    |6 months  |COHORTS        |GUATEMALA    |<20     |    118|   961|
|FULL    |6 months  |COHORTS        |GUATEMALA    |>=30    |    373|   961|
|FULL    |6 months  |COHORTS        |PHILIPPINES  |[20-30) |   1601|  2708|
|FULL    |6 months  |COHORTS        |PHILIPPINES  |<20     |    331|  2708|
|FULL    |6 months  |COHORTS        |PHILIPPINES  |>=30    |    776|  2708|
|FULL    |6 months  |EE             |PAKISTAN     |[20-30) |    133|   370|
|FULL    |6 months  |EE             |PAKISTAN     |<20     |      1|   370|
|FULL    |6 months  |EE             |PAKISTAN     |>=30    |    236|   370|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |[20-30) |    371|   564|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |<20     |    108|   564|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |>=30    |     85|   564|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |    171|   276|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |<20     |     46|   276|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |>=30    |     59|   276|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |[20-30) |   7679| 16805|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |<20     |   7905| 16805|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |>=30    |   1221| 16805|
|FULL    |6 months  |Keneba         |GAMBIA       |[20-30) |    987|  2080|
|FULL    |6 months  |Keneba         |GAMBIA       |<20     |    288|  2080|
|FULL    |6 months  |Keneba         |GAMBIA       |>=30    |    805|  2080|
|FULL    |6 months  |LCNI-5         |MALAWI       |[20-30) |    364|   669|
|FULL    |6 months  |LCNI-5         |MALAWI       |<20     |    107|   669|
|FULL    |6 months  |LCNI-5         |MALAWI       |>=30    |    198|   669|
|FULL    |6 months  |MAL-ED         |INDIA        |[20-30) |    143|   233|
|FULL    |6 months  |MAL-ED         |INDIA        |<20     |     41|   233|
|FULL    |6 months  |MAL-ED         |INDIA        |>=30    |     49|   233|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |[20-30) |    165|   241|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |<20     |     35|   241|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |>=30    |     41|   241|
|FULL    |6 months  |MAL-ED         |PERU         |[20-30) |    136|   273|
|FULL    |6 months  |MAL-ED         |PERU         |<20     |     76|   273|
|FULL    |6 months  |MAL-ED         |PERU         |>=30    |     61|   273|
|FULL    |6 months  |MAL-ED         |NEPAL        |[20-30) |    160|   236|
|FULL    |6 months  |MAL-ED         |NEPAL        |<20     |     12|   236|
|FULL    |6 months  |MAL-ED         |NEPAL        |>=30    |     64|   236|
|FULL    |6 months  |MAL-ED         |BRAZIL       |[20-30) |    125|   209|
|FULL    |6 months  |MAL-ED         |BRAZIL       |<20     |     37|   209|
|FULL    |6 months  |MAL-ED         |BRAZIL       |>=30    |     47|   209|
|FULL    |6 months  |MAL-ED         |TANZANIA     |[20-30) |    128|   247|
|FULL    |6 months  |MAL-ED         |TANZANIA     |<20     |     15|   247|
|FULL    |6 months  |MAL-ED         |TANZANIA     |>=30    |    104|   247|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |    118|   254|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |<20     |     42|   254|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |>=30    |     94|   254|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |[20-30) |    300|   532|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |<20     |    107|   532|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |>=30    |    125|   532|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |    462|   715|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH   |<20     |    131|   715|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH   |>=30    |    122|   715|
|FULL    |6 months  |PROBIT         |BELARUS      |[20-30) |  11316| 15760|
|FULL    |6 months  |PROBIT         |BELARUS      |<20     |   1619| 15760|
|FULL    |6 months  |PROBIT         |BELARUS      |>=30    |   2825| 15760|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |[20-30) |    424|   604|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |<20     |     66|   604|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |>=30    |    114|   604|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |[20-30) |   1030|  1334|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |<20     |    175|  1334|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |>=30    |    129|  1334|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |    261|   380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |<20     |     36|   380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |>=30    |     83|   380|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |   1318|  2012|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |<20     |    146|  2012|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |>=30    |    548|  2012|
|FULL    |6 months  |Vellore Crypto |INDIA        |[20-30) |    342|   407|
|FULL    |6 months  |Vellore Crypto |INDIA        |<20     |     36|   407|
|FULL    |6 months  |Vellore Crypto |INDIA        |>=30    |     29|   407|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |   5738|  8653|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |<20     |   1315|  8653|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |   1600|  8653|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |    295|   371|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |<20     |     34|   371|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |>=30    |     42|   371|
|FULL    |24 months |COHORTS        |INDIA        |[20-30) |   2463|  3692|
|FULL    |24 months |COHORTS        |INDIA        |<20     |    247|  3692|
|FULL    |24 months |COHORTS        |INDIA        |>=30    |    982|  3692|
|FULL    |24 months |COHORTS        |GUATEMALA    |[20-30) |    527|  1064|
|FULL    |24 months |COHORTS        |GUATEMALA    |<20     |    152|  1064|
|FULL    |24 months |COHORTS        |GUATEMALA    |>=30    |    385|  1064|
|FULL    |24 months |COHORTS        |PHILIPPINES  |[20-30) |   1460|  2445|
|FULL    |24 months |COHORTS        |PHILIPPINES  |<20     |    292|  2445|
|FULL    |24 months |COHORTS        |PHILIPPINES  |>=30    |    693|  2445|
|FULL    |24 months |EE             |PAKISTAN     |[20-30) |     57|   166|
|FULL    |24 months |EE             |PAKISTAN     |<20     |      1|   166|
|FULL    |24 months |EE             |PAKISTAN     |>=30    |    108|   166|
|FULL    |24 months |GMS-Nepal      |NEPAL        |[20-30) |    318|   488|
|FULL    |24 months |GMS-Nepal      |NEPAL        |<20     |     94|   488|
|FULL    |24 months |GMS-Nepal      |NEPAL        |>=30    |     76|   488|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |[20-30) |   4058|  8627|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |<20     |   3855|  8627|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |>=30    |    714|  8627|
|FULL    |24 months |Keneba         |GAMBIA       |[20-30) |    790|  1714|
|FULL    |24 months |Keneba         |GAMBIA       |<20     |    217|  1714|
|FULL    |24 months |Keneba         |GAMBIA       |>=30    |    707|  1714|
|FULL    |24 months |LCNI-5         |MALAWI       |[20-30) |    250|   475|
|FULL    |24 months |LCNI-5         |MALAWI       |<20     |     80|   475|
|FULL    |24 months |LCNI-5         |MALAWI       |>=30    |    145|   475|
|FULL    |24 months |MAL-ED         |INDIA        |[20-30) |    137|   224|
|FULL    |24 months |MAL-ED         |INDIA        |<20     |     40|   224|
|FULL    |24 months |MAL-ED         |INDIA        |>=30    |     47|   224|
|FULL    |24 months |MAL-ED         |BANGLADESH   |[20-30) |    146|   212|
|FULL    |24 months |MAL-ED         |BANGLADESH   |<20     |     29|   212|
|FULL    |24 months |MAL-ED         |BANGLADESH   |>=30    |     37|   212|
|FULL    |24 months |MAL-ED         |PERU         |[20-30) |     98|   201|
|FULL    |24 months |MAL-ED         |PERU         |<20     |     55|   201|
|FULL    |24 months |MAL-ED         |PERU         |>=30    |     48|   201|
|FULL    |24 months |MAL-ED         |NEPAL        |[20-30) |    153|   228|
|FULL    |24 months |MAL-ED         |NEPAL        |<20     |     12|   228|
|FULL    |24 months |MAL-ED         |NEPAL        |>=30    |     63|   228|
|FULL    |24 months |MAL-ED         |BRAZIL       |[20-30) |    102|   169|
|FULL    |24 months |MAL-ED         |BRAZIL       |<20     |     27|   169|
|FULL    |24 months |MAL-ED         |BRAZIL       |>=30    |     40|   169|
|FULL    |24 months |MAL-ED         |TANZANIA     |[20-30) |    113|   214|
|FULL    |24 months |MAL-ED         |TANZANIA     |<20     |      9|   214|
|FULL    |24 months |MAL-ED         |TANZANIA     |>=30    |     92|   214|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |[20-30) |    106|   238|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |<20     |     39|   238|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |>=30    |     93|   238|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |[20-30) |    241|   425|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |<20     |     85|   425|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |>=30    |     99|   425|
|FULL    |24 months |NIH-Crypto     |BANGLADESH   |[20-30) |    334|   514|
|FULL    |24 months |NIH-Crypto     |BANGLADESH   |<20     |    101|   514|
|FULL    |24 months |NIH-Crypto     |BANGLADESH   |>=30    |     79|   514|
|FULL    |24 months |PROBIT         |BELARUS      |[20-30) |   2893|  4035|
|FULL    |24 months |PROBIT         |BELARUS      |<20     |    369|  4035|
|FULL    |24 months |PROBIT         |BELARUS      |>=30    |    773|  4035|
|FULL    |24 months |PROVIDE        |BANGLADESH   |[20-30) |    409|   578|
|FULL    |24 months |PROVIDE        |BANGLADESH   |<20     |     64|   578|
|FULL    |24 months |PROVIDE        |BANGLADESH   |>=30    |    105|   578|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |[20-30) |      3|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |<20     |      1|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |>=30    |      2|     6|
|FULL    |24 months |Vellore Crypto |INDIA        |[20-30) |    343|   409|
|FULL    |24 months |Vellore Crypto |INDIA        |<20     |     37|   409|
|FULL    |24 months |Vellore Crypto |INDIA        |>=30    |     29|   409|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |   1101|  1638|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |<20     |    219|  1638|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |>=30    |    318|  1638|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |[20-30) |    245|   363|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |<20     |     74|   363|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |>=30    |     44|   363|
|QI      |Birth     |COHORTS        |INDIA        |[20-30) |   2777|  4820|
|QI      |Birth     |COHORTS        |INDIA        |<20     |    759|  4820|
|QI      |Birth     |COHORTS        |INDIA        |>=30    |   1284|  4820|
|QI      |Birth     |COHORTS        |GUATEMALA    |[20-30) |    211|   577|
|QI      |Birth     |COHORTS        |GUATEMALA    |<20     |     93|   577|
|QI      |Birth     |COHORTS        |GUATEMALA    |>=30    |    273|   577|
|QI      |Birth     |COHORTS        |PHILIPPINES  |[20-30) |   1578|  3068|
|QI      |Birth     |COHORTS        |PHILIPPINES  |<20     |    508|  3068|
|QI      |Birth     |COHORTS        |PHILIPPINES  |>=30    |    982|  3068|
|QI      |Birth     |EE             |PAKISTAN     |[20-30) |    165|   375|
|QI      |Birth     |EE             |PAKISTAN     |<20     |      2|   375|
|QI      |Birth     |EE             |PAKISTAN     |>=30    |    208|   375|
|QI      |Birth     |GMS-Nepal      |NEPAL        |[20-30) |    423|   697|
|QI      |Birth     |GMS-Nepal      |NEPAL        |<20     |    139|   697|
|QI      |Birth     |GMS-Nepal      |NEPAL        |>=30    |    135|   697|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |[20-30) |   5346| 11331|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |<20     |   4944| 11331|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |>=30    |   1041| 11331|
|QI      |Birth     |Keneba         |GAMBIA       |[20-30) |    667|  2135|
|QI      |Birth     |Keneba         |GAMBIA       |<20     |    230|  2135|
|QI      |Birth     |Keneba         |GAMBIA       |>=30    |   1238|  2135|
|QI      |Birth     |MAL-ED         |INDIA        |[20-30) |    148|   242|
|QI      |Birth     |MAL-ED         |INDIA        |<20     |     33|   242|
|QI      |Birth     |MAL-ED         |INDIA        |>=30    |     61|   242|
|QI      |Birth     |MAL-ED         |BANGLADESH   |[20-30) |    164|   262|
|QI      |Birth     |MAL-ED         |BANGLADESH   |<20     |     19|   262|
|QI      |Birth     |MAL-ED         |BANGLADESH   |>=30    |     79|   262|
|QI      |Birth     |MAL-ED         |PERU         |[20-30) |    172|   302|
|QI      |Birth     |MAL-ED         |PERU         |<20     |     40|   302|
|QI      |Birth     |MAL-ED         |PERU         |>=30    |     90|   302|
|QI      |Birth     |MAL-ED         |NEPAL        |[20-30) |    155|   236|
|QI      |Birth     |MAL-ED         |NEPAL        |<20     |      9|   236|
|QI      |Birth     |MAL-ED         |NEPAL        |>=30    |     72|   236|
|QI      |Birth     |MAL-ED         |BRAZIL       |[20-30) |    122|   233|
|QI      |Birth     |MAL-ED         |BRAZIL       |<20     |     32|   233|
|QI      |Birth     |MAL-ED         |BRAZIL       |>=30    |     79|   233|
|QI      |Birth     |MAL-ED         |TANZANIA     |[20-30) |     95|   208|
|QI      |Birth     |MAL-ED         |TANZANIA     |<20     |     14|   208|
|QI      |Birth     |MAL-ED         |TANZANIA     |>=30    |     99|   208|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |[20-30) |    121|   314|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |<20     |     59|   314|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |>=30    |    134|   314|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |[20-30) |    333|   608|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |<20     |    145|   608|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |>=30    |    130|   608|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |[20-30) |    505|   753|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |<20     |     68|   753|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |>=30    |    180|   753|
|QI      |Birth     |PROBIT         |BELARUS      |[20-30) |   4226|  6759|
|QI      |Birth     |PROBIT         |BELARUS      |<20     |   1067|  6759|
|QI      |Birth     |PROBIT         |BELARUS      |>=30    |   1466|  6759|
|QI      |Birth     |PROVIDE        |BANGLADESH   |[20-30) |    330|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |<20     |     50|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |>=30    |    151|   531|
|QI      |Birth     |SAS-CompFeed   |INDIA        |[20-30) |    263|   394|
|QI      |Birth     |SAS-CompFeed   |INDIA        |<20     |     74|   394|
|QI      |Birth     |SAS-CompFeed   |INDIA        |>=30    |     57|   394|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |[20-30) |   1346|  2373|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |<20     |    311|  2373|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |>=30    |    716|  2373|
|QI      |Birth     |Vellore Crypto |INDIA        |[20-30) |    290|   405|
|QI      |Birth     |Vellore Crypto |INDIA        |<20     |     43|   405|
|QI      |Birth     |Vellore Crypto |INDIA        |>=30    |     72|   405|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |[20-30) |   8223| 12984|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |<20     |   2591| 12984|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |>=30    |   2170| 12984|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |    234|   347|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |<20     |     68|   347|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |     45|   347|
|QI      |6 months  |COHORTS        |INDIA        |[20-30) |   1764|  3042|
|QI      |6 months  |COHORTS        |INDIA        |<20     |    472|  3042|
|QI      |6 months  |COHORTS        |INDIA        |>=30    |    806|  3042|
|QI      |6 months  |COHORTS        |GUATEMALA    |[20-30) |    151|   408|
|QI      |6 months  |COHORTS        |GUATEMALA    |<20     |     72|   408|
|QI      |6 months  |COHORTS        |GUATEMALA    |>=30    |    185|   408|
|QI      |6 months  |COHORTS        |PHILIPPINES  |[20-30) |   1241|  2406|
|QI      |6 months  |COHORTS        |PHILIPPINES  |<20     |    397|  2406|
|QI      |6 months  |COHORTS        |PHILIPPINES  |>=30    |    768|  2406|
|QI      |6 months  |EE             |PAKISTAN     |[20-30) |    151|   340|
|QI      |6 months  |EE             |PAKISTAN     |<20     |      2|   340|
|QI      |6 months  |EE             |PAKISTAN     |>=30    |    187|   340|
|QI      |6 months  |GMS-Nepal      |NEPAL        |[20-30) |    348|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL        |<20     |    105|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL        |>=30    |     99|   552|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |    112|   248|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |<20     |     51|   248|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |>=30    |     85|   248|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |[20-30) |   2154|  4851|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |<20     |   2342|  4851|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |>=30    |    355|  4851|
|QI      |6 months  |Keneba         |GAMBIA       |[20-30) |    637|  2128|
|QI      |6 months  |Keneba         |GAMBIA       |<20     |    211|  2128|
|QI      |6 months  |Keneba         |GAMBIA       |>=30    |   1280|  2128|
|QI      |6 months  |LCNI-5         |MALAWI       |[20-30) |    404|   756|
|QI      |6 months  |LCNI-5         |MALAWI       |<20     |    141|   756|
|QI      |6 months  |LCNI-5         |MALAWI       |>=30    |    211|   756|
|QI      |6 months  |MAL-ED         |INDIA        |[20-30) |    143|   234|
|QI      |6 months  |MAL-ED         |INDIA        |<20     |     31|   234|
|QI      |6 months  |MAL-ED         |INDIA        |>=30    |     60|   234|
|QI      |6 months  |MAL-ED         |BANGLADESH   |[20-30) |    161|   249|
|QI      |6 months  |MAL-ED         |BANGLADESH   |<20     |     17|   249|
|QI      |6 months  |MAL-ED         |BANGLADESH   |>=30    |     71|   249|
|QI      |6 months  |MAL-ED         |PERU         |[20-30) |    153|   269|
|QI      |6 months  |MAL-ED         |PERU         |<20     |     33|   269|
|QI      |6 months  |MAL-ED         |PERU         |>=30    |     83|   269|
|QI      |6 months  |MAL-ED         |NEPAL        |[20-30) |    143|   222|
|QI      |6 months  |MAL-ED         |NEPAL        |<20     |     10|   222|
|QI      |6 months  |MAL-ED         |NEPAL        |>=30    |     69|   222|
|QI      |6 months  |MAL-ED         |BRAZIL       |[20-30) |    109|   215|
|QI      |6 months  |MAL-ED         |BRAZIL       |<20     |     29|   215|
|QI      |6 months  |MAL-ED         |BRAZIL       |>=30    |     77|   215|
|QI      |6 months  |MAL-ED         |TANZANIA     |[20-30) |    103|   243|
|QI      |6 months  |MAL-ED         |TANZANIA     |<20     |     18|   243|
|QI      |6 months  |MAL-ED         |TANZANIA     |>=30    |    122|   243|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |    110|   285|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |<20     |     53|   285|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |>=30    |    122|   285|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |[20-30) |    206|   390|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |<20     |    100|   390|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |>=30    |     84|   390|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |    352|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |<20     |     50|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |>=30    |    135|   537|
|QI      |6 months  |PROBIT         |BELARUS      |[20-30) |   3246|  5179|
|QI      |6 months  |PROBIT         |BELARUS      |<20     |    862|  5179|
|QI      |6 months  |PROBIT         |BELARUS      |>=30    |   1071|  5179|
|QI      |6 months  |PROVIDE        |BANGLADESH   |[20-30) |    375|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |<20     |     58|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |>=30    |    178|   611|
|QI      |6 months  |SAS-CompFeed   |INDIA        |[20-30) |    183|   272|
|QI      |6 months  |SAS-CompFeed   |INDIA        |<20     |     43|   272|
|QI      |6 months  |SAS-CompFeed   |INDIA        |>=30    |     46|   272|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |    152|   253|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |<20     |     12|   253|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |>=30    |     89|   253|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |   1096|  1939|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |<20     |    252|  1939|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |>=30    |    591|  1939|
|QI      |6 months  |Vellore Crypto |INDIA        |[20-30) |    271|   383|
|QI      |6 months  |Vellore Crypto |INDIA        |<20     |     44|   383|
|QI      |6 months  |Vellore Crypto |INDIA        |>=30    |     68|   383|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |   3991|  6304|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |<20     |   1208|  6304|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |   1105|  6304|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |    100|   145|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |<20     |     26|   145|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |>=30    |     19|   145|
|QI      |24 months |COHORTS        |GUATEMALA    |[20-30) |      8|    31|
|QI      |24 months |COHORTS        |GUATEMALA    |<20     |      8|    31|
|QI      |24 months |COHORTS        |GUATEMALA    |>=30    |     15|    31|
|QI      |24 months |COHORTS        |PHILIPPINES  |[20-30) |    153|   294|
|QI      |24 months |COHORTS        |PHILIPPINES  |<20     |     49|   294|
|QI      |24 months |COHORTS        |PHILIPPINES  |>=30    |     92|   294|
|QI      |24 months |EE             |PAKISTAN     |[20-30) |     46|   113|
|QI      |24 months |EE             |PAKISTAN     |<20     |      1|   113|
|QI      |24 months |EE             |PAKISTAN     |>=30    |     66|   113|
|QI      |24 months |GMS-Nepal      |NEPAL        |[20-30) |    123|   193|
|QI      |24 months |GMS-Nepal      |NEPAL        |<20     |     36|   193|
|QI      |24 months |GMS-Nepal      |NEPAL        |>=30    |     34|   193|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |[20-30) |      2|     3|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |<20     |      0|     3|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |>=30    |      1|     3|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |[20-30) |      8|    19|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |<20     |      2|    19|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |>=30    |      9|    19|
|QI      |24 months |JiVitA-3       |BANGLADESH   |[20-30) |      2|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |<20     |      4|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |>=30    |      0|     6|
|QI      |24 months |Keneba         |GAMBIA       |[20-30) |    115|   407|
|QI      |24 months |Keneba         |GAMBIA       |<20     |     28|   407|
|QI      |24 months |Keneba         |GAMBIA       |>=30    |    264|   407|
|QI      |24 months |LCNI-5         |MALAWI       |[20-30) |     39|    75|
|QI      |24 months |LCNI-5         |MALAWI       |<20     |     17|    75|
|QI      |24 months |LCNI-5         |MALAWI       |>=30    |     19|    75|
|QI      |24 months |MAL-ED         |INDIA        |[20-30) |     66|   102|
|QI      |24 months |MAL-ED         |INDIA        |<20     |     12|   102|
|QI      |24 months |MAL-ED         |INDIA        |>=30    |     24|   102|
|QI      |24 months |MAL-ED         |BANGLADESH   |[20-30) |     65|    97|
|QI      |24 months |MAL-ED         |BANGLADESH   |<20     |      7|    97|
|QI      |24 months |MAL-ED         |BANGLADESH   |>=30    |     25|    97|
|QI      |24 months |MAL-ED         |PERU         |[20-30) |     33|    67|
|QI      |24 months |MAL-ED         |PERU         |<20     |      8|    67|
|QI      |24 months |MAL-ED         |PERU         |>=30    |     26|    67|
|QI      |24 months |MAL-ED         |NEPAL        |[20-30) |     72|   100|
|QI      |24 months |MAL-ED         |NEPAL        |<20     |      0|   100|
|QI      |24 months |MAL-ED         |NEPAL        |>=30    |     28|   100|
|QI      |24 months |MAL-ED         |BRAZIL       |[20-30) |     26|    71|
|QI      |24 months |MAL-ED         |BRAZIL       |<20     |     17|    71|
|QI      |24 months |MAL-ED         |BRAZIL       |>=30    |     28|    71|
|QI      |24 months |MAL-ED         |TANZANIA     |[20-30) |     38|    80|
|QI      |24 months |MAL-ED         |TANZANIA     |<20     |      3|    80|
|QI      |24 months |MAL-ED         |TANZANIA     |>=30    |     39|    80|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |[20-30) |     37|    89|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |<20     |     14|    89|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |>=30    |     38|    89|
|QI      |24 months |NIH-Birth      |BANGLADESH   |[20-30) |     17|    31|
|QI      |24 months |NIH-Birth      |BANGLADESH   |<20     |      7|    31|
|QI      |24 months |NIH-Birth      |BANGLADESH   |>=30    |      7|    31|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |[20-30) |     33|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |<20     |      4|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |>=30    |     10|    47|
|QI      |24 months |PROBIT         |BELARUS      |[20-30) |     96|   143|
|QI      |24 months |PROBIT         |BELARUS      |<20     |     19|   143|
|QI      |24 months |PROBIT         |BELARUS      |>=30    |     28|   143|
|QI      |24 months |PROVIDE        |BANGLADESH   |[20-30) |     32|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |<20     |      5|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |>=30    |     18|    55|
|QI      |24 months |SAS-CompFeed   |INDIA        |[20-30) |      0|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |<20     |      3|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |>=30    |      0|     3|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |[20-30) |      5|     6|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |<20     |      1|     6|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |>=30    |      0|     6|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |[20-30) |     20|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |<20     |      8|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |>=30    |     26|    54|
|QI      |24 months |Vellore Crypto |INDIA        |[20-30) |    116|   161|
|QI      |24 months |Vellore Crypto |INDIA        |<20     |     16|   161|
|QI      |24 months |Vellore Crypto |INDIA        |>=30    |     29|   161|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |     96|   152|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |<20     |     21|   152|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |>=30    |     35|   152|


The following strata were considered:

* syntype: BC, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: BC, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: BC, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: FULL, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: QI, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: Birth, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* syntype: BC, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 24 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: SAS-FoodSuppl, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


