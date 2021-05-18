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
|Birth     |CMC-V-BCS-2002 |INDIA        |Low      |     30|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |Medium   |     24|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |High     |     38|    92|
|Birth     |COHORTS        |INDIA        |Low      |   1469|  5978|
|Birth     |COHORTS        |INDIA        |Medium   |   3364|  5978|
|Birth     |COHORTS        |INDIA        |High     |   1145|  5978|
|Birth     |COHORTS        |GUATEMALA    |Low      |    405|   845|
|Birth     |COHORTS        |GUATEMALA    |Medium   |    277|   845|
|Birth     |COHORTS        |GUATEMALA    |High     |    163|   845|
|Birth     |COHORTS        |PHILIPPINES  |Low      |   1126|  3050|
|Birth     |COHORTS        |PHILIPPINES  |Medium   |    556|  3050|
|Birth     |COHORTS        |PHILIPPINES  |High     |   1368|  3050|
|Birth     |EE             |PAKISTAN     |Low      |    204|   238|
|Birth     |EE             |PAKISTAN     |Medium   |     21|   238|
|Birth     |EE             |PAKISTAN     |High     |     13|   238|
|Birth     |GMS-Nepal      |NEPAL        |Low      |    481|   694|
|Birth     |GMS-Nepal      |NEPAL        |Medium   |    131|   694|
|Birth     |GMS-Nepal      |NEPAL        |High     |     82|   694|
|Birth     |JiVitA-3       |BANGLADESH   |Low      |   8276| 22439|
|Birth     |JiVitA-3       |BANGLADESH   |Medium   |   6798| 22439|
|Birth     |JiVitA-3       |BANGLADESH   |High     |   7365| 22439|
|Birth     |JiVitA-4       |BANGLADESH   |Low      |    944|  2818|
|Birth     |JiVitA-4       |BANGLADESH   |Medium   |    879|  2818|
|Birth     |JiVitA-4       |BANGLADESH   |High     |    995|  2818|
|Birth     |MAL-ED         |INDIA        |Low      |     15|    40|
|Birth     |MAL-ED         |INDIA        |Medium   |      9|    40|
|Birth     |MAL-ED         |INDIA        |High     |     16|    40|
|Birth     |MAL-ED         |BANGLADESH   |Low      |     65|   223|
|Birth     |MAL-ED         |BANGLADESH   |Medium   |     51|   223|
|Birth     |MAL-ED         |BANGLADESH   |High     |    107|   223|
|Birth     |MAL-ED         |PERU         |Low      |     92|   232|
|Birth     |MAL-ED         |PERU         |Medium   |     74|   232|
|Birth     |MAL-ED         |PERU         |High     |     66|   232|
|Birth     |MAL-ED         |NEPAL        |Low      |     13|    25|
|Birth     |MAL-ED         |NEPAL        |Medium   |      4|    25|
|Birth     |MAL-ED         |NEPAL        |High     |      8|    25|
|Birth     |MAL-ED         |BRAZIL       |Low      |     30|    65|
|Birth     |MAL-ED         |BRAZIL       |Medium   |     28|    65|
|Birth     |MAL-ED         |BRAZIL       |High     |      7|    65|
|Birth     |MAL-ED         |TANZANIA     |Low      |     31|   100|
|Birth     |MAL-ED         |TANZANIA     |Medium   |     36|   100|
|Birth     |MAL-ED         |TANZANIA     |High     |     33|   100|
|Birth     |MAL-ED         |SOUTH AFRICA |Low      |     65|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |Medium   |     17|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |High     |     41|   123|
|Birth     |NIH-Birth      |BANGLADESH   |Low      |    260|   608|
|Birth     |NIH-Birth      |BANGLADESH   |Medium   |    189|   608|
|Birth     |NIH-Birth      |BANGLADESH   |High     |    159|   608|
|Birth     |NIH-Crypto     |BANGLADESH   |Low      |    231|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |Medium   |    163|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |High     |    338|   732|
|Birth     |PROBIT         |BELARUS      |Low      |   4444| 13893|
|Birth     |PROBIT         |BELARUS      |Medium   |   7110| 13893|
|Birth     |PROBIT         |BELARUS      |High     |   2339| 13893|
|Birth     |PROVIDE        |BANGLADESH   |Low      |    161|   539|
|Birth     |PROVIDE        |BANGLADESH   |Medium   |    201|   539|
|Birth     |PROVIDE        |BANGLADESH   |High     |    177|   539|
|Birth     |SAS-CompFeed   |INDIA        |Low      |    553|  1250|
|Birth     |SAS-CompFeed   |INDIA        |Medium   |    413|  1250|
|Birth     |SAS-CompFeed   |INDIA        |High     |    284|  1250|
|Birth     |Vellore Crypto |INDIA        |Low      |    139|   388|
|Birth     |Vellore Crypto |INDIA        |Medium   |    147|   388|
|Birth     |Vellore Crypto |INDIA        |High     |    102|   388|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low      |   2521| 13866|
|Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |   3553| 13866|
|Birth     |ZVITAMBO       |ZIMBABWE     |High     |   7792| 13866|
|6 months  |CMC-V-BCS-2002 |INDIA        |Low      |    109|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |    101|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |High     |    159|   369|
|6 months  |COHORTS        |INDIA        |Low      |   1539|  6178|
|6 months  |COHORTS        |INDIA        |Medium   |   3460|  6178|
|6 months  |COHORTS        |INDIA        |High     |   1179|  6178|
|6 months  |COHORTS        |GUATEMALA    |Low      |    454|   955|
|6 months  |COHORTS        |GUATEMALA    |Medium   |    320|   955|
|6 months  |COHORTS        |GUATEMALA    |High     |    181|   955|
|6 months  |COHORTS        |PHILIPPINES  |Low      |   1025|  2708|
|6 months  |COHORTS        |PHILIPPINES  |Medium   |    492|  2708|
|6 months  |COHORTS        |PHILIPPINES  |High     |   1191|  2708|
|6 months  |EE             |PAKISTAN     |Low      |    314|   369|
|6 months  |EE             |PAKISTAN     |Medium   |     34|   369|
|6 months  |EE             |PAKISTAN     |High     |     21|   369|
|6 months  |GMS-Nepal      |NEPAL        |Low      |    393|   564|
|6 months  |GMS-Nepal      |NEPAL        |Medium   |    107|   564|
|6 months  |GMS-Nepal      |NEPAL        |High     |     64|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |Low      |    102|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |Medium   |     81|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |High     |    105|   288|
|6 months  |JiVitA-3       |BANGLADESH   |Low      |   5864| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |Medium   |   5157| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |High     |   5781| 16802|
|6 months  |JiVitA-4       |BANGLADESH   |Low      |   1594|  4822|
|6 months  |JiVitA-4       |BANGLADESH   |Medium   |   1494|  4822|
|6 months  |JiVitA-4       |BANGLADESH   |High     |   1734|  4822|
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
|6 months  |PROBIT         |BELARUS      |Low      |   5135| 15760|
|6 months  |PROBIT         |BELARUS      |Medium   |   7925| 15760|
|6 months  |PROBIT         |BELARUS      |High     |   2700| 15760|
|6 months  |PROVIDE        |BANGLADESH   |Low      |    182|   604|
|6 months  |PROVIDE        |BANGLADESH   |Medium   |    230|   604|
|6 months  |PROVIDE        |BANGLADESH   |High     |    192|   604|
|6 months  |SAS-CompFeed   |INDIA        |Low      |    599|  1335|
|6 months  |SAS-CompFeed   |INDIA        |Medium   |    443|  1335|
|6 months  |SAS-CompFeed   |INDIA        |High     |    293|  1335|
|6 months  |SAS-FoodSuppl  |INDIA        |Low      |    306|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Medium   |     37|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |High     |     37|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |Low      |     85|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |Medium   |   1408|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |High     |    536|  2029|
|6 months  |Vellore Crypto |INDIA        |Low      |    146|   407|
|6 months  |Vellore Crypto |INDIA        |Medium   |    150|   407|
|6 months  |Vellore Crypto |INDIA        |High     |    111|   407|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low      |   1560|  8666|
|6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |   2217|  8666|
|6 months  |ZVITAMBO       |ZIMBABWE     |High     |   4889|  8666|
|24 months |CMC-V-BCS-2002 |INDIA        |Low      |    110|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |Medium   |    100|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |High     |    161|   371|
|24 months |COHORTS        |INDIA        |Low      |   1185|  4790|
|24 months |COHORTS        |INDIA        |Medium   |   2700|  4790|
|24 months |COHORTS        |INDIA        |High     |    905|  4790|
|24 months |COHORTS        |GUATEMALA    |Low      |    497|  1062|
|24 months |COHORTS        |GUATEMALA    |Medium   |    349|  1062|
|24 months |COHORTS        |GUATEMALA    |High     |    216|  1062|
|24 months |COHORTS        |PHILIPPINES  |Low      |    916|  2445|
|24 months |COHORTS        |PHILIPPINES  |Medium   |    450|  2445|
|24 months |COHORTS        |PHILIPPINES  |High     |   1079|  2445|
|24 months |EE             |PAKISTAN     |Low      |    138|   164|
|24 months |EE             |PAKISTAN     |Medium   |     21|   164|
|24 months |EE             |PAKISTAN     |High     |      5|   164|
|24 months |GMS-Nepal      |NEPAL        |Low      |    344|   488|
|24 months |GMS-Nepal      |NEPAL        |Medium   |     94|   488|
|24 months |GMS-Nepal      |NEPAL        |High     |     50|   488|
|24 months |JiVitA-3       |BANGLADESH   |Low      |   3046|  8628|
|24 months |JiVitA-3       |BANGLADESH   |Medium   |   2647|  8628|
|24 months |JiVitA-3       |BANGLADESH   |High     |   2935|  8628|
|24 months |JiVitA-4       |BANGLADESH   |Low      |   1531|  4744|
|24 months |JiVitA-4       |BANGLADESH   |Medium   |   1483|  4744|
|24 months |JiVitA-4       |BANGLADESH   |High     |   1730|  4744|
|24 months |LCNI-5         |MALAWI       |Low      |    179|   571|
|24 months |LCNI-5         |MALAWI       |Medium   |    198|   571|
|24 months |LCNI-5         |MALAWI       |High     |    194|   571|
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
|24 months |NIH-Birth      |BANGLADESH   |Low      |    178|   429|
|24 months |NIH-Birth      |BANGLADESH   |Medium   |    138|   429|
|24 months |NIH-Birth      |BANGLADESH   |High     |    113|   429|
|24 months |NIH-Crypto     |BANGLADESH   |Low      |    156|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Medium   |    111|   514|
|24 months |NIH-Crypto     |BANGLADESH   |High     |    247|   514|
|24 months |PROBIT         |BELARUS      |Low      |   1268|  4035|
|24 months |PROBIT         |BELARUS      |Medium   |   2103|  4035|
|24 months |PROBIT         |BELARUS      |High     |    664|  4035|
|24 months |PROVIDE        |BANGLADESH   |Low      |    175|   578|
|24 months |PROVIDE        |BANGLADESH   |Medium   |    216|   578|
|24 months |PROVIDE        |BANGLADESH   |High     |    187|   578|
|24 months |TanzaniaChild2 |TANZANIA     |Low      |      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Medium   |      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |High     |      4|     6|
|24 months |Vellore Crypto |INDIA        |Low      |    147|   409|
|24 months |Vellore Crypto |INDIA        |Medium   |    151|   409|
|24 months |Vellore Crypto |INDIA        |High     |    111|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |Low      |    295|  1639|
|24 months |ZVITAMBO       |ZIMBABWE     |Medium   |    402|  1639|
|24 months |ZVITAMBO       |ZIMBABWE     |High     |    942|  1639|


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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
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


