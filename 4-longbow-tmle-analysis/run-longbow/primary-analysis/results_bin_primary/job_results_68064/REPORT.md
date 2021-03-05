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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** impfloor

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* W_parity
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country                      |impfloor | ever_wasted| n_cell|     n|
|:---------------------------|:--------------|:----------------------------|:--------|-----------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1        |           0|    145|   258|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1        |           1|    113|   258|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0        |           0|      0|   258|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0        |           1|      0|   258|
|0-24 months (no birth wast) |CONTENT        |PERU                         |1        |           0|    197|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |1        |           1|      4|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |0        |           0|     14|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |0        |           1|      0|   215|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1        |           0|     47|   518|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1        |           1|     46|   518|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0        |           0|    211|   518|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0        |           1|    214|   518|
|0-24 months (no birth wast) |IRC            |INDIA                        |1        |           0|    135|   305|
|0-24 months (no birth wast) |IRC            |INDIA                        |1        |           1|    170|   305|
|0-24 months (no birth wast) |IRC            |INDIA                        |0        |           0|      0|   305|
|0-24 months (no birth wast) |IRC            |INDIA                        |0        |           1|      0|   305|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1        |           0|   1773| 26465|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1        |           1|    314| 26465|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0        |           0|  20212| 26465|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0        |           1|   4166| 26465|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1        |           0|    525|  5380|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1        |           1|    122|  5380|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0        |           0|   3468|  5380|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0        |           1|   1265|  5380|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1        |           0|    173|   242|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1        |           1|     50|   242|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0        |           0|     12|   242|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0        |           1|      7|   242|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1        |           0|    195|   210|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1        |           1|     13|   210|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0        |           0|      2|   210|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0        |           1|      0|   210|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1        |           0|    135|   231|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1        |           1|     81|   231|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0        |           0|      8|   231|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0        |           1|      7|   231|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1        |           0|     86|   229|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1        |           1|     17|   229|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0        |           0|    102|   229|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0        |           1|     24|   229|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1        |           0|     55|   272|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1        |           1|      4|   272|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0        |           0|    196|   272|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0        |           1|     17|   272|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1        |           0|    195|   257|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1        |           1|     41|   257|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0        |           0|     18|   257|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0        |           1|      3|   257|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1        |           0|     12|   248|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1        |           1|      2|   248|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0        |           0|    202|   248|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0        |           1|     32|   248|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |1        |           0|    380|   599|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |1        |           1|    152|   599|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |0        |           0|     42|   599|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |0        |           1|     25|   599|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1        |           0|    498|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1        |           1|     78|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0        |           0|    148|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0        |           1|     30|   754|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1        |           0|    523|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1        |           1|    103|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0        |           0|     42|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0        |           1|     19|   687|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |1        |           0|    173|   246|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |1        |           1|     73|   246|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0        |           0|      0|   246|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0        |           1|      0|   246|
|0-6 months (no birth wast)  |CONTENT        |PERU                         |1        |           0|    198|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU                         |1        |           1|      3|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU                         |0        |           0|     14|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU                         |0        |           1|      0|   215|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |1        |           0|     71|   504|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |1        |           1|     19|   504|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |0        |           0|    332|   504|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |0        |           1|     82|   504|
|0-6 months (no birth wast)  |IRC            |INDIA                        |1        |           0|    179|   291|
|0-6 months (no birth wast)  |IRC            |INDIA                        |1        |           1|    112|   291|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0        |           0|      0|   291|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0        |           1|      0|   291|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |1        |           0|   1924| 26171|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |1        |           1|    139| 26171|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0        |           0|  22370| 26171|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0        |           1|   1738| 26171|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |1        |           0|    587|  4945|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |1        |           1|     14|  4945|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0        |           0|   4233|  4945|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0        |           1|    111|  4945|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |1        |           0|    208|   241|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |1        |           1|     14|   241|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |0        |           0|     15|   241|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |0        |           1|      4|   241|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |1        |           0|    200|   210|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |1        |           1|      8|   210|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |0        |           0|      2|   210|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |0        |           1|      0|   210|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |1        |           0|    179|   229|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |1        |           1|     35|   229|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |0        |           0|     14|   229|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |0        |           1|      1|   229|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |1        |           0|     94|   227|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |1        |           1|      8|   227|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |0        |           0|    118|   227|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |0        |           1|      7|   227|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |1        |           0|     58|   272|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |1        |           1|      1|   272|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |0        |           0|    209|   272|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |0        |           1|      4|   272|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |1        |           0|    223|   256|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |1        |           1|     12|   256|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |0        |           0|     20|   256|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |0        |           1|      1|   256|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1        |           0|     14|   248|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1        |           1|      0|   248|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0        |           0|    224|   248|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0        |           1|     10|   248|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |1        |           0|    478|   581|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |1        |           1|     41|   581|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |0        |           0|     57|   581|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |0        |           1|      5|   581|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |1        |           0|    559|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |1        |           1|     13|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |0        |           0|    170|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |0        |           1|      7|   749|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |1        |           0|    591|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |1        |           1|     31|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0        |           0|     55|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0        |           1|      6|   683|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/46b7e206-ef8d-4247-b5a9-bd01b8174605/b452001c-aea8-46ad-bcae-e1b9a60285f1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/46b7e206-ef8d-4247-b5a9-bd01b8174605/b452001c-aea8-46ad-bcae-e1b9a60285f1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/46b7e206-ef8d-4247-b5a9-bd01b8174605/b452001c-aea8-46ad-bcae-e1b9a60285f1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/46b7e206-ef8d-4247-b5a9-bd01b8174605/b452001c-aea8-46ad-bcae-e1b9a60285f1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid    |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:----------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal  |NEPAL      |1                  |NA             | 0.5289302| 0.4216468| 0.6362137|
|0-24 months (no birth wast) |GMS-Nepal  |NEPAL      |0                  |NA             | 0.5030871| 0.4550156| 0.5511586|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH |1                  |NA             | 0.1700017| 0.1518814| 0.1881220|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH |0                  |NA             | 0.1694265| 0.1637438| 0.1751093|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH |1                  |NA             | 0.2054926| 0.1609270| 0.2500583|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH |0                  |NA             | 0.2643129| 0.2472698| 0.2813559|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH |1                  |NA             | 0.2242152| 0.1693625| 0.2790679|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH |0                  |NA             | 0.3684211| 0.1510726| 0.5857695|
|0-24 months (no birth wast) |MAL-ED     |INDIA      |1                  |NA             | 0.3750000| 0.3102978| 0.4397022|
|0-24 months (no birth wast) |MAL-ED     |INDIA      |0                  |NA             | 0.4666667| 0.2136511| 0.7196823|
|0-24 months (no birth wast) |MAL-ED     |NEPAL      |1                  |NA             | 0.1702124| 0.0954983| 0.2449266|
|0-24 months (no birth wast) |MAL-ED     |NEPAL      |0                  |NA             | 0.1876632| 0.1192210| 0.2561053|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH |1                  |NA             | 0.2869723| 0.2485457| 0.3253990|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH |0                  |NA             | 0.3715933| 0.2469930| 0.4961936|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |1                  |NA             | 0.1364064| 0.1084058| 0.1644071|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |0                  |NA             | 0.1683805| 0.1137104| 0.2230505|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH |1                  |NA             | 0.1638910| 0.1348649| 0.1929172|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH |0                  |NA             | 0.3227008| 0.2052326| 0.4401690|
|0-6 months (no birth wast)  |GMS-Nepal  |NEPAL      |1                  |NA             | 0.2425127| 0.1575396| 0.3274857|
|0-6 months (no birth wast)  |GMS-Nepal  |NEPAL      |0                  |NA             | 0.1990048| 0.1605986| 0.2374111|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH |1                  |NA             | 0.0672386| 0.0567647| 0.0777126|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH |0                  |NA             | 0.0714162| 0.0675445| 0.0752879|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH |1                  |NA             | 0.0131644| 0.0029588| 0.0233701|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH |0                  |NA             | 0.0248024| 0.0198493| 0.0297556|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL      |1                  |NA             | 0.0784314| 0.0261418| 0.1307210|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL      |0                  |NA             | 0.0560000| 0.0156046| 0.0963954|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH |1                  |NA             | 0.0789981| 0.0557719| 0.1022242|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH |0                  |NA             | 0.0806452| 0.0128097| 0.1484807|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH |1                  |NA             | 0.0227273| 0.0105059| 0.0349487|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH |0                  |NA             | 0.0395480| 0.0108170| 0.0682791|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH |1                  |NA             | 0.0498392| 0.0327251| 0.0669534|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH |0                  |NA             | 0.0983607| 0.0235732| 0.1731481|


