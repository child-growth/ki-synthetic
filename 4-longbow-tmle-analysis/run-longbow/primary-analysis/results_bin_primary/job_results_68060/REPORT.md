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

|agecat                      |studyid        |country                      |hdlvry | ever_wasted| n_cell|    n|
|:---------------------------|:--------------|:----------------------------|:------|-----------:|------:|----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0      |           0|    196|  365|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0      |           1|    161|  365|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1      |           0|      5|  365|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1      |           1|      3|  365|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |0      |           0|   2513| 4904|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |0      |           1|    517| 4904|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |1      |           0|   1423| 4904|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |1      |           1|    451| 4904|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0      |           0|    117|  375|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0      |           1|    135|  375|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1      |           0|     56|  375|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1      |           1|     67|  375|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0      |           0|     83|  613|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0      |           1|     65|  613|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1      |           0|    221|  613|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1      |           1|    244|  613|
|0-24 months (no birth wast) |IRC            |INDIA                        |0      |           0|    190|  409|
|0-24 months (no birth wast) |IRC            |INDIA                        |0      |           1|    211|  409|
|0-24 months (no birth wast) |IRC            |INDIA                        |1      |           0|      6|  409|
|0-24 months (no birth wast) |IRC            |INDIA                        |1      |           1|      2|  409|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0      |           0|     34|  346|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0      |           1|      7|  346|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1      |           0|    236|  346|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1      |           1|     69|  346|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0      |           0|    888| 4480|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0      |           1|    279| 4480|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1      |           0|   2398| 4480|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1      |           1|    915| 4480|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0      |           0|    513|  754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0      |           1|     74|  754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1      |           0|    133|  754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1      |           1|     34|  754|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0      |           0|    427|  687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0      |           1|     86|  687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1      |           0|    138|  687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1      |           1|     36|  687|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0      |           0|    120| 1224|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0      |           1|     44| 1224|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1      |           0|    646| 1224|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1      |           1|    414| 1224|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0      |           0|     52|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0      |           1|     25|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1      |           0|    202|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1      |           1|    118|  397|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |           0|   1776| 2262|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |           1|    446| 2262|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |           0|     33| 2262|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |           1|      7| 2262|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0      |           0|    234|  347|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0      |           1|    106|  347|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |1      |           0|      5|  347|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |1      |           1|      2|  347|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |0      |           0|   2574| 4526|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |0      |           1|    229| 4526|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |1      |           0|   1569| 4526|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |1      |           1|    154| 4526|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |0      |           0|    196|  373|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |0      |           1|     54|  373|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |1      |           0|     97|  373|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |1      |           1|     26|  373|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |0      |           0|    122|  596|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |0      |           1|     19|  596|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |1      |           0|    360|  596|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |1      |           1|     95|  596|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0      |           0|    251|  390|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0      |           1|    131|  390|
|0-6 months (no birth wast)  |IRC            |INDIA                        |1      |           0|      6|  390|
|0-6 months (no birth wast)  |IRC            |INDIA                        |1      |           1|      2|  390|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0      |           0|     34|  342|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0      |           1|      6|  342|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |1      |           0|    274|  342|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |1      |           1|     28|  342|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0      |           0|   1099| 4363|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0      |           1|     31| 4363|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |1      |           0|   3139| 4363|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |1      |           1|     94| 4363|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |0      |           0|    571|  749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |0      |           1|     13|  749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |1      |           0|    158|  749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |1      |           1|      7|  749|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0      |           0|    481|  683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0      |           1|     28|  683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |1      |           0|    165|  683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |1      |           1|      9|  683|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |0      |           0|    150| 1202|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |0      |           1|     13| 1202|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |1      |           0|    897| 1202|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |1      |           1|    142| 1202|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA                        |0      |           0|     68|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA                        |0      |           1|      0|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA                        |1      |           0|    273|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA                        |1      |           1|      0|  341|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |           0|   2023| 2254|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |           1|    191| 2254|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |           0|     36| 2254|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |           1|      4| 2254|


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
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/70c32873-ce3c-4dfb-8b58-dda205cc9c5a/45e2b659-2800-4226-9832-1adc25914513/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/70c32873-ce3c-4dfb-8b58-dda205cc9c5a/45e2b659-2800-4226-9832-1adc25914513/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/70c32873-ce3c-4dfb-8b58-dda205cc9c5a/45e2b659-2800-4226-9832-1adc25914513/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/70c32873-ce3c-4dfb-8b58-dda205cc9c5a/45e2b659-2800-4226-9832-1adc25914513/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |0                  |NA             | 0.1912843| 0.1751624| 0.2074063|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |1                  |NA             | 0.2082502| 0.1882124| 0.2282879|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0                  |NA             | 0.5342998| 0.4723181| 0.5962816|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1                  |NA             | 0.5457662| 0.4580296| 0.6335027|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0                  |NA             | 0.4631069| 0.3794923| 0.5467215|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1                  |NA             | 0.5224354| 0.4768054| 0.5680654|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0                  |NA             | 0.1707317| 0.0749030| 0.2665604|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.2262295| 0.1750012| 0.2774578|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0                  |NA             | 0.2521353| 0.2196331| 0.2846375|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1                  |NA             | 0.2715409| 0.2545066| 0.2885751|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0                  |NA             | 0.1268628| 0.0998849| 0.1538407|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.1985615| 0.1374062| 0.2597169|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0                  |NA             | 0.1680708| 0.1357297| 0.2004119|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.2125328| 0.1525859| 0.2724797|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0                  |NA             | 0.2337761| 0.1914423| 0.2761099|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1                  |NA             | 0.3901391| 0.3388881| 0.4413901|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0                  |NA             | 0.3456058| 0.2302159| 0.4609956|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1                  |NA             | 0.3669269| 0.3133322| 0.4205215|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.2007201| 0.1839373| 0.2175028|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.1750000| 0.0916918| 0.2583082|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |0                  |NA             | 0.0872750| 0.0751099| 0.0994401|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |1                  |NA             | 0.0894812| 0.0742543| 0.1047082|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |0                  |NA             | 0.2161277| 0.1648012| 0.2674543|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |1                  |NA             | 0.2201175| 0.1462891| 0.2939459|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |0                  |NA             | 0.1379629| 0.0767750| 0.1991509|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |1                  |NA             | 0.2074309| 0.1699308| 0.2449309|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0                  |NA             | 0.1500000| 0.0603230| 0.2396770|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.0927152| 0.0586870| 0.1267434|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0                  |NA             | 0.0287507| 0.0157085| 0.0417929|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |1                  |NA             | 0.0288243| 0.0229261| 0.0347225|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |0                  |NA             | 0.0222603| 0.0102871| 0.0342334|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.0424242| 0.0116498| 0.0731987|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0                  |NA             | 0.0550098| 0.0351881| 0.0748315|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.0517241| 0.0187931| 0.0846552|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |0                  |NA             | 0.0706315| 0.0446041| 0.0966589|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |1                  |NA             | 0.1348622| 0.1024239| 0.1673005|


