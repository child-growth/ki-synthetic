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
|Birth     |CMC-V-BCS-2002 |INDIA        |Low      |     27|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |Medium   |     22|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |High     |     37|    86|
|Birth     |COHORTS        |INDIA        |Low      |   1388|  5577|
|Birth     |COHORTS        |INDIA        |Medium   |   3132|  5577|
|Birth     |COHORTS        |INDIA        |High     |   1057|  5577|
|Birth     |COHORTS        |GUATEMALA    |Low      |    348|   751|
|Birth     |COHORTS        |GUATEMALA    |Medium   |    254|   751|
|Birth     |COHORTS        |GUATEMALA    |High     |    149|   751|
|Birth     |COHORTS        |PHILIPPINES  |Low      |   1053|  2899|
|Birth     |COHORTS        |PHILIPPINES  |Medium   |    533|  2899|
|Birth     |COHORTS        |PHILIPPINES  |High     |   1313|  2899|
|Birth     |EE             |PAKISTAN     |Low      |    148|   175|
|Birth     |EE             |PAKISTAN     |Medium   |     16|   175|
|Birth     |EE             |PAKISTAN     |High     |     11|   175|
|Birth     |GMS-Nepal      |NEPAL        |Low      |    449|   639|
|Birth     |GMS-Nepal      |NEPAL        |Medium   |    116|   639|
|Birth     |GMS-Nepal      |NEPAL        |High     |     74|   639|
|Birth     |JiVitA-3       |BANGLADESH   |Low      |   6601| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |Medium   |   5435| 17998|
|Birth     |JiVitA-3       |BANGLADESH   |High     |   5962| 17998|
|Birth     |JiVitA-4       |BANGLADESH   |Low      |    800|  2393|
|Birth     |JiVitA-4       |BANGLADESH   |Medium   |    731|  2393|
|Birth     |JiVitA-4       |BANGLADESH   |High     |    862|  2393|
|Birth     |MAL-ED         |INDIA        |Low      |     14|    38|
|Birth     |MAL-ED         |INDIA        |Medium   |      8|    38|
|Birth     |MAL-ED         |INDIA        |High     |     16|    38|
|Birth     |MAL-ED         |BANGLADESH   |Low      |     58|   207|
|Birth     |MAL-ED         |BANGLADESH   |Medium   |     48|   207|
|Birth     |MAL-ED         |BANGLADESH   |High     |    101|   207|
|Birth     |MAL-ED         |PERU         |Low      |     88|   227|
|Birth     |MAL-ED         |PERU         |Medium   |     73|   227|
|Birth     |MAL-ED         |PERU         |High     |     66|   227|
|Birth     |MAL-ED         |NEPAL        |Low      |     12|    24|
|Birth     |MAL-ED         |NEPAL        |Medium   |      4|    24|
|Birth     |MAL-ED         |NEPAL        |High     |      8|    24|
|Birth     |MAL-ED         |BRAZIL       |Low      |     29|    62|
|Birth     |MAL-ED         |BRAZIL       |Medium   |     26|    62|
|Birth     |MAL-ED         |BRAZIL       |High     |      7|    62|
|Birth     |MAL-ED         |TANZANIA     |Low      |     29|    91|
|Birth     |MAL-ED         |TANZANIA     |Medium   |     33|    91|
|Birth     |MAL-ED         |TANZANIA     |High     |     29|    91|
|Birth     |MAL-ED         |SOUTH AFRICA |Low      |     64|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |Medium   |     17|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |High     |     39|   120|
|Birth     |NIH-Birth      |BANGLADESH   |Low      |    245|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Medium   |    183|   575|
|Birth     |NIH-Birth      |BANGLADESH   |High     |    147|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |Low      |    221|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Medium   |    157|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |High     |    329|   707|
|Birth     |PROBIT         |BELARUS      |Low      |   4420| 13817|
|Birth     |PROBIT         |BELARUS      |Medium   |   7074| 13817|
|Birth     |PROBIT         |BELARUS      |High     |   2323| 13817|
|Birth     |PROVIDE        |BANGLADESH   |Low      |    159|   532|
|Birth     |PROVIDE        |BANGLADESH   |Medium   |    199|   532|
|Birth     |PROVIDE        |BANGLADESH   |High     |    174|   532|
|Birth     |SAS-CompFeed   |INDIA        |Low      |    479|  1101|
|Birth     |SAS-CompFeed   |INDIA        |Medium   |    368|  1101|
|Birth     |SAS-CompFeed   |INDIA        |High     |    254|  1101|
|Birth     |Vellore Crypto |INDIA        |Low      |    125|   343|
|Birth     |Vellore Crypto |INDIA        |Medium   |    128|   343|
|Birth     |Vellore Crypto |INDIA        |High     |     90|   343|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low      |   2343| 12909|
|Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |   3285| 12909|
|Birth     |ZVITAMBO       |ZIMBABWE     |High     |   7281| 12909|
|6 months  |CMC-V-BCS-2002 |INDIA        |Low      |    109|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |    100|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |High     |    159|   368|
|6 months  |COHORTS        |INDIA        |Low      |   1538|  6172|
|6 months  |COHORTS        |INDIA        |Medium   |   3460|  6172|
|6 months  |COHORTS        |INDIA        |High     |   1174|  6172|
|6 months  |COHORTS        |GUATEMALA    |Low      |    454|   957|
|6 months  |COHORTS        |GUATEMALA    |Medium   |    321|   957|
|6 months  |COHORTS        |GUATEMALA    |High     |    182|   957|
|6 months  |COHORTS        |PHILIPPINES  |Low      |   1024|  2706|
|6 months  |COHORTS        |PHILIPPINES  |Medium   |    492|  2706|
|6 months  |COHORTS        |PHILIPPINES  |High     |   1190|  2706|
|6 months  |EE             |PAKISTAN     |Low      |    316|   371|
|6 months  |EE             |PAKISTAN     |Medium   |     34|   371|
|6 months  |EE             |PAKISTAN     |High     |     21|   371|
|6 months  |GMS-Nepal      |NEPAL        |Low      |    393|   564|
|6 months  |GMS-Nepal      |NEPAL        |Medium   |    107|   564|
|6 months  |GMS-Nepal      |NEPAL        |High     |     64|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |Low      |    102|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |Medium   |     81|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |High     |    105|   288|
|6 months  |JiVitA-3       |BANGLADESH   |Low      |   5855| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |Medium   |   5149| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |High     |   5771| 16775|
|6 months  |JiVitA-4       |BANGLADESH   |Low      |   1592|  4824|
|6 months  |JiVitA-4       |BANGLADESH   |Medium   |   1496|  4824|
|6 months  |JiVitA-4       |BANGLADESH   |High     |   1736|  4824|
|6 months  |LCNI-5         |MALAWI       |Low      |    268|   824|
|6 months  |LCNI-5         |MALAWI       |Medium   |    267|   824|
|6 months  |LCNI-5         |MALAWI       |High     |    289|   824|
|6 months  |MAL-ED         |INDIA        |Low      |     81|   199|
|6 months  |MAL-ED         |INDIA        |Medium   |     46|   199|
|6 months  |MAL-ED         |INDIA        |High     |     72|   199|
|6 months  |MAL-ED         |BANGLADESH   |Low      |     73|   233|
|6 months  |MAL-ED         |BANGLADESH   |Medium   |     53|   233|
|6 months  |MAL-ED         |BANGLADESH   |High     |    107|   233|
|6 months  |MAL-ED         |PERU         |Low      |    108|   272|
|6 months  |MAL-ED         |PERU         |Medium   |     84|   272|
|6 months  |MAL-ED         |PERU         |High     |     80|   272|
|6 months  |MAL-ED         |NEPAL        |Low      |    108|   226|
|6 months  |MAL-ED         |NEPAL        |Medium   |     56|   226|
|6 months  |MAL-ED         |NEPAL        |High     |     62|   226|
|6 months  |MAL-ED         |BRAZIL       |Low      |     88|   209|
|6 months  |MAL-ED         |BRAZIL       |Medium   |     88|   209|
|6 months  |MAL-ED         |BRAZIL       |High     |     33|   209|
|6 months  |MAL-ED         |TANZANIA     |Low      |     60|   200|
|6 months  |MAL-ED         |TANZANIA     |Medium   |     75|   200|
|6 months  |MAL-ED         |TANZANIA     |High     |     65|   200|
|6 months  |MAL-ED         |SOUTH AFRICA |Low      |    138|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |Medium   |     35|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |High     |     81|   254|
|6 months  |NIH-Birth      |BANGLADESH   |Low      |    222|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Medium   |    175|   537|
|6 months  |NIH-Birth      |BANGLADESH   |High     |    140|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |Low      |    228|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Medium   |    158|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |High     |    329|   715|
|6 months  |PROBIT         |BELARUS      |Low      |   5135| 15757|
|6 months  |PROBIT         |BELARUS      |Medium   |   7923| 15757|
|6 months  |PROBIT         |BELARUS      |High     |   2699| 15757|
|6 months  |PROVIDE        |BANGLADESH   |Low      |    182|   603|
|6 months  |PROVIDE        |BANGLADESH   |Medium   |    229|   603|
|6 months  |PROVIDE        |BANGLADESH   |High     |    192|   603|
|6 months  |SAS-CompFeed   |INDIA        |Low      |    600|  1333|
|6 months  |SAS-CompFeed   |INDIA        |Medium   |    441|  1333|
|6 months  |SAS-CompFeed   |INDIA        |High     |    292|  1333|
|6 months  |SAS-FoodSuppl  |INDIA        |Low      |    307|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Medium   |     36|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |High     |     37|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |Low      |     85|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |Medium   |   1407|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |High     |    536|  2028|
|6 months  |Vellore Crypto |INDIA        |Low      |    146|   408|
|6 months  |Vellore Crypto |INDIA        |Medium   |    152|   408|
|6 months  |Vellore Crypto |INDIA        |High     |    110|   408|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low      |   1528|  8502|
|6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |   2181|  8502|
|6 months  |ZVITAMBO       |ZIMBABWE     |High     |   4793|  8502|
|24 months |CMC-V-BCS-2002 |INDIA        |Low      |    111|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |Medium   |    100|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |High     |    161|   372|
|24 months |COHORTS        |INDIA        |Low      |   1173|  4751|
|24 months |COHORTS        |INDIA        |Medium   |   2680|  4751|
|24 months |COHORTS        |INDIA        |High     |    898|  4751|
|24 months |COHORTS        |GUATEMALA    |Low      |    503|  1074|
|24 months |COHORTS        |GUATEMALA    |Medium   |    354|  1074|
|24 months |COHORTS        |GUATEMALA    |High     |    217|  1074|
|24 months |COHORTS        |PHILIPPINES  |Low      |    920|  2449|
|24 months |COHORTS        |PHILIPPINES  |Medium   |    452|  2449|
|24 months |COHORTS        |PHILIPPINES  |High     |   1077|  2449|
|24 months |EE             |PAKISTAN     |Low      |    139|   165|
|24 months |EE             |PAKISTAN     |Medium   |     21|   165|
|24 months |EE             |PAKISTAN     |High     |      5|   165|
|24 months |GMS-Nepal      |NEPAL        |Low      |    343|   487|
|24 months |GMS-Nepal      |NEPAL        |Medium   |     94|   487|
|24 months |GMS-Nepal      |NEPAL        |High     |     50|   487|
|24 months |JiVitA-3       |BANGLADESH   |Low      |   3037|  8599|
|24 months |JiVitA-3       |BANGLADESH   |Medium   |   2638|  8599|
|24 months |JiVitA-3       |BANGLADESH   |High     |   2924|  8599|
|24 months |JiVitA-4       |BANGLADESH   |Low      |   1527|  4727|
|24 months |JiVitA-4       |BANGLADESH   |Medium   |   1476|  4727|
|24 months |JiVitA-4       |BANGLADESH   |High     |   1724|  4727|
|24 months |LCNI-5         |MALAWI       |Low      |    176|   555|
|24 months |LCNI-5         |MALAWI       |Medium   |    192|   555|
|24 months |LCNI-5         |MALAWI       |High     |    187|   555|
|24 months |MAL-ED         |INDIA        |Low      |     80|   192|
|24 months |MAL-ED         |INDIA        |Medium   |     43|   192|
|24 months |MAL-ED         |INDIA        |High     |     69|   192|
|24 months |MAL-ED         |BANGLADESH   |Low      |     60|   204|
|24 months |MAL-ED         |BANGLADESH   |Medium   |     49|   204|
|24 months |MAL-ED         |BANGLADESH   |High     |     95|   204|
|24 months |MAL-ED         |PERU         |Low      |     73|   200|
|24 months |MAL-ED         |PERU         |Medium   |     66|   200|
|24 months |MAL-ED         |PERU         |High     |     61|   200|
|24 months |MAL-ED         |NEPAL        |Low      |    107|   218|
|24 months |MAL-ED         |NEPAL        |Medium   |     53|   218|
|24 months |MAL-ED         |NEPAL        |High     |     58|   218|
|24 months |MAL-ED         |BRAZIL       |Low      |     72|   169|
|24 months |MAL-ED         |BRAZIL       |Medium   |     70|   169|
|24 months |MAL-ED         |BRAZIL       |High     |     27|   169|
|24 months |MAL-ED         |TANZANIA     |Low      |     54|   174|
|24 months |MAL-ED         |TANZANIA     |Medium   |     65|   174|
|24 months |MAL-ED         |TANZANIA     |High     |     55|   174|
|24 months |MAL-ED         |SOUTH AFRICA |Low      |    132|   238|
|24 months |MAL-ED         |SOUTH AFRICA |Medium   |     31|   238|
|24 months |MAL-ED         |SOUTH AFRICA |High     |     75|   238|
|24 months |NIH-Birth      |BANGLADESH   |Low      |    177|   428|
|24 months |NIH-Birth      |BANGLADESH   |Medium   |    138|   428|
|24 months |NIH-Birth      |BANGLADESH   |High     |    113|   428|
|24 months |NIH-Crypto     |BANGLADESH   |Low      |    156|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Medium   |    111|   514|
|24 months |NIH-Crypto     |BANGLADESH   |High     |    247|   514|
|24 months |PROBIT         |BELARUS      |Low      |   1253|  3970|
|24 months |PROBIT         |BELARUS      |Medium   |   2065|  3970|
|24 months |PROBIT         |BELARUS      |High     |    652|  3970|
|24 months |PROVIDE        |BANGLADESH   |Low      |    175|   579|
|24 months |PROVIDE        |BANGLADESH   |Medium   |    217|   579|
|24 months |PROVIDE        |BANGLADESH   |High     |    187|   579|
|24 months |TanzaniaChild2 |TANZANIA     |Low      |      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Medium   |      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |High     |      4|     6|
|24 months |Vellore Crypto |INDIA        |Low      |    147|   409|
|24 months |Vellore Crypto |INDIA        |Medium   |    151|   409|
|24 months |Vellore Crypto |INDIA        |High     |    111|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |Low      |     86|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |Medium   |     99|   432|
|24 months |ZVITAMBO       |ZIMBABWE     |High     |    247|   432|


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
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA





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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
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


