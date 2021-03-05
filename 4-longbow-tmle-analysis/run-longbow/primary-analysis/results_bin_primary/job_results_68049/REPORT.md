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

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
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

|agecat      |studyid       |country    |nhh       | ever_wasted| n_cell|   n|
|:-----------|:-------------|:----------|:---------|-----------:|------:|---:|
|0-24 months |IRC           |INDIA      |3 or less |           0|     20| 410|
|0-24 months |IRC           |INDIA      |3 or less |           1|     38| 410|
|0-24 months |IRC           |INDIA      |4-5       |           0|     63| 410|
|0-24 months |IRC           |INDIA      |4-5       |           1|     95| 410|
|0-24 months |IRC           |INDIA      |6-7       |           0|     38| 410|
|0-24 months |IRC           |INDIA      |6-7       |           1|     69| 410|
|0-24 months |IRC           |INDIA      |8+        |           0|     20| 410|
|0-24 months |IRC           |INDIA      |8+        |           1|     67| 410|
|0-24 months |LCNI-5        |MALAWI     |3 or less |           0|    210| 817|
|0-24 months |LCNI-5        |MALAWI     |3 or less |           1|     15| 817|
|0-24 months |LCNI-5        |MALAWI     |4-5       |           0|    310| 817|
|0-24 months |LCNI-5        |MALAWI     |4-5       |           1|     30| 817|
|0-24 months |LCNI-5        |MALAWI     |6-7       |           0|    172| 817|
|0-24 months |LCNI-5        |MALAWI     |6-7       |           1|     10| 817|
|0-24 months |LCNI-5        |MALAWI     |8+        |           0|     59| 817|
|0-24 months |LCNI-5        |MALAWI     |8+        |           1|     11| 817|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less |           0|     58| 624|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less |           1|     57| 624|
|0-24 months |NIH-Birth     |BANGLADESH |4-5       |           0|    134| 624|
|0-24 months |NIH-Birth     |BANGLADESH |4-5       |           1|    129| 624|
|0-24 months |NIH-Birth     |BANGLADESH |6-7       |           0|     72| 624|
|0-24 months |NIH-Birth     |BANGLADESH |6-7       |           1|     69| 624|
|0-24 months |NIH-Birth     |BANGLADESH |8+        |           0|     62| 624|
|0-24 months |NIH-Birth     |BANGLADESH |8+        |           1|     43| 624|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less |           0|     75| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less |           1|     39| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |4-5       |           0|    224| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |4-5       |           1|    118| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |6-7       |           0|    120| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |6-7       |           1|     58| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |8+        |           0|     89| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |8+        |           1|     35| 758|
|0-24 months |PROVIDE       |BANGLADESH |3 or less |           0|     98| 700|
|0-24 months |PROVIDE       |BANGLADESH |3 or less |           1|     42| 700|
|0-24 months |PROVIDE       |BANGLADESH |4-5       |           0|    211| 700|
|0-24 months |PROVIDE       |BANGLADESH |4-5       |           1|    111| 700|
|0-24 months |PROVIDE       |BANGLADESH |6-7       |           0|     94| 700|
|0-24 months |PROVIDE       |BANGLADESH |6-7       |           1|     57| 700|
|0-24 months |PROVIDE       |BANGLADESH |8+        |           0|     51| 700|
|0-24 months |PROVIDE       |BANGLADESH |8+        |           1|     36| 700|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less |           0|     24| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less |           1|     14| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |4-5       |           0|     95| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |4-5       |           1|     88| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |6-7       |           0|     66| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |6-7       |           1|     61| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |8+        |           0|     36| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |8+        |           1|     34| 418|
|0-6 months  |IRC           |INDIA      |3 or less |           0|     25| 410|
|0-6 months  |IRC           |INDIA      |3 or less |           1|     33| 410|
|0-6 months  |IRC           |INDIA      |4-5       |           0|     81| 410|
|0-6 months  |IRC           |INDIA      |4-5       |           1|     77| 410|
|0-6 months  |IRC           |INDIA      |6-7       |           0|     47| 410|
|0-6 months  |IRC           |INDIA      |6-7       |           1|     60| 410|
|0-6 months  |IRC           |INDIA      |8+        |           0|     34| 410|
|0-6 months  |IRC           |INDIA      |8+        |           1|     53| 410|
|0-6 months  |LCNI-5        |MALAWI     |3 or less |           0|     70| 269|
|0-6 months  |LCNI-5        |MALAWI     |3 or less |           1|      0| 269|
|0-6 months  |LCNI-5        |MALAWI     |4-5       |           0|    109| 269|
|0-6 months  |LCNI-5        |MALAWI     |4-5       |           1|      2| 269|
|0-6 months  |LCNI-5        |MALAWI     |6-7       |           0|     65| 269|
|0-6 months  |LCNI-5        |MALAWI     |6-7       |           1|      2| 269|
|0-6 months  |LCNI-5        |MALAWI     |8+        |           0|     21| 269|
|0-6 months  |LCNI-5        |MALAWI     |8+        |           1|      0| 269|
|0-6 months  |NIH-Birth     |BANGLADESH |3 or less |           0|     67| 622|
|0-6 months  |NIH-Birth     |BANGLADESH |3 or less |           1|     47| 622|
|0-6 months  |NIH-Birth     |BANGLADESH |4-5       |           0|    175| 622|
|0-6 months  |NIH-Birth     |BANGLADESH |4-5       |           1|     88| 622|
|0-6 months  |NIH-Birth     |BANGLADESH |6-7       |           0|     88| 622|
|0-6 months  |NIH-Birth     |BANGLADESH |6-7       |           1|     53| 622|
|0-6 months  |NIH-Birth     |BANGLADESH |8+        |           0|     70| 622|
|0-6 months  |NIH-Birth     |BANGLADESH |8+        |           1|     34| 622|
|0-6 months  |NIH-Crypto    |BANGLADESH |3 or less |           0|     84| 758|
|0-6 months  |NIH-Crypto    |BANGLADESH |3 or less |           1|     30| 758|
|0-6 months  |NIH-Crypto    |BANGLADESH |4-5       |           0|    251| 758|
|0-6 months  |NIH-Crypto    |BANGLADESH |4-5       |           1|     91| 758|
|0-6 months  |NIH-Crypto    |BANGLADESH |6-7       |           0|    133| 758|
|0-6 months  |NIH-Crypto    |BANGLADESH |6-7       |           1|     45| 758|
|0-6 months  |NIH-Crypto    |BANGLADESH |8+        |           0|     95| 758|
|0-6 months  |NIH-Crypto    |BANGLADESH |8+        |           1|     29| 758|
|0-6 months  |PROVIDE       |BANGLADESH |3 or less |           0|    107| 700|
|0-6 months  |PROVIDE       |BANGLADESH |3 or less |           1|     33| 700|
|0-6 months  |PROVIDE       |BANGLADESH |4-5       |           0|    235| 700|
|0-6 months  |PROVIDE       |BANGLADESH |4-5       |           1|     87| 700|
|0-6 months  |PROVIDE       |BANGLADESH |6-7       |           0|    113| 700|
|0-6 months  |PROVIDE       |BANGLADESH |6-7       |           1|     38| 700|
|0-6 months  |PROVIDE       |BANGLADESH |8+        |           0|     64| 700|
|0-6 months  |PROVIDE       |BANGLADESH |8+        |           1|     23| 700|
|0-6 months  |SAS-FoodSuppl |INDIA      |3 or less |           0|     35| 418|
|0-6 months  |SAS-FoodSuppl |INDIA      |3 or less |           1|      3| 418|
|0-6 months  |SAS-FoodSuppl |INDIA      |4-5       |           0|    152| 418|
|0-6 months  |SAS-FoodSuppl |INDIA      |4-5       |           1|     31| 418|
|0-6 months  |SAS-FoodSuppl |INDIA      |6-7       |           0|    100| 418|
|0-6 months  |SAS-FoodSuppl |INDIA      |6-7       |           1|     27| 418|
|0-6 months  |SAS-FoodSuppl |INDIA      |8+        |           0|     53| 418|
|0-6 months  |SAS-FoodSuppl |INDIA      |8+        |           1|     17| 418|
|6-24 months |IRC           |INDIA      |3 or less |           0|     48| 410|
|6-24 months |IRC           |INDIA      |3 or less |           1|     10| 410|
|6-24 months |IRC           |INDIA      |4-5       |           0|    112| 410|
|6-24 months |IRC           |INDIA      |4-5       |           1|     46| 410|
|6-24 months |IRC           |INDIA      |6-7       |           0|     74| 410|
|6-24 months |IRC           |INDIA      |6-7       |           1|     33| 410|
|6-24 months |IRC           |INDIA      |8+        |           0|     49| 410|
|6-24 months |IRC           |INDIA      |8+        |           1|     38| 410|
|6-24 months |LCNI-5        |MALAWI     |3 or less |           0|    203| 805|
|6-24 months |LCNI-5        |MALAWI     |3 or less |           1|     15| 805|
|6-24 months |LCNI-5        |MALAWI     |4-5       |           0|    307| 805|
|6-24 months |LCNI-5        |MALAWI     |4-5       |           1|     29| 805|
|6-24 months |LCNI-5        |MALAWI     |6-7       |           0|    173| 805|
|6-24 months |LCNI-5        |MALAWI     |6-7       |           1|      8| 805|
|6-24 months |LCNI-5        |MALAWI     |8+        |           0|     59| 805|
|6-24 months |LCNI-5        |MALAWI     |8+        |           1|     11| 805|
|6-24 months |NIH-Birth     |BANGLADESH |3 or less |           0|     68| 542|
|6-24 months |NIH-Birth     |BANGLADESH |3 or less |           1|     27| 542|
|6-24 months |NIH-Birth     |BANGLADESH |4-5       |           0|    159| 542|
|6-24 months |NIH-Birth     |BANGLADESH |4-5       |           1|     72| 542|
|6-24 months |NIH-Birth     |BANGLADESH |6-7       |           0|     91| 542|
|6-24 months |NIH-Birth     |BANGLADESH |6-7       |           1|     38| 542|
|6-24 months |NIH-Birth     |BANGLADESH |8+        |           0|     65| 542|
|6-24 months |NIH-Birth     |BANGLADESH |8+        |           1|     22| 542|
|6-24 months |NIH-Crypto    |BANGLADESH |3 or less |           0|     94| 730|
|6-24 months |NIH-Crypto    |BANGLADESH |3 or less |           1|     13| 730|
|6-24 months |NIH-Crypto    |BANGLADESH |4-5       |           0|    279| 730|
|6-24 months |NIH-Crypto    |BANGLADESH |4-5       |           1|     51| 730|
|6-24 months |NIH-Crypto    |BANGLADESH |6-7       |           0|    155| 730|
|6-24 months |NIH-Crypto    |BANGLADESH |6-7       |           1|     21| 730|
|6-24 months |NIH-Crypto    |BANGLADESH |8+        |           0|    106| 730|
|6-24 months |NIH-Crypto    |BANGLADESH |8+        |           1|     11| 730|
|6-24 months |PROVIDE       |BANGLADESH |3 or less |           0|    101| 615|
|6-24 months |PROVIDE       |BANGLADESH |3 or less |           1|     11| 615|
|6-24 months |PROVIDE       |BANGLADESH |4-5       |           0|    249| 615|
|6-24 months |PROVIDE       |BANGLADESH |4-5       |           1|     40| 615|
|6-24 months |PROVIDE       |BANGLADESH |6-7       |           0|    101| 615|
|6-24 months |PROVIDE       |BANGLADESH |6-7       |           1|     29| 615|
|6-24 months |PROVIDE       |BANGLADESH |8+        |           0|     65| 615|
|6-24 months |PROVIDE       |BANGLADESH |8+        |           1|     19| 615|
|6-24 months |SAS-FoodSuppl |INDIA      |3 or less |           0|     24| 402|
|6-24 months |SAS-FoodSuppl |INDIA      |3 or less |           1|     12| 402|
|6-24 months |SAS-FoodSuppl |INDIA      |4-5       |           0|    111| 402|
|6-24 months |SAS-FoodSuppl |INDIA      |4-5       |           1|     64| 402|
|6-24 months |SAS-FoodSuppl |INDIA      |6-7       |           0|     81| 402|
|6-24 months |SAS-FoodSuppl |INDIA      |6-7       |           1|     44| 402|
|6-24 months |SAS-FoodSuppl |INDIA      |8+        |           0|     43| 402|
|6-24 months |SAS-FoodSuppl |INDIA      |8+        |           1|     23| 402|


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
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/f30817ca-be8b-475c-8b40-4e30608e76f0/c0c18c76-4c55-47e4-ba4c-9330ee548a75/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f30817ca-be8b-475c-8b40-4e30608e76f0/c0c18c76-4c55-47e4-ba4c-9330ee548a75/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f30817ca-be8b-475c-8b40-4e30608e76f0/c0c18c76-4c55-47e4-ba4c-9330ee548a75/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f30817ca-be8b-475c-8b40-4e30608e76f0/c0c18c76-4c55-47e4-ba4c-9330ee548a75/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid       |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |IRC           |INDIA      |3 or less          |NA             | 0.6597659| 0.5339894| 0.7855425|
|0-24 months |IRC           |INDIA      |4-5                |NA             | 0.6043994| 0.5249539| 0.6838448|
|0-24 months |IRC           |INDIA      |6-7                |NA             | 0.6422032| 0.5449810| 0.7394254|
|0-24 months |IRC           |INDIA      |8+                 |NA             | 0.7699253| 0.6779375| 0.8619131|
|0-24 months |LCNI-5        |MALAWI     |3 or less          |NA             | 0.0657670| 0.0334431| 0.0980909|
|0-24 months |LCNI-5        |MALAWI     |4-5                |NA             | 0.0890488| 0.0586941| 0.1194035|
|0-24 months |LCNI-5        |MALAWI     |6-7                |NA             | 0.0502426| 0.0188818| 0.0816033|
|0-24 months |LCNI-5        |MALAWI     |8+                 |NA             | 0.1520599| 0.0683950| 0.2357248|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less          |NA             | 0.5685085| 0.4793458| 0.6576713|
|0-24 months |NIH-Birth     |BANGLADESH |4-5                |NA             | 0.4886021| 0.4261139| 0.5510904|
|0-24 months |NIH-Birth     |BANGLADESH |6-7                |NA             | 0.5089808| 0.4217553| 0.5962063|
|0-24 months |NIH-Birth     |BANGLADESH |8+                 |NA             | 0.4237473| 0.3152714| 0.5322231|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less          |NA             | 0.3057101| 0.2199569| 0.3914634|
|0-24 months |NIH-Crypto    |BANGLADESH |4-5                |NA             | 0.3541602| 0.3032167| 0.4051037|
|0-24 months |NIH-Crypto    |BANGLADESH |6-7                |NA             | 0.3220877| 0.2501388| 0.3940366|
|0-24 months |NIH-Crypto    |BANGLADESH |8+                 |NA             | 0.2975104| 0.2168475| 0.3781734|
|0-24 months |PROVIDE       |BANGLADESH |3 or less          |NA             | 0.3024131| 0.2259024| 0.3789238|
|0-24 months |PROVIDE       |BANGLADESH |4-5                |NA             | 0.3456254| 0.2933712| 0.3978796|
|0-24 months |PROVIDE       |BANGLADESH |6-7                |NA             | 0.3693452| 0.2926707| 0.4460198|
|0-24 months |PROVIDE       |BANGLADESH |8+                 |NA             | 0.4182722| 0.3161758| 0.5203686|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less          |NA             | 0.3519633| 0.1904815| 0.5134451|
|0-24 months |SAS-FoodSuppl |INDIA      |4-5                |NA             | 0.4811369| 0.4082289| 0.5540448|
|0-24 months |SAS-FoodSuppl |INDIA      |6-7                |NA             | 0.4821353| 0.3947209| 0.5695497|
|0-24 months |SAS-FoodSuppl |INDIA      |8+                 |NA             | 0.4866352| 0.3690428| 0.6042276|
|0-6 months  |IRC           |INDIA      |3 or less          |NA             | 0.5627288| 0.4328053| 0.6926523|
|0-6 months  |IRC           |INDIA      |4-5                |NA             | 0.4878666| 0.4070125| 0.5687207|
|0-6 months  |IRC           |INDIA      |6-7                |NA             | 0.5605257| 0.4598864| 0.6611649|
|0-6 months  |IRC           |INDIA      |8+                 |NA             | 0.6209545| 0.5169198| 0.7249892|
|0-6 months  |NIH-Birth     |BANGLADESH |3 or less          |NA             | 0.4435305| 0.3526055| 0.5344556|
|0-6 months  |NIH-Birth     |BANGLADESH |4-5                |NA             | 0.3262523| 0.2679680| 0.3845366|
|0-6 months  |NIH-Birth     |BANGLADESH |6-7                |NA             | 0.3937306| 0.3089017| 0.4785595|
|0-6 months  |NIH-Birth     |BANGLADESH |8+                 |NA             | 0.3464862| 0.2421522| 0.4508203|
|0-6 months  |NIH-Crypto    |BANGLADESH |3 or less          |NA             | 0.2617719| 0.1821087| 0.3414352|
|0-6 months  |NIH-Crypto    |BANGLADESH |4-5                |NA             | 0.2690524| 0.2221712| 0.3159335|
|0-6 months  |NIH-Crypto    |BANGLADESH |6-7                |NA             | 0.2544593| 0.1877049| 0.3212137|
|0-6 months  |NIH-Crypto    |BANGLADESH |8+                 |NA             | 0.2368009| 0.1601987| 0.3134030|
|0-6 months  |PROVIDE       |BANGLADESH |3 or less          |NA             | 0.2311910| 0.1626324| 0.2997495|
|0-6 months  |PROVIDE       |BANGLADESH |4-5                |NA             | 0.2764341| 0.2267680| 0.3261002|
|0-6 months  |PROVIDE       |BANGLADESH |6-7                |NA             | 0.2375888| 0.1674934| 0.3076842|
|0-6 months  |PROVIDE       |BANGLADESH |8+                 |NA             | 0.2765228| 0.1739107| 0.3791350|
|6-24 months |IRC           |INDIA      |3 or less          |NA             | 0.1873595| 0.0866794| 0.2880396|
|6-24 months |IRC           |INDIA      |4-5                |NA             | 0.2902725| 0.2200070| 0.3605380|
|6-24 months |IRC           |INDIA      |6-7                |NA             | 0.3147857| 0.2283533| 0.4012181|
|6-24 months |IRC           |INDIA      |8+                 |NA             | 0.4203835| 0.3139584| 0.5268086|
|6-24 months |LCNI-5        |MALAWI     |3 or less          |NA             | 0.0688073| 0.0351851| 0.1024296|
|6-24 months |LCNI-5        |MALAWI     |4-5                |NA             | 0.0863095| 0.0562642| 0.1163549|
|6-24 months |LCNI-5        |MALAWI     |6-7                |NA             | 0.0441989| 0.0142371| 0.0741607|
|6-24 months |LCNI-5        |MALAWI     |8+                 |NA             | 0.1571429| 0.0718342| 0.2424516|
|6-24 months |NIH-Birth     |BANGLADESH |3 or less          |NA             | 0.3668455| 0.2716668| 0.4620242|
|6-24 months |NIH-Birth     |BANGLADESH |4-5                |NA             | 0.3179228| 0.2556329| 0.3802128|
|6-24 months |NIH-Birth     |BANGLADESH |6-7                |NA             | 0.2755424| 0.1917394| 0.3593453|
|6-24 months |NIH-Birth     |BANGLADESH |8+                 |NA             | 0.2860985| 0.1737853| 0.3984117|
|6-24 months |NIH-Crypto    |BANGLADESH |3 or less          |NA             | 0.1234888| 0.0608918| 0.1860858|
|6-24 months |NIH-Crypto    |BANGLADESH |4-5                |NA             | 0.1546875| 0.1155799| 0.1937951|
|6-24 months |NIH-Crypto    |BANGLADESH |6-7                |NA             | 0.1208269| 0.0726545| 0.1689993|
|6-24 months |NIH-Crypto    |BANGLADESH |8+                 |NA             | 0.0961213| 0.0428641| 0.1493785|
|6-24 months |PROVIDE       |BANGLADESH |3 or less          |NA             | 0.0978047| 0.0421697| 0.1534396|
|6-24 months |PROVIDE       |BANGLADESH |4-5                |NA             | 0.1377651| 0.0977844| 0.1777458|
|6-24 months |PROVIDE       |BANGLADESH |6-7                |NA             | 0.2230955| 0.1501577| 0.2960333|
|6-24 months |PROVIDE       |BANGLADESH |8+                 |NA             | 0.2296165| 0.1378502| 0.3213827|
|6-24 months |SAS-FoodSuppl |INDIA      |3 or less          |NA             | 0.3180627| 0.1549451| 0.4811802|
|6-24 months |SAS-FoodSuppl |INDIA      |4-5                |NA             | 0.3672828| 0.2957390| 0.4388265|
|6-24 months |SAS-FoodSuppl |INDIA      |6-7                |NA             | 0.3535631| 0.2686429| 0.4384833|
|6-24 months |SAS-FoodSuppl |INDIA      |8+                 |NA             | 0.3531592| 0.2382162| 0.4681023|


