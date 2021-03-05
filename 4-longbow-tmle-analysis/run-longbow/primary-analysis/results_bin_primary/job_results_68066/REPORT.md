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

**Intervention Variable:** safeh20

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
* impfloor
* impsan
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
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid       |country                      |safeh20 | ever_wasted| n_cell|     n|
|:---------------------------|:-------------|:----------------------------|:-------|-----------:|------:|-----:|
|0-24 months (no birth wast) |CONTENT       |PERU                         |1       |           0|     53|    57|
|0-24 months (no birth wast) |CONTENT       |PERU                         |1       |           1|      1|    57|
|0-24 months (no birth wast) |CONTENT       |PERU                         |0       |           0|      3|    57|
|0-24 months (no birth wast) |CONTENT       |PERU                         |0       |           1|      0|    57|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |1       |           0|  21980| 26503|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |1       |           1|   4481| 26503|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |0       |           0|     36| 26503|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |0       |           1|      6| 26503|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |1       |           0|   3993|  5381|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |1       |           1|   1387|  5381|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |0       |           0|      1|  5381|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |0       |           1|      0|  5381|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |1       |           0|    627|   814|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |1       |           1|     44|   814|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |0       |           0|    132|   814|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |0       |           1|     11|   814|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |1       |           0|      0|   242|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |1       |           1|      0|   242|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |0       |           0|    185|   242|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |0       |           1|     57|   242|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |1       |           0|      0|   142|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |1       |           1|      0|   142|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |0       |           0|    134|   142|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |0       |           1|      8|   142|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |1       |           0|      0|   231|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |1       |           1|      0|   231|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |0       |           0|    143|   231|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |0       |           1|     88|   231|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |1       |           0|      1|   233|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |1       |           1|      0|   233|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |0       |           0|    186|   233|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |0       |           1|     46|   233|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |1       |           0|     11|   259|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |1       |           1|      0|   259|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |0       |           0|    227|   259|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |0       |           1|     21|   259|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |1       |           0|     29|   254|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |1       |           1|      9|   254|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |0       |           0|    181|   254|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |0       |           1|     35|   254|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1       |           0|    145|   249|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1       |           1|     25|   249|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0       |           0|     70|   249|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0       |           1|      9|   249|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH                   |1       |           0|    422|   602|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH                   |1       |           1|    178|   602|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH                   |0       |           0|      2|   602|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH                   |0       |           1|      0|   602|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH                   |1       |           0|    646|   754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH                   |1       |           1|    108|   754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH                   |0       |           0|      0|   754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH                   |0       |           1|      0|   754|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH                   |1       |           0|     49|    52|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH                   |1       |           1|      3|    52|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH                   |0       |           0|      0|    52|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH                   |0       |           1|      0|    52|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |1       |           0|    254|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |1       |           1|    143|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |0       |           0|      0|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |0       |           1|      0|   397|
|0-6 months (no birth wast)  |CONTENT       |PERU                         |1       |           0|     53|    57|
|0-6 months (no birth wast)  |CONTENT       |PERU                         |1       |           1|      1|    57|
|0-6 months (no birth wast)  |CONTENT       |PERU                         |0       |           0|      3|    57|
|0-6 months (no birth wast)  |CONTENT       |PERU                         |0       |           1|      0|    57|
|0-6 months (no birth wast)  |JiVitA-3      |BANGLADESH                   |1       |           0|  24291| 26208|
|0-6 months (no birth wast)  |JiVitA-3      |BANGLADESH                   |1       |           1|   1876| 26208|
|0-6 months (no birth wast)  |JiVitA-3      |BANGLADESH                   |0       |           0|     39| 26208|
|0-6 months (no birth wast)  |JiVitA-3      |BANGLADESH                   |0       |           1|      2| 26208|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH                   |1       |           0|   4819|  4945|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH                   |1       |           1|    125|  4945|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH                   |0       |           0|      1|  4945|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH                   |0       |           1|      0|  4945|
|0-6 months (no birth wast)  |LCNI-5        |MALAWI                       |1       |           0|    210|   265|
|0-6 months (no birth wast)  |LCNI-5        |MALAWI                       |1       |           1|      0|   265|
|0-6 months (no birth wast)  |LCNI-5        |MALAWI                       |0       |           0|     55|   265|
|0-6 months (no birth wast)  |LCNI-5        |MALAWI                       |0       |           1|      0|   265|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH                   |1       |           0|      0|   241|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH                   |1       |           1|      0|   241|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH                   |0       |           0|    223|   241|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH                   |0       |           1|     18|   241|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL                       |1       |           0|      0|   142|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL                       |1       |           1|      0|   142|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL                       |0       |           0|    137|   142|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL                       |0       |           1|      5|   142|
|0-6 months (no birth wast)  |MAL-ED        |INDIA                        |1       |           0|      0|   229|
|0-6 months (no birth wast)  |MAL-ED        |INDIA                        |1       |           1|      0|   229|
|0-6 months (no birth wast)  |MAL-ED        |INDIA                        |0       |           0|    193|   229|
|0-6 months (no birth wast)  |MAL-ED        |INDIA                        |0       |           1|     36|   229|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL                        |1       |           0|      1|   231|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL                        |1       |           1|      0|   231|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL                        |0       |           0|    214|   231|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL                        |0       |           1|     16|   231|
|0-6 months (no birth wast)  |MAL-ED        |PERU                         |1       |           0|     11|   259|
|0-6 months (no birth wast)  |MAL-ED        |PERU                         |1       |           1|      0|   259|
|0-6 months (no birth wast)  |MAL-ED        |PERU                         |0       |           0|    243|   259|
|0-6 months (no birth wast)  |MAL-ED        |PERU                         |0       |           1|      5|   259|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA                 |1       |           0|     36|   253|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA                 |1       |           1|      2|   253|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA                 |0       |           0|    204|   253|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA                 |0       |           1|     11|   253|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1       |           0|    163|   249|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1       |           1|      7|   249|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0       |           0|     76|   249|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0       |           1|      3|   249|
|0-6 months (no birth wast)  |NIH-Birth     |BANGLADESH                   |1       |           0|    536|   584|
|0-6 months (no birth wast)  |NIH-Birth     |BANGLADESH                   |1       |           1|     46|   584|
|0-6 months (no birth wast)  |NIH-Birth     |BANGLADESH                   |0       |           0|      2|   584|
|0-6 months (no birth wast)  |NIH-Birth     |BANGLADESH                   |0       |           1|      0|   584|
|0-6 months (no birth wast)  |NIH-Crypto    |BANGLADESH                   |1       |           0|    729|   749|
|0-6 months (no birth wast)  |NIH-Crypto    |BANGLADESH                   |1       |           1|     20|   749|
|0-6 months (no birth wast)  |NIH-Crypto    |BANGLADESH                   |0       |           0|      0|   749|
|0-6 months (no birth wast)  |NIH-Crypto    |BANGLADESH                   |0       |           1|      0|   749|
|0-6 months (no birth wast)  |PROVIDE       |BANGLADESH                   |1       |           0|     50|    52|
|0-6 months (no birth wast)  |PROVIDE       |BANGLADESH                   |1       |           1|      2|    52|
|0-6 months (no birth wast)  |PROVIDE       |BANGLADESH                   |0       |           0|      0|    52|
|0-6 months (no birth wast)  |PROVIDE       |BANGLADESH                   |0       |           1|      0|    52|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA                        |1       |           0|    341|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA                        |1       |           1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA                        |0       |           0|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA                        |0       |           1|      0|   341|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
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
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
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
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
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
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/68f5054a-817f-4d31-bc81-db52f8ca6d42/95b4a8ac-01c8-4e03-a58a-de46a7caf9b3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/68f5054a-817f-4d31-bc81-db52f8ca6d42/95b4a8ac-01c8-4e03-a58a-de46a7caf9b3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/68f5054a-817f-4d31-bc81-db52f8ca6d42/95b4a8ac-01c8-4e03-a58a-de46a7caf9b3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/68f5054a-817f-4d31-bc81-db52f8ca6d42/95b4a8ac-01c8-4e03-a58a-de46a7caf9b3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid  |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |JiVitA-3 |BANGLADESH                   |1                  |NA             | 0.1693436| 0.1639288| 0.1747583|
|0-24 months (no birth wast) |JiVitA-3 |BANGLADESH                   |0                  |NA             | 0.1428571| 0.1354117| 0.1503026|
|0-24 months (no birth wast) |LCNI-5   |MALAWI                       |1                  |NA             | 0.0657595| 0.0469653| 0.0845536|
|0-24 months (no birth wast) |LCNI-5   |MALAWI                       |0                  |NA             | 0.0753684| 0.0314454| 0.1192914|
|0-24 months (no birth wast) |MAL-ED   |SOUTH AFRICA                 |1                  |NA             | 0.2368421| 0.1014013| 0.3722829|
|0-24 months (no birth wast) |MAL-ED   |SOUTH AFRICA                 |0                  |NA             | 0.1620370| 0.1127994| 0.2112747|
|0-24 months (no birth wast) |MAL-ED   |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.1470588| 0.0937127| 0.2004049|
|0-24 months (no birth wast) |MAL-ED   |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.1139241| 0.0437217| 0.1841264|


