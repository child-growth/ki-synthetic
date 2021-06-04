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

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* W_nrooms
* impsan
* delta_arm
* delta_W_mage
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |meducyrs | n_cell|     n|
|:---------|:--------------|:------------|:--------|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |Low      |     18|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |Medium   |     29|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |High     |     45|    92|
|Birth     |COHORTS        |INDIA        |Low      |   1243|  6056|
|Birth     |COHORTS        |INDIA        |Medium   |   3664|  6056|
|Birth     |COHORTS        |INDIA        |High     |   1149|  6056|
|Birth     |COHORTS        |GUATEMALA    |Low      |    360|   834|
|Birth     |COHORTS        |GUATEMALA    |Medium   |    271|   834|
|Birth     |COHORTS        |GUATEMALA    |High     |    203|   834|
|Birth     |COHORTS        |PHILIPPINES  |Low      |   1092|  3050|
|Birth     |COHORTS        |PHILIPPINES  |Medium   |    601|  3050|
|Birth     |COHORTS        |PHILIPPINES  |High     |   1357|  3050|
|Birth     |EE             |PAKISTAN     |Low      |    206|   238|
|Birth     |EE             |PAKISTAN     |Medium   |     20|   238|
|Birth     |EE             |PAKISTAN     |High     |     12|   238|
|Birth     |GMS-Nepal      |NEPAL        |Low      |    488|   690|
|Birth     |GMS-Nepal      |NEPAL        |Medium   |    124|   690|
|Birth     |GMS-Nepal      |NEPAL        |High     |     78|   690|
|Birth     |JiVitA-3       |BANGLADESH   |Low      |   8726| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |Medium   |   6871| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |High     |   6858| 22455|
|Birth     |JiVitA-4       |BANGLADESH   |Low      |    924|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |Medium   |    893|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |High     |   1005|  2822|
|Birth     |MAL-ED         |INDIA        |Low      |     17|    45|
|Birth     |MAL-ED         |INDIA        |Medium   |      9|    45|
|Birth     |MAL-ED         |INDIA        |High     |     19|    45|
|Birth     |MAL-ED         |BANGLADESH   |Low      |     57|   217|
|Birth     |MAL-ED         |BANGLADESH   |Medium   |     47|   217|
|Birth     |MAL-ED         |BANGLADESH   |High     |    113|   217|
|Birth     |MAL-ED         |PERU         |Low      |     85|   230|
|Birth     |MAL-ED         |PERU         |Medium   |     77|   230|
|Birth     |MAL-ED         |PERU         |High     |     68|   230|
|Birth     |MAL-ED         |NEPAL        |Low      |     15|    26|
|Birth     |MAL-ED         |NEPAL        |Medium   |      3|    26|
|Birth     |MAL-ED         |NEPAL        |High     |      8|    26|
|Birth     |MAL-ED         |BRAZIL       |Low      |     31|    65|
|Birth     |MAL-ED         |BRAZIL       |Medium   |     23|    65|
|Birth     |MAL-ED         |BRAZIL       |High     |     11|    65|
|Birth     |MAL-ED         |TANZANIA     |Low      |     28|   102|
|Birth     |MAL-ED         |TANZANIA     |Medium   |     72|   102|
|Birth     |MAL-ED         |TANZANIA     |High     |      2|   102|
|Birth     |MAL-ED         |SOUTH AFRICA |Low      |     60|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |Medium   |     20|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |High     |     43|   123|
|Birth     |NIH-Birth      |BANGLADESH   |Low      |    232|   608|
|Birth     |NIH-Birth      |BANGLADESH   |Medium   |    215|   608|
|Birth     |NIH-Birth      |BANGLADESH   |High     |    161|   608|
|Birth     |NIH-Crypto     |BANGLADESH   |Low      |    250|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |Medium   |    155|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |High     |    327|   732|
|Birth     |PROBIT         |BELARUS      |Low      |   4400| 13893|
|Birth     |PROBIT         |BELARUS      |Medium   |   7123| 13893|
|Birth     |PROBIT         |BELARUS      |High     |   2370| 13893|
|Birth     |PROVIDE        |BANGLADESH   |Low      |    166|   539|
|Birth     |PROVIDE        |BANGLADESH   |Medium   |    203|   539|
|Birth     |PROVIDE        |BANGLADESH   |High     |    170|   539|
|Birth     |SAS-CompFeed   |INDIA        |Low      |    554|  1250|
|Birth     |SAS-CompFeed   |INDIA        |Medium   |    418|  1250|
|Birth     |SAS-CompFeed   |INDIA        |High     |    278|  1250|
|Birth     |Vellore Crypto |INDIA        |Low      |    167|   388|
|Birth     |Vellore Crypto |INDIA        |Medium   |    131|   388|
|Birth     |Vellore Crypto |INDIA        |High     |     90|   388|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low      |   3002| 13859|
|Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |   3451| 13859|
|Birth     |ZVITAMBO       |ZIMBABWE     |High     |   7406| 13859|
|6 months  |CMC-V-BCS-2002 |INDIA        |Low      |    108|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |    118|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |High     |    143|   369|
|6 months  |COHORTS        |INDIA        |Low      |   1292|  6273|
|6 months  |COHORTS        |INDIA        |Medium   |   3771|  6273|
|6 months  |COHORTS        |INDIA        |High     |   1210|  6273|
|6 months  |COHORTS        |GUATEMALA    |Low      |    397|   945|
|6 months  |COHORTS        |GUATEMALA    |Medium   |    323|   945|
|6 months  |COHORTS        |GUATEMALA    |High     |    225|   945|
|6 months  |COHORTS        |PHILIPPINES  |Low      |    993|  2708|
|6 months  |COHORTS        |PHILIPPINES  |Medium   |    534|  2708|
|6 months  |COHORTS        |PHILIPPINES  |High     |   1181|  2708|
|6 months  |EE             |PAKISTAN     |Low      |    311|   368|
|6 months  |EE             |PAKISTAN     |Medium   |     33|   368|
|6 months  |EE             |PAKISTAN     |High     |     24|   368|
|6 months  |GMS-Nepal      |NEPAL        |Low      |    398|   561|
|6 months  |GMS-Nepal      |NEPAL        |Medium   |    100|   561|
|6 months  |GMS-Nepal      |NEPAL        |High     |     63|   561|
|6 months  |Guatemala BSC  |GUATEMALA    |Low      |     84|   251|
|6 months  |Guatemala BSC  |GUATEMALA    |Medium   |     70|   251|
|6 months  |Guatemala BSC  |GUATEMALA    |High     |     97|   251|
|6 months  |JiVitA-3       |BANGLADESH   |Low      |   5684| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |Medium   |   5195| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |High     |   5932| 16811|
|6 months  |JiVitA-4       |BANGLADESH   |Low      |   1475|  4823|
|6 months  |JiVitA-4       |BANGLADESH   |Medium   |   1517|  4823|
|6 months  |JiVitA-4       |BANGLADESH   |High     |   1831|  4823|
|6 months  |LCNI-5         |MALAWI       |Low      |    242|   831|
|6 months  |LCNI-5         |MALAWI       |Medium   |    277|   831|
|6 months  |LCNI-5         |MALAWI       |High     |    312|   831|
|6 months  |MAL-ED         |INDIA        |Low      |     91|   213|
|6 months  |MAL-ED         |INDIA        |Medium   |     50|   213|
|6 months  |MAL-ED         |INDIA        |High     |     72|   213|
|6 months  |MAL-ED         |BANGLADESH   |Low      |     61|   226|
|6 months  |MAL-ED         |BANGLADESH   |Medium   |     52|   226|
|6 months  |MAL-ED         |BANGLADESH   |High     |    113|   226|
|6 months  |MAL-ED         |PERU         |Low      |     98|   270|
|6 months  |MAL-ED         |PERU         |Medium   |     81|   270|
|6 months  |MAL-ED         |PERU         |High     |     91|   270|
|6 months  |MAL-ED         |NEPAL        |Low      |    111|   220|
|6 months  |MAL-ED         |NEPAL        |Medium   |     34|   220|
|6 months  |MAL-ED         |NEPAL        |High     |     75|   220|
|6 months  |MAL-ED         |BRAZIL       |Low      |     90|   209|
|6 months  |MAL-ED         |BRAZIL       |Medium   |     74|   209|
|6 months  |MAL-ED         |BRAZIL       |High     |     45|   209|
|6 months  |MAL-ED         |TANZANIA     |Low      |     61|   206|
|6 months  |MAL-ED         |TANZANIA     |Medium   |    137|   206|
|6 months  |MAL-ED         |TANZANIA     |High     |      8|   206|
|6 months  |MAL-ED         |SOUTH AFRICA |Low      |    140|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |Medium   |     40|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |High     |     74|   254|
|6 months  |NIH-Birth      |BANGLADESH   |Low      |    201|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Medium   |    190|   537|
|6 months  |NIH-Birth      |BANGLADESH   |High     |    146|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |Low      |    242|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Medium   |    157|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |High     |    316|   715|
|6 months  |PROBIT         |BELARUS      |Low      |   4989| 15760|
|6 months  |PROBIT         |BELARUS      |Medium   |   8030| 15760|
|6 months  |PROBIT         |BELARUS      |High     |   2741| 15760|
|6 months  |PROVIDE        |BANGLADESH   |Low      |    184|   604|
|6 months  |PROVIDE        |BANGLADESH   |Medium   |    225|   604|
|6 months  |PROVIDE        |BANGLADESH   |High     |    195|   604|
|6 months  |SAS-CompFeed   |INDIA        |Low      |    589|  1333|
|6 months  |SAS-CompFeed   |INDIA        |Medium   |    453|  1333|
|6 months  |SAS-CompFeed   |INDIA        |High     |    291|  1333|
|6 months  |SAS-FoodSuppl  |INDIA        |Low      |    301|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Medium   |     40|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |High     |     39|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |Low      |     88|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |Medium   |   1399|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |High     |    540|  2027|
|6 months  |Vellore Crypto |INDIA        |Low      |    174|   407|
|6 months  |Vellore Crypto |INDIA        |Medium   |    137|   407|
|6 months  |Vellore Crypto |INDIA        |High     |     96|   407|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low      |   1836|  8661|
|6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |   2162|  8661|
|6 months  |ZVITAMBO       |ZIMBABWE     |High     |   4663|  8661|
|24 months |CMC-V-BCS-2002 |INDIA        |Low      |    107|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |Medium   |    119|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |High     |    145|   371|
|24 months |COHORTS        |INDIA        |Low      |   1019|  4827|
|24 months |COHORTS        |INDIA        |Medium   |   2889|  4827|
|24 months |COHORTS        |INDIA        |High     |    919|  4827|
|24 months |COHORTS        |GUATEMALA    |Low      |    435|  1057|
|24 months |COHORTS        |GUATEMALA    |Medium   |    371|  1057|
|24 months |COHORTS        |GUATEMALA    |High     |    251|  1057|
|24 months |COHORTS        |PHILIPPINES  |Low      |    916|  2445|
|24 months |COHORTS        |PHILIPPINES  |Medium   |    482|  2445|
|24 months |COHORTS        |PHILIPPINES  |High     |   1047|  2445|
|24 months |EE             |PAKISTAN     |Low      |    142|   165|
|24 months |EE             |PAKISTAN     |Medium   |     14|   165|
|24 months |EE             |PAKISTAN     |High     |      9|   165|
|24 months |GMS-Nepal      |NEPAL        |Low      |    347|   486|
|24 months |GMS-Nepal      |NEPAL        |Medium   |     85|   486|
|24 months |GMS-Nepal      |NEPAL        |High     |     54|   486|
|24 months |JiVitA-3       |BANGLADESH   |Low      |   3010|  8632|
|24 months |JiVitA-3       |BANGLADESH   |Medium   |   2674|  8632|
|24 months |JiVitA-3       |BANGLADESH   |High     |   2948|  8632|
|24 months |JiVitA-4       |BANGLADESH   |Low      |   1441|  4746|
|24 months |JiVitA-4       |BANGLADESH   |Medium   |   1510|  4746|
|24 months |JiVitA-4       |BANGLADESH   |High     |   1795|  4746|
|24 months |LCNI-5         |MALAWI       |Low      |    171|   574|
|24 months |LCNI-5         |MALAWI       |Medium   |    183|   574|
|24 months |LCNI-5         |MALAWI       |High     |    220|   574|
|24 months |MAL-ED         |INDIA        |Low      |     86|   205|
|24 months |MAL-ED         |INDIA        |Medium   |     48|   205|
|24 months |MAL-ED         |INDIA        |High     |     71|   205|
|24 months |MAL-ED         |BANGLADESH   |Low      |     53|   198|
|24 months |MAL-ED         |BANGLADESH   |Medium   |     47|   198|
|24 months |MAL-ED         |BANGLADESH   |High     |     98|   198|
|24 months |MAL-ED         |PERU         |Low      |     74|   198|
|24 months |MAL-ED         |PERU         |Medium   |     55|   198|
|24 months |MAL-ED         |PERU         |High     |     69|   198|
|24 months |MAL-ED         |NEPAL        |Low      |    107|   212|
|24 months |MAL-ED         |NEPAL        |Medium   |     31|   212|
|24 months |MAL-ED         |NEPAL        |High     |     74|   212|
|24 months |MAL-ED         |BRAZIL       |Low      |     71|   169|
|24 months |MAL-ED         |BRAZIL       |Medium   |     62|   169|
|24 months |MAL-ED         |BRAZIL       |High     |     36|   169|
|24 months |MAL-ED         |TANZANIA     |Low      |     49|   179|
|24 months |MAL-ED         |TANZANIA     |Medium   |    125|   179|
|24 months |MAL-ED         |TANZANIA     |High     |      5|   179|
|24 months |MAL-ED         |SOUTH AFRICA |Low      |    134|   238|
|24 months |MAL-ED         |SOUTH AFRICA |Medium   |     37|   238|
|24 months |MAL-ED         |SOUTH AFRICA |High     |     67|   238|
|24 months |NIH-Birth      |BANGLADESH   |Low      |    156|   429|
|24 months |NIH-Birth      |BANGLADESH   |Medium   |    155|   429|
|24 months |NIH-Birth      |BANGLADESH   |High     |    118|   429|
|24 months |NIH-Crypto     |BANGLADESH   |Low      |    174|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Medium   |    107|   514|
|24 months |NIH-Crypto     |BANGLADESH   |High     |    233|   514|
|24 months |PROBIT         |BELARUS      |Low      |   1261|  4035|
|24 months |PROBIT         |BELARUS      |Medium   |   2093|  4035|
|24 months |PROBIT         |BELARUS      |High     |    681|  4035|
|24 months |PROVIDE        |BANGLADESH   |Low      |    169|   578|
|24 months |PROVIDE        |BANGLADESH   |Medium   |    216|   578|
|24 months |PROVIDE        |BANGLADESH   |High     |    193|   578|
|24 months |TanzaniaChild2 |TANZANIA     |Low      |      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Medium   |      4|     6|
|24 months |TanzaniaChild2 |TANZANIA     |High     |      2|     6|
|24 months |Vellore Crypto |INDIA        |Low      |    174|   409|
|24 months |Vellore Crypto |INDIA        |Medium   |    138|   409|
|24 months |Vellore Crypto |INDIA        |High     |     97|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |Low      |    340|  1639|
|24 months |ZVITAMBO       |ZIMBABWE     |Medium   |    428|  1639|
|24 months |ZVITAMBO       |ZIMBABWE     |High     |    871|  1639|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
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

* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA





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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_gam_NULL_NULL_GCV.Cp
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


