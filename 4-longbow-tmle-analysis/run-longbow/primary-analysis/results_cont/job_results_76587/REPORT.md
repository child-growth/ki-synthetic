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
|Birth     |CMC-V-BCS-2002 |INDIA        |0       |     75|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |1       |     17|    92|
|Birth     |CMIN           |BANGLADESH   |0       |     17|    26|
|Birth     |CMIN           |BANGLADESH   |1       |      9|    26|
|Birth     |COHORTS        |INDIA        |0       |   5848|  6640|
|Birth     |COHORTS        |INDIA        |1       |    792|  6640|
|Birth     |COHORTS        |GUATEMALA    |0       |    802|   852|
|Birth     |COHORTS        |GUATEMALA    |1       |     50|   852|
|Birth     |COHORTS        |PHILIPPINES  |0       |   2863|  3050|
|Birth     |COHORTS        |PHILIPPINES  |1       |    187|  3050|
|Birth     |CONTENT        |PERU         |0       |      2|     2|
|Birth     |CONTENT        |PERU         |1       |      0|     2|
|Birth     |EE             |PAKISTAN     |0       |    140|   240|
|Birth     |EE             |PAKISTAN     |1       |    100|   240|
|Birth     |GMS-Nepal      |NEPAL        |0       |    574|   696|
|Birth     |GMS-Nepal      |NEPAL        |1       |    122|   696|
|Birth     |JiVitA-3       |BANGLADESH   |0       |  15068| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |1       |   7387| 22455|
|Birth     |JiVitA-4       |BANGLADESH   |0       |   1966|  2823|
|Birth     |JiVitA-4       |BANGLADESH   |1       |    857|  2823|
|Birth     |Keneba         |GAMBIA       |0       |   1460|  1543|
|Birth     |Keneba         |GAMBIA       |1       |     83|  1543|
|Birth     |MAL-ED         |INDIA        |0       |     37|    47|
|Birth     |MAL-ED         |INDIA        |1       |     10|    47|
|Birth     |MAL-ED         |BANGLADESH   |0       |    187|   231|
|Birth     |MAL-ED         |BANGLADESH   |1       |     44|   231|
|Birth     |MAL-ED         |PERU         |0       |    207|   233|
|Birth     |MAL-ED         |PERU         |1       |     26|   233|
|Birth     |MAL-ED         |NEPAL        |0       |     25|    27|
|Birth     |MAL-ED         |NEPAL        |1       |      2|    27|
|Birth     |MAL-ED         |BRAZIL       |0       |     56|    65|
|Birth     |MAL-ED         |BRAZIL       |1       |      9|    65|
|Birth     |MAL-ED         |TANZANIA     |0       |    102|   125|
|Birth     |MAL-ED         |TANZANIA     |1       |     23|   125|
|Birth     |MAL-ED         |SOUTH AFRICA |0       |    113|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |1       |     10|   123|
|Birth     |NIH-Birth      |BANGLADESH   |0       |    511|   608|
|Birth     |NIH-Birth      |BANGLADESH   |1       |     97|   608|
|Birth     |NIH-Crypto     |BANGLADESH   |0       |    631|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |1       |    101|   732|
|Birth     |PROBIT         |BELARUS      |0       |  13859| 13893|
|Birth     |PROBIT         |BELARUS      |1       |     34| 13893|
|Birth     |PROVIDE        |BANGLADESH   |0       |    491|   539|
|Birth     |PROVIDE        |BANGLADESH   |1       |     48|   539|
|Birth     |ResPak         |PAKISTAN     |0       |     28|    42|
|Birth     |ResPak         |PAKISTAN     |1       |     14|    42|
|Birth     |SAS-CompFeed   |INDIA        |0       |    903|  1252|
|Birth     |SAS-CompFeed   |INDIA        |1       |    349|  1252|
|Birth     |Vellore Crypto |INDIA        |0       |    343|   388|
|Birth     |Vellore Crypto |INDIA        |1       |     45|   388|
|Birth     |ZVITAMBO       |ZIMBABWE     |0       |  12441| 13875|
|Birth     |ZVITAMBO       |ZIMBABWE     |1       |   1434| 13875|
|6 months  |CMC-V-BCS-2002 |INDIA        |0       |    294|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |1       |     75|   369|
|6 months  |CMIN           |BANGLADESH   |0       |    151|   243|
|6 months  |CMIN           |BANGLADESH   |1       |     92|   243|
|6 months  |COHORTS        |INDIA        |0       |   6048|  6860|
|6 months  |COHORTS        |INDIA        |1       |    812|  6860|
|6 months  |COHORTS        |GUATEMALA    |0       |    809|   961|
|6 months  |COHORTS        |GUATEMALA    |1       |    152|   961|
|6 months  |COHORTS        |PHILIPPINES  |0       |   2552|  2708|
|6 months  |COHORTS        |PHILIPPINES  |1       |    156|  2708|
|6 months  |CONTENT        |PERU         |0       |    195|   215|
|6 months  |CONTENT        |PERU         |1       |     20|   215|
|6 months  |EE             |PAKISTAN     |0       |    209|   373|
|6 months  |EE             |PAKISTAN     |1       |    164|   373|
|6 months  |GMS-Nepal      |NEPAL        |0       |    473|   564|
|6 months  |GMS-Nepal      |NEPAL        |1       |     91|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |0       |    228|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |1       |     71|   299|
|6 months  |JiVitA-3       |BANGLADESH   |0       |  11707| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |1       |   5104| 16811|
|6 months  |JiVitA-4       |BANGLADESH   |0       |   3475|  4831|
|6 months  |JiVitA-4       |BANGLADESH   |1       |   1356|  4831|
|6 months  |Keneba         |GAMBIA       |0       |   1892|  2089|
|6 months  |Keneba         |GAMBIA       |1       |    197|  2089|
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
|6 months  |PROBIT         |BELARUS      |0       |  15644| 15760|
|6 months  |PROBIT         |BELARUS      |1       |    116| 15760|
|6 months  |PROVIDE        |BANGLADESH   |0       |    543|   604|
|6 months  |PROVIDE        |BANGLADESH   |1       |     61|   604|
|6 months  |ResPak         |PAKISTAN     |0       |    173|   239|
|6 months  |ResPak         |PAKISTAN     |1       |     66|   239|
|6 months  |SAS-CompFeed   |INDIA        |0       |    972|  1336|
|6 months  |SAS-CompFeed   |INDIA        |1       |    364|  1336|
|6 months  |SAS-FoodSuppl  |INDIA        |0       |    232|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |1       |    148|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |0       |   1890|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |1       |    139|  2029|
|6 months  |Vellore Crypto |INDIA        |0       |    358|   407|
|6 months  |Vellore Crypto |INDIA        |1       |     49|   407|
|6 months  |ZVITAMBO       |ZIMBABWE     |0       |   7795|  8669|
|6 months  |ZVITAMBO       |ZIMBABWE     |1       |    874|  8669|
|24 months |CMC-V-BCS-2002 |INDIA        |0       |    294|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |1       |     77|   371|
|24 months |CMIN           |BANGLADESH   |0       |    153|   242|
|24 months |CMIN           |BANGLADESH   |1       |     89|   242|
|24 months |COHORTS        |INDIA        |0       |   4696|  5337|
|24 months |COHORTS        |INDIA        |1       |    641|  5337|
|24 months |COHORTS        |GUATEMALA    |0       |    740|  1070|
|24 months |COHORTS        |GUATEMALA    |1       |    330|  1070|
|24 months |COHORTS        |PHILIPPINES  |0       |   2310|  2445|
|24 months |COHORTS        |PHILIPPINES  |1       |    135|  2445|
|24 months |CONTENT        |PERU         |0       |    147|   164|
|24 months |CONTENT        |PERU         |1       |     17|   164|
|24 months |EE             |PAKISTAN     |0       |    100|   167|
|24 months |EE             |PAKISTAN     |1       |     67|   167|
|24 months |GMS-Nepal      |NEPAL        |0       |    406|   488|
|24 months |GMS-Nepal      |NEPAL        |1       |     82|   488|
|24 months |JiVitA-3       |BANGLADESH   |0       |   5942|  8632|
|24 months |JiVitA-3       |BANGLADESH   |1       |   2690|  8632|
|24 months |JiVitA-4       |BANGLADESH   |0       |   3396|  4752|
|24 months |JiVitA-4       |BANGLADESH   |1       |   1356|  4752|
|24 months |Keneba         |GAMBIA       |0       |   1549|  1725|
|24 months |Keneba         |GAMBIA       |1       |    176|  1725|
|24 months |LCNI-5         |MALAWI       |0       |    377|   579|
|24 months |LCNI-5         |MALAWI       |1       |    202|   579|
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
|24 months |NIH-Birth      |BANGLADESH   |0       |    355|   429|
|24 months |NIH-Birth      |BANGLADESH   |1       |     74|   429|
|24 months |NIH-Crypto     |BANGLADESH   |0       |    444|   514|
|24 months |NIH-Crypto     |BANGLADESH   |1       |     70|   514|
|24 months |PROBIT         |BELARUS      |0       |   4022|  4035|
|24 months |PROBIT         |BELARUS      |1       |     13|  4035|
|24 months |PROVIDE        |BANGLADESH   |0       |    518|   578|
|24 months |PROVIDE        |BANGLADESH   |1       |     60|   578|
|24 months |TanzaniaChild2 |TANZANIA     |0       |      6|     6|
|24 months |TanzaniaChild2 |TANZANIA     |1       |      0|     6|
|24 months |Vellore Crypto |INDIA        |0       |    358|   409|
|24 months |Vellore Crypto |INDIA        |1       |     51|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |0       |   1406|  1640|
|24 months |ZVITAMBO       |ZIMBABWE     |1       |    234|  1640|


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```


