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

**Intervention Variable:** earlybf

**Adjustment Set:**

* sex
* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid      |country      |earlybf | n_cell|     n|
|:---------|:------------|:------------|:-------|------:|-----:|
|Birth     |EE           |PAKISTAN     |1       |     44|   229|
|Birth     |EE           |PAKISTAN     |0       |    185|   229|
|Birth     |GMS-Nepal    |NEPAL        |1       |    180|   632|
|Birth     |GMS-Nepal    |NEPAL        |0       |    452|   632|
|Birth     |JiVitA-3     |BANGLADESH   |1       |    236| 22370|
|Birth     |JiVitA-3     |BANGLADESH   |0       |  22134| 22370|
|Birth     |JiVitA-4     |BANGLADESH   |1       |   1912|  2823|
|Birth     |JiVitA-4     |BANGLADESH   |0       |    911|  2823|
|Birth     |MAL-ED       |INDIA        |1       |     32|    46|
|Birth     |MAL-ED       |INDIA        |0       |     14|    46|
|Birth     |MAL-ED       |BANGLADESH   |1       |    147|   230|
|Birth     |MAL-ED       |BANGLADESH   |0       |     83|   230|
|Birth     |MAL-ED       |PERU         |1       |    175|   233|
|Birth     |MAL-ED       |PERU         |0       |     58|   233|
|Birth     |MAL-ED       |NEPAL        |1       |     14|    27|
|Birth     |MAL-ED       |NEPAL        |0       |     13|    27|
|Birth     |MAL-ED       |BRAZIL       |1       |     28|    65|
|Birth     |MAL-ED       |BRAZIL       |0       |     37|    65|
|Birth     |MAL-ED       |TANZANIA     |1       |    111|   125|
|Birth     |MAL-ED       |TANZANIA     |0       |     14|   125|
|Birth     |MAL-ED       |SOUTH AFRICA |1       |     69|   111|
|Birth     |MAL-ED       |SOUTH AFRICA |0       |     42|   111|
|Birth     |NIH-Crypto   |BANGLADESH   |1       |    634|   732|
|Birth     |NIH-Crypto   |BANGLADESH   |0       |     98|   732|
|Birth     |SAS-CompFeed |INDIA        |1       |     86|  1207|
|Birth     |SAS-CompFeed |INDIA        |0       |   1121|  1207|
|Birth     |ZVITAMBO     |ZIMBABWE     |1       |   6556| 12354|
|Birth     |ZVITAMBO     |ZIMBABWE     |0       |   5798| 12354|
|6 months  |EE           |PAKISTAN     |1       |     68|   362|
|6 months  |EE           |PAKISTAN     |0       |    294|   362|
|6 months  |GMS-Nepal    |NEPAL        |1       |    151|   511|
|6 months  |GMS-Nepal    |NEPAL        |0       |    360|   511|
|6 months  |JiVitA-3     |BANGLADESH   |1       |     35| 16811|
|6 months  |JiVitA-3     |BANGLADESH   |0       |  16776| 16811|
|6 months  |JiVitA-4     |BANGLADESH   |1       |   3094|  4831|
|6 months  |JiVitA-4     |BANGLADESH   |0       |   1737|  4831|
|6 months  |MAL-ED       |INDIA        |1       |    140|   236|
|6 months  |MAL-ED       |INDIA        |0       |     96|   236|
|6 months  |MAL-ED       |BANGLADESH   |1       |    147|   240|
|6 months  |MAL-ED       |BANGLADESH   |0       |     93|   240|
|6 months  |MAL-ED       |PERU         |1       |    202|   273|
|6 months  |MAL-ED       |PERU         |0       |     71|   273|
|6 months  |MAL-ED       |NEPAL        |1       |     96|   236|
|6 months  |MAL-ED       |NEPAL        |0       |    140|   236|
|6 months  |MAL-ED       |BRAZIL       |1       |     95|   209|
|6 months  |MAL-ED       |BRAZIL       |0       |    114|   209|
|6 months  |MAL-ED       |TANZANIA     |1       |    205|   247|
|6 months  |MAL-ED       |TANZANIA     |0       |     42|   247|
|6 months  |MAL-ED       |SOUTH AFRICA |1       |    156|   250|
|6 months  |MAL-ED       |SOUTH AFRICA |0       |     94|   250|
|6 months  |NIH-Crypto   |BANGLADESH   |1       |    619|   715|
|6 months  |NIH-Crypto   |BANGLADESH   |0       |     96|   715|
|6 months  |SAS-CompFeed |INDIA        |1       |     98|  1336|
|6 months  |SAS-CompFeed |INDIA        |0       |   1238|  1336|
|6 months  |ZVITAMBO     |ZIMBABWE     |1       |   4146|  7698|
|6 months  |ZVITAMBO     |ZIMBABWE     |0       |   3552|  7698|
|24 months |EE           |PAKISTAN     |1       |     32|   164|
|24 months |EE           |PAKISTAN     |0       |    132|   164|
|24 months |GMS-Nepal    |NEPAL        |1       |    131|   445|
|24 months |GMS-Nepal    |NEPAL        |0       |    314|   445|
|24 months |JiVitA-3     |BANGLADESH   |1       |      1|  8632|
|24 months |JiVitA-3     |BANGLADESH   |0       |   8631|  8632|
|24 months |JiVitA-4     |BANGLADESH   |1       |   3042|  4752|
|24 months |JiVitA-4     |BANGLADESH   |0       |   1710|  4752|
|24 months |MAL-ED       |INDIA        |1       |    134|   227|
|24 months |MAL-ED       |INDIA        |0       |     93|   227|
|24 months |MAL-ED       |BANGLADESH   |1       |    128|   211|
|24 months |MAL-ED       |BANGLADESH   |0       |     83|   211|
|24 months |MAL-ED       |PERU         |1       |    149|   201|
|24 months |MAL-ED       |PERU         |0       |     52|   201|
|24 months |MAL-ED       |NEPAL        |1       |     95|   228|
|24 months |MAL-ED       |NEPAL        |0       |    133|   228|
|24 months |MAL-ED       |BRAZIL       |1       |     80|   169|
|24 months |MAL-ED       |BRAZIL       |0       |     89|   169|
|24 months |MAL-ED       |TANZANIA     |1       |    180|   214|
|24 months |MAL-ED       |TANZANIA     |0       |     34|   214|
|24 months |MAL-ED       |SOUTH AFRICA |1       |    144|   235|
|24 months |MAL-ED       |SOUTH AFRICA |0       |     91|   235|
|24 months |NIH-Crypto   |BANGLADESH   |1       |    443|   514|
|24 months |NIH-Crypto   |BANGLADESH   |0       |     71|   514|
|24 months |ZVITAMBO     |ZIMBABWE     |1       |    717|  1406|
|24 months |ZVITAMBO     |ZIMBABWE     |0       |    689|  1406|


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
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
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH





```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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


