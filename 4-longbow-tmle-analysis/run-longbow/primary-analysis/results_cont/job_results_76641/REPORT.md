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
|Birth     |NIH-Birth      |BANGLADESH |3 or less |     94| 575|
|Birth     |NIH-Birth      |BANGLADESH |4-5       |    264| 575|
|Birth     |NIH-Birth      |BANGLADESH |6-7       |    128| 575|
|Birth     |NIH-Birth      |BANGLADESH |8+        |     89| 575|
|Birth     |NIH-Crypto     |BANGLADESH |3 or less |     79| 707|
|Birth     |NIH-Crypto     |BANGLADESH |4-5       |    337| 707|
|Birth     |NIH-Crypto     |BANGLADESH |6-7       |    171| 707|
|Birth     |NIH-Crypto     |BANGLADESH |8+        |    120| 707|
|Birth     |PROVIDE        |BANGLADESH |3 or less |    103| 532|
|Birth     |PROVIDE        |BANGLADESH |4-5       |    255| 532|
|Birth     |PROVIDE        |BANGLADESH |6-7       |    107| 532|
|Birth     |PROVIDE        |BANGLADESH |8+        |     67| 532|
|Birth     |Vellore Crypto |INDIA      |3 or less |     53| 343|
|Birth     |Vellore Crypto |INDIA      |4-5       |    116| 343|
|Birth     |Vellore Crypto |INDIA      |6-7       |    108| 343|
|Birth     |Vellore Crypto |INDIA      |8+        |     66| 343|
|6 months  |LCNI-5         |MALAWI     |3 or less |    252| 825|
|6 months  |LCNI-5         |MALAWI     |4-5       |    315| 825|
|6 months  |LCNI-5         |MALAWI     |6-7       |    177| 825|
|6 months  |LCNI-5         |MALAWI     |8+        |     81| 825|
|6 months  |NIH-Birth      |BANGLADESH |3 or less |     87| 537|
|6 months  |NIH-Birth      |BANGLADESH |4-5       |    248| 537|
|6 months  |NIH-Birth      |BANGLADESH |6-7       |    128| 537|
|6 months  |NIH-Birth      |BANGLADESH |8+        |     74| 537|
|6 months  |NIH-Crypto     |BANGLADESH |3 or less |     80| 715|
|6 months  |NIH-Crypto     |BANGLADESH |4-5       |    346| 715|
|6 months  |NIH-Crypto     |BANGLADESH |6-7       |    171| 715|
|6 months  |NIH-Crypto     |BANGLADESH |8+        |    118| 715|
|6 months  |PROVIDE        |BANGLADESH |3 or less |    110| 603|
|6 months  |PROVIDE        |BANGLADESH |4-5       |    286| 603|
|6 months  |PROVIDE        |BANGLADESH |6-7       |    126| 603|
|6 months  |PROVIDE        |BANGLADESH |8+        |     81| 603|
|6 months  |SAS-FoodSuppl  |INDIA      |3 or less |     27| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |4-5       |    155| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |6-7       |    124| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |8+        |     74| 380|
|6 months  |Vellore Crypto |INDIA      |3 or less |     59| 408|
|6 months  |Vellore Crypto |INDIA      |4-5       |    144| 408|
|6 months  |Vellore Crypto |INDIA      |6-7       |    124| 408|
|6 months  |Vellore Crypto |INDIA      |8+        |     81| 408|
|24 months |LCNI-5         |MALAWI     |3 or less |    164| 556|
|24 months |LCNI-5         |MALAWI     |4-5       |    214| 556|
|24 months |LCNI-5         |MALAWI     |6-7       |    124| 556|
|24 months |LCNI-5         |MALAWI     |8+        |     54| 556|
|24 months |NIH-Birth      |BANGLADESH |3 or less |     65| 428|
|24 months |NIH-Birth      |BANGLADESH |4-5       |    202| 428|
|24 months |NIH-Birth      |BANGLADESH |6-7       |    102| 428|
|24 months |NIH-Birth      |BANGLADESH |8+        |     59| 428|
|24 months |NIH-Crypto     |BANGLADESH |3 or less |     59| 514|
|24 months |NIH-Crypto     |BANGLADESH |4-5       |    247| 514|
|24 months |NIH-Crypto     |BANGLADESH |6-7       |    122| 514|
|24 months |NIH-Crypto     |BANGLADESH |8+        |     86| 514|
|24 months |PROVIDE        |BANGLADESH |3 or less |    110| 579|
|24 months |PROVIDE        |BANGLADESH |4-5       |    277| 579|
|24 months |PROVIDE        |BANGLADESH |6-7       |    113| 579|
|24 months |PROVIDE        |BANGLADESH |8+        |     79| 579|
|24 months |Vellore Crypto |INDIA      |3 or less |     59| 409|
|24 months |Vellore Crypto |INDIA      |4-5       |    145| 409|
|24 months |Vellore Crypto |INDIA      |6-7       |    124| 409|
|24 months |Vellore Crypto |INDIA      |8+        |     81| 409|


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









