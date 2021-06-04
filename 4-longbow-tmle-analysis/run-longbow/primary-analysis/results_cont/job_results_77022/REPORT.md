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

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
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
|Birth     |CMC-V-BCS-2002 |INDIA        |Low      |     17|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |Medium   |     27|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |High     |     42|    86|
|Birth     |COHORTS        |INDIA        |Low      |   1160|  5652|
|Birth     |COHORTS        |INDIA        |Medium   |   3406|  5652|
|Birth     |COHORTS        |INDIA        |High     |   1086|  5652|
|Birth     |COHORTS        |GUATEMALA    |Low      |    316|   743|
|Birth     |COHORTS        |GUATEMALA    |Medium   |    243|   743|
|Birth     |COHORTS        |GUATEMALA    |High     |    184|   743|
|Birth     |COHORTS        |PHILIPPINES  |Low      |   1027|  2899|
|Birth     |COHORTS        |PHILIPPINES  |Medium   |    567|  2899|
|Birth     |COHORTS        |PHILIPPINES  |High     |   1305|  2899|
|Birth     |EE             |PAKISTAN     |Low      |    150|   175|
|Birth     |EE             |PAKISTAN     |Medium   |     17|   175|
|Birth     |EE             |PAKISTAN     |High     |      8|   175|
|Birth     |GMS-Nepal      |NEPAL        |Low      |    446|   635|
|Birth     |GMS-Nepal      |NEPAL        |Medium   |    113|   635|
|Birth     |GMS-Nepal      |NEPAL        |High     |     76|   635|
|Birth     |JiVitA-3       |BANGLADESH   |Low      |   6913| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |Medium   |   5382| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |High     |   5719| 18014|
|Birth     |JiVitA-4       |BANGLADESH   |Low      |    776|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |Medium   |    754|  2395|
|Birth     |JiVitA-4       |BANGLADESH   |High     |    865|  2395|
|Birth     |MAL-ED         |INDIA        |Low      |     16|    43|
|Birth     |MAL-ED         |INDIA        |Medium   |      9|    43|
|Birth     |MAL-ED         |INDIA        |High     |     18|    43|
|Birth     |MAL-ED         |BANGLADESH   |Low      |     52|   201|
|Birth     |MAL-ED         |BANGLADESH   |Medium   |     46|   201|
|Birth     |MAL-ED         |BANGLADESH   |High     |    103|   201|
|Birth     |MAL-ED         |PERU         |Low      |     82|   225|
|Birth     |MAL-ED         |PERU         |Medium   |     76|   225|
|Birth     |MAL-ED         |PERU         |High     |     67|   225|
|Birth     |MAL-ED         |NEPAL        |Low      |     15|    25|
|Birth     |MAL-ED         |NEPAL        |Medium   |      2|    25|
|Birth     |MAL-ED         |NEPAL        |High     |      8|    25|
|Birth     |MAL-ED         |BRAZIL       |Low      |     28|    62|
|Birth     |MAL-ED         |BRAZIL       |Medium   |     23|    62|
|Birth     |MAL-ED         |BRAZIL       |High     |     11|    62|
|Birth     |MAL-ED         |TANZANIA     |Low      |     26|    92|
|Birth     |MAL-ED         |TANZANIA     |Medium   |     64|    92|
|Birth     |MAL-ED         |TANZANIA     |High     |      2|    92|
|Birth     |MAL-ED         |SOUTH AFRICA |Low      |     59|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |Medium   |     19|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |High     |     42|   120|
|Birth     |NIH-Birth      |BANGLADESH   |Low      |    216|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Medium   |    203|   575|
|Birth     |NIH-Birth      |BANGLADESH   |High     |    156|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |Low      |    240|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Medium   |    150|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |High     |    317|   707|
|Birth     |PROBIT         |BELARUS      |Low      |   4383| 13817|
|Birth     |PROBIT         |BELARUS      |Medium   |   7078| 13817|
|Birth     |PROBIT         |BELARUS      |High     |   2356| 13817|
|Birth     |PROVIDE        |BANGLADESH   |Low      |    165|   532|
|Birth     |PROVIDE        |BANGLADESH   |Medium   |    201|   532|
|Birth     |PROVIDE        |BANGLADESH   |High     |    166|   532|
|Birth     |SAS-CompFeed   |INDIA        |Low      |    488|  1101|
|Birth     |SAS-CompFeed   |INDIA        |Medium   |    369|  1101|
|Birth     |SAS-CompFeed   |INDIA        |High     |    244|  1101|
|Birth     |Vellore Crypto |INDIA        |Low      |    148|   343|
|Birth     |Vellore Crypto |INDIA        |Medium   |    116|   343|
|Birth     |Vellore Crypto |INDIA        |High     |     79|   343|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low      |   2795| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |   3202| 12904|
|Birth     |ZVITAMBO       |ZIMBABWE     |High     |   6907| 12904|
|6 months  |CMC-V-BCS-2002 |INDIA        |Low      |    107|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |    118|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |High     |    143|   368|
|6 months  |COHORTS        |INDIA        |Low      |   1290|  6265|
|6 months  |COHORTS        |INDIA        |Medium   |   3766|  6265|
|6 months  |COHORTS        |INDIA        |High     |   1209|  6265|
|6 months  |COHORTS        |GUATEMALA    |Low      |    398|   948|
|6 months  |COHORTS        |GUATEMALA    |Medium   |    324|   948|
|6 months  |COHORTS        |GUATEMALA    |High     |    226|   948|
|6 months  |COHORTS        |PHILIPPINES  |Low      |    990|  2706|
|6 months  |COHORTS        |PHILIPPINES  |Medium   |    534|  2706|
|6 months  |COHORTS        |PHILIPPINES  |High     |   1182|  2706|
|6 months  |EE             |PAKISTAN     |Low      |    313|   370|
|6 months  |EE             |PAKISTAN     |Medium   |     33|   370|
|6 months  |EE             |PAKISTAN     |High     |     24|   370|
|6 months  |GMS-Nepal      |NEPAL        |Low      |    398|   561|
|6 months  |GMS-Nepal      |NEPAL        |Medium   |    100|   561|
|6 months  |GMS-Nepal      |NEPAL        |High     |     63|   561|
|6 months  |Guatemala BSC  |GUATEMALA    |Low      |     84|   251|
|6 months  |Guatemala BSC  |GUATEMALA    |Medium   |     70|   251|
|6 months  |Guatemala BSC  |GUATEMALA    |High     |     97|   251|
|6 months  |JiVitA-3       |BANGLADESH   |Low      |   5676| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |Medium   |   5189| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |High     |   5919| 16784|
|6 months  |JiVitA-4       |BANGLADESH   |Low      |   1477|  4825|
|6 months  |JiVitA-4       |BANGLADESH   |Medium   |   1517|  4825|
|6 months  |JiVitA-4       |BANGLADESH   |High     |   1831|  4825|
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
|6 months  |PROBIT         |BELARUS      |Low      |   4989| 15757|
|6 months  |PROBIT         |BELARUS      |Medium   |   8028| 15757|
|6 months  |PROBIT         |BELARUS      |High     |   2740| 15757|
|6 months  |PROVIDE        |BANGLADESH   |Low      |    183|   603|
|6 months  |PROVIDE        |BANGLADESH   |Medium   |    225|   603|
|6 months  |PROVIDE        |BANGLADESH   |High     |    195|   603|
|6 months  |SAS-CompFeed   |INDIA        |Low      |    589|  1331|
|6 months  |SAS-CompFeed   |INDIA        |Medium   |    452|  1331|
|6 months  |SAS-CompFeed   |INDIA        |High     |    290|  1331|
|6 months  |SAS-FoodSuppl  |INDIA        |Low      |    301|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Medium   |     40|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |High     |     39|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |Low      |     88|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |Medium   |   1398|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |High     |    540|  2026|
|6 months  |Vellore Crypto |INDIA        |Low      |    173|   408|
|6 months  |Vellore Crypto |INDIA        |Medium   |    138|   408|
|6 months  |Vellore Crypto |INDIA        |High     |     97|   408|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low      |   1803|  8497|
|6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |   2126|  8497|
|6 months  |ZVITAMBO       |ZIMBABWE     |High     |   4568|  8497|
|24 months |CMC-V-BCS-2002 |INDIA        |Low      |    107|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |Medium   |    120|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |High     |    145|   372|
|24 months |COHORTS        |INDIA        |Low      |   1012|  4789|
|24 months |COHORTS        |INDIA        |Medium   |   2870|  4789|
|24 months |COHORTS        |INDIA        |High     |    907|  4789|
|24 months |COHORTS        |GUATEMALA    |Low      |    439|  1069|
|24 months |COHORTS        |GUATEMALA    |Medium   |    376|  1069|
|24 months |COHORTS        |GUATEMALA    |High     |    254|  1069|
|24 months |COHORTS        |PHILIPPINES  |Low      |    918|  2449|
|24 months |COHORTS        |PHILIPPINES  |Medium   |    483|  2449|
|24 months |COHORTS        |PHILIPPINES  |High     |   1048|  2449|
|24 months |EE             |PAKISTAN     |Low      |    143|   166|
|24 months |EE             |PAKISTAN     |Medium   |     14|   166|
|24 months |EE             |PAKISTAN     |High     |      9|   166|
|24 months |GMS-Nepal      |NEPAL        |Low      |    347|   485|
|24 months |GMS-Nepal      |NEPAL        |Medium   |     84|   485|
|24 months |GMS-Nepal      |NEPAL        |High     |     54|   485|
|24 months |JiVitA-3       |BANGLADESH   |Low      |   3006|  8603|
|24 months |JiVitA-3       |BANGLADESH   |Medium   |   2666|  8603|
|24 months |JiVitA-3       |BANGLADESH   |High     |   2931|  8603|
|24 months |JiVitA-4       |BANGLADESH   |Low      |   1433|  4729|
|24 months |JiVitA-4       |BANGLADESH   |Medium   |   1509|  4729|
|24 months |JiVitA-4       |BANGLADESH   |High     |   1787|  4729|
|24 months |LCNI-5         |MALAWI       |Low      |    168|   558|
|24 months |LCNI-5         |MALAWI       |Medium   |    178|   558|
|24 months |LCNI-5         |MALAWI       |High     |    212|   558|
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
|24 months |NIH-Birth      |BANGLADESH   |Low      |    155|   428|
|24 months |NIH-Birth      |BANGLADESH   |Medium   |    155|   428|
|24 months |NIH-Birth      |BANGLADESH   |High     |    118|   428|
|24 months |NIH-Crypto     |BANGLADESH   |Low      |    174|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Medium   |    107|   514|
|24 months |NIH-Crypto     |BANGLADESH   |High     |    233|   514|
|24 months |PROBIT         |BELARUS      |Low      |   1239|  3970|
|24 months |PROBIT         |BELARUS      |Medium   |   2062|  3970|
|24 months |PROBIT         |BELARUS      |High     |    669|  3970|
|24 months |PROVIDE        |BANGLADESH   |Low      |    170|   579|
|24 months |PROVIDE        |BANGLADESH   |Medium   |    216|   579|
|24 months |PROVIDE        |BANGLADESH   |High     |    193|   579|
|24 months |TanzaniaChild2 |TANZANIA     |Low      |      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Medium   |      4|     6|
|24 months |TanzaniaChild2 |TANZANIA     |High     |      2|     6|
|24 months |Vellore Crypto |INDIA        |Low      |    174|   409|
|24 months |Vellore Crypto |INDIA        |Medium   |    138|   409|
|24 months |Vellore Crypto |INDIA        |High     |     97|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |Low      |    108|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |Medium   |    118|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |High     |    206|   432|


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

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

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


