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

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_nrooms
* impsan
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* syntype
* agecat
* studyid
* country

## Data Summary

|syntype |agecat    |studyid        |country     |parity | n_cell|     n|
|:-------|:---------|:--------------|:-----------|:------|------:|-----:|
|BC      |Birth     |COHORTS        |INDIA       |1      |    758|  4149|
|BC      |Birth     |COHORTS        |INDIA       |2      |   1060|  4149|
|BC      |Birth     |COHORTS        |INDIA       |3+     |   2331|  4149|
|BC      |Birth     |COHORTS        |GUATEMALA   |1      |    129|   846|
|BC      |Birth     |COHORTS        |GUATEMALA   |2      |    131|   846|
|BC      |Birth     |COHORTS        |GUATEMALA   |3+     |    586|   846|
|BC      |Birth     |COHORTS        |PHILIPPINES |1      |    702|  3049|
|BC      |Birth     |COHORTS        |PHILIPPINES |2      |    718|  3049|
|BC      |Birth     |COHORTS        |PHILIPPINES |3+     |   1629|  3049|
|BC      |Birth     |GMS-Nepal      |NEPAL       |1      |    199|   696|
|BC      |Birth     |GMS-Nepal      |NEPAL       |2      |    184|   696|
|BC      |Birth     |GMS-Nepal      |NEPAL       |3+     |    313|   696|
|BC      |Birth     |JiVitA-3       |BANGLADESH  |1      |   8485| 22453|
|BC      |Birth     |JiVitA-3       |BANGLADESH  |2      |   7328| 22453|
|BC      |Birth     |JiVitA-3       |BANGLADESH  |3+     |   6640| 22453|
|BC      |Birth     |Keneba         |GAMBIA      |1      |     48|  1110|
|BC      |Birth     |Keneba         |GAMBIA      |2      |     90|  1110|
|BC      |Birth     |Keneba         |GAMBIA      |3+     |    972|  1110|
|BC      |Birth     |PROVIDE        |BANGLADESH  |1      |    213|   539|
|BC      |Birth     |PROVIDE        |BANGLADESH  |2      |    204|   539|
|BC      |Birth     |PROVIDE        |BANGLADESH  |3+     |    122|   539|
|BC      |Birth     |SAS-CompFeed   |INDIA       |1      |    397|  1251|
|BC      |Birth     |SAS-CompFeed   |INDIA       |2      |    269|  1251|
|BC      |Birth     |SAS-CompFeed   |INDIA       |3+     |    585|  1251|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE    |1      |   6380| 13870|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE    |2      |   4472| 13870|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE    |3+     |   3018| 13870|
|BC      |6 months  |COHORTS        |INDIA       |1      |    797|  4290|
|BC      |6 months  |COHORTS        |INDIA       |2      |   1054|  4290|
|BC      |6 months  |COHORTS        |INDIA       |3+     |   2439|  4290|
|BC      |6 months  |COHORTS        |GUATEMALA   |1      |    142|   956|
|BC      |6 months  |COHORTS        |GUATEMALA   |2      |    143|   956|
|BC      |6 months  |COHORTS        |GUATEMALA   |3+     |    671|   956|
|BC      |6 months  |COHORTS        |PHILIPPINES |1      |    618|  2707|
|BC      |6 months  |COHORTS        |PHILIPPINES |2      |    643|  2707|
|BC      |6 months  |COHORTS        |PHILIPPINES |3+     |   1446|  2707|
|BC      |6 months  |GMS-Nepal      |NEPAL       |1      |    156|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL       |2      |    147|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL       |3+     |    261|   564|
|BC      |6 months  |JiVitA-3       |BANGLADESH  |1      |   6507| 16810|
|BC      |6 months  |JiVitA-3       |BANGLADESH  |2      |   5537| 16810|
|BC      |6 months  |JiVitA-3       |BANGLADESH  |3+     |   4766| 16810|
|BC      |6 months  |Keneba         |GAMBIA      |1      |     68|  1418|
|BC      |6 months  |Keneba         |GAMBIA      |2      |    121|  1418|
|BC      |6 months  |Keneba         |GAMBIA      |3+     |   1229|  1418|
|BC      |6 months  |PROVIDE        |BANGLADESH  |1      |    242|   604|
|BC      |6 months  |PROVIDE        |BANGLADESH  |2      |    209|   604|
|BC      |6 months  |PROVIDE        |BANGLADESH  |3+     |    153|   604|
|BC      |6 months  |SAS-CompFeed   |INDIA       |1      |    409|  1334|
|BC      |6 months  |SAS-CompFeed   |INDIA       |2      |    305|  1334|
|BC      |6 months  |SAS-CompFeed   |INDIA       |3+     |    620|  1334|
|BC      |6 months  |SAS-FoodSuppl  |INDIA       |1      |     21|   380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA       |2      |     62|   380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA       |3+     |    297|   380|
|BC      |6 months  |TanzaniaChild2 |TANZANIA    |1      |    720|  2022|
|BC      |6 months  |TanzaniaChild2 |TANZANIA    |2      |    657|  2022|
|BC      |6 months  |TanzaniaChild2 |TANZANIA    |3+     |    645|  2022|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE    |1      |   3795|  8667|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE    |2      |   2838|  8667|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE    |3+     |   2034|  8667|
|BC      |24 months |COHORTS        |INDIA       |1      |    593|  3305|
|BC      |24 months |COHORTS        |INDIA       |2      |    828|  3305|
|BC      |24 months |COHORTS        |INDIA       |3+     |   1884|  3305|
|BC      |24 months |COHORTS        |GUATEMALA   |1      |    163|  1058|
|BC      |24 months |COHORTS        |GUATEMALA   |2      |    158|  1058|
|BC      |24 months |COHORTS        |GUATEMALA   |3+     |    737|  1058|
|BC      |24 months |COHORTS        |PHILIPPINES |1      |    540|  2444|
|BC      |24 months |COHORTS        |PHILIPPINES |2      |    591|  2444|
|BC      |24 months |COHORTS        |PHILIPPINES |3+     |   1313|  2444|
|BC      |24 months |GMS-Nepal      |NEPAL       |1      |    134|   488|
|BC      |24 months |GMS-Nepal      |NEPAL       |2      |    132|   488|
|BC      |24 months |GMS-Nepal      |NEPAL       |3+     |    222|   488|
|BC      |24 months |JiVitA-3       |BANGLADESH  |1      |   3294|  8631|
|BC      |24 months |JiVitA-3       |BANGLADESH  |2      |   2797|  8631|
|BC      |24 months |JiVitA-3       |BANGLADESH  |3+     |   2540|  8631|
|BC      |24 months |Keneba         |GAMBIA      |1      |     52|  1194|
|BC      |24 months |Keneba         |GAMBIA      |2      |    102|  1194|
|BC      |24 months |Keneba         |GAMBIA      |3+     |   1040|  1194|
|BC      |24 months |PROVIDE        |BANGLADESH  |1      |    230|   578|
|BC      |24 months |PROVIDE        |BANGLADESH  |2      |    203|   578|
|BC      |24 months |PROVIDE        |BANGLADESH  |3+     |    145|   578|
|BC      |24 months |TanzaniaChild2 |TANZANIA    |1      |      4|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA    |2      |      2|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA    |3+     |      0|     6|
|BC      |24 months |ZVITAMBO       |ZIMBABWE    |1      |    694|  1638|
|BC      |24 months |ZVITAMBO       |ZIMBABWE    |2      |    553|  1638|
|BC      |24 months |ZVITAMBO       |ZIMBABWE    |3+     |    391|  1638|
|FULL    |Birth     |COHORTS        |INDIA       |1      |    696|  4122|
|FULL    |Birth     |COHORTS        |INDIA       |2      |   1037|  4122|
|FULL    |Birth     |COHORTS        |INDIA       |3+     |   2389|  4122|
|FULL    |Birth     |COHORTS        |GUATEMALA   |1      |    112|   852|
|FULL    |Birth     |COHORTS        |GUATEMALA   |2      |    137|   852|
|FULL    |Birth     |COHORTS        |GUATEMALA   |3+     |    603|   852|
|FULL    |Birth     |COHORTS        |PHILIPPINES |1      |    675|  3050|
|FULL    |Birth     |COHORTS        |PHILIPPINES |2      |    687|  3050|
|FULL    |Birth     |COHORTS        |PHILIPPINES |3+     |   1688|  3050|
|FULL    |Birth     |GMS-Nepal      |NEPAL       |1      |    211|   696|
|FULL    |Birth     |GMS-Nepal      |NEPAL       |2      |    180|   696|
|FULL    |Birth     |GMS-Nepal      |NEPAL       |3+     |    305|   696|
|FULL    |Birth     |JiVitA-3       |BANGLADESH  |1      |   7456| 22455|
|FULL    |Birth     |JiVitA-3       |BANGLADESH  |2      |   7615| 22455|
|FULL    |Birth     |JiVitA-3       |BANGLADESH  |3+     |   7384| 22455|
|FULL    |Birth     |Keneba         |GAMBIA      |1      |    156|  1407|
|FULL    |Birth     |Keneba         |GAMBIA      |2      |    146|  1407|
|FULL    |Birth     |Keneba         |GAMBIA      |3+     |   1105|  1407|
|FULL    |Birth     |PROVIDE        |BANGLADESH  |1      |    206|   539|
|FULL    |Birth     |PROVIDE        |BANGLADESH  |2      |    183|   539|
|FULL    |Birth     |PROVIDE        |BANGLADESH  |3+     |    150|   539|
|FULL    |Birth     |SAS-CompFeed   |INDIA       |1      |    361|  1252|
|FULL    |Birth     |SAS-CompFeed   |INDIA       |2      |    289|  1252|
|FULL    |Birth     |SAS-CompFeed   |INDIA       |3+     |    602|  1252|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE    |1      |   5989| 13874|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE    |2      |   4144| 13874|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE    |3+     |   3741| 13874|
|FULL    |6 months  |COHORTS        |INDIA       |1      |    740|  4291|
|FULL    |6 months  |COHORTS        |INDIA       |2      |   1096|  4291|
|FULL    |6 months  |COHORTS        |INDIA       |3+     |   2455|  4291|
|FULL    |6 months  |COHORTS        |GUATEMALA   |1      |    132|   961|
|FULL    |6 months  |COHORTS        |GUATEMALA   |2      |    139|   961|
|FULL    |6 months  |COHORTS        |GUATEMALA   |3+     |    690|   961|
|FULL    |6 months  |COHORTS        |PHILIPPINES |1      |    574|  2708|
|FULL    |6 months  |COHORTS        |PHILIPPINES |2      |    606|  2708|
|FULL    |6 months  |COHORTS        |PHILIPPINES |3+     |   1528|  2708|
|FULL    |6 months  |GMS-Nepal      |NEPAL       |1      |    153|   564|
|FULL    |6 months  |GMS-Nepal      |NEPAL       |2      |    149|   564|
|FULL    |6 months  |GMS-Nepal      |NEPAL       |3+     |    262|   564|
|FULL    |6 months  |JiVitA-3       |BANGLADESH  |1      |   6396| 16811|
|FULL    |6 months  |JiVitA-3       |BANGLADESH  |2      |   5700| 16811|
|FULL    |6 months  |JiVitA-3       |BANGLADESH  |3+     |   4715| 16811|
|FULL    |6 months  |Keneba         |GAMBIA      |1      |    194|  1623|
|FULL    |6 months  |Keneba         |GAMBIA      |2      |    164|  1623|
|FULL    |6 months  |Keneba         |GAMBIA      |3+     |   1265|  1623|
|FULL    |6 months  |PROVIDE        |BANGLADESH  |1      |    218|   604|
|FULL    |6 months  |PROVIDE        |BANGLADESH  |2      |    222|   604|
|FULL    |6 months  |PROVIDE        |BANGLADESH  |3+     |    164|   604|
|FULL    |6 months  |SAS-CompFeed   |INDIA       |1      |    392|  1336|
|FULL    |6 months  |SAS-CompFeed   |INDIA       |2      |    304|  1336|
|FULL    |6 months  |SAS-CompFeed   |INDIA       |3+     |    640|  1336|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA       |1      |      7|   380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA       |2      |     72|   380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA       |3+     |    301|   380|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA    |1      |    680|  1995|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA    |2      |    657|  1995|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA    |3+     |    658|  1995|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE    |1      |   3466|  8668|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE    |2      |   2638|  8668|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE    |3+     |   2564|  8668|
|FULL    |24 months |COHORTS        |INDIA       |1      |    564|  3380|
|FULL    |24 months |COHORTS        |INDIA       |2      |    848|  3380|
|FULL    |24 months |COHORTS        |INDIA       |3+     |   1968|  3380|
|FULL    |24 months |COHORTS        |GUATEMALA   |1      |    166|  1064|
|FULL    |24 months |COHORTS        |GUATEMALA   |2      |    151|  1064|
|FULL    |24 months |COHORTS        |GUATEMALA   |3+     |    747|  1064|
|FULL    |24 months |COHORTS        |PHILIPPINES |1      |    524|  2445|
|FULL    |24 months |COHORTS        |PHILIPPINES |2      |    544|  2445|
|FULL    |24 months |COHORTS        |PHILIPPINES |3+     |   1377|  2445|
|FULL    |24 months |GMS-Nepal      |NEPAL       |1      |    130|   488|
|FULL    |24 months |GMS-Nepal      |NEPAL       |2      |    130|   488|
|FULL    |24 months |GMS-Nepal      |NEPAL       |3+     |    228|   488|
|FULL    |24 months |JiVitA-3       |BANGLADESH  |1      |   3173|  8632|
|FULL    |24 months |JiVitA-3       |BANGLADESH  |2      |   2923|  8632|
|FULL    |24 months |JiVitA-3       |BANGLADESH  |3+     |   2536|  8632|
|FULL    |24 months |Keneba         |GAMBIA      |1      |    137|  1376|
|FULL    |24 months |Keneba         |GAMBIA      |2      |    139|  1376|
|FULL    |24 months |Keneba         |GAMBIA      |3+     |   1100|  1376|
|FULL    |24 months |PROVIDE        |BANGLADESH  |1      |    211|   578|
|FULL    |24 months |PROVIDE        |BANGLADESH  |2      |    213|   578|
|FULL    |24 months |PROVIDE        |BANGLADESH  |3+     |    154|   578|
|FULL    |24 months |TanzaniaChild2 |TANZANIA    |1      |      1|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA    |2      |      1|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA    |3+     |      4|     6|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE    |1      |    640|  1639|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE    |2      |    507|  1639|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE    |3+     |    492|  1639|
|QI      |Birth     |COHORTS        |INDIA       |1      |    729|  4228|
|QI      |Birth     |COHORTS        |INDIA       |2      |   1085|  4228|
|QI      |Birth     |COHORTS        |INDIA       |3+     |   2414|  4228|
|QI      |Birth     |COHORTS        |GUATEMALA   |1      |     91|   571|
|QI      |Birth     |COHORTS        |GUATEMALA   |2      |     79|   571|
|QI      |Birth     |COHORTS        |GUATEMALA   |3+     |    401|   571|
|QI      |Birth     |COHORTS        |PHILIPPINES |1      |    671|  3064|
|QI      |Birth     |COHORTS        |PHILIPPINES |2      |    679|  3064|
|QI      |Birth     |COHORTS        |PHILIPPINES |3+     |   1714|  3064|
|QI      |Birth     |GMS-Nepal      |NEPAL       |1      |    201|   697|
|QI      |Birth     |GMS-Nepal      |NEPAL       |2      |    178|   697|
|QI      |Birth     |GMS-Nepal      |NEPAL       |3+     |    318|   697|
|QI      |Birth     |JiVitA-3       |BANGLADESH  |1      |   3845| 11334|
|QI      |Birth     |JiVitA-3       |BANGLADESH  |2      |   3881| 11334|
|QI      |Birth     |JiVitA-3       |BANGLADESH  |3+     |   3608| 11334|
|QI      |Birth     |Keneba         |GAMBIA      |1      |     79|  1934|
|QI      |Birth     |Keneba         |GAMBIA      |2      |    185|  1934|
|QI      |Birth     |Keneba         |GAMBIA      |3+     |   1670|  1934|
|QI      |Birth     |PROVIDE        |BANGLADESH  |1      |    189|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH  |2      |    178|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH  |3+     |    164|   531|
|QI      |Birth     |SAS-CompFeed   |INDIA       |1      |    126|   394|
|QI      |Birth     |SAS-CompFeed   |INDIA       |2      |     93|   394|
|QI      |Birth     |SAS-CompFeed   |INDIA       |3+     |    175|   394|
|QI      |Birth     |TanzaniaChild2 |TANZANIA    |1      |    843|  2364|
|QI      |Birth     |TanzaniaChild2 |TANZANIA    |2      |    751|  2364|
|QI      |Birth     |TanzaniaChild2 |TANZANIA    |3+     |    770|  2364|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE    |1      |   5539| 12987|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE    |2      |   3941| 12987|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE    |3+     |   3507| 12987|
|QI      |6 months  |COHORTS        |INDIA       |1      |    502|  2668|
|QI      |6 months  |COHORTS        |INDIA       |2      |    687|  2668|
|QI      |6 months  |COHORTS        |INDIA       |3+     |   1479|  2668|
|QI      |6 months  |COHORTS        |GUATEMALA   |1      |     72|   406|
|QI      |6 months  |COHORTS        |GUATEMALA   |2      |     54|   406|
|QI      |6 months  |COHORTS        |GUATEMALA   |3+     |    280|   406|
|QI      |6 months  |COHORTS        |PHILIPPINES |1      |    524|  2402|
|QI      |6 months  |COHORTS        |PHILIPPINES |2      |    530|  2402|
|QI      |6 months  |COHORTS        |PHILIPPINES |3+     |   1348|  2402|
|QI      |6 months  |GMS-Nepal      |NEPAL       |1      |    157|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL       |2      |    139|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL       |3+     |    256|   552|
|QI      |6 months  |JiVitA-3       |BANGLADESH  |1      |   1821|  4852|
|QI      |6 months  |JiVitA-3       |BANGLADESH  |2      |   1657|  4852|
|QI      |6 months  |JiVitA-3       |BANGLADESH  |3+     |   1374|  4852|
|QI      |6 months  |Keneba         |GAMBIA      |1      |     64|  1608|
|QI      |6 months  |Keneba         |GAMBIA      |2      |    158|  1608|
|QI      |6 months  |Keneba         |GAMBIA      |3+     |   1386|  1608|
|QI      |6 months  |PROVIDE        |BANGLADESH  |1      |    221|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH  |2      |    209|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH  |3+     |    181|   611|
|QI      |6 months  |SAS-CompFeed   |INDIA       |1      |     97|   272|
|QI      |6 months  |SAS-CompFeed   |INDIA       |2      |     59|   272|
|QI      |6 months  |SAS-CompFeed   |INDIA       |3+     |    116|   272|
|QI      |6 months  |SAS-FoodSuppl  |INDIA       |1      |      7|   253|
|QI      |6 months  |SAS-FoodSuppl  |INDIA       |2      |     29|   253|
|QI      |6 months  |SAS-FoodSuppl  |INDIA       |3+     |    217|   253|
|QI      |6 months  |TanzaniaChild2 |TANZANIA    |1      |    673|  1931|
|QI      |6 months  |TanzaniaChild2 |TANZANIA    |2      |    615|  1931|
|QI      |6 months  |TanzaniaChild2 |TANZANIA    |3+     |    643|  1931|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE    |1      |   2569|  6305|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE    |2      |   1970|  6305|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE    |3+     |   1766|  6305|
|QI      |24 months |COHORTS        |GUATEMALA   |1      |      5|    31|
|QI      |24 months |COHORTS        |GUATEMALA   |2      |      4|    31|
|QI      |24 months |COHORTS        |GUATEMALA   |3+     |     22|    31|
|QI      |24 months |COHORTS        |PHILIPPINES |1      |     49|   294|
|QI      |24 months |COHORTS        |PHILIPPINES |2      |     72|   294|
|QI      |24 months |COHORTS        |PHILIPPINES |3+     |    173|   294|
|QI      |24 months |GMS-Nepal      |NEPAL       |1      |     54|   193|
|QI      |24 months |GMS-Nepal      |NEPAL       |2      |     52|   193|
|QI      |24 months |GMS-Nepal      |NEPAL       |3+     |     87|   193|
|QI      |24 months |JiVitA-3       |BANGLADESH  |1      |      4|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH  |2      |      1|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH  |3+     |      1|     6|
|QI      |24 months |Keneba         |GAMBIA      |1      |     10|   311|
|QI      |24 months |Keneba         |GAMBIA      |2      |     30|   311|
|QI      |24 months |Keneba         |GAMBIA      |3+     |    271|   311|
|QI      |24 months |PROVIDE        |BANGLADESH  |1      |     15|    55|
|QI      |24 months |PROVIDE        |BANGLADESH  |2      |     19|    55|
|QI      |24 months |PROVIDE        |BANGLADESH  |3+     |     21|    55|
|QI      |24 months |SAS-CompFeed   |INDIA       |1      |      1|     3|
|QI      |24 months |SAS-CompFeed   |INDIA       |2      |      1|     3|
|QI      |24 months |SAS-CompFeed   |INDIA       |3+     |      1|     3|
|QI      |24 months |SAS-FoodSuppl  |INDIA       |1      |      0|     6|
|QI      |24 months |SAS-FoodSuppl  |INDIA       |2      |      1|     6|
|QI      |24 months |SAS-FoodSuppl  |INDIA       |3+     |      5|     6|
|QI      |24 months |TanzaniaChild2 |TANZANIA    |1      |     18|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA    |2      |     14|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA    |3+     |     22|    54|
|QI      |24 months |ZVITAMBO       |ZIMBABWE    |1      |     41|   152|
|QI      |24 months |ZVITAMBO       |ZIMBABWE    |2      |     58|   152|
|QI      |24 months |ZVITAMBO       |ZIMBABWE    |3+     |     53|   152|


The following strata were considered:

* syntype: BC, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: BC, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: Birth, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: SAS-FoodSuppl, country: INDIA





```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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


