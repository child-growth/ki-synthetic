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

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid       |country    |nhh       | ever_stunted| n_cell|   n|
|:-----------|:-------------|:----------|:---------|------------:|------:|---:|
|0-24 months |IRC           |INDIA      |3 or less |            0|     25| 410|
|0-24 months |IRC           |INDIA      |3 or less |            1|     33| 410|
|0-24 months |IRC           |INDIA      |4-5       |            0|     52| 410|
|0-24 months |IRC           |INDIA      |4-5       |            1|    106| 410|
|0-24 months |IRC           |INDIA      |6-7       |            0|     41| 410|
|0-24 months |IRC           |INDIA      |6-7       |            1|     66| 410|
|0-24 months |IRC           |INDIA      |8+        |            0|     29| 410|
|0-24 months |IRC           |INDIA      |8+        |            1|     58| 410|
|0-24 months |LCNI-5        |MALAWI     |3 or less |            0|     85| 817|
|0-24 months |LCNI-5        |MALAWI     |3 or less |            1|    140| 817|
|0-24 months |LCNI-5        |MALAWI     |4-5       |            0|    122| 817|
|0-24 months |LCNI-5        |MALAWI     |4-5       |            1|    218| 817|
|0-24 months |LCNI-5        |MALAWI     |6-7       |            0|     61| 817|
|0-24 months |LCNI-5        |MALAWI     |6-7       |            1|    121| 817|
|0-24 months |LCNI-5        |MALAWI     |8+        |            0|     28| 817|
|0-24 months |LCNI-5        |MALAWI     |8+        |            1|     42| 817|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less |            0|     47| 629|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less |            1|     70| 629|
|0-24 months |NIH-Birth     |BANGLADESH |4-5       |            0|     77| 629|
|0-24 months |NIH-Birth     |BANGLADESH |4-5       |            1|    187| 629|
|0-24 months |NIH-Birth     |BANGLADESH |6-7       |            0|     42| 629|
|0-24 months |NIH-Birth     |BANGLADESH |6-7       |            1|    100| 629|
|0-24 months |NIH-Birth     |BANGLADESH |8+        |            0|     45| 629|
|0-24 months |NIH-Birth     |BANGLADESH |8+        |            1|     61| 629|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less |            0|     60| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less |            1|     54| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |4-5       |            0|    171| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |4-5       |            1|    171| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |6-7       |            0|     99| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |6-7       |            1|     79| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |8+        |            0|     66| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |8+        |            1|     58| 758|
|0-24 months |PROVIDE       |BANGLADESH |3 or less |            0|     82| 700|
|0-24 months |PROVIDE       |BANGLADESH |3 or less |            1|     58| 700|
|0-24 months |PROVIDE       |BANGLADESH |4-5       |            0|    179| 700|
|0-24 months |PROVIDE       |BANGLADESH |4-5       |            1|    143| 700|
|0-24 months |PROVIDE       |BANGLADESH |6-7       |            0|     84| 700|
|0-24 months |PROVIDE       |BANGLADESH |6-7       |            1|     67| 700|
|0-24 months |PROVIDE       |BANGLADESH |8+        |            0|     50| 700|
|0-24 months |PROVIDE       |BANGLADESH |8+        |            1|     37| 700|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less |            0|      9| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less |            1|     29| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |4-5       |            0|     35| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |4-5       |            1|    148| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |6-7       |            0|     16| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |6-7       |            1|    111| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |8+        |            0|     12| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |8+        |            1|     58| 418|
|0-6 months  |IRC           |INDIA      |3 or less |            0|     36| 410|
|0-6 months  |IRC           |INDIA      |3 or less |            1|     22| 410|
|0-6 months  |IRC           |INDIA      |4-5       |            0|     83| 410|
|0-6 months  |IRC           |INDIA      |4-5       |            1|     75| 410|
|0-6 months  |IRC           |INDIA      |6-7       |            0|     65| 410|
|0-6 months  |IRC           |INDIA      |6-7       |            1|     42| 410|
|0-6 months  |IRC           |INDIA      |8+        |            0|     52| 410|
|0-6 months  |IRC           |INDIA      |8+        |            1|     35| 410|
|0-6 months  |LCNI-5        |MALAWI     |3 or less |            0|     48| 269|
|0-6 months  |LCNI-5        |MALAWI     |3 or less |            1|     22| 269|
|0-6 months  |LCNI-5        |MALAWI     |4-5       |            0|     66| 269|
|0-6 months  |LCNI-5        |MALAWI     |4-5       |            1|     45| 269|
|0-6 months  |LCNI-5        |MALAWI     |6-7       |            0|     43| 269|
|0-6 months  |LCNI-5        |MALAWI     |6-7       |            1|     24| 269|
|0-6 months  |LCNI-5        |MALAWI     |8+        |            0|     17| 269|
|0-6 months  |LCNI-5        |MALAWI     |8+        |            1|      4| 269|
|0-6 months  |NIH-Birth     |BANGLADESH |3 or less |            0|     79| 629|
|0-6 months  |NIH-Birth     |BANGLADESH |3 or less |            1|     38| 629|
|0-6 months  |NIH-Birth     |BANGLADESH |4-5       |            0|    166| 629|
|0-6 months  |NIH-Birth     |BANGLADESH |4-5       |            1|     98| 629|
|0-6 months  |NIH-Birth     |BANGLADESH |6-7       |            0|     90| 629|
|0-6 months  |NIH-Birth     |BANGLADESH |6-7       |            1|     52| 629|
|0-6 months  |NIH-Birth     |BANGLADESH |8+        |            0|     74| 629|
|0-6 months  |NIH-Birth     |BANGLADESH |8+        |            1|     32| 629|
|0-6 months  |NIH-Crypto    |BANGLADESH |3 or less |            0|     74| 758|
|0-6 months  |NIH-Crypto    |BANGLADESH |3 or less |            1|     40| 758|
|0-6 months  |NIH-Crypto    |BANGLADESH |4-5       |            0|    244| 758|
|0-6 months  |NIH-Crypto    |BANGLADESH |4-5       |            1|     98| 758|
|0-6 months  |NIH-Crypto    |BANGLADESH |6-7       |            0|    129| 758|
|0-6 months  |NIH-Crypto    |BANGLADESH |6-7       |            1|     49| 758|
|0-6 months  |NIH-Crypto    |BANGLADESH |8+        |            0|     82| 758|
|0-6 months  |NIH-Crypto    |BANGLADESH |8+        |            1|     42| 758|
|0-6 months  |PROVIDE       |BANGLADESH |3 or less |            0|    108| 700|
|0-6 months  |PROVIDE       |BANGLADESH |3 or less |            1|     32| 700|
|0-6 months  |PROVIDE       |BANGLADESH |4-5       |            0|    240| 700|
|0-6 months  |PROVIDE       |BANGLADESH |4-5       |            1|     82| 700|
|0-6 months  |PROVIDE       |BANGLADESH |6-7       |            0|    116| 700|
|0-6 months  |PROVIDE       |BANGLADESH |6-7       |            1|     35| 700|
|0-6 months  |PROVIDE       |BANGLADESH |8+        |            0|     68| 700|
|0-6 months  |PROVIDE       |BANGLADESH |8+        |            1|     19| 700|
|0-6 months  |SAS-FoodSuppl |INDIA      |3 or less |            0|     26| 416|
|0-6 months  |SAS-FoodSuppl |INDIA      |3 or less |            1|     12| 416|
|0-6 months  |SAS-FoodSuppl |INDIA      |4-5       |            0|    109| 416|
|0-6 months  |SAS-FoodSuppl |INDIA      |4-5       |            1|     73| 416|
|0-6 months  |SAS-FoodSuppl |INDIA      |6-7       |            0|     78| 416|
|0-6 months  |SAS-FoodSuppl |INDIA      |6-7       |            1|     48| 416|
|0-6 months  |SAS-FoodSuppl |INDIA      |8+        |            0|     41| 416|
|0-6 months  |SAS-FoodSuppl |INDIA      |8+        |            1|     29| 416|
|6-24 months |IRC           |INDIA      |3 or less |            0|     25| 236|
|6-24 months |IRC           |INDIA      |3 or less |            1|     11| 236|
|6-24 months |IRC           |INDIA      |4-5       |            0|     52| 236|
|6-24 months |IRC           |INDIA      |4-5       |            1|     31| 236|
|6-24 months |IRC           |INDIA      |6-7       |            0|     41| 236|
|6-24 months |IRC           |INDIA      |6-7       |            1|     24| 236|
|6-24 months |IRC           |INDIA      |8+        |            0|     29| 236|
|6-24 months |IRC           |INDIA      |8+        |            1|     23| 236|
|6-24 months |LCNI-5        |MALAWI     |3 or less |            0|     78| 710|
|6-24 months |LCNI-5        |MALAWI     |3 or less |            1|    118| 710|
|6-24 months |LCNI-5        |MALAWI     |4-5       |            0|    118| 710|
|6-24 months |LCNI-5        |MALAWI     |4-5       |            1|    173| 710|
|6-24 months |LCNI-5        |MALAWI     |6-7       |            0|     60| 710|
|6-24 months |LCNI-5        |MALAWI     |6-7       |            1|     97| 710|
|6-24 months |LCNI-5        |MALAWI     |8+        |            0|     28| 710|
|6-24 months |LCNI-5        |MALAWI     |8+        |            1|     38| 710|
|6-24 months |NIH-Birth     |BANGLADESH |3 or less |            0|     30| 345|
|6-24 months |NIH-Birth     |BANGLADESH |3 or less |            1|     32| 345|
|6-24 months |NIH-Birth     |BANGLADESH |4-5       |            0|     55| 345|
|6-24 months |NIH-Birth     |BANGLADESH |4-5       |            1|     89| 345|
|6-24 months |NIH-Birth     |BANGLADESH |6-7       |            0|     30| 345|
|6-24 months |NIH-Birth     |BANGLADESH |6-7       |            1|     48| 345|
|6-24 months |NIH-Birth     |BANGLADESH |8+        |            0|     32| 345|
|6-24 months |NIH-Birth     |BANGLADESH |8+        |            1|     29| 345|
|6-24 months |NIH-Crypto    |BANGLADESH |3 or less |            0|     55| 506|
|6-24 months |NIH-Crypto    |BANGLADESH |3 or less |            1|     14| 506|
|6-24 months |NIH-Crypto    |BANGLADESH |4-5       |            0|    161| 506|
|6-24 months |NIH-Crypto    |BANGLADESH |4-5       |            1|     73| 506|
|6-24 months |NIH-Crypto    |BANGLADESH |6-7       |            0|     97| 506|
|6-24 months |NIH-Crypto    |BANGLADESH |6-7       |            1|     30| 506|
|6-24 months |NIH-Crypto    |BANGLADESH |8+        |            0|     60| 506|
|6-24 months |NIH-Crypto    |BANGLADESH |8+        |            1|     16| 506|
|6-24 months |PROVIDE       |BANGLADESH |3 or less |            0|     58| 456|
|6-24 months |PROVIDE       |BANGLADESH |3 or less |            1|     26| 456|
|6-24 months |PROVIDE       |BANGLADESH |4-5       |            0|    150| 456|
|6-24 months |PROVIDE       |BANGLADESH |4-5       |            1|     61| 456|
|6-24 months |PROVIDE       |BANGLADESH |6-7       |            0|     64| 456|
|6-24 months |PROVIDE       |BANGLADESH |6-7       |            1|     32| 456|
|6-24 months |PROVIDE       |BANGLADESH |8+        |            0|     47| 456|
|6-24 months |PROVIDE       |BANGLADESH |8+        |            1|     18| 456|
|6-24 months |SAS-FoodSuppl |INDIA      |3 or less |            0|      9| 243|
|6-24 months |SAS-FoodSuppl |INDIA      |3 or less |            1|     17| 243|
|6-24 months |SAS-FoodSuppl |INDIA      |4-5       |            0|     28| 243|
|6-24 months |SAS-FoodSuppl |INDIA      |4-5       |            1|     75| 243|
|6-24 months |SAS-FoodSuppl |INDIA      |6-7       |            0|     14| 243|
|6-24 months |SAS-FoodSuppl |INDIA      |6-7       |            1|     63| 243|
|6-24 months |SAS-FoodSuppl |INDIA      |8+        |            0|      8| 243|
|6-24 months |SAS-FoodSuppl |INDIA      |8+        |            1|     29| 243|


