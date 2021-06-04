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

**Intervention Variable:** nhh

**Adjustment Set:**

* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* cleanck
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_cleanck
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country    |nhh       | n_cell|   n|
|:---------|:--------------|:----------|:---------|------:|---:|
|Birth     |NIH-Birth      |BANGLADESH |3 or less |    104| 575|
|Birth     |NIH-Birth      |BANGLADESH |4-5       |    244| 575|
|Birth     |NIH-Birth      |BANGLADESH |6-7       |    130| 575|
|Birth     |NIH-Birth      |BANGLADESH |8+        |     97| 575|
|Birth     |NIH-Crypto     |BANGLADESH |3 or less |    103| 707|
|Birth     |NIH-Crypto     |BANGLADESH |4-5       |    318| 707|
|Birth     |NIH-Crypto     |BANGLADESH |6-7       |    167| 707|
|Birth     |NIH-Crypto     |BANGLADESH |8+        |    119| 707|
|Birth     |PROVIDE        |BANGLADESH |3 or less |    103| 532|
|Birth     |PROVIDE        |BANGLADESH |4-5       |    249| 532|
|Birth     |PROVIDE        |BANGLADESH |6-7       |    114| 532|
|Birth     |PROVIDE        |BANGLADESH |8+        |     66| 532|
|Birth     |Vellore Crypto |INDIA      |3 or less |     52| 343|
|Birth     |Vellore Crypto |INDIA      |4-5       |    131| 343|
|Birth     |Vellore Crypto |INDIA      |6-7       |     84| 343|
|Birth     |Vellore Crypto |INDIA      |8+        |     76| 343|
|6 months  |LCNI-5         |MALAWI     |3 or less |    224| 816|
|6 months  |LCNI-5         |MALAWI     |4-5       |    340| 816|
|6 months  |LCNI-5         |MALAWI     |6-7       |    182| 816|
|6 months  |LCNI-5         |MALAWI     |8+        |     70| 816|
|6 months  |NIH-Birth      |BANGLADESH |3 or less |     95| 537|
|6 months  |NIH-Birth      |BANGLADESH |4-5       |    227| 537|
|6 months  |NIH-Birth      |BANGLADESH |6-7       |    128| 537|
|6 months  |NIH-Birth      |BANGLADESH |8+        |     87| 537|
|6 months  |NIH-Crypto     |BANGLADESH |3 or less |    104| 715|
|6 months  |NIH-Crypto     |BANGLADESH |4-5       |    326| 715|
|6 months  |NIH-Crypto     |BANGLADESH |6-7       |    170| 715|
|6 months  |NIH-Crypto     |BANGLADESH |8+        |    115| 715|
|6 months  |PROVIDE        |BANGLADESH |3 or less |    105| 603|
|6 months  |PROVIDE        |BANGLADESH |4-5       |    289| 603|
|6 months  |PROVIDE        |BANGLADESH |6-7       |    130| 603|
|6 months  |PROVIDE        |BANGLADESH |8+        |     79| 603|
|6 months  |SAS-FoodSuppl  |INDIA      |3 or less |     33| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |4-5       |    166| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |6-7       |    115| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |8+        |     66| 380|
|6 months  |Vellore Crypto |INDIA      |3 or less |     57| 408|
|6 months  |Vellore Crypto |INDIA      |4-5       |    157| 408|
|6 months  |Vellore Crypto |INDIA      |6-7       |    107| 408|
|6 months  |Vellore Crypto |INDIA      |8+        |     87| 408|
|24 months |LCNI-5         |MALAWI     |3 or less |    157| 558|
|24 months |LCNI-5         |MALAWI     |4-5       |    230| 558|
|24 months |LCNI-5         |MALAWI     |6-7       |    123| 558|
|24 months |LCNI-5         |MALAWI     |8+        |     48| 558|
|24 months |NIH-Birth      |BANGLADESH |3 or less |     74| 428|
|24 months |NIH-Birth      |BANGLADESH |4-5       |    184| 428|
|24 months |NIH-Birth      |BANGLADESH |6-7       |    100| 428|
|24 months |NIH-Birth      |BANGLADESH |8+        |     70| 428|
|24 months |NIH-Crypto     |BANGLADESH |3 or less |     69| 514|
|24 months |NIH-Crypto     |BANGLADESH |4-5       |    232| 514|
|24 months |NIH-Crypto     |BANGLADESH |6-7       |    130| 514|
|24 months |NIH-Crypto     |BANGLADESH |8+        |     83| 514|
|24 months |PROVIDE        |BANGLADESH |3 or less |    106| 579|
|24 months |PROVIDE        |BANGLADESH |4-5       |    273| 579|
|24 months |PROVIDE        |BANGLADESH |6-7       |    117| 579|
|24 months |PROVIDE        |BANGLADESH |8+        |     83| 579|
|24 months |Vellore Crypto |INDIA      |3 or less |     58| 409|
|24 months |Vellore Crypto |INDIA      |4-5       |    158| 409|
|24 months |Vellore Crypto |INDIA      |6-7       |    107| 409|
|24 months |Vellore Crypto |INDIA      |8+        |     86| 409|


The following strata were considered:

* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: Vellore Crypto, country: INDIA









