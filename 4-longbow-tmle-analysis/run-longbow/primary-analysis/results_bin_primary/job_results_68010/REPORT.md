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

**Outcome Variable:** ever_swasted

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

|agecat      |studyid       |country    |nhh       | ever_swasted| n_cell|   n|
|:-----------|:-------------|:----------|:---------|------------:|------:|---:|
|0-24 months |IRC           |INDIA      |3 or less |            0|     35| 410|
|0-24 months |IRC           |INDIA      |3 or less |            1|     23| 410|
|0-24 months |IRC           |INDIA      |4-5       |            0|    109| 410|
|0-24 months |IRC           |INDIA      |4-5       |            1|     49| 410|
|0-24 months |IRC           |INDIA      |6-7       |            0|     69| 410|
|0-24 months |IRC           |INDIA      |6-7       |            1|     38| 410|
|0-24 months |IRC           |INDIA      |8+        |            0|     57| 410|
|0-24 months |IRC           |INDIA      |8+        |            1|     30| 410|
|0-24 months |LCNI-5        |MALAWI     |3 or less |            0|    224| 817|
|0-24 months |LCNI-5        |MALAWI     |3 or less |            1|      1| 817|
|0-24 months |LCNI-5        |MALAWI     |4-5       |            0|    334| 817|
|0-24 months |LCNI-5        |MALAWI     |4-5       |            1|      6| 817|
|0-24 months |LCNI-5        |MALAWI     |6-7       |            0|    182| 817|
|0-24 months |LCNI-5        |MALAWI     |6-7       |            1|      0| 817|
|0-24 months |LCNI-5        |MALAWI     |8+        |            0|     69| 817|
|0-24 months |LCNI-5        |MALAWI     |8+        |            1|      1| 817|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less |            0|     95| 624|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less |            1|     20| 624|
|0-24 months |NIH-Birth     |BANGLADESH |4-5       |            0|    220| 624|
|0-24 months |NIH-Birth     |BANGLADESH |4-5       |            1|     43| 624|
|0-24 months |NIH-Birth     |BANGLADESH |6-7       |            0|    119| 624|
|0-24 months |NIH-Birth     |BANGLADESH |6-7       |            1|     22| 624|
|0-24 months |NIH-Birth     |BANGLADESH |8+        |            0|     91| 624|
|0-24 months |NIH-Birth     |BANGLADESH |8+        |            1|     14| 624|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less |            0|    103| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less |            1|     11| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |4-5       |            0|    310| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |4-5       |            1|     32| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |6-7       |            0|    164| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |6-7       |            1|     14| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |8+        |            0|    115| 758|
|0-24 months |NIH-Crypto    |BANGLADESH |8+        |            1|      9| 758|
|0-24 months |PROVIDE       |BANGLADESH |3 or less |            0|    131| 700|
|0-24 months |PROVIDE       |BANGLADESH |3 or less |            1|      9| 700|
|0-24 months |PROVIDE       |BANGLADESH |4-5       |            0|    308| 700|
|0-24 months |PROVIDE       |BANGLADESH |4-5       |            1|     14| 700|
|0-24 months |PROVIDE       |BANGLADESH |6-7       |            0|    140| 700|
|0-24 months |PROVIDE       |BANGLADESH |6-7       |            1|     11| 700|
|0-24 months |PROVIDE       |BANGLADESH |8+        |            0|     79| 700|
|0-24 months |PROVIDE       |BANGLADESH |8+        |            1|      8| 700|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less |            0|     33| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less |            1|      5| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |4-5       |            0|    151| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |4-5       |            1|     32| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |6-7       |            0|    104| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |6-7       |            1|     23| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |8+        |            0|     59| 418|
|0-24 months |SAS-FoodSuppl |INDIA      |8+        |            1|     11| 418|


The following strata were considered:

* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/770395ed-edc2-40dd-9648-6e01df6f6794/a11bf9df-2e33-4b8c-b234-dfde5e6707ae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/770395ed-edc2-40dd-9648-6e01df6f6794/a11bf9df-2e33-4b8c-b234-dfde5e6707ae/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/770395ed-edc2-40dd-9648-6e01df6f6794/a11bf9df-2e33-4b8c-b234-dfde5e6707ae/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/770395ed-edc2-40dd-9648-6e01df6f6794/a11bf9df-2e33-4b8c-b234-dfde5e6707ae/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid       |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |IRC           |INDIA      |3 or less          |NA             | 0.3717640| 0.2460752| 0.4974528|
|0-24 months |IRC           |INDIA      |4-5                |NA             | 0.3124780| 0.2378611| 0.3870949|
|0-24 months |IRC           |INDIA      |6-7                |NA             | 0.3590908| 0.2617336| 0.4564480|
|0-24 months |IRC           |INDIA      |8+                 |NA             | 0.3310244| 0.2325246| 0.4295241|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less          |NA             | 0.1747421| 0.1053663| 0.2441179|
|0-24 months |NIH-Birth     |BANGLADESH |4-5                |NA             | 0.1639526| 0.1190816| 0.2088237|
|0-24 months |NIH-Birth     |BANGLADESH |6-7                |NA             | 0.1553882| 0.0958053| 0.2149710|
|0-24 months |NIH-Birth     |BANGLADESH |8+                 |NA             | 0.1389019| 0.0714294| 0.2063744|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less          |NA             | 0.0964912| 0.0422546| 0.1507278|
|0-24 months |NIH-Crypto    |BANGLADESH |4-5                |NA             | 0.0935673| 0.0626820| 0.1244525|
|0-24 months |NIH-Crypto    |BANGLADESH |6-7                |NA             | 0.0786517| 0.0390794| 0.1182239|
|0-24 months |NIH-Crypto    |BANGLADESH |8+                 |NA             | 0.0725806| 0.0268853| 0.1182760|
|0-24 months |PROVIDE       |BANGLADESH |3 or less          |NA             | 0.0642857| 0.0236298| 0.1049416|
|0-24 months |PROVIDE       |BANGLADESH |4-5                |NA             | 0.0434783| 0.0211881| 0.0657685|
|0-24 months |PROVIDE       |BANGLADESH |6-7                |NA             | 0.0728477| 0.0313663| 0.1143291|
|0-24 months |PROVIDE       |BANGLADESH |8+                 |NA             | 0.0919540| 0.0311912| 0.1527169|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less          |NA             | 0.1315789| 0.0239734| 0.2391845|
|0-24 months |SAS-FoodSuppl |INDIA      |4-5                |NA             | 0.1748634| 0.1197630| 0.2299638|
|0-24 months |SAS-FoodSuppl |INDIA      |6-7                |NA             | 0.1811024| 0.1140455| 0.2481592|
|0-24 months |SAS-FoodSuppl |INDIA      |8+                 |NA             | 0.1571429| 0.0717850| 0.2425007|