### Parameter: E(Y)


|agecat      |studyid       |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |IRC           |INDIA      |NA                 |NA             | 0.6560976| 0.6100625| 0.7021326|
|0-24 months |LCNI-5        |MALAWI     |NA                 |NA             | 0.0807834| 0.0620863| 0.0994804|
|0-24 months |NIH-Birth     |BANGLADESH |NA                 |NA             | 0.4775641| 0.4383415| 0.5167867|
|0-24 months |NIH-Crypto    |BANGLADESH |NA                 |NA             | 0.3298153| 0.2963239| 0.3633067|
|0-24 months |PROVIDE       |BANGLADESH |NA                 |NA             | 0.3514286| 0.3160364| 0.3868207|
|0-24 months |SAS-FoodSuppl |INDIA      |NA                 |NA             | 0.4712919| 0.4233811| 0.5192026|
|0-6 months  |IRC           |INDIA      |NA                 |NA             | 0.5439024| 0.4956326| 0.5921723|
|0-6 months  |NIH-Birth     |BANGLADESH |NA                 |NA             | 0.3569132| 0.3192325| 0.3945938|
|0-6 months  |NIH-Crypto    |BANGLADESH |NA                 |NA             | 0.2572559| 0.2261171| 0.2883948|
|0-6 months  |PROVIDE       |BANGLADESH |NA                 |NA             | 0.2585714| 0.2261125| 0.2910304|
|6-24 months |IRC           |INDIA      |NA                 |NA             | 0.3097561| 0.2649438| 0.3545684|
|6-24 months |LCNI-5        |MALAWI     |NA                 |NA             | 0.0782609| 0.0596958| 0.0968259|
|6-24 months |NIH-Birth     |BANGLADESH |NA                 |NA             | 0.2933579| 0.2549918| 0.3317241|
|6-24 months |NIH-Crypto    |BANGLADESH |NA                 |NA             | 0.1315068| 0.1069744| 0.1560393|
|6-24 months |PROVIDE       |BANGLADESH |NA                 |NA             | 0.1609756| 0.1319065| 0.1900447|
|6-24 months |SAS-FoodSuppl |INDIA      |NA                 |NA             | 0.3557214| 0.3088651| 0.4025777|


