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
|Birth     |NIH-Birth      |BANGLADESH |3 or less |    112| 608|
|Birth     |NIH-Birth      |BANGLADESH |4-5       |    255| 608|
|Birth     |NIH-Birth      |BANGLADESH |6-7       |    138| 608|
|Birth     |NIH-Birth      |BANGLADESH |8+        |    103| 608|
|Birth     |NIH-Crypto     |BANGLADESH |3 or less |    108| 732|
|Birth     |NIH-Crypto     |BANGLADESH |4-5       |    328| 732|
|Birth     |NIH-Crypto     |BANGLADESH |6-7       |    176| 732|
|Birth     |NIH-Crypto     |BANGLADESH |8+        |    120| 732|
|Birth     |PROVIDE        |BANGLADESH |3 or less |    104| 539|
|Birth     |PROVIDE        |BANGLADESH |4-5       |    251| 539|
|Birth     |PROVIDE        |BANGLADESH |6-7       |    116| 539|
|Birth     |PROVIDE        |BANGLADESH |8+        |     68| 539|
|Birth     |Vellore Crypto |INDIA      |3 or less |     54| 388|
|Birth     |Vellore Crypto |INDIA      |4-5       |    150| 388|
|Birth     |Vellore Crypto |INDIA      |6-7       |    103| 388|
|Birth     |Vellore Crypto |INDIA      |8+        |     81| 388|
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
|6 months  |PROVIDE        |BANGLADESH |3 or less |    105| 604|
|6 months  |PROVIDE        |BANGLADESH |4-5       |    289| 604|
|6 months  |PROVIDE        |BANGLADESH |6-7       |    130| 604|
|6 months  |PROVIDE        |BANGLADESH |8+        |     80| 604|
|6 months  |SAS-FoodSuppl  |INDIA      |3 or less |     33| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |4-5       |    166| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |6-7       |    115| 380|
|6 months  |SAS-FoodSuppl  |INDIA      |8+        |     66| 380|
|6 months  |Vellore Crypto |INDIA      |3 or less |     58| 407|
|6 months  |Vellore Crypto |INDIA      |4-5       |    158| 407|
|6 months  |Vellore Crypto |INDIA      |6-7       |    106| 407|
|6 months  |Vellore Crypto |INDIA      |8+        |     85| 407|
|24 months |LCNI-5         |MALAWI     |3 or less |    159| 574|
|24 months |LCNI-5         |MALAWI     |4-5       |    237| 574|
|24 months |LCNI-5         |MALAWI     |6-7       |    129| 574|
|24 months |LCNI-5         |MALAWI     |8+        |     49| 574|
|24 months |NIH-Birth      |BANGLADESH |3 or less |     75| 429|
|24 months |NIH-Birth      |BANGLADESH |4-5       |    184| 429|
|24 months |NIH-Birth      |BANGLADESH |6-7       |    100| 429|
|24 months |NIH-Birth      |BANGLADESH |8+        |     70| 429|
|24 months |NIH-Crypto     |BANGLADESH |3 or less |     69| 514|
|24 months |NIH-Crypto     |BANGLADESH |4-5       |    232| 514|
|24 months |NIH-Crypto     |BANGLADESH |6-7       |    130| 514|
|24 months |NIH-Crypto     |BANGLADESH |8+        |     83| 514|
|24 months |PROVIDE        |BANGLADESH |3 or less |    106| 578|
|24 months |PROVIDE        |BANGLADESH |4-5       |    273| 578|
|24 months |PROVIDE        |BANGLADESH |6-7       |    117| 578|
|24 months |PROVIDE        |BANGLADESH |8+        |     82| 578|
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