### Parameter: E(Y)


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |NA                 |NA             | 0.1973899| 0.1862487| 0.2085311|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |NA                 |NA             | 0.5386667| 0.4881448| 0.5891886|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.5040783| 0.4644662| 0.5436904|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.2196532| 0.1732957| 0.2660107|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.2665179| 0.2514258| 0.2816100|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1432361| 0.1182149| 0.1682572|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1775837| 0.1489858| 0.2061816|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.3741830| 0.3195305| 0.4288355|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.3602015| 0.3129196| 0.4074834|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2002653| 0.1837694| 0.2167611|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |NA                 |NA             | 0.0846222| 0.0765129| 0.0927314|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |NA                 |NA             | 0.2144772| 0.1727666| 0.2561878|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.1912752| 0.1596728| 0.2228775|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0994152| 0.0685873| 0.1302431|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.0286500| 0.0232922| 0.0340079|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.0267023| 0.0151493| 0.0382553|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.0541728| 0.0371844| 0.0711612|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.1289517| 0.0982960| 0.1596075|


### Parameter: RR


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |1                  |0              | 1.0886943| 0.9585364| 1.236526|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1                  |0              | 1.0214604| 0.8379937| 1.245095|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1                  |0              | 1.1281097| 0.9229732| 1.378839|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1                  |0              | 1.3250585| 0.7169637| 2.448911|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1                  |0              | 1.0769650| 0.9333674| 1.242655|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1                  |0              | 1.5651674| 1.0764283| 2.275813|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1                  |0              | 1.2645438| 0.8990985| 1.778527|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1                  |0              | 1.6688580| 1.3878128| 2.006817|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1                  |0              | 1.0616921| 0.7369422| 1.529550|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |0              | 0.8718610| 0.5376976| 1.413697|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |1                  |0              | 1.0252791| 0.8227715| 1.277630|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |1                  |0              | 1.0184602| 0.6746637| 1.537449|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |1                  |0              | 1.5035263| 0.9310190| 2.428083|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |1                  |0              | 0.6181015| 0.2989442| 1.277996|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |1                  |0              | 1.0025599| 0.6045911| 1.662490|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |1                  |0              | 1.9058275| 0.7724891| 4.701916|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |1                  |0              | 0.9402709| 0.4524178| 1.954188|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |1                  |0              | 1.9093779| 1.3249110| 2.751675|


