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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** mbmi

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |mbmi          | sstunted| n_cell|     n|
|:---------|:--------------|:------------|:-------------|--------:|------:|-----:|
|Birth     |JiVitA-3       |BANGLADESH   |Normal weight |        0|  11884| 22234|
|Birth     |JiVitA-3       |BANGLADESH   |Normal weight |        1|   1535| 22234|
|Birth     |JiVitA-3       |BANGLADESH   |Underweight   |        0|   7925| 22234|
|Birth     |JiVitA-3       |BANGLADESH   |Underweight   |        1|    890| 22234|
|Birth     |MAL-ED         |INDIA        |Normal weight |        0|     36|    45|
|Birth     |MAL-ED         |INDIA        |Normal weight |        1|      2|    45|
|Birth     |MAL-ED         |INDIA        |Underweight   |        0|      7|    45|
|Birth     |MAL-ED         |INDIA        |Underweight   |        1|      0|    45|
|Birth     |MAL-ED         |BANGLADESH   |Normal weight |        0|    181|   216|
|Birth     |MAL-ED         |BANGLADESH   |Normal weight |        1|      7|   216|
|Birth     |MAL-ED         |BANGLADESH   |Underweight   |        0|     26|   216|
|Birth     |MAL-ED         |BANGLADESH   |Underweight   |        1|      2|   216|
|Birth     |MAL-ED         |PERU         |Normal weight |        0|    216|   223|
|Birth     |MAL-ED         |PERU         |Normal weight |        1|      3|   223|
|Birth     |MAL-ED         |PERU         |Underweight   |        0|      4|   223|
|Birth     |MAL-ED         |PERU         |Underweight   |        1|      0|   223|
|Birth     |MAL-ED         |NEPAL        |Normal weight |        0|     26|    27|
|Birth     |MAL-ED         |NEPAL        |Normal weight |        1|      1|    27|
|Birth     |MAL-ED         |NEPAL        |Underweight   |        0|      0|    27|
|Birth     |MAL-ED         |NEPAL        |Underweight   |        1|      0|    27|
|Birth     |MAL-ED         |BRAZIL       |Normal weight |        0|     54|    63|
|Birth     |MAL-ED         |BRAZIL       |Normal weight |        1|      3|    63|
|Birth     |MAL-ED         |BRAZIL       |Underweight   |        0|      6|    63|
|Birth     |MAL-ED         |BRAZIL       |Underweight   |        1|      0|    63|
|Birth     |MAL-ED         |TANZANIA     |Normal weight |        0|    101|   118|
|Birth     |MAL-ED         |TANZANIA     |Normal weight |        1|      7|   118|
|Birth     |MAL-ED         |TANZANIA     |Underweight   |        0|     10|   118|
|Birth     |MAL-ED         |TANZANIA     |Underweight   |        1|      0|   118|
|Birth     |MAL-ED         |SOUTH AFRICA |Normal weight |        0|     93|    99|
|Birth     |MAL-ED         |SOUTH AFRICA |Normal weight |        1|      1|    99|
|Birth     |MAL-ED         |SOUTH AFRICA |Underweight   |        0|      5|    99|
|Birth     |MAL-ED         |SOUTH AFRICA |Underweight   |        1|      0|    99|
|Birth     |NIH-Birth      |BANGLADESH   |Normal weight |        0|    505|   608|
|Birth     |NIH-Birth      |BANGLADESH   |Normal weight |        1|     13|   608|
|Birth     |NIH-Birth      |BANGLADESH   |Underweight   |        0|     84|   608|
|Birth     |NIH-Birth      |BANGLADESH   |Underweight   |        1|      6|   608|
|Birth     |NIH-Crypto     |BANGLADESH   |Normal weight |        0|    670|   728|
|Birth     |NIH-Crypto     |BANGLADESH   |Normal weight |        1|      9|   728|
|Birth     |NIH-Crypto     |BANGLADESH   |Underweight   |        0|     48|   728|
|Birth     |NIH-Crypto     |BANGLADESH   |Underweight   |        1|      1|   728|
|Birth     |PROBIT         |BELARUS      |Normal weight |        0|  13167| 13713|
|Birth     |PROBIT         |BELARUS      |Normal weight |        1|      5| 13713|
|Birth     |PROBIT         |BELARUS      |Underweight   |        0|    541| 13713|
|Birth     |PROBIT         |BELARUS      |Underweight   |        1|      0| 13713|
|Birth     |PROVIDE        |BANGLADESH   |Normal weight |        0|    412|   516|
|Birth     |PROVIDE        |BANGLADESH   |Normal weight |        1|      4|   516|
|Birth     |PROVIDE        |BANGLADESH   |Underweight   |        0|    100|   516|
|Birth     |PROVIDE        |BANGLADESH   |Underweight   |        1|      0|   516|
|Birth     |SAS-CompFeed   |INDIA        |Normal weight |        0|    741|  1139|
|Birth     |SAS-CompFeed   |INDIA        |Normal weight |        1|     61|  1139|
|Birth     |SAS-CompFeed   |INDIA        |Underweight   |        0|    312|  1139|
|Birth     |SAS-CompFeed   |INDIA        |Underweight   |        1|     25|  1139|
|Birth     |ZVITAMBO       |ZIMBABWE     |Normal weight |        0|   8703|  9475|
|Birth     |ZVITAMBO       |ZIMBABWE     |Normal weight |        1|    250|  9475|
|Birth     |ZVITAMBO       |ZIMBABWE     |Underweight   |        0|    498|  9475|
|Birth     |ZVITAMBO       |ZIMBABWE     |Underweight   |        1|     24|  9475|
|6 months  |JiVitA-3       |BANGLADESH   |Normal weight |        0|   9429| 16687|
|6 months  |JiVitA-3       |BANGLADESH   |Normal weight |        1|    656| 16687|
|6 months  |JiVitA-3       |BANGLADESH   |Underweight   |        0|   6247| 16687|
|6 months  |JiVitA-3       |BANGLADESH   |Underweight   |        1|    355| 16687|
|6 months  |LCNI-5         |MALAWI       |Normal weight |        0|    613|   835|
|6 months  |LCNI-5         |MALAWI       |Normal weight |        1|     61|   835|
|6 months  |LCNI-5         |MALAWI       |Underweight   |        0|    151|   835|
|6 months  |LCNI-5         |MALAWI       |Underweight   |        1|     10|   835|
|6 months  |MAL-ED         |INDIA        |Normal weight |        0|    171|   227|
|6 months  |MAL-ED         |INDIA        |Normal weight |        1|      8|   227|
|6 months  |MAL-ED         |INDIA        |Underweight   |        0|     47|   227|
|6 months  |MAL-ED         |INDIA        |Underweight   |        1|      1|   227|
|6 months  |MAL-ED         |BANGLADESH   |Normal weight |        0|    190|   228|
|6 months  |MAL-ED         |BANGLADESH   |Normal weight |        1|      6|   228|
|6 months  |MAL-ED         |BANGLADESH   |Underweight   |        0|     30|   228|
|6 months  |MAL-ED         |BANGLADESH   |Underweight   |        1|      2|   228|
|6 months  |MAL-ED         |PERU         |Normal weight |        0|    248|   261|
|6 months  |MAL-ED         |PERU         |Normal weight |        1|      9|   261|
|6 months  |MAL-ED         |PERU         |Underweight   |        0|      4|   261|
|6 months  |MAL-ED         |PERU         |Underweight   |        1|      0|   261|
|6 months  |MAL-ED         |NEPAL        |Normal weight |        0|    231|   234|
|6 months  |MAL-ED         |NEPAL        |Normal weight |        1|      1|   234|
|6 months  |MAL-ED         |NEPAL        |Underweight   |        0|      2|   234|
|6 months  |MAL-ED         |NEPAL        |Underweight   |        1|      0|   234|
|6 months  |MAL-ED         |BRAZIL       |Normal weight |        0|    183|   198|
|6 months  |MAL-ED         |BRAZIL       |Normal weight |        1|      0|   198|
|6 months  |MAL-ED         |BRAZIL       |Underweight   |        0|     15|   198|
|6 months  |MAL-ED         |BRAZIL       |Underweight   |        1|      0|   198|
|6 months  |MAL-ED         |TANZANIA     |Normal weight |        0|    210|   240|
|6 months  |MAL-ED         |TANZANIA     |Normal weight |        1|     11|   240|
|6 months  |MAL-ED         |TANZANIA     |Underweight   |        0|     17|   240|
|6 months  |MAL-ED         |TANZANIA     |Underweight   |        1|      2|   240|
|6 months  |MAL-ED         |SOUTH AFRICA |Normal weight |        0|    217|   233|
|6 months  |MAL-ED         |SOUTH AFRICA |Normal weight |        1|      5|   233|
|6 months  |MAL-ED         |SOUTH AFRICA |Underweight   |        0|     11|   233|
|6 months  |MAL-ED         |SOUTH AFRICA |Underweight   |        1|      0|   233|
|6 months  |NIH-Birth      |BANGLADESH   |Normal weight |        0|    430|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Normal weight |        1|     24|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Underweight   |        0|     72|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Underweight   |        1|     11|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |Normal weight |        0|    642|   711|
|6 months  |NIH-Crypto     |BANGLADESH   |Normal weight |        1|     18|   711|
|6 months  |NIH-Crypto     |BANGLADESH   |Underweight   |        0|     46|   711|
|6 months  |NIH-Crypto     |BANGLADESH   |Underweight   |        1|      5|   711|
|6 months  |PROBIT         |BELARUS      |Normal weight |        0|  12419| 13077|
|6 months  |PROBIT         |BELARUS      |Normal weight |        1|    129| 13077|
|6 months  |PROBIT         |BELARUS      |Underweight   |        0|    522| 13077|
|6 months  |PROBIT         |BELARUS      |Underweight   |        1|      7| 13077|
|6 months  |PROVIDE        |BANGLADESH   |Normal weight |        0|    469|   587|
|6 months  |PROVIDE        |BANGLADESH   |Normal weight |        1|     11|   587|
|6 months  |PROVIDE        |BANGLADESH   |Underweight   |        0|    105|   587|
|6 months  |PROVIDE        |BANGLADESH   |Underweight   |        1|      2|   587|
|6 months  |SAS-CompFeed   |INDIA        |Normal weight |        0|    790|  1226|
|6 months  |SAS-CompFeed   |INDIA        |Normal weight |        1|     82|  1226|
|6 months  |SAS-CompFeed   |INDIA        |Underweight   |        0|    317|  1226|
|6 months  |SAS-CompFeed   |INDIA        |Underweight   |        1|     37|  1226|
|6 months  |TanzaniaChild2 |TANZANIA     |Normal weight |        0|   1930|  1994|
|6 months  |TanzaniaChild2 |TANZANIA     |Normal weight |        1|     19|  1994|
|6 months  |TanzaniaChild2 |TANZANIA     |Underweight   |        0|     45|  1994|
|6 months  |TanzaniaChild2 |TANZANIA     |Underweight   |        1|      0|  1994|
|6 months  |ZVITAMBO       |ZIMBABWE     |Normal weight |        0|   6607|  7243|
|6 months  |ZVITAMBO       |ZIMBABWE     |Normal weight |        1|    258|  7243|
|6 months  |ZVITAMBO       |ZIMBABWE     |Underweight   |        0|    362|  7243|
|6 months  |ZVITAMBO       |ZIMBABWE     |Underweight   |        1|     16|  7243|
|24 months |JiVitA-3       |BANGLADESH   |Normal weight |        0|   4299|  8572|
|24 months |JiVitA-3       |BANGLADESH   |Normal weight |        1|    869|  8572|
|24 months |JiVitA-3       |BANGLADESH   |Underweight   |        0|   2936|  8572|
|24 months |JiVitA-3       |BANGLADESH   |Underweight   |        1|    468|  8572|
|24 months |LCNI-5         |MALAWI       |Normal weight |        0|    417|   577|
|24 months |LCNI-5         |MALAWI       |Normal weight |        1|     51|   577|
|24 months |LCNI-5         |MALAWI       |Underweight   |        0|     91|   577|
|24 months |LCNI-5         |MALAWI       |Underweight   |        1|     18|   577|
|24 months |MAL-ED         |INDIA        |Normal weight |        0|    145|   218|
|24 months |MAL-ED         |INDIA        |Normal weight |        1|     27|   218|
|24 months |MAL-ED         |INDIA        |Underweight   |        0|     43|   218|
|24 months |MAL-ED         |INDIA        |Underweight   |        1|      3|   218|
|24 months |MAL-ED         |BANGLADESH   |Normal weight |        0|    152|   199|
|24 months |MAL-ED         |BANGLADESH   |Normal weight |        1|     17|   199|
|24 months |MAL-ED         |BANGLADESH   |Underweight   |        0|     21|   199|
|24 months |MAL-ED         |BANGLADESH   |Underweight   |        1|      9|   199|
|24 months |MAL-ED         |PERU         |Normal weight |        0|    174|   190|
|24 months |MAL-ED         |PERU         |Normal weight |        1|     12|   190|
|24 months |MAL-ED         |PERU         |Underweight   |        0|      4|   190|
|24 months |MAL-ED         |PERU         |Underweight   |        1|      0|   190|
|24 months |MAL-ED         |NEPAL        |Normal weight |        0|    217|   226|
|24 months |MAL-ED         |NEPAL        |Normal weight |        1|      7|   226|
|24 months |MAL-ED         |NEPAL        |Underweight   |        0|      2|   226|
|24 months |MAL-ED         |NEPAL        |Underweight   |        1|      0|   226|
|24 months |MAL-ED         |BRAZIL       |Normal weight |        0|    147|   159|
|24 months |MAL-ED         |BRAZIL       |Normal weight |        1|      1|   159|
|24 months |MAL-ED         |BRAZIL       |Underweight   |        0|     11|   159|
|24 months |MAL-ED         |BRAZIL       |Underweight   |        1|      0|   159|
|24 months |MAL-ED         |TANZANIA     |Normal weight |        0|    127|   208|
|24 months |MAL-ED         |TANZANIA     |Normal weight |        1|     63|   208|
|24 months |MAL-ED         |TANZANIA     |Underweight   |        0|     12|   208|
|24 months |MAL-ED         |TANZANIA     |Underweight   |        1|      6|   208|
|24 months |MAL-ED         |SOUTH AFRICA |Normal weight |        0|    185|   218|
|24 months |MAL-ED         |SOUTH AFRICA |Normal weight |        1|     23|   218|
|24 months |MAL-ED         |SOUTH AFRICA |Underweight   |        0|     10|   218|
|24 months |MAL-ED         |SOUTH AFRICA |Underweight   |        1|      0|   218|
|24 months |NIH-Birth      |BANGLADESH   |Normal weight |        0|    286|   429|
|24 months |NIH-Birth      |BANGLADESH   |Normal weight |        1|     73|   429|
|24 months |NIH-Birth      |BANGLADESH   |Underweight   |        0|     48|   429|
|24 months |NIH-Birth      |BANGLADESH   |Underweight   |        1|     22|   429|
|24 months |NIH-Crypto     |BANGLADESH   |Normal weight |        0|    445|   510|
|24 months |NIH-Crypto     |BANGLADESH   |Normal weight |        1|     30|   510|
|24 months |NIH-Crypto     |BANGLADESH   |Underweight   |        0|     29|   510|
|24 months |NIH-Crypto     |BANGLADESH   |Underweight   |        1|      6|   510|
|24 months |PROBIT         |BELARUS      |Normal weight |        0|   3792|  4000|
|24 months |PROBIT         |BELARUS      |Normal weight |        1|     60|  4000|
|24 months |PROBIT         |BELARUS      |Underweight   |        0|    144|  4000|
|24 months |PROBIT         |BELARUS      |Underweight   |        1|      4|  4000|
|24 months |PROVIDE        |BANGLADESH   |Normal weight |        0|    426|   562|
|24 months |PROVIDE        |BANGLADESH   |Normal weight |        1|     34|   562|
|24 months |PROVIDE        |BANGLADESH   |Underweight   |        0|     87|   562|
|24 months |PROVIDE        |BANGLADESH   |Underweight   |        1|     15|   562|
|24 months |TanzaniaChild2 |TANZANIA     |Normal weight |        0|      5|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Normal weight |        1|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Underweight   |        0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Underweight   |        1|      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |        0|   1167|  1371|
|24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |        1|    144|  1371|
|24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |        0|     55|  1371|
|24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |        1|      5|  1371|


The following strata were considered:

* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: PROBIT, country: BELARUS
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