### Parameter: E(Y)


|agecat                      |studyid    |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:----------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal  |NEPAL      |NA                 |NA             | 0.5019305| 0.4588313| 0.5450297|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH |NA                 |NA             | 0.1692802| 0.1639950| 0.1745654|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH |NA                 |NA             | 0.2578067| 0.2441658| 0.2714476|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH |NA                 |NA             | 0.2355372| 0.1819640| 0.2891104|
|0-24 months (no birth wast) |MAL-ED     |INDIA      |NA                 |NA             | 0.3809524| 0.3181926| 0.4437122|
|0-24 months (no birth wast) |MAL-ED     |NEPAL      |NA                 |NA             | 0.1790393| 0.1292752| 0.2288034|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH |NA                 |NA             | 0.2954925| 0.2589234| 0.3320615|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |NA                 |NA             | 0.1432361| 0.1182149| 0.1682572|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH |NA                 |NA             | 0.1775837| 0.1489858| 0.2061816|
|0-6 months (no birth wast)  |GMS-Nepal  |NEPAL      |NA                 |NA             | 0.2003968| 0.1654147| 0.2353790|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH |NA                 |NA             | 0.0717206| 0.0680808| 0.0753604|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH |NA                 |NA             | 0.0252781| 0.0205710| 0.0299851|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL      |NA                 |NA             | 0.0660793| 0.0336915| 0.0984671|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH |NA                 |NA             | 0.0791738| 0.0571996| 0.1011481|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH |NA                 |NA             | 0.0267023| 0.0151493| 0.0382553|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH |NA                 |NA             | 0.0541728| 0.0371844| 0.0711612|