### Parameter: E(Y)


|agecat      |studyid       |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |IRC           |INDIA      |NA                 |NA             | 0.3414634| 0.2955068| 0.3874201|
|0-24 months |NIH-Birth     |BANGLADESH |NA                 |NA             | 0.1586538| 0.1299648| 0.1873429|
|0-24 months |NIH-Crypto    |BANGLADESH |NA                 |NA             | 0.0870712| 0.0669870| 0.1071555|
|0-24 months |PROVIDE       |BANGLADESH |NA                 |NA             | 0.0600000| 0.0423945| 0.0776055|
|0-24 months |SAS-FoodSuppl |INDIA      |NA                 |NA             | 0.1698565| 0.1338154| 0.2058975|


### Parameter: RR


|agecat      |studyid       |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |IRC           |INDIA      |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |IRC           |INDIA      |4-5                |3 or less      | 0.8405278| 0.5557624| 1.271203|
|0-24 months |IRC           |INDIA      |6-7                |3 or less      | 0.9659106| 0.6260048| 1.490377|
|0-24 months |IRC           |INDIA      |8+                 |3 or less      | 0.8904153| 0.5675362| 1.396985|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth     |BANGLADESH |4-5                |3 or less      | 0.9382550| 0.5791187| 1.520107|
|0-24 months |NIH-Birth     |BANGLADESH |6-7                |3 or less      | 0.8892429| 0.5123156| 1.543488|
|0-24 months |NIH-Birth     |BANGLADESH |8+                 |3 or less      | 0.7948965| 0.4245119| 1.488440|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto    |BANGLADESH |4-5                |3 or less      | 0.9696970| 0.5052937| 1.860922|
|0-24 months |NIH-Crypto    |BANGLADESH |6-7                |3 or less      | 0.8151175| 0.3833523| 1.733175|
|0-24 months |NIH-Crypto    |BANGLADESH |8+                 |3 or less      | 0.7521994| 0.3234400| 1.749332|
|0-24 months |PROVIDE       |BANGLADESH |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE       |BANGLADESH |4-5                |3 or less      | 0.6763285| 0.2996322| 1.526606|
|0-24 months |PROVIDE       |BANGLADESH |6-7                |3 or less      | 1.1331862| 0.4838547| 2.653919|
|0-24 months |PROVIDE       |BANGLADESH |8+                 |3 or less      | 1.4303959| 0.5730891| 3.570182|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less          |3 or less      | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl |INDIA      |4-5                |3 or less      | 1.3289617| 0.5532138| 3.192508|
|0-24 months |SAS-FoodSuppl |INDIA      |6-7                |3 or less      | 1.3763780| 0.5608709| 3.377633|
|0-24 months |SAS-FoodSuppl |INDIA      |8+                 |3 or less      | 1.1942857| 0.4474406| 3.187727|


### Parameter: PAR


|agecat      |studyid       |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |IRC           |INDIA      |3 or less          |NA             | -0.0303006| -0.1468902| 0.0862890|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less          |NA             | -0.0160883| -0.0783230| 0.0461465|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less          |NA             | -0.0094200| -0.0590201| 0.0401802|
|0-24 months |PROVIDE       |BANGLADESH |3 or less          |NA             | -0.0042857| -0.0403647| 0.0317933|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less          |NA             |  0.0382775| -0.0655139| 0.1420689|


### Parameter: PAF


|agecat      |studyid       |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |IRC           |INDIA      |3 or less          |NA             | -0.0887375| -0.4899280| 0.2044252|
|0-24 months |NIH-Birth     |BANGLADESH |3 or less          |NA             | -0.1014047| -0.5723687| 0.2284937|
|0-24 months |NIH-Crypto    |BANGLADESH |3 or less          |NA             | -0.1081871| -0.8522003| 0.3369623|
|0-24 months |PROVIDE       |BANGLADESH |3 or less          |NA             | -0.0714286| -0.8774746| 0.3885621|
|0-24 months |SAS-FoodSuppl |INDIA      |3 or less          |NA             |  0.2253521| -0.7020215| 0.6474314|