### Parameter: RR


|agecat      |studyid       |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |IRC           |INDIA      |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |IRC           |INDIA      |4-5                |3 or less      | 0.9160815| 0.7266115| 1.1549574|
|0-24 months |IRC           |INDIA      |6-7                |3 or less      | 0.9733804| 0.7629952| 1.2417763|
|0-24 months |IRC           |INDIA      |8+                 |3 or less      | 1.1669673| 0.9315586| 1.4618648|
|0-24 months |LCNI-5        |MALAWI     |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |LCNI-5        |MALAWI     |4-5                |3 or less      | 1.3540044| 0.7445434| 2.4623520|
|0-24 months |LCNI-5        |MALAWI     |6-7                |3 or less      | 0.7639484| 0.3450218| 1.6915368|
|0-24 months |LCNI-5        |MALAWI     |8+                 |3 or less      | 2.3121009| 1.1061803| 4.8326757|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Birth     |BANGLADESH |4-5                |3 or less      | 0.8594456| 0.7022585| 1.0518159|
|0-24 months |NIH-Birth     |BANGLADESH |6-7                |3 or less      | 0.8952914| 0.7098312| 1.1292075|
|0-24 months |NIH-Birth     |BANGLADESH |8+                 |3 or less      | 0.7453666| 0.5518656| 1.0067150|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Crypto    |BANGLADESH |4-5                |3 or less      | 1.1584837| 0.8459689| 1.5864466|
|0-24 months |NIH-Crypto    |BANGLADESH |6-7                |3 or less      | 1.0535723| 0.7364274| 1.5072966|
|0-24 months |NIH-Crypto    |BANGLADESH |8+                 |3 or less      | 0.9731781| 0.6595579| 1.4359250|
|0-24 months |PROVIDE       |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROVIDE       |BANGLADESH |4-5                |3 or less      | 1.1428915| 0.8511632| 1.5346070|
|0-24 months |PROVIDE       |BANGLADESH |6-7                |3 or less      | 1.2213268| 0.8811200| 1.6928899|
|0-24 months |PROVIDE       |BANGLADESH |8+                 |3 or less      | 1.3831154| 0.9740425| 1.9639883|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-FoodSuppl |INDIA      |4-5                |3 or less      | 1.3670084| 0.8429312| 2.2169212|
|0-24 months |SAS-FoodSuppl |INDIA      |6-7                |3 or less      | 1.3698453| 0.8364109| 2.2434859|
|0-24 months |SAS-FoodSuppl |INDIA      |8+                 |3 or less      | 1.3826303| 0.8233355| 2.3218563|
|0-6 months  |IRC           |INDIA      |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |IRC           |INDIA      |4-5                |3 or less      | 0.8669657| 0.6524474| 1.1520156|
|0-6 months  |IRC           |INDIA      |6-7                |3 or less      | 0.9960849| 0.7433725| 1.3347078|
|0-6 months  |IRC           |INDIA      |8+                 |3 or less      | 1.1034703| 0.8294025| 1.4681010|
|0-6 months  |NIH-Birth     |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |NIH-Birth     |BANGLADESH |4-5                |3 or less      | 0.7355802| 0.5604647| 0.9654102|
|0-6 months  |NIH-Birth     |BANGLADESH |6-7                |3 or less      | 0.8877193| 0.6593552| 1.1951759|
|0-6 months  |NIH-Birth     |BANGLADESH |8+                 |3 or less      | 0.7812004| 0.5426857| 1.1245442|
|0-6 months  |NIH-Crypto    |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |NIH-Crypto    |BANGLADESH |4-5                |3 or less      | 1.0278121| 0.7235829| 1.4599539|
|0-6 months  |NIH-Crypto    |BANGLADESH |6-7                |3 or less      | 0.9720648| 0.6505374| 1.4525068|
|0-6 months  |NIH-Crypto    |BANGLADESH |8+                 |3 or less      | 0.9046075| 0.5799701| 1.4109603|
|0-6 months  |PROVIDE       |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |PROVIDE       |BANGLADESH |4-5                |3 or less      | 1.1956958| 0.8453277| 1.6912832|
|0-6 months  |PROVIDE       |BANGLADESH |6-7                |3 or less      | 1.0276734| 0.6763645| 1.5614548|
|0-6 months  |PROVIDE       |BANGLADESH |8+                 |3 or less      | 1.1960798| 0.7437694| 1.9234550|
|6-24 months |IRC           |INDIA      |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |IRC           |INDIA      |4-5                |3 or less      | 1.5492806| 0.8598936| 2.7913575|
|6-24 months |IRC           |INDIA      |6-7                |3 or less      | 1.6801156| 0.9182470| 3.0741059|
|6-24 months |IRC           |INDIA      |8+                 |3 or less      | 2.2437263| 1.2371193| 4.0693793|
|6-24 months |LCNI-5        |MALAWI     |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |LCNI-5        |MALAWI     |4-5                |3 or less      | 1.2543651| 0.6884364| 2.2855150|
|6-24 months |LCNI-5        |MALAWI     |6-7                |3 or less      | 0.6423573| 0.2785228| 1.4814690|
|6-24 months |LCNI-5        |MALAWI     |8+                 |3 or less      | 2.2838095| 1.1001482| 4.7409848|
|6-24 months |NIH-Birth     |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |NIH-Birth     |BANGLADESH |4-5                |3 or less      | 0.8666396| 0.6268728| 1.1981126|
|6-24 months |NIH-Birth     |BANGLADESH |6-7                |3 or less      | 0.7511129| 0.5035412| 1.1204061|
|6-24 months |NIH-Birth     |BANGLADESH |8+                 |3 or less      | 0.7798884| 0.4866982| 1.2496982|
|6-24 months |NIH-Crypto    |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |NIH-Crypto    |BANGLADESH |4-5                |3 or less      | 1.2526439| 0.7107615| 2.2076561|
|6-24 months |NIH-Crypto    |BANGLADESH |6-7                |3 or less      | 0.9784439| 0.5136832| 1.8637020|
|6-24 months |NIH-Crypto    |BANGLADESH |8+                 |3 or less      | 0.7783804| 0.3672962| 1.6495571|
|6-24 months |PROVIDE       |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |PROVIDE       |BANGLADESH |4-5                |3 or less      | 1.4085739| 0.7435890| 2.6682488|
|6-24 months |PROVIDE       |BANGLADESH |6-7                |3 or less      | 2.2810313| 1.1834443| 4.3965769|
|6-24 months |PROVIDE       |BANGLADESH |8+                 |3 or less      | 2.3477048| 1.1710744| 4.7065479|
|6-24 months |SAS-FoodSuppl |INDIA      |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |SAS-FoodSuppl |INDIA      |4-5                |3 or less      | 1.1547498| 0.6661732| 2.0016522|
|6-24 months |SAS-FoodSuppl |INDIA      |6-7                |3 or less      | 1.1116147| 0.6308612| 1.9587308|
|6-24 months |SAS-FoodSuppl |INDIA      |8+                 |3 or less      | 1.1103448| 0.6047614| 2.0385983|


