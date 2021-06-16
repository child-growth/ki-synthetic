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
|BC      |Birth     |COHORTS        |INDIA       |1      |    702|  3870|
|BC      |Birth     |COHORTS        |INDIA       |2      |    978|  3870|
|BC      |Birth     |COHORTS        |INDIA       |3+     |   2190|  3870|
|BC      |Birth     |COHORTS        |GUATEMALA   |1      |    115|   751|
|BC      |Birth     |COHORTS        |GUATEMALA   |2      |    120|   751|
|BC      |Birth     |COHORTS        |GUATEMALA   |3+     |    516|   751|
|BC      |Birth     |COHORTS        |PHILIPPINES |1      |    677|  2898|
|BC      |Birth     |COHORTS        |PHILIPPINES |2      |    678|  2898|
|BC      |Birth     |COHORTS        |PHILIPPINES |3+     |   1543|  2898|
|BC      |Birth     |GMS-Nepal      |NEPAL       |1      |    182|   641|
|BC      |Birth     |GMS-Nepal      |NEPAL       |2      |    169|   641|
|BC      |Birth     |GMS-Nepal      |NEPAL       |3+     |    290|   641|
|BC      |Birth     |JiVitA-3       |BANGLADESH  |1      |   6825| 18012|
|BC      |Birth     |JiVitA-3       |BANGLADESH  |2      |   5837| 18012|
|BC      |Birth     |JiVitA-3       |BANGLADESH  |3+     |   5350| 18012|
|BC      |Birth     |Keneba         |GAMBIA      |1      |     45|  1054|
|BC      |Birth     |Keneba         |GAMBIA      |2      |     87|  1054|
|BC      |Birth     |Keneba         |GAMBIA      |3+     |    922|  1054|
|BC      |Birth     |PROVIDE        |BANGLADESH  |1      |    209|   532|
|BC      |Birth     |PROVIDE        |BANGLADESH  |2      |    202|   532|
|BC      |Birth     |PROVIDE        |BANGLADESH  |3+     |    121|   532|
|BC      |Birth     |SAS-CompFeed   |INDIA       |1      |    347|  1103|
|BC      |Birth     |SAS-CompFeed   |INDIA       |2      |    246|  1103|
|BC      |Birth     |SAS-CompFeed   |INDIA       |3+     |    510|  1103|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE    |1      |   5919| 12913|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE    |2      |   4167| 12913|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE    |3+     |   2827| 12913|
|BC      |6 months  |COHORTS        |INDIA       |1      |    797|  4284|
|BC      |6 months  |COHORTS        |INDIA       |2      |   1052|  4284|
|BC      |6 months  |COHORTS        |INDIA       |3+     |   2435|  4284|
|BC      |6 months  |COHORTS        |GUATEMALA   |1      |    142|   958|
|BC      |6 months  |COHORTS        |GUATEMALA   |2      |    145|   958|
|BC      |6 months  |COHORTS        |GUATEMALA   |3+     |    671|   958|
|BC      |6 months  |COHORTS        |PHILIPPINES |1      |    618|  2705|
|BC      |6 months  |COHORTS        |PHILIPPINES |2      |    643|  2705|
|BC      |6 months  |COHORTS        |PHILIPPINES |3+     |   1444|  2705|
|BC      |6 months  |GMS-Nepal      |NEPAL       |1      |    156|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL       |2      |    147|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL       |3+     |    261|   564|
|BC      |6 months  |JiVitA-3       |BANGLADESH  |1      |   6498| 16783|
|BC      |6 months  |JiVitA-3       |BANGLADESH  |2      |   5529| 16783|
|BC      |6 months  |JiVitA-3       |BANGLADESH  |3+     |   4756| 16783|
|BC      |6 months  |Keneba         |GAMBIA      |1      |     68|  1418|
|BC      |6 months  |Keneba         |GAMBIA      |2      |    121|  1418|
|BC      |6 months  |Keneba         |GAMBIA      |3+     |   1229|  1418|
|BC      |6 months  |PROVIDE        |BANGLADESH  |1      |    241|   603|
|BC      |6 months  |PROVIDE        |BANGLADESH  |2      |    209|   603|
|BC      |6 months  |PROVIDE        |BANGLADESH  |3+     |    153|   603|
|BC      |6 months  |SAS-CompFeed   |INDIA       |1      |    409|  1332|
|BC      |6 months  |SAS-CompFeed   |INDIA       |2      |    303|  1332|
|BC      |6 months  |SAS-CompFeed   |INDIA       |3+     |    620|  1332|
|BC      |6 months  |SAS-FoodSuppl  |INDIA       |1      |     21|   380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA       |2      |     62|   380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA       |3+     |    297|   380|
|BC      |6 months  |TanzaniaChild2 |TANZANIA    |1      |    719|  2021|
|BC      |6 months  |TanzaniaChild2 |TANZANIA    |2      |    657|  2021|
|BC      |6 months  |TanzaniaChild2 |TANZANIA    |3+     |    645|  2021|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE    |1      |   3722|  8503|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE    |2      |   2794|  8503|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE    |3+     |   1987|  8503|
|BC      |24 months |COHORTS        |INDIA       |1      |    589|  3282|
|BC      |24 months |COHORTS        |INDIA       |2      |    823|  3282|
|BC      |24 months |COHORTS        |INDIA       |3+     |   1870|  3282|
|BC      |24 months |COHORTS        |GUATEMALA   |1      |    165|  1070|
|BC      |24 months |COHORTS        |GUATEMALA   |2      |    161|  1070|
|BC      |24 months |COHORTS        |GUATEMALA   |3+     |    744|  1070|
|BC      |24 months |COHORTS        |PHILIPPINES |1      |    539|  2448|
|BC      |24 months |COHORTS        |PHILIPPINES |2      |    592|  2448|
|BC      |24 months |COHORTS        |PHILIPPINES |3+     |   1317|  2448|
|BC      |24 months |GMS-Nepal      |NEPAL       |1      |    134|   487|
|BC      |24 months |GMS-Nepal      |NEPAL       |2      |    131|   487|
|BC      |24 months |GMS-Nepal      |NEPAL       |3+     |    222|   487|
|BC      |24 months |JiVitA-3       |BANGLADESH  |1      |   3284|  8602|
|BC      |24 months |JiVitA-3       |BANGLADESH  |2      |   2788|  8602|
|BC      |24 months |JiVitA-3       |BANGLADESH  |3+     |   2530|  8602|
|BC      |24 months |Keneba         |GAMBIA      |1      |     52|  1196|
|BC      |24 months |Keneba         |GAMBIA      |2      |    103|  1196|
|BC      |24 months |Keneba         |GAMBIA      |3+     |   1041|  1196|
|BC      |24 months |PROVIDE        |BANGLADESH  |1      |    231|   579|
|BC      |24 months |PROVIDE        |BANGLADESH  |2      |    203|   579|
|BC      |24 months |PROVIDE        |BANGLADESH  |3+     |    145|   579|
|BC      |24 months |TanzaniaChild2 |TANZANIA    |1      |      4|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA    |2      |      2|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA    |3+     |      0|     6|
|BC      |24 months |ZVITAMBO       |ZIMBABWE    |1      |    169|   432|
|BC      |24 months |ZVITAMBO       |ZIMBABWE    |2      |    148|   432|
|BC      |24 months |ZVITAMBO       |ZIMBABWE    |3+     |    115|   432|
|FULL    |Birth     |COHORTS        |INDIA       |1      |    641|  3855|
|FULL    |Birth     |COHORTS        |INDIA       |2      |    982|  3855|
|FULL    |Birth     |COHORTS        |INDIA       |3+     |   2232|  3855|
|FULL    |Birth     |COHORTS        |GUATEMALA   |1      |     94|   756|
|FULL    |Birth     |COHORTS        |GUATEMALA   |2      |    118|   756|
|FULL    |Birth     |COHORTS        |GUATEMALA   |3+     |    544|   756|
|FULL    |Birth     |COHORTS        |PHILIPPINES |1      |    640|  2899|
|FULL    |Birth     |COHORTS        |PHILIPPINES |2      |    657|  2899|
|FULL    |Birth     |COHORTS        |PHILIPPINES |3+     |   1602|  2899|
|FULL    |Birth     |GMS-Nepal      |NEPAL       |1      |    185|   641|
|FULL    |Birth     |GMS-Nepal      |NEPAL       |2      |    169|   641|
|FULL    |Birth     |GMS-Nepal      |NEPAL       |3+     |    287|   641|
|FULL    |Birth     |JiVitA-3       |BANGLADESH  |1      |   5520| 18014|
|FULL    |Birth     |JiVitA-3       |BANGLADESH  |2      |   6303| 18014|
|FULL    |Birth     |JiVitA-3       |BANGLADESH  |3+     |   6191| 18014|
|FULL    |Birth     |Keneba         |GAMBIA      |1      |    146|  1338|
|FULL    |Birth     |Keneba         |GAMBIA      |2      |    142|  1338|
|FULL    |Birth     |Keneba         |GAMBIA      |3+     |   1050|  1338|
|FULL    |Birth     |PROVIDE        |BANGLADESH  |1      |    202|   532|
|FULL    |Birth     |PROVIDE        |BANGLADESH  |2      |    182|   532|
|FULL    |Birth     |PROVIDE        |BANGLADESH  |3+     |    148|   532|
|FULL    |Birth     |SAS-CompFeed   |INDIA       |1      |    304|  1103|
|FULL    |Birth     |SAS-CompFeed   |INDIA       |2      |    258|  1103|
|FULL    |Birth     |SAS-CompFeed   |INDIA       |3+     |    541|  1103|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE    |1      |   5561| 12916|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE    |2      |   3882| 12916|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE    |3+     |   3473| 12916|
|FULL    |6 months  |COHORTS        |INDIA       |1      |    741|  4285|
|FULL    |6 months  |COHORTS        |INDIA       |2      |   1093|  4285|
|FULL    |6 months  |COHORTS        |INDIA       |3+     |   2451|  4285|
|FULL    |6 months  |COHORTS        |GUATEMALA   |1      |    132|   963|
|FULL    |6 months  |COHORTS        |GUATEMALA   |2      |    139|   963|
|FULL    |6 months  |COHORTS        |GUATEMALA   |3+     |    692|   963|
|FULL    |6 months  |COHORTS        |PHILIPPINES |1      |    574|  2706|
|FULL    |6 months  |COHORTS        |PHILIPPINES |2      |    607|  2706|
|FULL    |6 months  |COHORTS        |PHILIPPINES |3+     |   1525|  2706|
|FULL    |6 months  |GMS-Nepal      |NEPAL       |1      |    153|   564|
|FULL    |6 months  |GMS-Nepal      |NEPAL       |2      |    149|   564|
|FULL    |6 months  |GMS-Nepal      |NEPAL       |3+     |    262|   564|
|FULL    |6 months  |JiVitA-3       |BANGLADESH  |1      |   6398| 16784|
|FULL    |6 months  |JiVitA-3       |BANGLADESH  |2      |   5685| 16784|
|FULL    |6 months  |JiVitA-3       |BANGLADESH  |3+     |   4701| 16784|
|FULL    |6 months  |Keneba         |GAMBIA      |1      |    195|  1623|
|FULL    |6 months  |Keneba         |GAMBIA      |2      |    164|  1623|
|FULL    |6 months  |Keneba         |GAMBIA      |3+     |   1264|  1623|
|FULL    |6 months  |PROVIDE        |BANGLADESH  |1      |    218|   603|
|FULL    |6 months  |PROVIDE        |BANGLADESH  |2      |    222|   603|
|FULL    |6 months  |PROVIDE        |BANGLADESH  |3+     |    163|   603|
|FULL    |6 months  |SAS-CompFeed   |INDIA       |1      |    392|  1334|
|FULL    |6 months  |SAS-CompFeed   |INDIA       |2      |    302|  1334|
|FULL    |6 months  |SAS-CompFeed   |INDIA       |3+     |    640|  1334|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA       |1      |      7|   380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA       |2      |     72|   380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA       |3+     |    301|   380|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA    |1      |    679|  1994|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA    |2      |    657|  1994|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA    |3+     |    658|  1994|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE    |1      |   3392|  8504|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE    |2      |   2587|  8504|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE    |3+     |   2525|  8504|
|FULL    |24 months |COHORTS        |INDIA       |1      |    561|  3354|
|FULL    |24 months |COHORTS        |INDIA       |2      |    837|  3354|
|FULL    |24 months |COHORTS        |INDIA       |3+     |   1956|  3354|
|FULL    |24 months |COHORTS        |GUATEMALA   |1      |    167|  1076|
|FULL    |24 months |COHORTS        |GUATEMALA   |2      |    151|  1076|
|FULL    |24 months |COHORTS        |GUATEMALA   |3+     |    758|  1076|
|FULL    |24 months |COHORTS        |PHILIPPINES |1      |    523|  2449|
|FULL    |24 months |COHORTS        |PHILIPPINES |2      |    544|  2449|
|FULL    |24 months |COHORTS        |PHILIPPINES |3+     |   1382|  2449|
|FULL    |24 months |GMS-Nepal      |NEPAL       |1      |    130|   487|
|FULL    |24 months |GMS-Nepal      |NEPAL       |2      |    130|   487|
|FULL    |24 months |GMS-Nepal      |NEPAL       |3+     |    227|   487|
|FULL    |24 months |JiVitA-3       |BANGLADESH  |1      |   3166|  8603|
|FULL    |24 months |JiVitA-3       |BANGLADESH  |2      |   2909|  8603|
|FULL    |24 months |JiVitA-3       |BANGLADESH  |3+     |   2528|  8603|
|FULL    |24 months |Keneba         |GAMBIA      |1      |    137|  1376|
|FULL    |24 months |Keneba         |GAMBIA      |2      |    139|  1376|
|FULL    |24 months |Keneba         |GAMBIA      |3+     |   1100|  1376|
|FULL    |24 months |PROVIDE        |BANGLADESH  |1      |    211|   579|
|FULL    |24 months |PROVIDE        |BANGLADESH  |2      |    213|   579|
|FULL    |24 months |PROVIDE        |BANGLADESH  |3+     |    155|   579|
|FULL    |24 months |TanzaniaChild2 |TANZANIA    |1      |      1|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA    |2      |      1|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA    |3+     |      4|     6|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE    |1      |    161|   432|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE    |2      |    123|   432|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE    |3+     |    148|   432|
|QI      |Birth     |COHORTS        |INDIA       |1      |    719|  4160|
|QI      |Birth     |COHORTS        |INDIA       |2      |   1069|  4160|
|QI      |Birth     |COHORTS        |INDIA       |3+     |   2372|  4160|
|QI      |Birth     |COHORTS        |GUATEMALA   |1      |     90|   561|
|QI      |Birth     |COHORTS        |GUATEMALA   |2      |     78|   561|
|QI      |Birth     |COHORTS        |GUATEMALA   |3+     |    393|   561|
|QI      |Birth     |COHORTS        |PHILIPPINES |1      |    657|  3042|
|QI      |Birth     |COHORTS        |PHILIPPINES |2      |    677|  3042|
|QI      |Birth     |COHORTS        |PHILIPPINES |3+     |   1708|  3042|
|QI      |Birth     |GMS-Nepal      |NEPAL       |1      |    200|   692|
|QI      |Birth     |GMS-Nepal      |NEPAL       |2      |    175|   692|
|QI      |Birth     |GMS-Nepal      |NEPAL       |3+     |    317|   692|
|QI      |Birth     |JiVitA-3       |BANGLADESH  |1      |   3827| 11303|
|QI      |Birth     |JiVitA-3       |BANGLADESH  |2      |   3866| 11303|
|QI      |Birth     |JiVitA-3       |BANGLADESH  |3+     |   3610| 11303|
|QI      |Birth     |Keneba         |GAMBIA      |1      |     77|  1906|
|QI      |Birth     |Keneba         |GAMBIA      |2      |    182|  1906|
|QI      |Birth     |Keneba         |GAMBIA      |3+     |   1647|  1906|
|QI      |Birth     |PROVIDE        |BANGLADESH  |1      |    189|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH  |2      |    178|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH  |3+     |    164|   531|
|QI      |Birth     |SAS-CompFeed   |INDIA       |1      |    126|   396|
|QI      |Birth     |SAS-CompFeed   |INDIA       |2      |     94|   396|
|QI      |Birth     |SAS-CompFeed   |INDIA       |3+     |    176|   396|
|QI      |Birth     |TanzaniaChild2 |TANZANIA    |1      |    843|  2364|
|QI      |Birth     |TanzaniaChild2 |TANZANIA    |2      |    751|  2364|
|QI      |Birth     |TanzaniaChild2 |TANZANIA    |3+     |    770|  2364|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE    |1      |   5477| 12854|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE    |2      |   3902| 12854|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE    |3+     |   3475| 12854|
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
|QI      |6 months  |JiVitA-3       |BANGLADESH  |1      |   1822|  4853|
|QI      |6 months  |JiVitA-3       |BANGLADESH  |2      |   1657|  4853|
|QI      |6 months  |JiVitA-3       |BANGLADESH  |3+     |   1374|  4853|
|QI      |6 months  |Keneba         |GAMBIA      |1      |     64|  1608|
|QI      |6 months  |Keneba         |GAMBIA      |2      |    158|  1608|
|QI      |6 months  |Keneba         |GAMBIA      |3+     |   1386|  1608|
|QI      |6 months  |PROVIDE        |BANGLADESH  |1      |    221|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH  |2      |    209|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH  |3+     |    181|   611|
|QI      |6 months  |SAS-CompFeed   |INDIA       |1      |     97|   272|
|QI      |6 months  |SAS-CompFeed   |INDIA       |2      |     59|   272|
|QI      |6 months  |SAS-CompFeed   |INDIA       |3+     |    116|   272|
|QI      |6 months  |SAS-FoodSuppl  |INDIA       |1      |      7|   255|
|QI      |6 months  |SAS-FoodSuppl  |INDIA       |2      |     30|   255|
|QI      |6 months  |SAS-FoodSuppl  |INDIA       |3+     |    218|   255|
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


