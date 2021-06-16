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

* syntype
* agecat
* studyid
* country

## Data Summary

|syntype |agecat    |studyid        |country    |nhh       | n_cell|   n|
|:-------|:---------|:--------------|:----------|:---------|------:|---:|
|BC      |Birth     |NIH-Birth      |BANGLADESH |3 or less |    100| 608|
|BC      |Birth     |NIH-Birth      |BANGLADESH |4-5       |    280| 608|
|BC      |Birth     |NIH-Birth      |BANGLADESH |6-7       |    136| 608|
|BC      |Birth     |NIH-Birth      |BANGLADESH |8+        |     92| 608|
|BC      |Birth     |NIH-Crypto     |BANGLADESH |3 or less |     82| 732|
|BC      |Birth     |NIH-Crypto     |BANGLADESH |4-5       |    348| 732|
|BC      |Birth     |NIH-Crypto     |BANGLADESH |6-7       |    180| 732|
|BC      |Birth     |NIH-Crypto     |BANGLADESH |8+        |    122| 732|
|BC      |Birth     |PROVIDE        |BANGLADESH |3 or less |    106| 539|
|BC      |Birth     |PROVIDE        |BANGLADESH |4-5       |    258| 539|
|BC      |Birth     |PROVIDE        |BANGLADESH |6-7       |    108| 539|
|BC      |Birth     |PROVIDE        |BANGLADESH |8+        |     67| 539|
|BC      |Birth     |Vellore Crypto |INDIA      |3 or less |     57| 388|
|BC      |Birth     |Vellore Crypto |INDIA      |4-5       |    138| 388|
|BC      |Birth     |Vellore Crypto |INDIA      |6-7       |    118| 388|
|BC      |Birth     |Vellore Crypto |INDIA      |8+        |     75| 388|
|BC      |6 months  |LCNI-5         |MALAWI     |3 or less |    252| 825|
|BC      |6 months  |LCNI-5         |MALAWI     |4-5       |    315| 825|
|BC      |6 months  |LCNI-5         |MALAWI     |6-7       |    177| 825|
|BC      |6 months  |LCNI-5         |MALAWI     |8+        |     81| 825|
|BC      |6 months  |NIH-Birth      |BANGLADESH |3 or less |     87| 537|
|BC      |6 months  |NIH-Birth      |BANGLADESH |4-5       |    248| 537|
|BC      |6 months  |NIH-Birth      |BANGLADESH |6-7       |    128| 537|
|BC      |6 months  |NIH-Birth      |BANGLADESH |8+        |     74| 537|
|BC      |6 months  |NIH-Crypto     |BANGLADESH |3 or less |     80| 715|
|BC      |6 months  |NIH-Crypto     |BANGLADESH |4-5       |    346| 715|
|BC      |6 months  |NIH-Crypto     |BANGLADESH |6-7       |    171| 715|
|BC      |6 months  |NIH-Crypto     |BANGLADESH |8+        |    118| 715|
|BC      |6 months  |PROVIDE        |BANGLADESH |3 or less |    111| 604|
|BC      |6 months  |PROVIDE        |BANGLADESH |4-5       |    286| 604|
|BC      |6 months  |PROVIDE        |BANGLADESH |6-7       |    126| 604|
|BC      |6 months  |PROVIDE        |BANGLADESH |8+        |     81| 604|
|BC      |6 months  |SAS-FoodSuppl  |INDIA      |3 or less |     27| 380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA      |4-5       |    155| 380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA      |6-7       |    125| 380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA      |8+        |     73| 380|
|BC      |6 months  |Vellore Crypto |INDIA      |3 or less |     59| 407|
|BC      |6 months  |Vellore Crypto |INDIA      |4-5       |    143| 407|
|BC      |6 months  |Vellore Crypto |INDIA      |6-7       |    124| 407|
|BC      |6 months  |Vellore Crypto |INDIA      |8+        |     81| 407|
|BC      |24 months |LCNI-5         |MALAWI     |3 or less |    172| 572|
|BC      |24 months |LCNI-5         |MALAWI     |4-5       |    220| 572|
|BC      |24 months |LCNI-5         |MALAWI     |6-7       |    124| 572|
|BC      |24 months |LCNI-5         |MALAWI     |8+        |     56| 572|
|BC      |24 months |NIH-Birth      |BANGLADESH |3 or less |     65| 429|
|BC      |24 months |NIH-Birth      |BANGLADESH |4-5       |    202| 429|
|BC      |24 months |NIH-Birth      |BANGLADESH |6-7       |    103| 429|
|BC      |24 months |NIH-Birth      |BANGLADESH |8+        |     59| 429|
|BC      |24 months |NIH-Crypto     |BANGLADESH |3 or less |     59| 514|
|BC      |24 months |NIH-Crypto     |BANGLADESH |4-5       |    247| 514|
|BC      |24 months |NIH-Crypto     |BANGLADESH |6-7       |    122| 514|
|BC      |24 months |NIH-Crypto     |BANGLADESH |8+        |     86| 514|
|BC      |24 months |PROVIDE        |BANGLADESH |3 or less |    109| 578|
|BC      |24 months |PROVIDE        |BANGLADESH |4-5       |    277| 578|
|BC      |24 months |PROVIDE        |BANGLADESH |6-7       |    113| 578|
|BC      |24 months |PROVIDE        |BANGLADESH |8+        |     79| 578|
|BC      |24 months |Vellore Crypto |INDIA      |3 or less |     59| 409|
|BC      |24 months |Vellore Crypto |INDIA      |4-5       |    145| 409|
|BC      |24 months |Vellore Crypto |INDIA      |6-7       |    124| 409|
|BC      |24 months |Vellore Crypto |INDIA      |8+        |     81| 409|
|FULL    |Birth     |NIH-Birth      |BANGLADESH |3 or less |    112| 608|
|FULL    |Birth     |NIH-Birth      |BANGLADESH |4-5       |    255| 608|
|FULL    |Birth     |NIH-Birth      |BANGLADESH |6-7       |    138| 608|
|FULL    |Birth     |NIH-Birth      |BANGLADESH |8+        |    103| 608|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH |3 or less |    108| 732|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH |4-5       |    328| 732|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH |6-7       |    176| 732|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH |8+        |    120| 732|
|FULL    |Birth     |PROVIDE        |BANGLADESH |3 or less |    104| 539|
|FULL    |Birth     |PROVIDE        |BANGLADESH |4-5       |    251| 539|
|FULL    |Birth     |PROVIDE        |BANGLADESH |6-7       |    116| 539|
|FULL    |Birth     |PROVIDE        |BANGLADESH |8+        |     68| 539|
|FULL    |Birth     |Vellore Crypto |INDIA      |3 or less |     54| 388|
|FULL    |Birth     |Vellore Crypto |INDIA      |4-5       |    150| 388|
|FULL    |Birth     |Vellore Crypto |INDIA      |6-7       |    103| 388|
|FULL    |Birth     |Vellore Crypto |INDIA      |8+        |     81| 388|
|FULL    |6 months  |LCNI-5         |MALAWI     |3 or less |    224| 816|
|FULL    |6 months  |LCNI-5         |MALAWI     |4-5       |    340| 816|
|FULL    |6 months  |LCNI-5         |MALAWI     |6-7       |    182| 816|
|FULL    |6 months  |LCNI-5         |MALAWI     |8+        |     70| 816|
|FULL    |6 months  |NIH-Birth      |BANGLADESH |3 or less |     95| 537|
|FULL    |6 months  |NIH-Birth      |BANGLADESH |4-5       |    227| 537|
|FULL    |6 months  |NIH-Birth      |BANGLADESH |6-7       |    128| 537|
|FULL    |6 months  |NIH-Birth      |BANGLADESH |8+        |     87| 537|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH |3 or less |    104| 715|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH |4-5       |    326| 715|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH |6-7       |    170| 715|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH |8+        |    115| 715|
|FULL    |6 months  |PROVIDE        |BANGLADESH |3 or less |    105| 604|
|FULL    |6 months  |PROVIDE        |BANGLADESH |4-5       |    289| 604|
|FULL    |6 months  |PROVIDE        |BANGLADESH |6-7       |    130| 604|
|FULL    |6 months  |PROVIDE        |BANGLADESH |8+        |     80| 604|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA      |3 or less |     33| 380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA      |4-5       |    166| 380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA      |6-7       |    115| 380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA      |8+        |     66| 380|
|FULL    |6 months  |Vellore Crypto |INDIA      |3 or less |     58| 407|
|FULL    |6 months  |Vellore Crypto |INDIA      |4-5       |    158| 407|
|FULL    |6 months  |Vellore Crypto |INDIA      |6-7       |    106| 407|
|FULL    |6 months  |Vellore Crypto |INDIA      |8+        |     85| 407|
|FULL    |24 months |LCNI-5         |MALAWI     |3 or less |    159| 574|
|FULL    |24 months |LCNI-5         |MALAWI     |4-5       |    237| 574|
|FULL    |24 months |LCNI-5         |MALAWI     |6-7       |    129| 574|
|FULL    |24 months |LCNI-5         |MALAWI     |8+        |     49| 574|
|FULL    |24 months |NIH-Birth      |BANGLADESH |3 or less |     75| 429|
|FULL    |24 months |NIH-Birth      |BANGLADESH |4-5       |    184| 429|
|FULL    |24 months |NIH-Birth      |BANGLADESH |6-7       |    100| 429|
|FULL    |24 months |NIH-Birth      |BANGLADESH |8+        |     70| 429|
|FULL    |24 months |NIH-Crypto     |BANGLADESH |3 or less |     69| 514|
|FULL    |24 months |NIH-Crypto     |BANGLADESH |4-5       |    232| 514|
|FULL    |24 months |NIH-Crypto     |BANGLADESH |6-7       |    130| 514|
|FULL    |24 months |NIH-Crypto     |BANGLADESH |8+        |     83| 514|
|FULL    |24 months |PROVIDE        |BANGLADESH |3 or less |    106| 578|
|FULL    |24 months |PROVIDE        |BANGLADESH |4-5       |    273| 578|
|FULL    |24 months |PROVIDE        |BANGLADESH |6-7       |    117| 578|
|FULL    |24 months |PROVIDE        |BANGLADESH |8+        |     82| 578|
|FULL    |24 months |Vellore Crypto |INDIA      |3 or less |     58| 409|
|FULL    |24 months |Vellore Crypto |INDIA      |4-5       |    158| 409|
|FULL    |24 months |Vellore Crypto |INDIA      |6-7       |    107| 409|
|FULL    |24 months |Vellore Crypto |INDIA      |8+        |     86| 409|
|QI      |Birth     |NIH-Birth      |BANGLADESH |3 or less |    122| 612|
|QI      |Birth     |NIH-Birth      |BANGLADESH |4-5       |    259| 612|
|QI      |Birth     |NIH-Birth      |BANGLADESH |6-7       |    119| 612|
|QI      |Birth     |NIH-Birth      |BANGLADESH |8+        |    112| 612|
|QI      |Birth     |NIH-Crypto     |BANGLADESH |3 or less |     95| 753|
|QI      |Birth     |NIH-Crypto     |BANGLADESH |4-5       |    339| 753|
|QI      |Birth     |NIH-Crypto     |BANGLADESH |6-7       |    191| 753|
|QI      |Birth     |NIH-Crypto     |BANGLADESH |8+        |    128| 753|
|QI      |Birth     |PROVIDE        |BANGLADESH |3 or less |     87| 531|
|QI      |Birth     |PROVIDE        |BANGLADESH |4-5       |    233| 531|
|QI      |Birth     |PROVIDE        |BANGLADESH |6-7       |    130| 531|
|QI      |Birth     |PROVIDE        |BANGLADESH |8+        |     81| 531|
|QI      |Birth     |Vellore Crypto |INDIA      |3 or less |     58| 405|
|QI      |Birth     |Vellore Crypto |INDIA      |4-5       |    150| 405|
|QI      |Birth     |Vellore Crypto |INDIA      |6-7       |    113| 405|
|QI      |Birth     |Vellore Crypto |INDIA      |8+        |     84| 405|
|QI      |6 months  |LCNI-5         |MALAWI     |3 or less |    245| 831|
|QI      |6 months  |LCNI-5         |MALAWI     |4-5       |    329| 831|
|QI      |6 months  |LCNI-5         |MALAWI     |6-7       |    164| 831|
|QI      |6 months  |LCNI-5         |MALAWI     |8+        |     93| 831|
|QI      |6 months  |NIH-Birth      |BANGLADESH |3 or less |     75| 391|
|QI      |6 months  |NIH-Birth      |BANGLADESH |4-5       |    168| 391|
|QI      |6 months  |NIH-Birth      |BANGLADESH |6-7       |     78| 391|
|QI      |6 months  |NIH-Birth      |BANGLADESH |8+        |     70| 391|
|QI      |6 months  |NIH-Crypto     |BANGLADESH |3 or less |     70| 537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH |4-5       |    244| 537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH |6-7       |    138| 537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH |8+        |     85| 537|
|QI      |6 months  |PROVIDE        |BANGLADESH |3 or less |     97| 611|
|QI      |6 months  |PROVIDE        |BANGLADESH |4-5       |    287| 611|
|QI      |6 months  |PROVIDE        |BANGLADESH |6-7       |    139| 611|
|QI      |6 months  |PROVIDE        |BANGLADESH |8+        |     88| 611|
|QI      |6 months  |SAS-FoodSuppl  |INDIA      |3 or less |     19| 253|
|QI      |6 months  |SAS-FoodSuppl  |INDIA      |4-5       |     87| 253|
|QI      |6 months  |SAS-FoodSuppl  |INDIA      |6-7       |     94| 253|
|QI      |6 months  |SAS-FoodSuppl  |INDIA      |8+        |     53| 253|
|QI      |6 months  |Vellore Crypto |INDIA      |3 or less |     54| 383|
|QI      |6 months  |Vellore Crypto |INDIA      |4-5       |    143| 383|
|QI      |6 months  |Vellore Crypto |INDIA      |6-7       |    107| 383|
|QI      |6 months  |Vellore Crypto |INDIA      |8+        |     79| 383|
|QI      |24 months |LCNI-5         |MALAWI     |3 or less |     24|  83|
|QI      |24 months |LCNI-5         |MALAWI     |4-5       |     33|  83|
|QI      |24 months |LCNI-5         |MALAWI     |6-7       |     16|  83|
|QI      |24 months |LCNI-5         |MALAWI     |8+        |     10|  83|
|QI      |24 months |NIH-Birth      |BANGLADESH |3 or less |      5|  32|
|QI      |24 months |NIH-Birth      |BANGLADESH |4-5       |     16|  32|
|QI      |24 months |NIH-Birth      |BANGLADESH |6-7       |      7|  32|
|QI      |24 months |NIH-Birth      |BANGLADESH |8+        |      4|  32|
|QI      |24 months |NIH-Crypto     |BANGLADESH |3 or less |      6|  47|
|QI      |24 months |NIH-Crypto     |BANGLADESH |4-5       |     22|  47|
|QI      |24 months |NIH-Crypto     |BANGLADESH |6-7       |     12|  47|
|QI      |24 months |NIH-Crypto     |BANGLADESH |8+        |      7|  47|
|QI      |24 months |PROVIDE        |BANGLADESH |3 or less |      8|  55|
|QI      |24 months |PROVIDE        |BANGLADESH |4-5       |     19|  55|
|QI      |24 months |PROVIDE        |BANGLADESH |6-7       |     17|  55|
|QI      |24 months |PROVIDE        |BANGLADESH |8+        |     11|  55|
|QI      |24 months |SAS-FoodSuppl  |INDIA      |3 or less |      1|   6|
|QI      |24 months |SAS-FoodSuppl  |INDIA      |4-5       |      3|   6|
|QI      |24 months |SAS-FoodSuppl  |INDIA      |6-7       |      1|   6|
|QI      |24 months |SAS-FoodSuppl  |INDIA      |8+        |      1|   6|
|QI      |24 months |Vellore Crypto |INDIA      |3 or less |     24| 161|
|QI      |24 months |Vellore Crypto |INDIA      |4-5       |     61| 161|
|QI      |24 months |Vellore Crypto |INDIA      |6-7       |     45| 161|
|QI      |24 months |Vellore Crypto |INDIA      |8+        |     31| 161|


The following strata were considered:

* syntype: BC, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: BC, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* syntype: QI, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: SAS-FoodSuppl, country: INDIA





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