### Parameter: PAR


|agecat      |studyid       |country    |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |IRC           |INDIA      |3 or less          |NA             | -0.0036684| -0.1208382|  0.1135015|
|0-24 months |LCNI-5        |MALAWI     |3 or less          |NA             |  0.0150164| -0.0135512|  0.0435839|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less          |NA             | -0.0909444| -0.1730064| -0.0088825|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less          |NA             |  0.0241052| -0.0551328|  0.1033431|
|0-24 months |PROVIDE       |BANGLADESH |3 or less          |NA             |  0.0490155| -0.0199567|  0.1179876|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less          |NA             |  0.1193285| -0.0352358|  0.2738928|
|0-6 months  |IRC           |INDIA      |3 or less          |NA             | -0.0188263| -0.1399364|  0.1022837|
|0-6 months  |NIH-Birth     |BANGLADESH |3 or less          |NA             | -0.0866174| -0.1694139| -0.0038208|
|0-6 months  |NIH-Crypto    |BANGLADESH |3 or less          |NA             | -0.0045160| -0.0780739|  0.0690419|
|0-6 months  |PROVIDE       |BANGLADESH |3 or less          |NA             |  0.0273805| -0.0348912|  0.0896521|
|6-24 months |IRC           |INDIA      |3 or less          |NA             |  0.1223966|  0.0258933|  0.2188998|
|6-24 months |LCNI-5        |MALAWI     |3 or less          |NA             |  0.0094535| -0.0199207|  0.0388278|
|6-24 months |NIH-Birth     |BANGLADESH |3 or less          |NA             | -0.0734875| -0.1616159|  0.0146409|
|6-24 months |NIH-Crypto    |BANGLADESH |3 or less          |NA             |  0.0080180| -0.0501536|  0.0661896|
|6-24 months |PROVIDE       |BANGLADESH |3 or less          |NA             |  0.0631709|  0.0100008|  0.1163411|
|6-24 months |SAS-FoodSuppl |INDIA      |3 or less          |NA             |  0.0376587| -0.1183798|  0.1936973|


