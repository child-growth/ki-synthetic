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
|Birth     |EE           |PAKISTAN     |1       |     51|   235|
|Birth     |EE           |PAKISTAN     |0       |    184|   235|
|Birth     |GMS-Nepal    |NEPAL        |1       |    174|   639|
|Birth     |GMS-Nepal    |NEPAL        |0       |    465|   639|
|Birth     |JiVitA-3     |BANGLADESH   |1       |    260| 22343|
|Birth     |JiVitA-3     |BANGLADESH   |0       |  22083| 22343|
|Birth     |JiVitA-4     |BANGLADESH   |1       |   1751|  2817|
|Birth     |JiVitA-4     |BANGLADESH   |0       |   1066|  2817|
|Birth     |MAL-ED       |INDIA        |1       |     30|    47|
|Birth     |MAL-ED       |INDIA        |0       |     17|    47|
|Birth     |MAL-ED       |BANGLADESH   |1       |    137|   231|
|Birth     |MAL-ED       |BANGLADESH   |0       |     94|   231|
|Birth     |MAL-ED       |PERU         |1       |    176|   233|
|Birth     |MAL-ED       |PERU         |0       |     57|   233|
|Birth     |MAL-ED       |NEPAL        |1       |     10|    27|
|Birth     |MAL-ED       |NEPAL        |0       |     17|    27|
|Birth     |MAL-ED       |BRAZIL       |1       |     31|    65|
|Birth     |MAL-ED       |BRAZIL       |0       |     34|    65|
|Birth     |MAL-ED       |TANZANIA     |1       |    105|   125|
|Birth     |MAL-ED       |TANZANIA     |0       |     20|   125|
|Birth     |MAL-ED       |SOUTH AFRICA |1       |     67|   118|
|Birth     |MAL-ED       |SOUTH AFRICA |0       |     51|   118|
|Birth     |NIH-Crypto   |BANGLADESH   |1       |    643|   732|
|Birth     |NIH-Crypto   |BANGLADESH   |0       |     89|   732|
|Birth     |SAS-CompFeed |INDIA        |1       |     71|  1195|
|Birth     |SAS-CompFeed |INDIA        |0       |   1124|  1195|
|Birth     |ZVITAMBO     |ZIMBABWE     |1       |   6583| 12362|
|Birth     |ZVITAMBO     |ZIMBABWE     |0       |   5779| 12362|
|6 months  |EE           |PAKISTAN     |1       |     80|   365|
|6 months  |EE           |PAKISTAN     |0       |    285|   365|
|6 months  |GMS-Nepal    |NEPAL        |1       |    145|   520|
|6 months  |GMS-Nepal    |NEPAL        |0       |    375|   520|
|6 months  |JiVitA-3     |BANGLADESH   |1       |     75| 16739|
|6 months  |JiVitA-3     |BANGLADESH   |0       |  16664| 16739|
|6 months  |JiVitA-4     |BANGLADESH   |1       |   2998|  4824|
|6 months  |JiVitA-4     |BANGLADESH   |0       |   1826|  4824|
|6 months  |MAL-ED       |INDIA        |1       |    142|   236|
|6 months  |MAL-ED       |INDIA        |0       |     94|   236|
|6 months  |MAL-ED       |BANGLADESH   |1       |    144|   241|
|6 months  |MAL-ED       |BANGLADESH   |0       |     97|   241|
|6 months  |MAL-ED       |PERU         |1       |    206|   273|
|6 months  |MAL-ED       |PERU         |0       |     67|   273|
|6 months  |MAL-ED       |NEPAL        |1       |     89|   236|
|6 months  |MAL-ED       |NEPAL        |0       |    147|   236|
|6 months  |MAL-ED       |BRAZIL       |1       |     97|   209|
|6 months  |MAL-ED       |BRAZIL       |0       |    112|   209|
|6 months  |MAL-ED       |TANZANIA     |1       |    199|   247|
|6 months  |MAL-ED       |TANZANIA     |0       |     48|   247|
|6 months  |MAL-ED       |SOUTH AFRICA |1       |    141|   250|
|6 months  |MAL-ED       |SOUTH AFRICA |0       |    109|   250|
|6 months  |NIH-Crypto   |BANGLADESH   |1       |    631|   715|
|6 months  |NIH-Crypto   |BANGLADESH   |0       |     84|   715|
|6 months  |SAS-CompFeed |INDIA        |1       |     74|  1300|
|6 months  |SAS-CompFeed |INDIA        |0       |   1226|  1300|
|6 months  |ZVITAMBO     |ZIMBABWE     |1       |   4181|  7721|
|6 months  |ZVITAMBO     |ZIMBABWE     |0       |   3540|  7721|
|24 months |EE           |PAKISTAN     |1       |     40|   163|
|24 months |EE           |PAKISTAN     |0       |    123|   163|
|24 months |GMS-Nepal    |NEPAL        |1       |    127|   450|
|24 months |GMS-Nepal    |NEPAL        |0       |    323|   450|
|24 months |JiVitA-3     |BANGLADESH   |1       |      4|  8598|
|24 months |JiVitA-3     |BANGLADESH   |0       |   8594|  8598|
|24 months |JiVitA-4     |BANGLADESH   |1       |   2958|  4746|
|24 months |JiVitA-4     |BANGLADESH   |0       |   1788|  4746|
|24 months |MAL-ED       |INDIA        |1       |    136|   227|
|24 months |MAL-ED       |INDIA        |0       |     91|   227|
|24 months |MAL-ED       |BANGLADESH   |1       |    129|   212|
|24 months |MAL-ED       |BANGLADESH   |0       |     83|   212|
|24 months |MAL-ED       |PERU         |1       |    157|   201|
|24 months |MAL-ED       |PERU         |0       |     44|   201|
|24 months |MAL-ED       |NEPAL        |1       |     85|   228|
|24 months |MAL-ED       |NEPAL        |0       |    143|   228|
|24 months |MAL-ED       |BRAZIL       |1       |     78|   169|
|24 months |MAL-ED       |BRAZIL       |0       |     91|   169|
|24 months |MAL-ED       |TANZANIA     |1       |    174|   214|
|24 months |MAL-ED       |TANZANIA     |0       |     40|   214|
|24 months |MAL-ED       |SOUTH AFRICA |1       |    135|   235|
|24 months |MAL-ED       |SOUTH AFRICA |0       |    100|   235|
|24 months |NIH-Crypto   |BANGLADESH   |1       |    452|   514|
|24 months |NIH-Crypto   |BANGLADESH   |0       |     62|   514|
|24 months |ZVITAMBO     |ZIMBABWE     |1       |    730|  1420|
|24 months |ZVITAMBO     |ZIMBABWE     |0       |    690|  1420|


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```


