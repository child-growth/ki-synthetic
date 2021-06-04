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

**Intervention Variable:** birthlen

**Adjustment Set:**

* sex
* arm
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |birthlen   | n_cell|     n|
|:---------|:--------------|:------------|:----------|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |>=50 cm    |     13|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |<48 cm     |     33|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |[48-50) cm |     40|    86|
|Birth     |CMIN           |BANGLADESH   |>=50 cm    |      2|    19|
|Birth     |CMIN           |BANGLADESH   |<48 cm     |     12|    19|
|Birth     |CMIN           |BANGLADESH   |[48-50) cm |      5|    19|
|Birth     |COHORTS        |INDIA        |>=50 cm    |   1404|  6193|
|Birth     |COHORTS        |INDIA        |<48 cm     |   2354|  6193|
|Birth     |COHORTS        |INDIA        |[48-50) cm |   2435|  6193|
|Birth     |COHORTS        |GUATEMALA    |>=50 cm    |    396|   756|
|Birth     |COHORTS        |GUATEMALA    |<48 cm     |    132|   756|
|Birth     |COHORTS        |GUATEMALA    |[48-50) cm |    228|   756|
|Birth     |COHORTS        |PHILIPPINES  |>=50 cm    |   1110|  2899|
|Birth     |COHORTS        |PHILIPPINES  |<48 cm     |    651|  2899|
|Birth     |COHORTS        |PHILIPPINES  |[48-50) cm |   1138|  2899|
|Birth     |CONTENT        |PERU         |>=50 cm    |      1|     2|
|Birth     |CONTENT        |PERU         |<48 cm     |      1|     2|
|Birth     |CONTENT        |PERU         |[48-50) cm |      0|     2|
|Birth     |EE             |PAKISTAN     |>=50 cm    |     19|   177|
|Birth     |EE             |PAKISTAN     |<48 cm     |    112|   177|
|Birth     |EE             |PAKISTAN     |[48-50) cm |     46|   177|
|Birth     |GMS-Nepal      |NEPAL        |>=50 cm    |    103|   641|
|Birth     |GMS-Nepal      |NEPAL        |<48 cm     |    330|   641|
|Birth     |GMS-Nepal      |NEPAL        |[48-50) cm |    208|   641|
|Birth     |JiVitA-3       |BANGLADESH   |>=50 cm    |   1213| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |<48 cm     |  11719| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |[48-50) cm |   5082| 18014|
|Birth     |JiVitA-4       |BANGLADESH   |>=50 cm    |    178|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |<48 cm     |   1487|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |[48-50) cm |    731|  2396|
|Birth     |Keneba         |GAMBIA       |>=50 cm    |    736|  1465|
|Birth     |Keneba         |GAMBIA       |<48 cm     |    240|  1465|
|Birth     |Keneba         |GAMBIA       |[48-50) cm |    489|  1465|
|Birth     |MAL-ED         |INDIA        |>=50 cm    |      9|    45|
|Birth     |MAL-ED         |INDIA        |<48 cm     |     20|    45|
|Birth     |MAL-ED         |INDIA        |[48-50) cm |     16|    45|
|Birth     |MAL-ED         |BANGLADESH   |>=50 cm    |     35|   215|
|Birth     |MAL-ED         |BANGLADESH   |<48 cm     |    101|   215|
|Birth     |MAL-ED         |BANGLADESH   |[48-50) cm |     79|   215|
|Birth     |MAL-ED         |PERU         |>=50 cm    |     41|   228|
|Birth     |MAL-ED         |PERU         |<48 cm     |     87|   228|
|Birth     |MAL-ED         |PERU         |[48-50) cm |    100|   228|
|Birth     |MAL-ED         |NEPAL        |>=50 cm    |      7|    26|
|Birth     |MAL-ED         |NEPAL        |<48 cm     |     11|    26|
|Birth     |MAL-ED         |NEPAL        |[48-50) cm |      8|    26|
|Birth     |MAL-ED         |BRAZIL       |>=50 cm    |     23|    62|
|Birth     |MAL-ED         |BRAZIL       |<48 cm     |     15|    62|
|Birth     |MAL-ED         |BRAZIL       |[48-50) cm |     24|    62|
|Birth     |MAL-ED         |TANZANIA     |>=50 cm    |     20|   115|
|Birth     |MAL-ED         |TANZANIA     |<48 cm     |     34|   115|
|Birth     |MAL-ED         |TANZANIA     |[48-50) cm |     61|   115|
|Birth     |MAL-ED         |SOUTH AFRICA |>=50 cm    |     34|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |<48 cm     |     34|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |[48-50) cm |     52|   120|
|Birth     |NIH-Birth      |BANGLADESH   |>=50 cm    |    121|   575|
|Birth     |NIH-Birth      |BANGLADESH   |<48 cm     |    224|   575|
|Birth     |NIH-Birth      |BANGLADESH   |[48-50) cm |    230|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |>=50 cm    |    160|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |<48 cm     |    267|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |[48-50) cm |    280|   707|
|Birth     |PROBIT         |BELARUS      |>=50 cm    |  12557| 13817|
|Birth     |PROBIT         |BELARUS      |<48 cm     |    140| 13817|
|Birth     |PROBIT         |BELARUS      |[48-50) cm |   1120| 13817|
|Birth     |PROVIDE        |BANGLADESH   |>=50 cm    |    121|   532|
|Birth     |PROVIDE        |BANGLADESH   |<48 cm     |    189|   532|
|Birth     |PROVIDE        |BANGLADESH   |[48-50) cm |    222|   532|
|Birth     |ResPak         |PAKISTAN     |>=50 cm    |     10|    38|
|Birth     |ResPak         |PAKISTAN     |<48 cm     |     15|    38|
|Birth     |ResPak         |PAKISTAN     |[48-50) cm |     13|    38|
|Birth     |SAS-CompFeed   |INDIA        |>=50 cm    |    116|  1103|
|Birth     |SAS-CompFeed   |INDIA        |<48 cm     |    590|  1103|
|Birth     |SAS-CompFeed   |INDIA        |[48-50) cm |    397|  1103|
|Birth     |Vellore Crypto |INDIA        |>=50 cm    |    120|   343|
|Birth     |Vellore Crypto |INDIA        |<48 cm     |     87|   343|
|Birth     |Vellore Crypto |INDIA        |[48-50) cm |    136|   343|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=50 cm    |   3997| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |<48 cm     |   3641| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |[48-50) cm |   5279| 12917|
|6 months  |CMC-V-BCS-2002 |INDIA        |>=50 cm    |     16|   105|
|6 months  |CMC-V-BCS-2002 |INDIA        |<48 cm     |     49|   105|
|6 months  |CMC-V-BCS-2002 |INDIA        |[48-50) cm |     40|   105|
|6 months  |CMIN           |BANGLADESH   |>=50 cm    |      0|    12|
|6 months  |CMIN           |BANGLADESH   |<48 cm     |      7|    12|
|6 months  |CMIN           |BANGLADESH   |[48-50) cm |      5|    12|
|6 months  |COHORTS        |INDIA        |>=50 cm    |   1329|  6127|
|6 months  |COHORTS        |INDIA        |<48 cm     |   2527|  6127|
|6 months  |COHORTS        |INDIA        |[48-50) cm |   2271|  6127|
|6 months  |COHORTS        |GUATEMALA    |>=50 cm    |    351|   689|
|6 months  |COHORTS        |GUATEMALA    |<48 cm     |    134|   689|
|6 months  |COHORTS        |GUATEMALA    |[48-50) cm |    204|   689|
|6 months  |COHORTS        |PHILIPPINES  |>=50 cm    |    989|  2699|
|6 months  |COHORTS        |PHILIPPINES  |<48 cm     |    677|  2699|
|6 months  |COHORTS        |PHILIPPINES  |[48-50) cm |   1033|  2699|
|6 months  |CONTENT        |PERU         |>=50 cm    |      1|     2|
|6 months  |CONTENT        |PERU         |<48 cm     |      1|     2|
|6 months  |CONTENT        |PERU         |[48-50) cm |      0|     2|
|6 months  |EE             |PAKISTAN     |>=50 cm    |     22|   238|
|6 months  |EE             |PAKISTAN     |<48 cm     |    172|   238|
|6 months  |EE             |PAKISTAN     |[48-50) cm |     44|   238|
|6 months  |GMS-Nepal      |NEPAL        |>=50 cm    |     87|   563|
|6 months  |GMS-Nepal      |NEPAL        |<48 cm     |    305|   563|
|6 months  |GMS-Nepal      |NEPAL        |[48-50) cm |    171|   563|
|6 months  |JiVitA-3       |BANGLADESH   |>=50 cm    |    806| 13899|
|6 months  |JiVitA-3       |BANGLADESH   |<48 cm     |   9824| 13899|
|6 months  |JiVitA-3       |BANGLADESH   |[48-50) cm |   3269| 13899|
|6 months  |JiVitA-4       |BANGLADESH   |>=50 cm    |   1101|  4024|
|6 months  |JiVitA-4       |BANGLADESH   |<48 cm     |   1927|  4024|
|6 months  |JiVitA-4       |BANGLADESH   |[48-50) cm |    996|  4024|
|6 months  |Keneba         |GAMBIA       |>=50 cm    |    677|  1347|
|6 months  |Keneba         |GAMBIA       |<48 cm     |    234|  1347|
|6 months  |Keneba         |GAMBIA       |[48-50) cm |    436|  1347|
|6 months  |MAL-ED         |INDIA        |>=50 cm    |      8|    41|
|6 months  |MAL-ED         |INDIA        |<48 cm     |     20|    41|
|6 months  |MAL-ED         |INDIA        |[48-50) cm |     13|    41|
|6 months  |MAL-ED         |BANGLADESH   |>=50 cm    |     35|   211|
|6 months  |MAL-ED         |BANGLADESH   |<48 cm     |    101|   211|
|6 months  |MAL-ED         |BANGLADESH   |[48-50) cm |     75|   211|
|6 months  |MAL-ED         |PERU         |>=50 cm    |     38|   215|
|6 months  |MAL-ED         |PERU         |<48 cm     |     88|   215|
|6 months  |MAL-ED         |PERU         |[48-50) cm |     89|   215|
|6 months  |MAL-ED         |NEPAL        |>=50 cm    |      7|    26|
|6 months  |MAL-ED         |NEPAL        |<48 cm     |     11|    26|
|6 months  |MAL-ED         |NEPAL        |[48-50) cm |      8|    26|
|6 months  |MAL-ED         |BRAZIL       |>=50 cm    |     21|    59|
|6 months  |MAL-ED         |BRAZIL       |<48 cm     |     16|    59|
|6 months  |MAL-ED         |BRAZIL       |[48-50) cm |     22|    59|
|6 months  |MAL-ED         |TANZANIA     |>=50 cm    |     19|   118|
|6 months  |MAL-ED         |TANZANIA     |<48 cm     |     41|   118|
|6 months  |MAL-ED         |TANZANIA     |[48-50) cm |     58|   118|
|6 months  |MAL-ED         |SOUTH AFRICA |>=50 cm    |     29|    93|
|6 months  |MAL-ED         |SOUTH AFRICA |<48 cm     |     24|    93|
|6 months  |MAL-ED         |SOUTH AFRICA |[48-50) cm |     40|    93|
|6 months  |NIH-Birth      |BANGLADESH   |>=50 cm    |    106|   518|
|6 months  |NIH-Birth      |BANGLADESH   |<48 cm     |    210|   518|
|6 months  |NIH-Birth      |BANGLADESH   |[48-50) cm |    202|   518|
|6 months  |NIH-Crypto     |BANGLADESH   |>=50 cm    |    164|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |<48 cm     |    270|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |[48-50) cm |    281|   715|
|6 months  |PROBIT         |BELARUS      |>=50 cm    |  14292| 15757|
|6 months  |PROBIT         |BELARUS      |<48 cm     |    172| 15757|
|6 months  |PROBIT         |BELARUS      |[48-50) cm |   1293| 15757|
|6 months  |PROVIDE        |BANGLADESH   |>=50 cm    |    143|   603|
|6 months  |PROVIDE        |BANGLADESH   |<48 cm     |    213|   603|
|6 months  |PROVIDE        |BANGLADESH   |[48-50) cm |    247|   603|
|6 months  |ResPak         |PAKISTAN     |>=50 cm    |      8|    34|
|6 months  |ResPak         |PAKISTAN     |<48 cm     |     16|    34|
|6 months  |ResPak         |PAKISTAN     |[48-50) cm |     10|    34|
|6 months  |SAS-CompFeed   |INDIA        |>=50 cm    |    196|  1322|
|6 months  |SAS-CompFeed   |INDIA        |<48 cm     |    708|  1322|
|6 months  |SAS-CompFeed   |INDIA        |[48-50) cm |    418|  1322|
|6 months  |Vellore Crypto |INDIA        |>=50 cm    |    141|   389|
|6 months  |Vellore Crypto |INDIA        |<48 cm     |    110|   389|
|6 months  |Vellore Crypto |INDIA        |[48-50) cm |    138|   389|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=50 cm    |   2461|  8413|
|6 months  |ZVITAMBO       |ZIMBABWE     |<48 cm     |   2657|  8413|
|6 months  |ZVITAMBO       |ZIMBABWE     |[48-50) cm |   3295|  8413|
|24 months |CMC-V-BCS-2002 |INDIA        |>=50 cm    |     16|   106|
|24 months |CMC-V-BCS-2002 |INDIA        |<48 cm     |     50|   106|
|24 months |CMC-V-BCS-2002 |INDIA        |[48-50) cm |     40|   106|
|24 months |CMIN           |BANGLADESH   |>=50 cm    |      0|    11|
|24 months |CMIN           |BANGLADESH   |<48 cm     |      6|    11|
|24 months |CMIN           |BANGLADESH   |[48-50) cm |      5|    11|
|24 months |COHORTS        |INDIA        |>=50 cm    |   1035|  4722|
|24 months |COHORTS        |INDIA        |<48 cm     |   1928|  4722|
|24 months |COHORTS        |INDIA        |[48-50) cm |   1759|  4722|
|24 months |COHORTS        |GUATEMALA    |>=50 cm    |    264|   564|
|24 months |COHORTS        |GUATEMALA    |<48 cm     |    122|   564|
|24 months |COHORTS        |GUATEMALA    |[48-50) cm |    178|   564|
|24 months |COHORTS        |PHILIPPINES  |>=50 cm    |    895|  2446|
|24 months |COHORTS        |PHILIPPINES  |<48 cm     |    609|  2446|
|24 months |COHORTS        |PHILIPPINES  |[48-50) cm |    942|  2446|
|24 months |CONTENT        |PERU         |>=50 cm    |      1|     2|
|24 months |CONTENT        |PERU         |<48 cm     |      1|     2|
|24 months |CONTENT        |PERU         |[48-50) cm |      0|     2|
|24 months |EE             |PAKISTAN     |>=50 cm    |     10|   107|
|24 months |EE             |PAKISTAN     |<48 cm     |     75|   107|
|24 months |EE             |PAKISTAN     |[48-50) cm |     22|   107|
|24 months |GMS-Nepal      |NEPAL        |>=50 cm    |     76|   486|
|24 months |GMS-Nepal      |NEPAL        |<48 cm     |    255|   486|
|24 months |GMS-Nepal      |NEPAL        |[48-50) cm |    155|   486|
|24 months |JiVitA-3       |BANGLADESH   |>=50 cm    |    395|  7159|
|24 months |JiVitA-3       |BANGLADESH   |<48 cm     |   5058|  7159|
|24 months |JiVitA-3       |BANGLADESH   |[48-50) cm |   1706|  7159|
|24 months |JiVitA-4       |BANGLADESH   |>=50 cm    |   1074|  3974|
|24 months |JiVitA-4       |BANGLADESH   |<48 cm     |   1937|  3974|
|24 months |JiVitA-4       |BANGLADESH   |[48-50) cm |    963|  3974|
|24 months |Keneba         |GAMBIA       |>=50 cm    |    535|  1066|
|24 months |Keneba         |GAMBIA       |<48 cm     |    197|  1066|
|24 months |Keneba         |GAMBIA       |[48-50) cm |    334|  1066|
|24 months |MAL-ED         |INDIA        |>=50 cm    |      6|    39|
|24 months |MAL-ED         |INDIA        |<48 cm     |     20|    39|
|24 months |MAL-ED         |INDIA        |[48-50) cm |     13|    39|
|24 months |MAL-ED         |BANGLADESH   |>=50 cm    |     35|   187|
|24 months |MAL-ED         |BANGLADESH   |<48 cm     |     83|   187|
|24 months |MAL-ED         |BANGLADESH   |[48-50) cm |     69|   187|
|24 months |MAL-ED         |PERU         |>=50 cm    |     28|   160|
|24 months |MAL-ED         |PERU         |<48 cm     |     71|   160|
|24 months |MAL-ED         |PERU         |[48-50) cm |     61|   160|
|24 months |MAL-ED         |NEPAL        |>=50 cm    |      7|    26|
|24 months |MAL-ED         |NEPAL        |<48 cm     |     11|    26|
|24 months |MAL-ED         |NEPAL        |[48-50) cm |      8|    26|
|24 months |MAL-ED         |BRAZIL       |>=50 cm    |     17|    42|
|24 months |MAL-ED         |BRAZIL       |<48 cm     |     11|    42|
|24 months |MAL-ED         |BRAZIL       |[48-50) cm |     14|    42|
|24 months |MAL-ED         |TANZANIA     |>=50 cm    |     17|   104|
|24 months |MAL-ED         |TANZANIA     |<48 cm     |     36|   104|
|24 months |MAL-ED         |TANZANIA     |[48-50) cm |     51|   104|
|24 months |MAL-ED         |SOUTH AFRICA |>=50 cm    |     27|    91|
|24 months |MAL-ED         |SOUTH AFRICA |<48 cm     |     24|    91|
|24 months |MAL-ED         |SOUTH AFRICA |[48-50) cm |     40|    91|
|24 months |NIH-Birth      |BANGLADESH   |>=50 cm    |     89|   413|
|24 months |NIH-Birth      |BANGLADESH   |<48 cm     |    166|   413|
|24 months |NIH-Birth      |BANGLADESH   |[48-50) cm |    158|   413|
|24 months |NIH-Crypto     |BANGLADESH   |>=50 cm    |    128|   514|
|24 months |NIH-Crypto     |BANGLADESH   |<48 cm     |    200|   514|
|24 months |NIH-Crypto     |BANGLADESH   |[48-50) cm |    186|   514|
|24 months |PROBIT         |BELARUS      |>=50 cm    |   3622|  3970|
|24 months |PROBIT         |BELARUS      |<48 cm     |     44|  3970|
|24 months |PROBIT         |BELARUS      |[48-50) cm |    304|  3970|
|24 months |PROVIDE        |BANGLADESH   |>=50 cm    |    139|   579|
|24 months |PROVIDE        |BANGLADESH   |<48 cm     |    206|   579|
|24 months |PROVIDE        |BANGLADESH   |[48-50) cm |    234|   579|
|24 months |Vellore Crypto |INDIA        |>=50 cm    |    142|   390|
|24 months |Vellore Crypto |INDIA        |<48 cm     |    110|   390|
|24 months |Vellore Crypto |INDIA        |[48-50) cm |    138|   390|
|24 months |ZVITAMBO       |ZIMBABWE     |>=50 cm    |     42|   426|
|24 months |ZVITAMBO       |ZIMBABWE     |<48 cm     |    258|   426|
|24 months |ZVITAMBO       |ZIMBABWE     |[48-50) cm |    126|   426|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
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
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU





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


