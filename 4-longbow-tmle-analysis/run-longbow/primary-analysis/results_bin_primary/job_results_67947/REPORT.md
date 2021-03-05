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

**Outcome Variable:** ever_stunted

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

|agecat                     |studyid       |country                      |safeh20 | ever_stunted| n_cell|     n|
|:--------------------------|:-------------|:----------------------------|:-------|------------:|------:|-----:|
|0-24 months (no birth st.) |CONTENT       |PERU                         |1       |            0|     46|    55|
|0-24 months (no birth st.) |CONTENT       |PERU                         |1       |            1|      6|    55|
|0-24 months (no birth st.) |CONTENT       |PERU                         |0       |            0|      3|    55|
|0-24 months (no birth st.) |CONTENT       |PERU                         |0       |            1|      0|    55|
|0-24 months (no birth st.) |JiVitA-3      |BANGLADESH                   |1       |            0|  13707| 18357|
|0-24 months (no birth st.) |JiVitA-3      |BANGLADESH                   |1       |            1|   4626| 18357|
|0-24 months (no birth st.) |JiVitA-3      |BANGLADESH                   |0       |            0|     18| 18357|
|0-24 months (no birth st.) |JiVitA-3      |BANGLADESH                   |0       |            1|      6| 18357|
|0-24 months (no birth st.) |JiVitA-4      |BANGLADESH                   |1       |            0|   2268|  3875|
|0-24 months (no birth st.) |JiVitA-4      |BANGLADESH                   |1       |            1|   1606|  3875|
|0-24 months (no birth st.) |JiVitA-4      |BANGLADESH                   |0       |            0|      1|  3875|
|0-24 months (no birth st.) |JiVitA-4      |BANGLADESH                   |0       |            1|      0|  3875|
|0-24 months (no birth st.) |LCNI-5        |MALAWI                       |1       |            0|    243|   521|
|0-24 months (no birth st.) |LCNI-5        |MALAWI                       |1       |            1|    186|   521|
|0-24 months (no birth st.) |LCNI-5        |MALAWI                       |0       |            0|     53|   521|
|0-24 months (no birth st.) |LCNI-5        |MALAWI                       |0       |            1|     39|   521|
|0-24 months (no birth st.) |MAL-ED        |BANGLADESH                   |1       |            0|      0|   203|
|0-24 months (no birth st.) |MAL-ED        |BANGLADESH                   |1       |            1|      0|   203|
|0-24 months (no birth st.) |MAL-ED        |BANGLADESH                   |0       |            0|     93|   203|
|0-24 months (no birth st.) |MAL-ED        |BANGLADESH                   |0       |            1|    110|   203|
|0-24 months (no birth st.) |MAL-ED        |BRAZIL                       |1       |            0|      0|   128|
|0-24 months (no birth st.) |MAL-ED        |BRAZIL                       |1       |            1|      0|   128|
|0-24 months (no birth st.) |MAL-ED        |BRAZIL                       |0       |            0|    110|   128|
|0-24 months (no birth st.) |MAL-ED        |BRAZIL                       |0       |            1|     18|   128|
|0-24 months (no birth st.) |MAL-ED        |INDIA                        |1       |            0|      0|   197|
|0-24 months (no birth st.) |MAL-ED        |INDIA                        |1       |            1|      0|   197|
|0-24 months (no birth st.) |MAL-ED        |INDIA                        |0       |            0|     89|   197|
|0-24 months (no birth st.) |MAL-ED        |INDIA                        |0       |            1|    108|   197|
|0-24 months (no birth st.) |MAL-ED        |NEPAL                        |1       |            0|      0|   206|
|0-24 months (no birth st.) |MAL-ED        |NEPAL                        |1       |            1|      1|   206|
|0-24 months (no birth st.) |MAL-ED        |NEPAL                        |0       |            0|    152|   206|
|0-24 months (no birth st.) |MAL-ED        |NEPAL                        |0       |            1|     53|   206|
|0-24 months (no birth st.) |MAL-ED        |PERU                         |1       |            0|      5|   229|
|0-24 months (no birth st.) |MAL-ED        |PERU                         |1       |            1|      5|   229|
|0-24 months (no birth st.) |MAL-ED        |PERU                         |0       |            0|     84|   229|
|0-24 months (no birth st.) |MAL-ED        |PERU                         |0       |            1|    135|   229|
|0-24 months (no birth st.) |MAL-ED        |SOUTH AFRICA                 |1       |            0|     19|   228|
|0-24 months (no birth st.) |MAL-ED        |SOUTH AFRICA                 |1       |            1|     16|   228|
|0-24 months (no birth st.) |MAL-ED        |SOUTH AFRICA                 |0       |            0|     78|   228|
|0-24 months (no birth st.) |MAL-ED        |SOUTH AFRICA                 |0       |            1|    115|   228|
|0-24 months (no birth st.) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1       |            0|     23|   210|
|0-24 months (no birth st.) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1       |            1|    126|   210|
|0-24 months (no birth st.) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0       |            0|     11|   210|
|0-24 months (no birth st.) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0       |            1|     50|   210|
|0-24 months (no birth st.) |NIH-Birth     |BANGLADESH                   |1       |            0|    211|   530|
|0-24 months (no birth st.) |NIH-Birth     |BANGLADESH                   |1       |            1|    319|   530|
|0-24 months (no birth st.) |NIH-Birth     |BANGLADESH                   |0       |            0|      0|   530|
|0-24 months (no birth st.) |NIH-Birth     |BANGLADESH                   |0       |            1|      0|   530|
|0-24 months (no birth st.) |NIH-Crypto    |BANGLADESH                   |1       |            0|    396|   653|
|0-24 months (no birth st.) |NIH-Crypto    |BANGLADESH                   |1       |            1|    257|   653|
|0-24 months (no birth st.) |NIH-Crypto    |BANGLADESH                   |0       |            0|      0|   653|
|0-24 months (no birth st.) |NIH-Crypto    |BANGLADESH                   |0       |            1|      0|   653|
|0-24 months (no birth st.) |PROVIDE       |BANGLADESH                   |1       |            0|     50|    58|
|0-24 months (no birth st.) |PROVIDE       |BANGLADESH                   |1       |            1|      8|    58|
|0-24 months (no birth st.) |PROVIDE       |BANGLADESH                   |0       |            0|      0|    58|
|0-24 months (no birth st.) |PROVIDE       |BANGLADESH                   |0       |            1|      0|    58|
|0-24 months (no birth st.) |SAS-FoodSuppl |INDIA                        |1       |            0|     72|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl |INDIA                        |1       |            1|    185|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl |INDIA                        |0       |            0|      0|   257|
|0-24 months (no birth st.) |SAS-FoodSuppl |INDIA                        |0       |            1|      0|   257|
|0-6 months (no birth st.)  |CONTENT       |PERU                         |1       |            0|     52|    55|
|0-6 months (no birth st.)  |CONTENT       |PERU                         |1       |            1|      0|    55|
|0-6 months (no birth st.)  |CONTENT       |PERU                         |0       |            0|      3|    55|
|0-6 months (no birth st.)  |CONTENT       |PERU                         |0       |            1|      0|    55|
|0-6 months (no birth st.)  |JiVitA-3      |BANGLADESH                   |1       |            0|  15907| 18313|
|0-6 months (no birth st.)  |JiVitA-3      |BANGLADESH                   |1       |            1|   2383| 18313|
|0-6 months (no birth st.)  |JiVitA-3      |BANGLADESH                   |0       |            0|     19| 18313|
|0-6 months (no birth st.)  |JiVitA-3      |BANGLADESH                   |0       |            1|      4| 18313|
|0-6 months (no birth st.)  |JiVitA-4      |BANGLADESH                   |1       |            0|   3338|  3651|
|0-6 months (no birth st.)  |JiVitA-4      |BANGLADESH                   |1       |            1|    312|  3651|
|0-6 months (no birth st.)  |JiVitA-4      |BANGLADESH                   |0       |            0|      1|  3651|
|0-6 months (no birth st.)  |JiVitA-4      |BANGLADESH                   |0       |            1|      0|  3651|
|0-6 months (no birth st.)  |LCNI-5        |MALAWI                       |1       |            0|    140|   174|
|0-6 months (no birth st.)  |LCNI-5        |MALAWI                       |1       |            1|      0|   174|
|0-6 months (no birth st.)  |LCNI-5        |MALAWI                       |0       |            0|     34|   174|
|0-6 months (no birth st.)  |LCNI-5        |MALAWI                       |0       |            1|      0|   174|
|0-6 months (no birth st.)  |MAL-ED        |BANGLADESH                   |1       |            0|      0|   203|
|0-6 months (no birth st.)  |MAL-ED        |BANGLADESH                   |1       |            1|      0|   203|
|0-6 months (no birth st.)  |MAL-ED        |BANGLADESH                   |0       |            0|    160|   203|
|0-6 months (no birth st.)  |MAL-ED        |BANGLADESH                   |0       |            1|     43|   203|
|0-6 months (no birth st.)  |MAL-ED        |BRAZIL                       |1       |            0|      0|   128|
|0-6 months (no birth st.)  |MAL-ED        |BRAZIL                       |1       |            1|      0|   128|
|0-6 months (no birth st.)  |MAL-ED        |BRAZIL                       |0       |            0|    120|   128|
|0-6 months (no birth st.)  |MAL-ED        |BRAZIL                       |0       |            1|      8|   128|
|0-6 months (no birth st.)  |MAL-ED        |INDIA                        |1       |            0|      0|   197|
|0-6 months (no birth st.)  |MAL-ED        |INDIA                        |1       |            1|      0|   197|
|0-6 months (no birth st.)  |MAL-ED        |INDIA                        |0       |            0|    154|   197|
|0-6 months (no birth st.)  |MAL-ED        |INDIA                        |0       |            1|     43|   197|
|0-6 months (no birth st.)  |MAL-ED        |NEPAL                        |1       |            0|      0|   206|
|0-6 months (no birth st.)  |MAL-ED        |NEPAL                        |1       |            1|      1|   206|
|0-6 months (no birth st.)  |MAL-ED        |NEPAL                        |0       |            0|    193|   206|
|0-6 months (no birth st.)  |MAL-ED        |NEPAL                        |0       |            1|     12|   206|
|0-6 months (no birth st.)  |MAL-ED        |PERU                         |1       |            0|      5|   229|
|0-6 months (no birth st.)  |MAL-ED        |PERU                         |1       |            1|      5|   229|
|0-6 months (no birth st.)  |MAL-ED        |PERU                         |0       |            0|    141|   229|
|0-6 months (no birth st.)  |MAL-ED        |PERU                         |0       |            1|     78|   229|
|0-6 months (no birth st.)  |MAL-ED        |SOUTH AFRICA                 |1       |            0|     24|   228|
|0-6 months (no birth st.)  |MAL-ED        |SOUTH AFRICA                 |1       |            1|     11|   228|
|0-6 months (no birth st.)  |MAL-ED        |SOUTH AFRICA                 |0       |            0|    131|   228|
|0-6 months (no birth st.)  |MAL-ED        |SOUTH AFRICA                 |0       |            1|     62|   228|
|0-6 months (no birth st.)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1       |            0|    104|   210|
|0-6 months (no birth st.)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1       |            1|     45|   210|
|0-6 months (no birth st.)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0       |            0|     43|   210|
|0-6 months (no birth st.)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0       |            1|     18|   210|
|0-6 months (no birth st.)  |NIH-Birth     |BANGLADESH                   |1       |            0|    409|   530|
|0-6 months (no birth st.)  |NIH-Birth     |BANGLADESH                   |1       |            1|    121|   530|
|0-6 months (no birth st.)  |NIH-Birth     |BANGLADESH                   |0       |            0|      0|   530|
|0-6 months (no birth st.)  |NIH-Birth     |BANGLADESH                   |0       |            1|      0|   530|
|0-6 months (no birth st.)  |NIH-Crypto    |BANGLADESH                   |1       |            0|    529|   653|
|0-6 months (no birth st.)  |NIH-Crypto    |BANGLADESH                   |1       |            1|    124|   653|
|0-6 months (no birth st.)  |NIH-Crypto    |BANGLADESH                   |0       |            0|      0|   653|
|0-6 months (no birth st.)  |NIH-Crypto    |BANGLADESH                   |0       |            1|      0|   653|
|0-6 months (no birth st.)  |PROVIDE       |BANGLADESH                   |1       |            0|     53|    58|
|0-6 months (no birth st.)  |PROVIDE       |BANGLADESH                   |1       |            1|      5|    58|
|0-6 months (no birth st.)  |PROVIDE       |BANGLADESH                   |0       |            0|      0|    58|
|0-6 months (no birth st.)  |PROVIDE       |BANGLADESH                   |0       |            1|      0|    58|
|0-6 months (no birth st.)  |SAS-FoodSuppl |INDIA                        |1       |            0|    254|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl |INDIA                        |1       |            1|      3|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl |INDIA                        |0       |            0|      0|   257|
|0-6 months (no birth st.)  |SAS-FoodSuppl |INDIA                        |0       |            1|      0|   257|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA

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
![](/tmp/704832c3-f049-4ece-b485-b4b2a2449e9a/b5996c46-7313-4f94-bb63-a1ef12866e88/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/704832c3-f049-4ece-b485-b4b2a2449e9a/b5996c46-7313-4f94-bb63-a1ef12866e88/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/704832c3-f049-4ece-b485-b4b2a2449e9a/b5996c46-7313-4f94-bb63-a1ef12866e88/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/704832c3-f049-4ece-b485-b4b2a2449e9a/b5996c46-7313-4f94-bb63-a1ef12866e88/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                     |studyid  |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:--------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |JiVitA-3 |BANGLADESH                   |1                  |NA             | 0.2523319| 0.2444053| 0.2602584|
|0-24 months (no birth st.) |JiVitA-3 |BANGLADESH                   |0                  |NA             | 0.2500000| 0.2415133| 0.2584867|
|0-24 months (no birth st.) |LCNI-5   |MALAWI                       |1                  |NA             | 0.4354739| 0.3886644| 0.4822834|
|0-24 months (no birth st.) |LCNI-5   |MALAWI                       |0                  |NA             | 0.4364153| 0.3336346| 0.5391960|
|0-24 months (no birth st.) |MAL-ED   |PERU                         |1                  |NA             | 0.5000000| 0.1894236| 0.8105764|
|0-24 months (no birth st.) |MAL-ED   |PERU                         |0                  |NA             | 0.6164384| 0.5518969| 0.6809798|
|0-24 months (no birth st.) |MAL-ED   |SOUTH AFRICA                 |1                  |NA             | 0.4520769| 0.2806646| 0.6234892|
|0-24 months (no birth st.) |MAL-ED   |SOUTH AFRICA                 |0                  |NA             | 0.5978246| 0.5282708| 0.6673784|
|0-24 months (no birth st.) |MAL-ED   |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.8449539| 0.7872232| 0.9026846|
|0-24 months (no birth st.) |MAL-ED   |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.8414034| 0.7450004| 0.9378064|
|0-6 months (no birth st.)  |MAL-ED   |PERU                         |1                  |NA             | 0.5000000| 0.1894236| 0.8105764|
|0-6 months (no birth st.)  |MAL-ED   |PERU                         |0                  |NA             | 0.3561644| 0.2926036| 0.4197251|
|0-6 months (no birth st.)  |MAL-ED   |SOUTH AFRICA                 |1                  |NA             | 0.3157259| 0.1590325| 0.4724194|
|0-6 months (no birth st.)  |MAL-ED   |SOUTH AFRICA                 |0                  |NA             | 0.3222964| 0.2560827| 0.3885100|
|0-6 months (no birth st.)  |MAL-ED   |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.3033640| 0.2298353| 0.3768927|
|0-6 months (no birth st.)  |MAL-ED   |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.3155055| 0.1983446| 0.4326664|


### Parameter: E(Y)


|agecat                     |studyid  |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:--------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |JiVitA-3 |BANGLADESH                   |NA                 |NA             | 0.2523288| 0.2445890| 0.2600687|
|0-24 months (no birth st.) |LCNI-5   |MALAWI                       |NA                 |NA             | 0.4318618| 0.3892877| 0.4744359|
|0-24 months (no birth st.) |MAL-ED   |PERU                         |NA                 |NA             | 0.6113537| 0.5480828| 0.6746246|
|0-24 months (no birth st.) |MAL-ED   |SOUTH AFRICA                 |NA                 |NA             | 0.5745614| 0.5102450| 0.6388778|
|0-24 months (no birth st.) |MAL-ED   |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.8380952| 0.7881549| 0.8880356|
|0-6 months (no birth st.)  |MAL-ED   |PERU                         |NA                 |NA             | 0.3624454| 0.3000489| 0.4248420|
|0-6 months (no birth st.)  |MAL-ED   |SOUTH AFRICA                 |NA                 |NA             | 0.3201754| 0.2594840| 0.3808669|
|0-6 months (no birth st.)  |MAL-ED   |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.3000000| 0.2378724| 0.3621276|


### Parameter: RR


|agecat                     |studyid  |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:--------------------------|:--------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth st.) |JiVitA-3 |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-3 |BANGLADESH                   |0                  |1              | 0.9907588| 0.9468697| 1.036682|
|0-24 months (no birth st.) |LCNI-5   |MALAWI                       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |LCNI-5   |MALAWI                       |0                  |1              | 1.0021619| 0.7747129| 1.296388|
|0-24 months (no birth st.) |MAL-ED   |PERU                         |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED   |PERU                         |0                  |1              | 1.2328767| 0.6566758| 2.314666|
|0-24 months (no birth st.) |MAL-ED   |SOUTH AFRICA                 |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED   |SOUTH AFRICA                 |0                  |1              | 1.3223957| 0.8893996| 1.966192|
|0-24 months (no birth st.) |MAL-ED   |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED   |TANZANIA, UNITED REPUBLIC OF |0                  |1              | 0.9957980| 0.8721612| 1.136961|
|0-6 months (no birth st.)  |MAL-ED   |PERU                         |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED   |PERU                         |0                  |1              | 0.7123288| 0.3732540| 1.359429|
|0-6 months (no birth st.)  |MAL-ED   |SOUTH AFRICA                 |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED   |SOUTH AFRICA                 |0                  |1              | 1.0208106| 0.5964985| 1.746952|
|0-6 months (no birth st.)  |MAL-ED   |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED   |TANZANIA, UNITED REPUBLIC OF |0                  |1              | 1.0400228| 0.6660707| 1.623923|