### Parameter: PAF


|agecat      |studyid       |country    |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |IRC           |INDIA      |3 or less          |NA             | -0.0055912| -0.2010187|  0.1580367|
|0-24 months |LCNI-5        |MALAWI     |3 or less          |NA             |  0.1858844| -0.2535121|  0.4712582|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less          |NA             | -0.1904340| -0.3770105| -0.0291375|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less          |NA             |  0.0730869| -0.2012358|  0.2847633|
|0-24 months |PROVIDE       |BANGLADESH |3 or less          |NA             |  0.1394749| -0.0810396|  0.3150080|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less          |NA             |  0.2531945| -0.1598554|  0.5191483|
|0-6 months  |IRC           |INDIA      |3 or less          |NA             | -0.0346135| -0.2831236|  0.1657663|
|0-6 months  |NIH-Birth     |BANGLADESH |3 or less          |NA             | -0.2426847| -0.4994686| -0.0298750|
|0-6 months  |NIH-Crypto    |BANGLADESH |3 or less          |NA             | -0.0175545| -0.3477350|  0.2317353|
|0-6 months  |PROVIDE       |BANGLADESH |3 or less          |NA             |  0.1058913| -0.1699766|  0.3167125|
|6-24 months |IRC           |INDIA      |3 or less          |NA             |  0.3951385| -0.0080555|  0.6370662|
|6-24 months |LCNI-5        |MALAWI     |3 or less          |NA             |  0.1207951| -0.3459615|  0.4256884|
|6-24 months |NIH-Birth     |BANGLADESH |3 or less          |NA             | -0.2505047| -0.5934401|  0.0186252|
|6-24 months |NIH-Crypto    |BANGLADESH |3 or less          |NA             |  0.0609703| -0.5038515|  0.4136544|
|6-24 months |PROVIDE       |BANGLADESH |3 or less          |NA             |  0.3924256| -0.0366797|  0.6439144|
|6-24 months |SAS-FoodSuppl |INDIA      |3 or less          |NA             |  0.1058658| -0.4608333|  0.4527261|