The following strata were considered:

* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/0acdc834-1246-4526-b563-521207d08160/82055310-85e6-420f-a76e-d3e188523da6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0acdc834-1246-4526-b563-521207d08160/82055310-85e6-420f-a76e-d3e188523da6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0acdc834-1246-4526-b563-521207d08160/82055310-85e6-420f-a76e-d3e188523da6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0acdc834-1246-4526-b563-521207d08160/82055310-85e6-420f-a76e-d3e188523da6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid       |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |IRC           |INDIA      |3 or less          |NA             | 0.5598253| 0.4312970| 0.6883535|
|0-24 months |IRC           |INDIA      |4-5                |NA             | 0.6699284| 0.5949399| 0.7449170|
|0-24 months |IRC           |INDIA      |6-7                |NA             | 0.6184298| 0.5259003| 0.7109592|
|0-24 months |IRC           |INDIA      |8+                 |NA             | 0.6705457| 0.5727986| 0.7682928|
|0-24 months |LCNI-5        |MALAWI     |3 or less          |NA             | 0.6182927| 0.5555793| 0.6810062|
|0-24 months |LCNI-5        |MALAWI     |4-5                |NA             | 0.6354781| 0.5855362| 0.6854200|
|0-24 months |LCNI-5        |MALAWI     |6-7                |NA             | 0.6711182| 0.6033541| 0.7388823|
|0-24 months |LCNI-5        |MALAWI     |8+                 |NA             | 0.6039145| 0.4902447| 0.7175842|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less          |NA             | 0.6496672| 0.5684584| 0.7308760|
|0-24 months |NIH-Birth     |BANGLADESH |4-5                |NA             | 0.7031252| 0.6461178| 0.7601326|
|0-24 months |NIH-Birth     |BANGLADESH |6-7                |NA             | 0.7316447| 0.6561850| 0.8071044|
|0-24 months |NIH-Birth     |BANGLADESH |8+                 |NA             | 0.6088408| 0.5081671| 0.7095144|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less          |NA             | 0.4440463| 0.3566710| 0.5314216|
|0-24 months |NIH-Crypto    |BANGLADESH |4-5                |NA             | 0.4884587| 0.4362074| 0.5407100|
|0-24 months |NIH-Crypto    |BANGLADESH |6-7                |NA             | 0.4483861| 0.3737735| 0.5229987|
|0-24 months |NIH-Crypto    |BANGLADESH |8+                 |NA             | 0.4993432| 0.4092225| 0.5894638|
|0-24 months |PROVIDE       |BANGLADESH |3 or less          |NA             | 0.4287123| 0.3465477| 0.5108769|
|0-24 months |PROVIDE       |BANGLADESH |4-5                |NA             | 0.4389894| 0.3851496| 0.4928291|
|0-24 months |PROVIDE       |BANGLADESH |6-7                |NA             | 0.4413630| 0.3616909| 0.5210351|
|0-24 months |PROVIDE       |BANGLADESH |8+                 |NA             | 0.4222695| 0.3160421| 0.5284968|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less          |NA             | 0.7631579| 0.6278220| 0.8984938|
|0-24 months |SAS-FoodSuppl |INDIA      |4-5                |NA             | 0.8087432| 0.7516931| 0.8657933|
|0-24 months |SAS-FoodSuppl |INDIA      |6-7                |NA             | 0.8740157| 0.8162349| 0.9317966|
|0-24 months |SAS-FoodSuppl |INDIA      |8+                 |NA             | 0.8285714| 0.7401768| 0.9169660|
|0-6 months  |IRC           |INDIA      |3 or less          |NA             | 0.3943062| 0.2681806| 0.5204319|
|0-6 months  |IRC           |INDIA      |4-5                |NA             | 0.4778923| 0.3989252| 0.5568593|
|0-6 months  |IRC           |INDIA      |6-7                |NA             | 0.3934783| 0.3013229| 0.4856338|
|0-6 months  |IRC           |INDIA      |8+                 |NA             | 0.3864044| 0.2835988| 0.4892101|
|0-6 months  |NIH-Birth     |BANGLADESH |3 or less          |NA             | 0.3726174| 0.2922648| 0.4529699|
|0-6 months  |NIH-Birth     |BANGLADESH |4-5                |NA             | 0.3507558| 0.2917719| 0.4097398|
|0-6 months  |NIH-Birth     |BANGLADESH |6-7                |NA             | 0.3873288| 0.3049777| 0.4696799|
|0-6 months  |NIH-Birth     |BANGLADESH |8+                 |NA             | 0.3095007| 0.2057336| 0.4132678|
|0-6 months  |NIH-Crypto    |BANGLADESH |3 or less          |NA             | 0.3353155| 0.2490118| 0.4216193|
|0-6 months  |NIH-Crypto    |BANGLADESH |4-5                |NA             | 0.2888164| 0.2407712| 0.3368616|
|0-6 months  |NIH-Crypto    |BANGLADESH |6-7                |NA             | 0.2725247| 0.2040889| 0.3409605|
|0-6 months  |NIH-Crypto    |BANGLADESH |8+                 |NA             | 0.3564451| 0.2700170| 0.4428732|
|0-6 months  |PROVIDE       |BANGLADESH |3 or less          |NA             | 0.2335999| 0.1629901| 0.3042097|
|0-6 months  |PROVIDE       |BANGLADESH |4-5                |NA             | 0.2526453| 0.2050896| 0.3002009|
|0-6 months  |PROVIDE       |BANGLADESH |6-7                |NA             | 0.2298217| 0.1615614| 0.2980820|
|0-6 months  |PROVIDE       |BANGLADESH |8+                 |NA             | 0.2176354| 0.1297326| 0.3055381|
|0-6 months  |SAS-FoodSuppl |INDIA      |3 or less          |NA             | 0.2964168| 0.1416691| 0.4511645|
|0-6 months  |SAS-FoodSuppl |INDIA      |4-5                |NA             | 0.4011548| 0.3308828| 0.4714267|
|0-6 months  |SAS-FoodSuppl |INDIA      |6-7                |NA             | 0.3771375| 0.2916149| 0.4626601|
|0-6 months  |SAS-FoodSuppl |INDIA      |8+                 |NA             | 0.4161704| 0.3059138| 0.5264271|
|6-24 months |IRC           |INDIA      |3 or less          |NA             | 0.2892951| 0.1306729| 0.4479172|
|6-24 months |IRC           |INDIA      |4-5                |NA             | 0.3621478| 0.2560274| 0.4682682|
|6-24 months |IRC           |INDIA      |6-7                |NA             | 0.3687879| 0.2503850| 0.4871909|
|6-24 months |IRC           |INDIA      |8+                 |NA             | 0.4496279| 0.3175195| 0.5817364|
|6-24 months |LCNI-5        |MALAWI     |3 or less          |NA             | 0.5960076| 0.5275657| 0.6644494|
|6-24 months |LCNI-5        |MALAWI     |4-5                |NA             | 0.5898100| 0.5348403| 0.6447797|
|6-24 months |LCNI-5        |MALAWI     |6-7                |NA             | 0.6266566| 0.5517751| 0.7015380|
|6-24 months |LCNI-5        |MALAWI     |8+                 |NA             | 0.5916827| 0.4706597| 0.7127058|
|6-24 months |NIH-Birth     |BANGLADESH |3 or less          |NA             | 0.5115766| 0.3962568| 0.6268964|
|6-24 months |NIH-Birth     |BANGLADESH |4-5                |NA             | 0.6118804| 0.5307381| 0.6930227|
|6-24 months |NIH-Birth     |BANGLADESH |6-7                |NA             | 0.6327417| 0.5197707| 0.7457127|
|6-24 months |NIH-Birth     |BANGLADESH |8+                 |NA             | 0.4956031| 0.3563967| 0.6348094|
|6-24 months |NIH-Crypto    |BANGLADESH |3 or less          |NA             | 0.2095603| 0.1097045| 0.3094160|
|6-24 months |NIH-Crypto    |BANGLADESH |4-5                |NA             | 0.2905223| 0.2326972| 0.3483475|
|6-24 months |NIH-Crypto    |BANGLADESH |6-7                |NA             | 0.2332199| 0.1560487| 0.3103910|
|6-24 months |NIH-Crypto    |BANGLADESH |8+                 |NA             | 0.2058001| 0.1149395| 0.2966607|
|6-24 months |PROVIDE       |BANGLADESH |3 or less          |NA             | 0.3012654| 0.2026718| 0.3998590|
|6-24 months |PROVIDE       |BANGLADESH |4-5                |NA             | 0.2952974| 0.2316974| 0.3588974|
|6-24 months |PROVIDE       |BANGLADESH |6-7                |NA             | 0.3295244| 0.2282338| 0.4308151|
|6-24 months |PROVIDE       |BANGLADESH |8+                 |NA             | 0.2764347| 0.1586511| 0.3942182|
|6-24 months |SAS-FoodSuppl |INDIA      |3 or less          |NA             | 0.6538462| 0.4706024| 0.8370899|
|6-24 months |SAS-FoodSuppl |INDIA      |4-5                |NA             | 0.7281553| 0.6420565| 0.8142542|
|6-24 months |SAS-FoodSuppl |INDIA      |6-7                |NA             | 0.8181818| 0.7318558| 0.9045078|
|6-24 months |SAS-FoodSuppl |INDIA      |8+                 |NA             | 0.7837838| 0.6508654| 0.9167021|