### Parameter: PAR


|agecat                     |studyid  |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:--------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |JiVitA-3 |BANGLADESH                   |1                  |NA             | -0.0000030| -0.0002871| 0.0002810|
|0-24 months (no birth st.) |LCNI-5   |MALAWI                       |1                  |NA             | -0.0036121| -0.0230772| 0.0158530|
|0-24 months (no birth st.) |MAL-ED   |PERU                         |1                  |NA             |  0.1113537| -0.1920217| 0.4147291|
|0-24 months (no birth st.) |MAL-ED   |SOUTH AFRICA                 |1                  |NA             |  0.1224845| -0.0350782| 0.2800472|
|0-24 months (no birth st.) |MAL-ED   |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0068587| -0.0396335| 0.0259162|
|0-6 months (no birth st.)  |MAL-ED   |PERU                         |1                  |NA             | -0.1375546| -0.4407488| 0.1656397|
|0-6 months (no birth st.)  |MAL-ED   |SOUTH AFRICA                 |1                  |NA             |  0.0044495| -0.1399619| 0.1488609|
|0-6 months (no birth st.)  |MAL-ED   |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0033640| -0.0432034| 0.0364754|


### Parameter: PAF


|agecat                     |studyid  |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:--------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |JiVitA-3 |BANGLADESH                   |1                  |NA             | -0.0000121| -0.0011383| 0.0011129|
|0-24 months (no birth st.) |LCNI-5   |MALAWI                       |1                  |NA             | -0.0083639| -0.0544670| 0.0357234|
|0-24 months (no birth st.) |MAL-ED   |PERU                         |1                  |NA             |  0.1821429| -0.5013602| 0.5544771|
|0-24 months (no birth st.) |MAL-ED   |SOUTH AFRICA                 |1                  |NA             |  0.2131791| -0.1170800| 0.4457988|
|0-24 months (no birth st.) |MAL-ED   |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0081836| -0.0480979| 0.0302106|
|0-6 months (no birth st.)  |MAL-ED   |PERU                         |1                  |NA             | -0.3795181| -1.5324147| 0.2485156|
|0-6 months (no birth st.)  |MAL-ED   |SOUTH AFRICA                 |1                  |NA             |  0.0138970| -0.5580114| 0.3758717|
|0-6 months (no birth st.)  |MAL-ED   |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0112134| -0.1531708| 0.1132688|
