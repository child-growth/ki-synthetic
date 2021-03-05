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

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country                      |hdlvry | ever_swasted| n_cell|    n|
|:---------------------------|:--------------|:----------------------------|:------|------------:|------:|----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0      |            0|    303|  365|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0      |            1|     54|  365|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1      |            0|      7|  365|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1      |            1|      1|  365|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |0      |            0|   2916| 4904|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |0      |            1|    114| 4904|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |1      |            0|   1743| 4904|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |1      |            1|    131| 4904|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0      |            0|    210|  375|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0      |            1|     42|  375|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1      |            0|    100|  375|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1      |            1|     23|  375|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0      |            0|    132|  613|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0      |            1|     16|  613|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1      |            0|    361|  613|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1      |            1|    104|  613|
|0-24 months (no birth wast) |IRC            |INDIA                        |0      |            0|    326|  409|
|0-24 months (no birth wast) |IRC            |INDIA                        |0      |            1|     75|  409|
|0-24 months (no birth wast) |IRC            |INDIA                        |1      |            0|      6|  409|
|0-24 months (no birth wast) |IRC            |INDIA                        |1      |            1|      2|  409|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0      |            0|     39|  346|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0      |            1|      2|  346|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1      |            0|    289|  346|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1      |            1|     16|  346|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0      |            0|   1129| 4480|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0      |            1|     38| 4480|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1      |            0|   3144| 4480|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1      |            1|    169| 4480|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0      |            0|    573|  754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0      |            1|     14|  754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1      |            0|    161|  754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1      |            1|      6|  754|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0      |            0|    500|  687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0      |            1|     13|  687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1      |            0|    168|  687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1      |            1|      6|  687|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0      |            0|    151| 1224|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0      |            1|     13| 1224|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1      |            0|    916| 1224|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1      |            1|    144| 1224|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0      |            0|     72|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0      |            1|      5|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1      |            0|    285|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1      |            1|     35|  397|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |            0|   2110| 2262|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |            1|    112| 2262|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |            0|     36| 2262|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |            1|      4| 2262|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/3834a147-157e-4336-8856-263bfdd38053/06898504-f606-4109-a0df-6321938c1a8c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3834a147-157e-4336-8856-263bfdd38053/06898504-f606-4109-a0df-6321938c1a8c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3834a147-157e-4336-8856-263bfdd38053/06898504-f606-4109-a0df-6321938c1a8c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3834a147-157e-4336-8856-263bfdd38053/06898504-f606-4109-a0df-6321938c1a8c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid       |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:-------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |COHORTS       |INDIA      |0                  |NA             | 0.0456182| 0.0365311| 0.0547053|
|0-24 months (no birth wast) |COHORTS       |INDIA      |1                  |NA             | 0.0589443| 0.0473637| 0.0705248|
|0-24 months (no birth wast) |EE            |PAKISTAN   |0                  |NA             | 0.1671778| 0.1205536| 0.2138021|
|0-24 months (no birth wast) |EE            |PAKISTAN   |1                  |NA             | 0.1910816| 0.1194656| 0.2626976|
|0-24 months (no birth wast) |GMS-Nepal     |NEPAL      |0                  |NA             | 0.1108657| 0.0568205| 0.1649110|
|0-24 months (no birth wast) |GMS-Nepal     |NEPAL      |1                  |NA             | 0.2217593| 0.1836261| 0.2598925|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH |0                  |NA             | 0.0359586| 0.0226605| 0.0492567|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH |1                  |NA             | 0.0496163| 0.0417193| 0.0575132|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH |0                  |NA             | 0.0238501| 0.0114986| 0.0362016|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH |1                  |NA             | 0.0359281| 0.0076826| 0.0641737|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH |0                  |NA             | 0.0253411| 0.0117315| 0.0389507|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH |1                  |NA             | 0.0344828| 0.0073514| 0.0616141|
|0-24 months (no birth wast) |SAS-CompFeed  |INDIA      |0                  |NA             | 0.0908026| 0.0455569| 0.1360483|
|0-24 months (no birth wast) |SAS-CompFeed  |INDIA      |1                  |NA             | 0.1340464| 0.1076190| 0.1604739|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA      |0                  |NA             | 0.0649351| 0.0098275| 0.1200426|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA      |1                  |NA             | 0.1093750| 0.0751355| 0.1436145|