### Parameter: E(Y)


|agecat      |studyid       |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |IRC           |INDIA      |NA                 |NA             | 0.6414634| 0.5949863| 0.6879405|
|0-24 months |LCNI-5        |MALAWI     |NA                 |NA             | 0.6376989| 0.6047193| 0.6706785|
|0-24 months |NIH-Birth     |BANGLADESH |NA                 |NA             | 0.6645469| 0.6276196| 0.7014742|
|0-24 months |NIH-Crypto    |BANGLADESH |NA                 |NA             | 0.4775726| 0.4419904| 0.5131548|
|0-24 months |PROVIDE       |BANGLADESH |NA                 |NA             | 0.4357143| 0.3989556| 0.4724730|
|0-24 months |SAS-FoodSuppl |INDIA      |NA                 |NA             | 0.8277512| 0.7915095| 0.8639929|
|0-6 months  |IRC           |INDIA      |NA                 |NA             | 0.4243902| 0.3764905| 0.4722900|
|0-6 months  |NIH-Birth     |BANGLADESH |NA                 |NA             | 0.3497615| 0.3124631| 0.3870600|
|0-6 months  |NIH-Crypto    |BANGLADESH |NA                 |NA             | 0.3021108| 0.2694011| 0.3348205|
|0-6 months  |PROVIDE       |BANGLADESH |NA                 |NA             | 0.2400000| 0.2083392| 0.2716608|
|0-6 months  |SAS-FoodSuppl |INDIA      |NA                 |NA             | 0.3894231| 0.3425088| 0.4363374|
|6-24 months |IRC           |INDIA      |NA                 |NA             | 0.3771186| 0.3151523| 0.4390850|
|6-24 months |LCNI-5        |MALAWI     |NA                 |NA             | 0.6000000| 0.5639396| 0.6360604|
|6-24 months |NIH-Birth     |BANGLADESH |NA                 |NA             | 0.5739130| 0.5216565| 0.6261696|
|6-24 months |NIH-Crypto    |BANGLADESH |NA                 |NA             | 0.2628459| 0.2244546| 0.3012371|
|6-24 months |PROVIDE       |BANGLADESH |NA                 |NA             | 0.3004386| 0.2583143| 0.3425629|
|6-24 months |SAS-FoodSuppl |INDIA      |NA                 |NA             | 0.7572016| 0.7031798| 0.8112234|


