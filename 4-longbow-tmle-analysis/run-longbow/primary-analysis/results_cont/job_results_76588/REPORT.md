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

**Intervention Variable:** enwast

**Adjustment Set:**

* sex
* arm
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |enwast | n_cell|     n|
|:---------|:--------------|:------------|:------|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |0      |     75|    87|
|Birth     |CMC-V-BCS-2002 |INDIA        |1      |     12|    87|
|Birth     |CMIN           |BANGLADESH   |0      |     15|    19|
|Birth     |CMIN           |BANGLADESH   |1      |      4|    19|
|Birth     |COHORTS        |INDIA        |0      |   5097|  6231|
|Birth     |COHORTS        |INDIA        |1      |   1134|  6231|
|Birth     |COHORTS        |GUATEMALA    |0      |    564|   762|
|Birth     |COHORTS        |GUATEMALA    |1      |    198|   762|
|Birth     |COHORTS        |PHILIPPINES  |0      |   2448|  2910|
|Birth     |COHORTS        |PHILIPPINES  |1      |    462|  2910|
|Birth     |CONTENT        |PERU         |0      |      2|     2|
|Birth     |CONTENT        |PERU         |1      |      0|     2|
|Birth     |EE             |PAKISTAN     |0      |    155|   180|
|Birth     |EE             |PAKISTAN     |1      |     25|   180|
|Birth     |GMS-Nepal      |NEPAL        |0      |    509|   645|
|Birth     |GMS-Nepal      |NEPAL        |1      |    136|   645|
|Birth     |JiVitA-3       |BANGLADESH   |0      |  16041| 18062|
|Birth     |JiVitA-3       |BANGLADESH   |1      |   2021| 18062|
|Birth     |JiVitA-4       |BANGLADESH   |0      |   2157|  2399|
|Birth     |JiVitA-4       |BANGLADESH   |1      |    242|  2399|
|Birth     |Keneba         |GAMBIA       |0      |   1102|  1488|
|Birth     |Keneba         |GAMBIA       |1      |    386|  1488|
|Birth     |MAL-ED         |INDIA        |0      |     40|    45|
|Birth     |MAL-ED         |INDIA        |1      |      5|    45|
|Birth     |MAL-ED         |BANGLADESH   |0      |    179|   215|
|Birth     |MAL-ED         |BANGLADESH   |1      |     36|   215|
|Birth     |MAL-ED         |PERU         |0      |    223|   228|
|Birth     |MAL-ED         |PERU         |1      |      5|   228|
|Birth     |MAL-ED         |NEPAL        |0      |     24|    26|
|Birth     |MAL-ED         |NEPAL        |1      |      2|    26|
|Birth     |MAL-ED         |BRAZIL       |0      |     60|    62|
|Birth     |MAL-ED         |BRAZIL       |1      |      2|    62|
|Birth     |MAL-ED         |TANZANIA     |0      |    114|   115|
|Birth     |MAL-ED         |TANZANIA     |1      |      1|   115|
|Birth     |MAL-ED         |SOUTH AFRICA |0      |    108|   121|
|Birth     |MAL-ED         |SOUTH AFRICA |1      |     13|   121|
|Birth     |NIH-Birth      |BANGLADESH   |0      |    407|   580|
|Birth     |NIH-Birth      |BANGLADESH   |1      |    173|   580|
|Birth     |NIH-Crypto     |BANGLADESH   |0      |    535|   713|
|Birth     |NIH-Crypto     |BANGLADESH   |1      |    178|   713|
|Birth     |PROBIT         |BELARUS      |0      |  10909| 13886|
|Birth     |PROBIT         |BELARUS      |1      |   2977| 13886|
|Birth     |PROVIDE        |BANGLADESH   |0      |    415|   532|
|Birth     |PROVIDE        |BANGLADESH   |1      |    117|   532|
|Birth     |ResPak         |PAKISTAN     |0      |     34|    38|
|Birth     |ResPak         |PAKISTAN     |1      |      4|    38|
|Birth     |SAS-CompFeed   |INDIA        |0      |    985|  1105|
|Birth     |SAS-CompFeed   |INDIA        |1      |    120|  1105|
|Birth     |Vellore Crypto |INDIA        |0      |    251|   364|
|Birth     |Vellore Crypto |INDIA        |1      |    113|   364|
|Birth     |ZVITAMBO       |ZIMBABWE     |0      |  10856| 13092|
|Birth     |ZVITAMBO       |ZIMBABWE     |1      |   2236| 13092|
|6 months  |CMC-V-BCS-2002 |INDIA        |0      |    272|   363|
|6 months  |CMC-V-BCS-2002 |INDIA        |1      |     91|   363|
|6 months  |CMIN           |BANGLADESH   |0      |    218|   232|
|6 months  |CMIN           |BANGLADESH   |1      |     14|   232|
|6 months  |COHORTS        |INDIA        |0      |   5364|  6508|
|6 months  |COHORTS        |INDIA        |1      |   1144|  6508|
|6 months  |COHORTS        |GUATEMALA    |0      |    725|   901|
|6 months  |COHORTS        |GUATEMALA    |1      |    176|   901|
|6 months  |COHORTS        |PHILIPPINES  |0      |   2191|  2593|
|6 months  |COHORTS        |PHILIPPINES  |1      |    402|  2593|
|6 months  |CONTENT        |PERU         |0      |    214|   215|
|6 months  |CONTENT        |PERU         |1      |      1|   215|
|6 months  |EE             |PAKISTAN     |0      |    255|   292|
|6 months  |EE             |PAKISTAN     |1      |     37|   292|
|6 months  |GMS-Nepal      |NEPAL        |0      |    421|   528|
|6 months  |GMS-Nepal      |NEPAL        |1      |    107|   528|
|6 months  |Guatemala BSC  |GUATEMALA    |0      |    293|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |1      |      6|   299|
|6 months  |JiVitA-3       |BANGLADESH   |0      |  12724| 14244|
|6 months  |JiVitA-3       |BANGLADESH   |1      |   1520| 14244|
|6 months  |JiVitA-4       |BANGLADESH   |0      |   4010|  4410|
|6 months  |JiVitA-4       |BANGLADESH   |1      |    400|  4410|
|6 months  |Keneba         |GAMBIA       |0      |   1641|  2029|
|6 months  |Keneba         |GAMBIA       |1      |    388|  2029|
|6 months  |LCNI-5         |MALAWI       |0      |    825|   839|
|6 months  |LCNI-5         |MALAWI       |1      |     14|   839|
|6 months  |MAL-ED         |INDIA        |0      |    189|   232|
|6 months  |MAL-ED         |INDIA        |1      |     43|   232|
|6 months  |MAL-ED         |BANGLADESH   |0      |    188|   229|
|6 months  |MAL-ED         |BANGLADESH   |1      |     41|   229|
|6 months  |MAL-ED         |PERU         |0      |    261|   266|
|6 months  |MAL-ED         |PERU         |1      |      5|   266|
|6 months  |MAL-ED         |NEPAL        |0      |    201|   232|
|6 months  |MAL-ED         |NEPAL        |1      |     31|   232|
|6 months  |MAL-ED         |BRAZIL       |0      |    192|   199|
|6 months  |MAL-ED         |BRAZIL       |1      |      7|   199|
|6 months  |MAL-ED         |TANZANIA     |0      |    235|   238|
|6 months  |MAL-ED         |TANZANIA     |1      |      3|   238|
|6 months  |MAL-ED         |SOUTH AFRICA |0      |    235|   253|
|6 months  |MAL-ED         |SOUTH AFRICA |1      |     18|   253|
|6 months  |NIH-Birth      |BANGLADESH   |0      |    368|   514|
|6 months  |NIH-Birth      |BANGLADESH   |1      |    146|   514|
|6 months  |NIH-Crypto     |BANGLADESH   |0      |    517|   694|
|6 months  |NIH-Crypto     |BANGLADESH   |1      |    177|   694|
|6 months  |PROBIT         |BELARUS      |0      |  12689| 15753|
|6 months  |PROBIT         |BELARUS      |1      |   3064| 15753|
|6 months  |PROVIDE        |BANGLADESH   |0      |    472|   597|
|6 months  |PROVIDE        |BANGLADESH   |1      |    125|   597|
|6 months  |ResPak         |PAKISTAN     |0      |    185|   228|
|6 months  |ResPak         |PAKISTAN     |1      |     43|   228|
|6 months  |SAS-CompFeed   |INDIA        |0      |   1074|  1213|
|6 months  |SAS-CompFeed   |INDIA        |1      |    139|  1213|
|6 months  |SAS-FoodSuppl  |INDIA        |0      |    311|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |1      |     69|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |0      |   1901|  2020|
|6 months  |TanzaniaChild2 |TANZANIA     |1      |    119|  2020|
|6 months  |Vellore Crypto |INDIA        |0      |    268|   382|
|6 months  |Vellore Crypto |INDIA        |1      |    114|   382|
|6 months  |ZVITAMBO       |ZIMBABWE     |0      |   6904|  8174|
|6 months  |ZVITAMBO       |ZIMBABWE     |1      |   1270|  8174|
|24 months |CMC-V-BCS-2002 |INDIA        |0      |    272|   364|
|24 months |CMC-V-BCS-2002 |INDIA        |1      |     92|   364|
|24 months |CMIN           |BANGLADESH   |0      |    217|   232|
|24 months |CMIN           |BANGLADESH   |1      |     15|   232|
|24 months |COHORTS        |INDIA        |0      |   4252|  5070|
|24 months |COHORTS        |INDIA        |1      |    818|  5070|
|24 months |COHORTS        |GUATEMALA    |0      |    874|  1027|
|24 months |COHORTS        |GUATEMALA    |1      |    153|  1027|
|24 months |COHORTS        |PHILIPPINES  |0      |   1989|  2347|
|24 months |COHORTS        |PHILIPPINES  |1      |    358|  2347|
|24 months |CONTENT        |PERU         |0      |    163|   164|
|24 months |CONTENT        |PERU         |1      |      1|   164|
|24 months |EE             |PAKISTAN     |0      |    115|   137|
|24 months |EE             |PAKISTAN     |1      |     22|   137|
|24 months |GMS-Nepal      |NEPAL        |0      |    365|   455|
|24 months |GMS-Nepal      |NEPAL        |1      |     90|   455|
|24 months |JiVitA-3       |BANGLADESH   |0      |   6422|  7242|
|24 months |JiVitA-3       |BANGLADESH   |1      |    820|  7242|
|24 months |JiVitA-4       |BANGLADESH   |0      |   3943|  4315|
|24 months |JiVitA-4       |BANGLADESH   |1      |    372|  4315|
|24 months |Keneba         |GAMBIA       |0      |   1354|  1677|
|24 months |Keneba         |GAMBIA       |1      |    323|  1677|
|24 months |LCNI-5         |MALAWI       |0      |    569|   579|
|24 months |LCNI-5         |MALAWI       |1      |     10|   579|
|24 months |MAL-ED         |INDIA        |0      |    180|   223|
|24 months |MAL-ED         |INDIA        |1      |     43|   223|
|24 months |MAL-ED         |BANGLADESH   |0      |    164|   201|
|24 months |MAL-ED         |BANGLADESH   |1      |     37|   201|
|24 months |MAL-ED         |PERU         |0      |    193|   197|
|24 months |MAL-ED         |PERU         |1      |      4|   197|
|24 months |MAL-ED         |NEPAL        |0      |    195|   225|
|24 months |MAL-ED         |NEPAL        |1      |     30|   225|
|24 months |MAL-ED         |BRAZIL       |0      |    154|   160|
|24 months |MAL-ED         |BRAZIL       |1      |      6|   160|
|24 months |MAL-ED         |TANZANIA     |0      |    202|   205|
|24 months |MAL-ED         |TANZANIA     |1      |      3|   205|
|24 months |MAL-ED         |SOUTH AFRICA |0      |    221|   237|
|24 months |MAL-ED         |SOUTH AFRICA |1      |     16|   237|
|24 months |NIH-Birth      |BANGLADESH   |0      |    293|   409|
|24 months |NIH-Birth      |BANGLADESH   |1      |    116|   409|
|24 months |NIH-Crypto     |BANGLADESH   |0      |    364|   500|
|24 months |NIH-Crypto     |BANGLADESH   |1      |    136|   500|
|24 months |PROBIT         |BELARUS      |0      |   3118|  4032|
|24 months |PROBIT         |BELARUS      |1      |    914|  4032|
|24 months |PROVIDE        |BANGLADESH   |0      |    452|   570|
|24 months |PROVIDE        |BANGLADESH   |1      |    118|   570|
|24 months |TanzaniaChild2 |TANZANIA     |0      |      5|     6|
|24 months |TanzaniaChild2 |TANZANIA     |1      |      1|     6|
|24 months |Vellore Crypto |INDIA        |0      |    269|   383|
|24 months |Vellore Crypto |INDIA        |1      |    114|   383|
|24 months |ZVITAMBO       |ZIMBABWE     |0      |   1346|  1505|
|24 months |ZVITAMBO       |ZIMBABWE     |1      |    159|  1505|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
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
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA





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


