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
|Birth     |NIH-Birth      |BANGLADESH |3 or less |    100| 608|
|Birth     |NIH-Birth      |BANGLADESH |4-5       |    280| 608|
|Birth     |NIH-Birth      |BANGLADESH |6-7       |    136| 608|
|Birth     |NIH-Birth      |BANGLADESH |8+        |     92| 608|
|Birth     |NIH-Crypto     |BANGLADESH |3 or less |     82| 732|
|Birth     |NIH-Crypto     |BANGLADESH |4-5       |    348| 732|
|Birth     |NIH-Crypto     |BANGLADESH |6-7       |    180| 732|
|Birth     |NIH-Crypto     |BANGLADESH |8+        |    122| 732|
|Birth     |PROVIDE        |BANGLADESH |3 or less |    106| 539|
|Birth     |PROVIDE        |BANGLADESH |4-5       |    258| 539|
|Birth     |PROVIDE        |BANGLADESH |6-7       |    108| 539|
|Birth     |PROVIDE        |BANGLADESH |8+        |     67| 539|
|Birth     |Vellore Crypto |INDIA      |3 or less |     57| 388|
|Birth     |Vellore Crypto |INDIA      |4-5       |    138| 388|
|Birth     |Vellore Crypto |INDIA      |6-7       |    118| 388|
|Birth     |Vellore Crypto |INDIA      |8+        |     75| 388|
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
|6 months  |PROVIDE        |BANGLADESH |3 or less |    111| 604|
|6 months  |PROVIDE        |BANGLADESH |4-5       |    286| 604|
|6 months  |PROVIDE        |BANGLADESH |6-7       |    126| 604|
|6 months  |PROVIDE        |BANGLADESH |8+        |     81| 604|
|6 months  |SAS-FoodSuppl  |INDIA      |3 or less |     27| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |4-5       |    155| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |6-7       |    125| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |8+        |     73| 380|
|6 months  |Vellore Crypto |INDIA      |3 or less |     59| 407|
|6 months  |Vellore Crypto |INDIA      |4-5       |    143| 407|
|6 months  |Vellore Crypto |INDIA      |6-7       |    124| 407|
|6 months  |Vellore Crypto |INDIA      |8+        |     81| 407|
|24 months |LCNI-5         |MALAWI     |3 or less |    172| 572|
|24 months |LCNI-5         |MALAWI     |4-5       |    220| 572|
|24 months |LCNI-5         |MALAWI     |6-7       |    124| 572|
|24 months |LCNI-5         |MALAWI     |8+        |     56| 572|
|24 months |NIH-Birth      |BANGLADESH |3 or less |     65| 429|
|24 months |NIH-Birth      |BANGLADESH |4-5       |    202| 429|
|24 months |NIH-Birth      |BANGLADESH |6-7       |    103| 429|
|24 months |NIH-Birth      |BANGLADESH |8+        |     59| 429|
|24 months |NIH-Crypto     |BANGLADESH |3 or less |     59| 514|
|24 months |NIH-Crypto     |BANGLADESH |4-5       |    247| 514|
|24 months |NIH-Crypto     |BANGLADESH |6-7       |    122| 514|
|24 months |NIH-Crypto     |BANGLADESH |8+        |     86| 514|
|24 months |PROVIDE        |BANGLADESH |3 or less |    109| 578|
|24 months |PROVIDE        |BANGLADESH |4-5       |    277| 578|
|24 months |PROVIDE        |BANGLADESH |6-7       |    113| 578|
|24 months |PROVIDE        |BANGLADESH |8+        |     79| 578|
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