### Parameter: RR


|agecat      |studyid       |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |IRC           |INDIA      |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |IRC           |INDIA      |4-5                |3 or less      | 1.1966742| 0.9266115| 1.545447|
|0-24 months |IRC           |INDIA      |6-7                |3 or less      | 1.1046835| 0.8403894| 1.452095|
|0-24 months |IRC           |INDIA      |8+                 |3 or less      | 1.1977767| 0.9137818| 1.570035|
|0-24 months |LCNI-5        |MALAWI     |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |LCNI-5        |MALAWI     |4-5                |3 or less      | 1.0277949| 0.9052650| 1.166909|
|0-24 months |LCNI-5        |MALAWI     |6-7                |3 or less      | 1.0854377| 0.9414531| 1.251443|
|0-24 months |LCNI-5        |MALAWI     |8+                 |3 or less      | 0.9767452| 0.7894537| 1.208470|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth     |BANGLADESH |4-5                |3 or less      | 1.0822852| 0.9330331| 1.255412|
|0-24 months |NIH-Birth     |BANGLADESH |6-7                |3 or less      | 1.1261839| 0.9588332| 1.322743|
|0-24 months |NIH-Birth     |BANGLADESH |8+                 |3 or less      | 0.9371580| 0.7624244| 1.151937|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto    |BANGLADESH |4-5                |3 or less      | 1.1000175| 0.8810850| 1.373350|
|0-24 months |NIH-Crypto    |BANGLADESH |6-7                |3 or less      | 1.0097733| 0.7815034| 1.304719|
|0-24 months |NIH-Crypto    |BANGLADESH |8+                 |3 or less      | 1.1245295| 0.8620111| 1.466996|
|0-24 months |PROVIDE       |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE       |BANGLADESH |4-5                |3 or less      | 1.0239720| 0.8163393| 1.284415|
|0-24 months |PROVIDE       |BANGLADESH |6-7                |3 or less      | 1.0295086| 0.7916177| 1.338889|
|0-24 months |PROVIDE       |BANGLADESH |8+                 |3 or less      | 0.9849716| 0.7179416| 1.351320|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl |INDIA      |4-5                |3 or less      | 1.0597324| 0.8756092| 1.282573|
|0-24 months |SAS-FoodSuppl |INDIA      |6-7                |3 or less      | 1.1452620| 0.9477874| 1.383881|
|0-24 months |SAS-FoodSuppl |INDIA      |8+                 |3 or less      | 1.0857143| 0.8827484| 1.335347|
|0-6 months  |IRC           |INDIA      |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |IRC           |INDIA      |4-5                |3 or less      | 1.2119825| 0.8469214| 1.734401|
|0-6 months  |IRC           |INDIA      |6-7                |3 or less      | 0.9979004| 0.6720075| 1.481836|
|0-6 months  |IRC           |INDIA      |8+                 |3 or less      | 0.9799601| 0.6468582| 1.484594|
|0-6 months  |NIH-Birth     |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |NIH-Birth     |BANGLADESH |4-5                |3 or less      | 0.9413298| 0.7180345| 1.234066|
|0-6 months  |NIH-Birth     |BANGLADESH |6-7                |3 or less      | 1.0394813| 0.7707392| 1.401928|
|0-6 months  |NIH-Birth     |BANGLADESH |8+                 |3 or less      | 0.8306127| 0.5583669| 1.235599|
|0-6 months  |NIH-Crypto    |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |NIH-Crypto    |BANGLADESH |4-5                |3 or less      | 0.8613274| 0.6347728| 1.168741|
|0-6 months  |NIH-Crypto    |BANGLADESH |6-7                |3 or less      | 0.8127411| 0.5675418| 1.163876|
|0-6 months  |NIH-Crypto    |BANGLADESH |8+                 |3 or less      | 1.0630140| 0.7467451| 1.513232|
|0-6 months  |PROVIDE       |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |PROVIDE       |BANGLADESH |4-5                |3 or less      | 1.0815297| 0.7580267| 1.543094|
|0-6 months  |PROVIDE       |BANGLADESH |6-7                |3 or less      | 0.9838261| 0.6440710| 1.502806|
|0-6 months  |PROVIDE       |BANGLADESH |8+                 |3 or less      | 0.9316586| 0.5625200| 1.543034|
|0-6 months  |SAS-FoodSuppl |INDIA      |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |SAS-FoodSuppl |INDIA      |4-5                |3 or less      | 1.3533470| 0.7810888| 2.344866|
|0-6 months  |SAS-FoodSuppl |INDIA      |6-7                |3 or less      | 1.2723216| 0.7203843| 2.247137|
|0-6 months  |SAS-FoodSuppl |INDIA      |8+                 |3 or less      | 1.4040043| 0.7837523| 2.515116|
|6-24 months |IRC           |INDIA      |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|6-24 months |IRC           |INDIA      |4-5                |3 or less      | 1.2518285| 0.6720690| 2.331717|
|6-24 months |IRC           |INDIA      |6-7                |3 or less      | 1.2747813| 0.6760066| 2.403923|
|6-24 months |IRC           |INDIA      |8+                 |3 or less      | 1.5542191| 0.8358668| 2.889930|
|6-24 months |LCNI-5        |MALAWI     |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|6-24 months |LCNI-5        |MALAWI     |4-5                |3 or less      | 0.9896015| 0.8550533| 1.145322|
|6-24 months |LCNI-5        |MALAWI     |6-7                |3 or less      | 1.0514239| 0.8914272| 1.240137|
|6-24 months |LCNI-5        |MALAWI     |8+                 |3 or less      | 0.9927437| 0.7855986| 1.254508|
|6-24 months |NIH-Birth     |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|6-24 months |NIH-Birth     |BANGLADESH |4-5                |3 or less      | 1.1960679| 0.9219755| 1.551645|
|6-24 months |NIH-Birth     |BANGLADESH |6-7                |3 or less      | 1.2368465| 0.9299868| 1.644958|
|6-24 months |NIH-Birth     |BANGLADESH |8+                 |3 or less      | 0.9687758| 0.6776365| 1.385000|
|6-24 months |NIH-Crypto    |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|6-24 months |NIH-Crypto    |BANGLADESH |4-5                |3 or less      | 1.3863427| 0.8272972| 2.323163|
|6-24 months |NIH-Crypto    |BANGLADESH |6-7                |3 or less      | 1.1129012| 0.6224762| 1.989713|
|6-24 months |NIH-Crypto    |BANGLADESH |8+                 |3 or less      | 0.9820568| 0.5127389| 1.880949|
|6-24 months |PROVIDE       |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|6-24 months |PROVIDE       |BANGLADESH |4-5                |3 or less      | 0.9801902| 0.6623620| 1.450525|
|6-24 months |PROVIDE       |BANGLADESH |6-7                |3 or less      | 1.0938009| 0.6980119| 1.714012|
|6-24 months |PROVIDE       |BANGLADESH |8+                 |3 or less      | 0.9175785| 0.5361620| 1.570328|
|6-24 months |SAS-FoodSuppl |INDIA      |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|6-24 months |SAS-FoodSuppl |INDIA      |4-5                |3 or less      | 1.1136493| 0.8215720| 1.509563|
|6-24 months |SAS-FoodSuppl |INDIA      |6-7                |3 or less      | 1.2513369| 0.9275155| 1.688213|
|6-24 months |SAS-FoodSuppl |INDIA      |8+                 |3 or less      | 1.1987281| 0.8638907| 1.663346|


