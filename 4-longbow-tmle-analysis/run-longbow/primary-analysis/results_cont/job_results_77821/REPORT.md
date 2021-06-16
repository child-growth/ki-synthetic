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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
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
* delta_W_nrooms
* delta_W_parity
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* syntype
* agecat
* studyid
* country

## Data Summary

|syntype |agecat    |studyid        |country      |nchldlt5 | n_cell|     n|
|:-------|:---------|:--------------|:------------|:--------|------:|-----:|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |1        |  11530| 17997|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |2+       |   6467| 17997|
|BC      |Birth     |NIH-Crypto     |BANGLADESH   |1        |    471|   707|
|BC      |Birth     |NIH-Crypto     |BANGLADESH   |2+       |    236|   707|
|BC      |Birth     |PROVIDE        |BANGLADESH   |1        |    382|   532|
|BC      |Birth     |PROVIDE        |BANGLADESH   |2+       |    150|   532|
|BC      |Birth     |Vellore Crypto |INDIA        |1        |     65|   343|
|BC      |Birth     |Vellore Crypto |INDIA        |2+       |    278|   343|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |1        |  10705| 16776|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |2+       |   6071| 16776|
|BC      |6 months  |LCNI-5         |MALAWI       |1        |    411|   826|
|BC      |6 months  |LCNI-5         |MALAWI       |2+       |    415|   826|
|BC      |6 months  |NIH-Crypto     |BANGLADESH   |1        |    480|   715|
|BC      |6 months  |NIH-Crypto     |BANGLADESH   |2+       |    235|   715|
|BC      |6 months  |PROVIDE        |BANGLADESH   |1        |    445|   603|
|BC      |6 months  |PROVIDE        |BANGLADESH   |2+       |    158|   603|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |1        |   1402|  2027|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |2+       |    625|  2027|
|BC      |6 months  |Vellore Crypto |INDIA        |1        |     80|   408|
|BC      |6 months  |Vellore Crypto |INDIA        |2+       |    328|   408|
|BC      |24 months |JiVitA-3       |BANGLADESH   |1        |   5495|  8599|
|BC      |24 months |JiVitA-3       |BANGLADESH   |2+       |   3104|  8599|
|BC      |24 months |LCNI-5         |MALAWI       |1        |    276|   559|
|BC      |24 months |LCNI-5         |MALAWI       |2+       |    283|   559|
|BC      |24 months |NIH-Crypto     |BANGLADESH   |1        |    353|   514|
|BC      |24 months |NIH-Crypto     |BANGLADESH   |2+       |    161|   514|
|BC      |24 months |PROVIDE        |BANGLADESH   |1        |    426|   579|
|BC      |24 months |PROVIDE        |BANGLADESH   |2+       |    153|   579|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |1        |      4|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |2+       |      2|     6|
|BC      |24 months |Vellore Crypto |INDIA        |1        |     80|   409|
|BC      |24 months |Vellore Crypto |INDIA        |2+       |    329|   409|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |1        |  10878| 17991|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |2+       |   7113| 17991|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH   |1        |    504|   707|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH   |2+       |    203|   707|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |1        |    385|   532|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |2+       |    147|   532|
|FULL    |Birth     |Vellore Crypto |INDIA        |1        |     72|   343|
|FULL    |Birth     |Vellore Crypto |INDIA        |2+       |    271|   343|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |1        |  10872| 16773|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |2+       |   5901| 16773|
|FULL    |6 months  |LCNI-5         |MALAWI       |1        |    390|   811|
|FULL    |6 months  |LCNI-5         |MALAWI       |2+       |    421|   811|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH   |1        |    507|   715|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH   |2+       |    208|   715|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |1        |    438|   603|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |2+       |    165|   603|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |1        |   1390|  2019|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |2+       |    629|  2019|
|FULL    |6 months  |Vellore Crypto |INDIA        |1        |     88|   408|
|FULL    |6 months  |Vellore Crypto |INDIA        |2+       |    320|   408|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |1        |   5434|  8593|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |2+       |   3159|  8593|
|FULL    |24 months |LCNI-5         |MALAWI       |1        |    277|   555|
|FULL    |24 months |LCNI-5         |MALAWI       |2+       |    278|   555|
|FULL    |24 months |NIH-Crypto     |BANGLADESH   |1        |    357|   514|
|FULL    |24 months |NIH-Crypto     |BANGLADESH   |2+       |    157|   514|
|FULL    |24 months |PROVIDE        |BANGLADESH   |1        |    424|   579|
|FULL    |24 months |PROVIDE        |BANGLADESH   |2+       |    155|   579|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |1        |      5|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |2+       |      1|     6|
|FULL    |24 months |Vellore Crypto |INDIA        |1        |     89|   409|
|FULL    |24 months |Vellore Crypto |INDIA        |2+       |    320|   409|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |1        |   7082| 11309|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |2+       |   4227| 11309|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |1        |    525|   756|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |2+       |    231|   756|
|QI      |Birth     |PROVIDE        |BANGLADESH   |1        |    382|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |2+       |    149|   531|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |1        |   1617|  2375|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |2+       |    758|  2375|
|QI      |Birth     |Vellore Crypto |INDIA        |1        |     85|   379|
|QI      |Birth     |Vellore Crypto |INDIA        |2+       |    294|   379|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |1        |   3094|  4853|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |2+       |   1759|  4853|
|QI      |6 months  |LCNI-5         |MALAWI       |1        |    389|   826|
|QI      |6 months  |LCNI-5         |MALAWI       |2+       |    437|   826|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |1        |    368|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |2+       |    169|   537|
|QI      |6 months  |PROVIDE        |BANGLADESH   |1        |    445|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |2+       |    166|   611|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |1        |   1319|  1940|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |2+       |    621|  1940|
|QI      |6 months  |Vellore Crypto |INDIA        |1        |     84|   383|
|QI      |6 months  |Vellore Crypto |INDIA        |2+       |    299|   383|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |1        |      6|    19|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |2+       |     13|    19|
|QI      |24 months |JiVitA-3       |BANGLADESH   |1        |      5|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |2+       |      1|     6|
|QI      |24 months |LCNI-5         |MALAWI       |1        |     40|    82|
|QI      |24 months |LCNI-5         |MALAWI       |2+       |     42|    82|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |1        |     39|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |2+       |      8|    47|
|QI      |24 months |PROVIDE        |BANGLADESH   |1        |     33|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |2+       |     22|    55|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |1        |     32|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |2+       |     22|    54|
|QI      |24 months |Vellore Crypto |INDIA        |1        |     40|   161|
|QI      |24 months |Vellore Crypto |INDIA        |2+       |    121|   161|


The following strata were considered:

* syntype: BC, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH





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