### Parameter: PAR


|agecat                      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |0                  |NA             |  0.0061056| -0.0057012| 0.0179123|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0                  |NA             |  0.0043668| -0.0311749| 0.0399086|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0                  |NA             |  0.0409714| -0.0326519| 0.1145946|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0                  |NA             |  0.0489215| -0.0484409| 0.1462839|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0                  |NA             |  0.0143826| -0.0135373| 0.0423025|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0                  |NA             |  0.0163733|  0.0013447| 0.0314019|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0                  |NA             |  0.0095129| -0.0077360| 0.0267619|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0                  |NA             |  0.1404069|  0.0895219| 0.1912919|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0                  |NA             |  0.0145957| -0.0912267| 0.1204182|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | -0.0004548| -0.0025840| 0.0016743|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |0                  |NA             | -0.0026528| -0.0114223| 0.0061167|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |0                  |NA             | -0.0016505| -0.0312649| 0.0279639|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |0                  |NA             |  0.0533122| -0.0031215| 0.1097460|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0                  |NA             | -0.0505848| -0.1374669| 0.0362973|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0                  |NA             | -0.0001007| -0.0110970| 0.0108956|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |0                  |NA             |  0.0044420| -0.0028570| 0.0117410|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0                  |NA             | -0.0008371| -0.0106296| 0.0089555|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |0                  |NA             |  0.0583203|  0.0263022| 0.0903383|


### Parameter: PAF


|agecat                      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |0                  |NA             |  0.0309315| -0.0307691| 0.0889387|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0                  |NA             |  0.0081067| -0.0601288| 0.0719503|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0                  |NA             |  0.0812798| -0.0771917| 0.2164376|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0                  |NA             |  0.2227214| -0.3565950| 0.5546483|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0                  |NA             |  0.0539648| -0.0570619| 0.1533301|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0                  |NA             |  0.1143096|  0.0045001| 0.2120065|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0                  |NA             |  0.0535687| -0.0484734| 0.1456797|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0                  |NA             |  0.3752360|  0.2590454| 0.4732065|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0                  |NA             |  0.0405211| -0.3031878| 0.2935785|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | -0.0022711| -0.0129474| 0.0082927|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |0                  |NA             | -0.0313489| -0.1402895| 0.0671838|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |0                  |NA             | -0.0076955| -0.1556768| 0.1213372|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |0                  |NA             |  0.2787202| -0.0826671| 0.5194787|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0                  |NA             | -0.5088235| -1.7418198| 0.1696944|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0                  |NA             | -0.0035146| -0.4708886| 0.3153516|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |0                  |NA             |  0.1663527| -0.1444437| 0.3927462|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0                  |NA             | -0.0154516| -0.2132370| 0.1500903|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |0                  |NA             |  0.4522642|  0.2174265| 0.6166309|