### Parameter: PAR


|agecat      |studyid       |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |IRC           |INDIA      |3 or less          |NA             |  0.0816381| -0.0367974| 0.2000737|
|0-24 months |LCNI-5        |MALAWI     |3 or less          |NA             |  0.0194062| -0.0332855| 0.0720978|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less          |NA             |  0.0148797| -0.0586089| 0.0883684|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less          |NA             |  0.0335263| -0.0469771| 0.1140296|
|0-24 months |PROVIDE       |BANGLADESH |3 or less          |NA             |  0.0070020| -0.0665390| 0.0805430|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less          |NA             |  0.0645933| -0.0630747| 0.1922613|
|0-6 months  |IRC           |INDIA      |3 or less          |NA             |  0.0300840| -0.0869784| 0.1471464|
|0-6 months  |NIH-Birth     |BANGLADESH |3 or less          |NA             | -0.0228558| -0.0961462| 0.0504345|
|0-6 months  |NIH-Crypto    |BANGLADESH |3 or less          |NA             | -0.0332047| -0.1123607| 0.0459513|
|0-6 months  |PROVIDE       |BANGLADESH |3 or less          |NA             |  0.0064001| -0.0570185| 0.0698187|
|0-6 months  |SAS-FoodSuppl |INDIA      |3 or less          |NA             |  0.0930063| -0.0548513| 0.2408639|
|6-24 months |IRC           |INDIA      |3 or less          |NA             |  0.0878236| -0.0591097| 0.2347568|
|6-24 months |LCNI-5        |MALAWI     |3 or less          |NA             |  0.0039924| -0.0537233| 0.0617082|
|6-24 months |NIH-Birth     |BANGLADESH |3 or less          |NA             |  0.0623364| -0.0421363| 0.1668092|
|6-24 months |NIH-Crypto    |BANGLADESH |3 or less          |NA             |  0.0532856| -0.0418504| 0.1484216|
|6-24 months |PROVIDE       |BANGLADESH |3 or less          |NA             | -0.0008268| -0.0909080| 0.0892544|
|6-24 months |SAS-FoodSuppl |INDIA      |3 or less          |NA             |  0.1033555| -0.0678495| 0.2745605|