### Parameter: E(Y)


|agecat                      |studyid  |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |JiVitA-3 |BANGLADESH                   |NA                 |NA             | 0.1693016| 0.1640111| 0.1745921|
|0-24 months (no birth wast) |LCNI-5   |MALAWI                       |NA                 |NA             | 0.0675676| 0.0503139| 0.0848212|
|0-24 months (no birth wast) |MAL-ED   |SOUTH AFRICA                 |NA                 |NA             | 0.1732283| 0.1265957| 0.2198610|
|0-24 months (no birth wast) |MAL-ED   |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1365462| 0.0938114| 0.1792810|


### Parameter: RR


|agecat                      |studyid  |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |JiVitA-3 |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |JiVitA-3 |BANGLADESH                   |0                  |1              | 0.8435936| 0.7944861| 0.8957364|
|0-24 months (no birth wast) |LCNI-5   |MALAWI                       |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |LCNI-5   |MALAWI                       |0                  |1              | 1.1461222| 0.5994167| 2.1914573|
|0-24 months (no birth wast) |MAL-ED   |SOUTH AFRICA                 |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |MAL-ED   |SOUTH AFRICA                 |0                  |1              | 0.6841564| 0.3580262| 1.3073622|
|0-24 months (no birth wast) |MAL-ED   |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |MAL-ED   |TANZANIA, UNITED REPUBLIC OF |0                  |1              | 0.7746835| 0.3789445| 1.5837005|


### Parameter: PAR


|agecat                      |studyid  |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:--------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |JiVitA-3 |BANGLADESH                   |1                  |NA             | -0.0000420| -0.0002669| 0.0001829|
|0-24 months (no birth wast) |LCNI-5   |MALAWI                       |1                  |NA             |  0.0018081| -0.0065309| 0.0101471|
|0-24 months (no birth wast) |MAL-ED   |SOUTH AFRICA                 |1                  |NA             | -0.0636138| -0.1862107| 0.0589831|
|0-24 months (no birth wast) |MAL-ED   |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0105126| -0.0385524| 0.0175271|


### Parameter: PAF


|agecat                      |studyid  |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:--------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |JiVitA-3 |BANGLADESH                   |1                  |NA             | -0.0002479| -0.0015732| 0.0010756|
|0-24 months (no birth wast) |LCNI-5   |MALAWI                       |1                  |NA             |  0.0267597| -0.1046615| 0.1425457|
|0-24 months (no birth wast) |MAL-ED   |SOUTH AFRICA                 |1                  |NA             | -0.3672249| -1.2893164| 0.1834663|
|0-24 months (no birth wast) |MAL-ED   |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0769896| -0.3020928| 0.1091982|