### Parameter: E(Y)


|agecat                      |studyid       |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:-------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |COHORTS       |INDIA      |NA                 |NA             | 0.0499592| 0.0438611| 0.0560573|
|0-24 months (no birth wast) |EE            |PAKISTAN   |NA                 |NA             | 0.1733333| 0.1349698| 0.2116969|
|0-24 months (no birth wast) |GMS-Nepal     |NEPAL      |NA                 |NA             | 0.1957586| 0.1643227| 0.2271945|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH |NA                 |NA             | 0.0462054| 0.0395696| 0.0528411|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH |NA                 |NA             | 0.0265252| 0.0150478| 0.0380026|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH |NA                 |NA             | 0.0276565| 0.0153851| 0.0399279|
|0-24 months (no birth wast) |SAS-CompFeed  |INDIA      |NA                 |NA             | 0.1282680| 0.1041743| 0.1523617|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA      |NA                 |NA             | 0.1007557| 0.0711091| 0.1304022|


### Parameter: RR


|agecat                      |studyid       |country    |intervention_level |baseline_level | estimate|  ci_lower| ci_upper|
|:---------------------------|:-------------|:----------|:------------------|:--------------|--------:|---------:|--------:|
|0-24 months (no birth wast) |COHORTS       |INDIA      |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |COHORTS       |INDIA      |1                  |0              | 1.292121| 0.9771381| 1.708640|
|0-24 months (no birth wast) |EE            |PAKISTAN   |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |EE            |PAKISTAN   |1                  |0              | 1.142984| 0.7156642| 1.825454|
|0-24 months (no birth wast) |GMS-Nepal     |NEPAL      |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |GMS-Nepal     |NEPAL      |1                  |0              | 2.000251| 1.1920926| 3.356286|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH |1                  |0              | 1.379815| 0.9195366| 2.070488|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH |1                  |0              | 1.506416| 0.5876161| 3.861855|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH |1                  |0              | 1.360743| 0.5248752| 3.527735|
|0-24 months (no birth wast) |SAS-CompFeed  |INDIA      |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |SAS-CompFeed  |INDIA      |1                  |0              | 1.476241| 0.8608439| 2.531570|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA      |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA      |1                  |0              | 1.684375| 0.6817053| 4.161797|


### Parameter: PAR


|agecat                      |studyid       |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:---------------------------|:-------------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months (no birth wast) |COHORTS       |INDIA      |0                  |NA             | 0.0043410| -0.0027998| 0.0114818|
|0-24 months (no birth wast) |EE            |PAKISTAN   |0                  |NA             | 0.0061555| -0.0216819| 0.0339930|
|0-24 months (no birth wast) |GMS-Nepal     |NEPAL      |0                  |NA             | 0.0848928|  0.0331043| 0.1366813|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH |0                  |NA             | 0.0102467| -0.0018496| 0.0223430|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH |0                  |NA             | 0.0026751| -0.0041623| 0.0095125|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH |0                  |NA             | 0.0023153| -0.0053782| 0.0100089|
|0-24 months (no birth wast) |SAS-CompFeed  |INDIA      |0                  |NA             | 0.0374654| -0.0102540| 0.0851848|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA      |0                  |NA             | 0.0358206| -0.0165028| 0.0881440|


### Parameter: PAF


|agecat                      |studyid       |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:---------------------------|:-------------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months (no birth wast) |COHORTS       |INDIA      |0                  |NA             | 0.0868910| -0.0674971| 0.2189504|
|0-24 months (no birth wast) |EE            |PAKISTAN   |0                  |NA             | 0.0355126| -0.1391437| 0.1833902|
|0-24 months (no birth wast) |GMS-Nepal     |NEPAL      |0                  |NA             | 0.4336608|  0.1074843| 0.6406337|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH |0                  |NA             | 0.2217647| -0.0884037| 0.4435427|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH |0                  |NA             | 0.1008518| -0.1929625| 0.3223027|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH |0                  |NA             | 0.0837181| -0.2381152| 0.3218946|
|0-24 months (no birth wast) |SAS-CompFeed  |INDIA      |0                  |NA             | 0.2920870| -0.1712013| 0.5721138|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA      |0                  |NA             | 0.3555195| -0.4224191| 0.7079938|