### Parameter: PAF


|agecat      |studyid       |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |IRC           |INDIA      |3 or less          |NA             |  0.1272686| -0.0789763| 0.2940901|
|0-24 months |LCNI-5        |MALAWI     |3 or less          |NA             |  0.0304316| -0.0558696| 0.1096789|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less          |NA             |  0.0223908| -0.0946554| 0.1269218|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less          |NA             |  0.0702014| -0.1145877| 0.2243540|
|0-24 months |PROVIDE       |BANGLADESH |3 or less          |NA             |  0.0160701| -0.1680574| 0.1711725|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less          |NA             |  0.0780347| -0.0902029| 0.2203102|
|0-6 months  |IRC           |INDIA      |3 or less          |NA             |  0.0708876| -0.2503356| 0.3095854|
|0-6 months  |NIH-Birth     |BANGLADESH |3 or less          |NA             | -0.0653469| -0.2975340| 0.1252915|
|0-6 months  |NIH-Crypto    |BANGLADESH |3 or less          |NA             | -0.1099090| -0.4054426| 0.1234804|
|0-6 months  |PROVIDE       |BANGLADESH |3 or less          |NA             |  0.0266670| -0.2769115| 0.2580714|
|0-6 months  |SAS-FoodSuppl |INDIA      |3 or less          |NA             |  0.2388310| -0.2548697| 0.5382961|
|6-24 months |IRC           |INDIA      |3 or less          |NA             |  0.2328805| -0.2769829| 0.5391698|
|6-24 months |LCNI-5        |MALAWI     |3 or less          |NA             |  0.0066541| -0.0943569| 0.0983416|
|6-24 months |NIH-Birth     |BANGLADESH |3 or less          |NA             |  0.1086165| -0.0932837| 0.2732312|
|6-24 months |NIH-Crypto    |BANGLADESH |3 or less          |NA             |  0.2027257| -0.2537329| 0.4929970|
|6-24 months |PROVIDE       |BANGLADESH |3 or less          |NA             | -0.0027521| -0.3522455| 0.2564132|
|6-24 months |SAS-FoodSuppl |INDIA      |3 or less          |NA             |  0.1364967| -0.1231626| 0.3361264|