### Parameter: RR


|agecat                      |studyid    |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:----------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |GMS-Nepal  |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |GMS-Nepal  |NEPAL      |0                  |1              | 0.9511407| 0.7600386| 1.190293|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH |0                  |1              | 0.9966168| 0.8922388| 1.113206|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH |0                  |1              | 1.2862402| 1.0261577| 1.612242|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH |0                  |1              | 1.6431579| 0.8675868| 3.112044|
|0-24 months (no birth wast) |MAL-ED     |INDIA      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED     |INDIA      |0                  |1              | 1.2444444| 0.7044915| 2.198241|
|0-24 months (no birth wast) |MAL-ED     |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED     |NEPAL      |0                  |1              | 1.1025233| 0.6242834| 1.947125|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH |0                  |1              | 1.2948749| 0.9023018| 1.858249|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |0                  |1              | 1.2344031| 0.8409515| 1.811937|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH |0                  |1              | 1.9689961| 1.3145232| 2.949317|
|0-6 months (no birth wast)  |GMS-Nepal  |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |GMS-Nepal  |NEPAL      |0                  |1              | 0.8205956| 0.5493085| 1.225863|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH |0                  |1              | 1.0621303| 0.9023957| 1.250140|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH |0                  |1              | 1.8840473| 0.8430073| 4.210680|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL      |0                  |1              | 0.7140000| 0.2673693| 1.906711|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH |0                  |1              | 1.0208497| 0.4187728| 2.488543|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH |0                  |1              | 1.7401130| 0.7047572| 4.296506|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH |0                  |1              | 1.9735590| 0.8568903| 4.545430|


### Parameter: PAR


|agecat                      |studyid    |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:----------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal  |NEPAL      |1                  |NA             | -0.0269997| -0.1256555| 0.0716560|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH |1                  |NA             | -0.0007215| -0.0185133| 0.0170703|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH |1                  |NA             |  0.0523141|  0.0083718| 0.0962563|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH |1                  |NA             |  0.0113219| -0.0069463| 0.0295901|
|0-24 months (no birth wast) |MAL-ED     |INDIA      |1                  |NA             |  0.0059524| -0.0112553| 0.0231601|
|0-24 months (no birth wast) |MAL-ED     |NEPAL      |1                  |NA             |  0.0088269| -0.0480300| 0.0656837|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH |1                  |NA             |  0.0085202| -0.0053326| 0.0223729|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |1                  |NA             |  0.0068297| -0.0077580| 0.0214173|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH |1                  |NA             |  0.0136927|  0.0027076| 0.0246777|
|0-6 months (no birth wast)  |GMS-Nepal  |NEPAL      |1                  |NA             | -0.0421158| -0.1193514| 0.0351197|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH |1                  |NA             |  0.0044820| -0.0059240| 0.0148879|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH |1                  |NA             |  0.0121136|  0.0022665| 0.0219608|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL      |1                  |NA             | -0.0123521| -0.0487664| 0.0240623|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH |1                  |NA             |  0.0001758| -0.0074758| 0.0078273|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH |1                  |NA             |  0.0039750| -0.0034211| 0.0113711|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH |1                  |NA             |  0.0043335| -0.0025968| 0.0112639|


### Parameter: PAF


|agecat                      |studyid    |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:----------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal  |NEPAL      |1                  |NA             | -0.0537918| -0.2699878| 0.1256002|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH |1                  |NA             | -0.0042622| -0.1150747| 0.0955382|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH |1                  |NA             |  0.2029197|  0.0139126| 0.3556991|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH |1                  |NA             |  0.0480686| -0.0323921| 0.1222585|
|0-24 months (no birth wast) |MAL-ED     |INDIA      |1                  |NA             |  0.0156250| -0.0306138| 0.0597893|
|0-24 months (no birth wast) |MAL-ED     |NEPAL      |1                  |NA             |  0.0493013| -0.3277213| 0.3192637|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH |1                  |NA             |  0.0288338| -0.0191446| 0.0745534|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |1                  |NA             |  0.0476812| -0.0594900| 0.1440116|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH |1                  |NA             |  0.0771055|  0.0138263| 0.1363243|
|0-6 months (no birth wast)  |GMS-Nepal  |NEPAL      |1                  |NA             | -0.2101622| -0.6661232| 0.1210179|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH |1                  |NA             |  0.0624919| -0.0938895| 0.1965172|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH |1                  |NA             |  0.4792151| -0.0914545| 0.7515087|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL      |1                  |NA             | -0.1869281| -0.8781388| 0.2498966|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH |1                  |NA             |  0.0022200| -0.0992559| 0.0943283|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH |1                  |NA             |  0.1488636| -0.1685294| 0.3800472|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH |1                  |NA             |  0.0799948| -0.0547090| 0.1974947|
