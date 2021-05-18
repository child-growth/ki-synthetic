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

**Intervention Variable:** enstunt

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
* impsan
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |enstunt | n_cell|     n|
|:---------|:--------------|:------------|:-------|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |0       |     74|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |1       |     12|    86|
|Birth     |CMIN           |BANGLADESH   |0       |     17|    19|
|Birth     |CMIN           |BANGLADESH   |1       |      2|    19|
|Birth     |COHORTS        |INDIA        |0       |   5813|  6193|
|Birth     |COHORTS        |INDIA        |1       |    380|  6193|
|Birth     |COHORTS        |GUATEMALA    |0       |    732|   756|
|Birth     |COHORTS        |GUATEMALA    |1       |     24|   756|
|Birth     |COHORTS        |PHILIPPINES  |0       |   2813|  2899|
|Birth     |COHORTS        |PHILIPPINES  |1       |     86|  2899|
|Birth     |CONTENT        |PERU         |0       |      2|     2|
|Birth     |CONTENT        |PERU         |1       |      0|     2|
|Birth     |EE             |PAKISTAN     |0       |    137|   177|
|Birth     |EE             |PAKISTAN     |1       |     40|   177|
|Birth     |GMS-Nepal      |NEPAL        |0       |    570|   641|
|Birth     |GMS-Nepal      |NEPAL        |1       |     71|   641|
|Birth     |JiVitA-3       |BANGLADESH   |0       |  15027| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |1       |   2987| 18014|
|Birth     |JiVitA-4       |BANGLADESH   |0       |   1963|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |1       |    433|  2396|
|Birth     |Keneba         |GAMBIA       |0       |   1425|  1466|
|Birth     |Keneba         |GAMBIA       |1       |     41|  1466|
|Birth     |MAL-ED         |INDIA        |0       |     37|    45|
|Birth     |MAL-ED         |INDIA        |1       |      8|    45|
|Birth     |MAL-ED         |BANGLADESH   |0       |    187|   215|
|Birth     |MAL-ED         |BANGLADESH   |1       |     28|   215|
|Birth     |MAL-ED         |PERU         |0       |    207|   228|
|Birth     |MAL-ED         |PERU         |1       |     21|   228|
|Birth     |MAL-ED         |NEPAL        |0       |     25|    26|
|Birth     |MAL-ED         |NEPAL        |1       |      1|    26|
|Birth     |MAL-ED         |BRAZIL       |0       |     56|    62|
|Birth     |MAL-ED         |BRAZIL       |1       |      6|    62|
|Birth     |MAL-ED         |TANZANIA     |0       |    102|   115|
|Birth     |MAL-ED         |TANZANIA     |1       |     13|   115|
|Birth     |MAL-ED         |SOUTH AFRICA |0       |    112|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |1       |      8|   120|
|Birth     |NIH-Birth      |BANGLADESH   |0       |    506|   575|
|Birth     |NIH-Birth      |BANGLADESH   |1       |     69|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |0       |    625|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |1       |     82|   707|
|Birth     |PROBIT         |BELARUS      |0       |  13790| 13817|
|Birth     |PROBIT         |BELARUS      |1       |     27| 13817|
|Birth     |PROVIDE        |BANGLADESH   |0       |    491|   532|
|Birth     |PROVIDE        |BANGLADESH   |1       |     41|   532|
|Birth     |ResPak         |PAKISTAN     |0       |     28|    38|
|Birth     |ResPak         |PAKISTAN     |1       |     10|    38|
|Birth     |SAS-CompFeed   |INDIA        |0       |    901|  1103|
|Birth     |SAS-CompFeed   |INDIA        |1       |    202|  1103|
|Birth     |Vellore Crypto |INDIA        |0       |    318|   343|
|Birth     |Vellore Crypto |INDIA        |1       |     25|   343|
|Birth     |ZVITAMBO       |ZIMBABWE     |0       |  12227| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |1       |    690| 12917|
|6 months  |CMC-V-BCS-2002 |INDIA        |0       |    292|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |1       |     76|   368|
|6 months  |CMIN           |BANGLADESH   |0       |    151|   243|
|6 months  |CMIN           |BANGLADESH   |1       |     92|   243|
|6 months  |COHORTS        |INDIA        |0       |   6034|  6850|
|6 months  |COHORTS        |INDIA        |1       |    816|  6850|
|6 months  |COHORTS        |GUATEMALA    |0       |    809|   963|
|6 months  |COHORTS        |GUATEMALA    |1       |    154|   963|
|6 months  |COHORTS        |PHILIPPINES  |0       |   2549|  2706|
|6 months  |COHORTS        |PHILIPPINES  |1       |    157|  2706|
|6 months  |CONTENT        |PERU         |0       |    195|   215|
|6 months  |CONTENT        |PERU         |1       |     20|   215|
|6 months  |EE             |PAKISTAN     |0       |    209|   375|
|6 months  |EE             |PAKISTAN     |1       |    166|   375|
|6 months  |GMS-Nepal      |NEPAL        |0       |    473|   564|
|6 months  |GMS-Nepal      |NEPAL        |1       |     91|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |0       |    228|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |1       |     71|   299|
|6 months  |JiVitA-3       |BANGLADESH   |0       |  11673| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |1       |   5111| 16784|
|6 months  |JiVitA-4       |BANGLADESH   |0       |   3473|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |1       |   1360|  4833|
|6 months  |Keneba         |GAMBIA       |0       |   1893|  2089|
|6 months  |Keneba         |GAMBIA       |1       |    196|  2089|
|6 months  |LCNI-5         |MALAWI       |0       |    530|   839|
|6 months  |LCNI-5         |MALAWI       |1       |    309|   839|
|6 months  |MAL-ED         |INDIA        |0       |    198|   236|
|6 months  |MAL-ED         |INDIA        |1       |     38|   236|
|6 months  |MAL-ED         |BANGLADESH   |0       |    202|   241|
|6 months  |MAL-ED         |BANGLADESH   |1       |     39|   241|
|6 months  |MAL-ED         |PERU         |0       |    239|   273|
|6 months  |MAL-ED         |PERU         |1       |     34|   273|
|6 months  |MAL-ED         |NEPAL        |0       |    208|   236|
|6 months  |MAL-ED         |NEPAL        |1       |     28|   236|
|6 months  |MAL-ED         |BRAZIL       |0       |    184|   209|
|6 months  |MAL-ED         |BRAZIL       |1       |     25|   209|
|6 months  |MAL-ED         |TANZANIA     |0       |    208|   247|
|6 months  |MAL-ED         |TANZANIA     |1       |     39|   247|
|6 months  |MAL-ED         |SOUTH AFRICA |0       |    227|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |1       |     27|   254|
|6 months  |NIH-Birth      |BANGLADESH   |0       |    452|   537|
|6 months  |NIH-Birth      |BANGLADESH   |1       |     85|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |0       |    613|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |1       |    102|   715|
|6 months  |PROBIT         |BELARUS      |0       |  15641| 15757|
|6 months  |PROBIT         |BELARUS      |1       |    116| 15757|
|6 months  |PROVIDE        |BANGLADESH   |0       |    542|   603|
|6 months  |PROVIDE        |BANGLADESH   |1       |     61|   603|
|6 months  |ResPak         |PAKISTAN     |0       |    173|   239|
|6 months  |ResPak         |PAKISTAN     |1       |     66|   239|
|6 months  |SAS-CompFeed   |INDIA        |0       |    969|  1334|
|6 months  |SAS-CompFeed   |INDIA        |1       |    365|  1334|
|6 months  |SAS-FoodSuppl  |INDIA        |0       |    232|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |1       |    148|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |0       |   1890|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |1       |    138|  2028|
|6 months  |Vellore Crypto |INDIA        |0       |    356|   408|
|6 months  |Vellore Crypto |INDIA        |1       |     52|   408|
|6 months  |ZVITAMBO       |ZIMBABWE     |0       |   7632|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |1       |    873|  8505|
|24 months |CMC-V-BCS-2002 |INDIA        |0       |    295|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |1       |     77|   372|
|24 months |CMIN           |BANGLADESH   |0       |    153|   243|
|24 months |CMIN           |BANGLADESH   |1       |     90|   243|
|24 months |COHORTS        |INDIA        |0       |   4654|  5291|
|24 months |COHORTS        |INDIA        |1       |    637|  5291|
|24 months |COHORTS        |GUATEMALA    |0       |    743|  1082|
|24 months |COHORTS        |GUATEMALA    |1       |    339|  1082|
|24 months |COHORTS        |PHILIPPINES  |0       |   2311|  2449|
|24 months |COHORTS        |PHILIPPINES  |1       |    138|  2449|
|24 months |CONTENT        |PERU         |0       |    147|   164|
|24 months |CONTENT        |PERU         |1       |     17|   164|
|24 months |EE             |PAKISTAN     |0       |    100|   168|
|24 months |EE             |PAKISTAN     |1       |     68|   168|
|24 months |GMS-Nepal      |NEPAL        |0       |    405|   487|
|24 months |GMS-Nepal      |NEPAL        |1       |     82|   487|
|24 months |JiVitA-3       |BANGLADESH   |0       |   5914|  8603|
|24 months |JiVitA-3       |BANGLADESH   |1       |   2689|  8603|
|24 months |JiVitA-4       |BANGLADESH   |0       |   3380|  4735|
|24 months |JiVitA-4       |BANGLADESH   |1       |   1355|  4735|
|24 months |Keneba         |GAMBIA       |0       |   1550|  1726|
|24 months |Keneba         |GAMBIA       |1       |    176|  1726|
|24 months |LCNI-5         |MALAWI       |0       |    365|   563|
|24 months |LCNI-5         |MALAWI       |1       |    198|   563|
|24 months |MAL-ED         |INDIA        |0       |    191|   227|
|24 months |MAL-ED         |INDIA        |1       |     36|   227|
|24 months |MAL-ED         |BANGLADESH   |0       |    179|   212|
|24 months |MAL-ED         |BANGLADESH   |1       |     33|   212|
|24 months |MAL-ED         |PERU         |0       |    174|   201|
|24 months |MAL-ED         |PERU         |1       |     27|   201|
|24 months |MAL-ED         |NEPAL        |0       |    201|   228|
|24 months |MAL-ED         |NEPAL        |1       |     27|   228|
|24 months |MAL-ED         |BRAZIL       |0       |    150|   169|
|24 months |MAL-ED         |BRAZIL       |1       |     19|   169|
|24 months |MAL-ED         |TANZANIA     |0       |    181|   214|
|24 months |MAL-ED         |TANZANIA     |1       |     33|   214|
|24 months |MAL-ED         |SOUTH AFRICA |0       |    214|   238|
|24 months |MAL-ED         |SOUTH AFRICA |1       |     24|   238|
|24 months |NIH-Birth      |BANGLADESH   |0       |    354|   428|
|24 months |NIH-Birth      |BANGLADESH   |1       |     74|   428|
|24 months |NIH-Crypto     |BANGLADESH   |0       |    444|   514|
|24 months |NIH-Crypto     |BANGLADESH   |1       |     70|   514|
|24 months |PROBIT         |BELARUS      |0       |   3957|  3970|
|24 months |PROBIT         |BELARUS      |1       |     13|  3970|
|24 months |PROVIDE        |BANGLADESH   |0       |    519|   579|
|24 months |PROVIDE        |BANGLADESH   |1       |     60|   579|
|24 months |TanzaniaChild2 |TANZANIA     |0       |      6|     6|
|24 months |TanzaniaChild2 |TANZANIA     |1       |      0|     6|
|24 months |Vellore Crypto |INDIA        |0       |    358|   409|
|24 months |Vellore Crypto |INDIA        |1       |     51|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |0       |    331|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |1       |    102|   433|


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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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


