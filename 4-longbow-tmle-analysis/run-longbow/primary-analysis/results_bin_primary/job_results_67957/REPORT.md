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

**Intervention Variable:** earlybf

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
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
* delta_vagbrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid      |country                      |earlybf | ever_stunted| n_cell|     n|
|:--------------------------|:------------|:----------------------------|:-------|------------:|------:|-----:|
|0-24 months (no birth st.) |EE           |PAKISTAN                     |1       |            0|     12|   206|
|0-24 months (no birth st.) |EE           |PAKISTAN                     |1       |            1|     31|   206|
|0-24 months (no birth st.) |EE           |PAKISTAN                     |0       |            0|     26|   206|
|0-24 months (no birth st.) |EE           |PAKISTAN                     |0       |            1|    137|   206|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL                        |1       |            0|     77|   527|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL                        |1       |            1|     77|   527|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL                        |0       |            0|    155|   527|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL                        |0       |            1|    218|   527|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH                   |1       |            0|     79| 18308|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH                   |1       |            1|     17| 18308|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH                   |0       |            0|  13594| 18308|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH                   |0       |            1|   4618| 18308|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH                   |1       |            0|   1421|  3886|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH                   |1       |            1|   1056|  3886|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH                   |0       |            0|    858|  3886|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH                   |0       |            1|    551|  3886|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH                   |1       |            0|     65|   216|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH                   |1       |            1|     73|   216|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH                   |0       |            0|     38|   216|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH                   |0       |            1|     40|   216|
|0-24 months (no birth st.) |MAL-ED       |BRAZIL                       |1       |            0|     78|   202|
|0-24 months (no birth st.) |MAL-ED       |BRAZIL                       |1       |            1|     17|   202|
|0-24 months (no birth st.) |MAL-ED       |BRAZIL                       |0       |            0|     92|   202|
|0-24 months (no birth st.) |MAL-ED       |BRAZIL                       |0       |            1|     15|   202|
|0-24 months (no birth st.) |MAL-ED       |INDIA                        |1       |            0|     61|   209|
|0-24 months (no birth st.) |MAL-ED       |INDIA                        |1       |            1|     66|   209|
|0-24 months (no birth st.) |MAL-ED       |INDIA                        |0       |            0|     37|   209|
|0-24 months (no birth st.) |MAL-ED       |INDIA                        |0       |            1|     45|   209|
|0-24 months (no birth st.) |MAL-ED       |NEPAL                        |1       |            0|     65|   211|
|0-24 months (no birth st.) |MAL-ED       |NEPAL                        |1       |            1|     25|   211|
|0-24 months (no birth st.) |MAL-ED       |NEPAL                        |0       |            0|     91|   211|
|0-24 months (no birth st.) |MAL-ED       |NEPAL                        |0       |            1|     30|   211|
|0-24 months (no birth st.) |MAL-ED       |PERU                         |1       |            0|     85|   266|
|0-24 months (no birth st.) |MAL-ED       |PERU                         |1       |            1|    117|   266|
|0-24 months (no birth st.) |MAL-ED       |PERU                         |0       |            0|     30|   266|
|0-24 months (no birth st.) |MAL-ED       |PERU                         |0       |            1|     34|   266|
|0-24 months (no birth st.) |MAL-ED       |SOUTH AFRICA                 |1       |            0|     78|   260|
|0-24 months (no birth st.) |MAL-ED       |SOUTH AFRICA                 |1       |            1|     87|   260|
|0-24 months (no birth st.) |MAL-ED       |SOUTH AFRICA                 |0       |            0|     49|   260|
|0-24 months (no birth st.) |MAL-ED       |SOUTH AFRICA                 |0       |            1|     46|   260|
|0-24 months (no birth st.) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1       |            0|     32|   219|
|0-24 months (no birth st.) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1       |            1|    152|   219|
|0-24 months (no birth st.) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |0       |            0|      8|   219|
|0-24 months (no birth st.) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |0       |            1|     27|   219|
|0-24 months (no birth st.) |NIH-Crypto   |BANGLADESH                   |1       |            0|    334|   653|
|0-24 months (no birth st.) |NIH-Crypto   |BANGLADESH                   |1       |            1|    235|   653|
|0-24 months (no birth st.) |NIH-Crypto   |BANGLADESH                   |0       |            0|     62|   653|
|0-24 months (no birth st.) |NIH-Crypto   |BANGLADESH                   |0       |            1|     22|   653|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA                        |1       |            0|     29|  1063|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA                        |1       |            1|     58|  1063|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA                        |0       |            0|    417|  1063|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA                        |0       |            1|    559|  1063|
|0-24 months (no birth st.) |ZVITAMBO     |ZIMBABWE                     |1       |            0|   3956| 11219|
|0-24 months (no birth st.) |ZVITAMBO     |ZIMBABWE                     |1       |            1|   2020| 11219|
|0-24 months (no birth st.) |ZVITAMBO     |ZIMBABWE                     |0       |            0|   3375| 11219|
|0-24 months (no birth st.) |ZVITAMBO     |ZIMBABWE                     |0       |            1|   1868| 11219|
|0-6 months (no birth st.)  |EE           |PAKISTAN                     |1       |            0|     24|   206|
|0-6 months (no birth st.)  |EE           |PAKISTAN                     |1       |            1|     19|   206|
|0-6 months (no birth st.)  |EE           |PAKISTAN                     |0       |            0|     66|   206|
|0-6 months (no birth st.)  |EE           |PAKISTAN                     |0       |            1|     97|   206|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL                        |1       |            0|    127|   527|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL                        |1       |            1|     27|   527|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL                        |0       |            0|    311|   527|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL                        |0       |            1|     62|   527|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH                   |1       |            0|     80| 18265|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH                   |1       |            1|     15| 18265|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH                   |0       |            0|  15797| 18265|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH                   |0       |            1|   2373| 18265|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH                   |1       |            0|   2239|  3659|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH                   |1       |            1|    209|  3659|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH                   |0       |            0|   1107|  3659|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH                   |0       |            1|    104|  3659|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH                   |1       |            0|    107|   216|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH                   |1       |            1|     31|   216|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH                   |0       |            0|     62|   216|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH                   |0       |            1|     16|   216|
|0-6 months (no birth st.)  |MAL-ED       |BRAZIL                       |1       |            0|     83|   202|
|0-6 months (no birth st.)  |MAL-ED       |BRAZIL                       |1       |            1|     12|   202|
|0-6 months (no birth st.)  |MAL-ED       |BRAZIL                       |0       |            0|     98|   202|
|0-6 months (no birth st.)  |MAL-ED       |BRAZIL                       |0       |            1|      9|   202|
|0-6 months (no birth st.)  |MAL-ED       |INDIA                        |1       |            0|    103|   209|
|0-6 months (no birth st.)  |MAL-ED       |INDIA                        |1       |            1|     24|   209|
|0-6 months (no birth st.)  |MAL-ED       |INDIA                        |0       |            0|     60|   209|
|0-6 months (no birth st.)  |MAL-ED       |INDIA                        |0       |            1|     22|   209|
|0-6 months (no birth st.)  |MAL-ED       |NEPAL                        |1       |            0|     84|   211|
|0-6 months (no birth st.)  |MAL-ED       |NEPAL                        |1       |            1|      6|   211|
|0-6 months (no birth st.)  |MAL-ED       |NEPAL                        |0       |            0|    113|   211|
|0-6 months (no birth st.)  |MAL-ED       |NEPAL                        |0       |            1|      8|   211|
|0-6 months (no birth st.)  |MAL-ED       |PERU                         |1       |            0|    132|   266|
|0-6 months (no birth st.)  |MAL-ED       |PERU                         |1       |            1|     70|   266|
|0-6 months (no birth st.)  |MAL-ED       |PERU                         |0       |            0|     42|   266|
|0-6 months (no birth st.)  |MAL-ED       |PERU                         |0       |            1|     22|   266|
|0-6 months (no birth st.)  |MAL-ED       |SOUTH AFRICA                 |1       |            0|    115|   260|
|0-6 months (no birth st.)  |MAL-ED       |SOUTH AFRICA                 |1       |            1|     50|   260|
|0-6 months (no birth st.)  |MAL-ED       |SOUTH AFRICA                 |0       |            0|     71|   260|
|0-6 months (no birth st.)  |MAL-ED       |SOUTH AFRICA                 |0       |            1|     24|   260|
|0-6 months (no birth st.)  |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1       |            0|    130|   219|
|0-6 months (no birth st.)  |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1       |            1|     54|   219|
|0-6 months (no birth st.)  |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |0       |            0|     23|   219|
|0-6 months (no birth st.)  |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |0       |            1|     12|   219|
|0-6 months (no birth st.)  |NIH-Crypto   |BANGLADESH                   |1       |            0|    462|   653|
|0-6 months (no birth st.)  |NIH-Crypto   |BANGLADESH                   |1       |            1|    107|   653|
|0-6 months (no birth st.)  |NIH-Crypto   |BANGLADESH                   |0       |            0|     67|   653|
|0-6 months (no birth st.)  |NIH-Crypto   |BANGLADESH                   |0       |            1|     17|   653|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA                        |1       |            0|     74|  1062|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA                        |1       |            1|     13|  1062|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA                        |0       |            0|    778|  1062|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA                        |0       |            1|    197|  1062|
|0-6 months (no birth st.)  |ZVITAMBO     |ZIMBABWE                     |1       |            0|   5032| 11210|
|0-6 months (no birth st.)  |ZVITAMBO     |ZIMBABWE                     |1       |            1|    941| 11210|
|0-6 months (no birth st.)  |ZVITAMBO     |ZIMBABWE                     |0       |            0|   4260| 11210|
|0-6 months (no birth st.)  |ZVITAMBO     |ZIMBABWE                     |0       |            1|    977| 11210|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE



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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/ed231f28-806f-4b3c-ab40-e2c61288aebe/119eeb33-3316-4204-a562-0400249efeae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ed231f28-806f-4b3c-ab40-e2c61288aebe/119eeb33-3316-4204-a562-0400249efeae/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ed231f28-806f-4b3c-ab40-e2c61288aebe/119eeb33-3316-4204-a562-0400249efeae/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ed231f28-806f-4b3c-ab40-e2c61288aebe/119eeb33-3316-4204-a562-0400249efeae/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                     |studyid      |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |EE           |PAKISTAN                     |1                  |NA             | 0.7615113| 0.6227191| 0.9003036|
|0-24 months (no birth st.) |EE           |PAKISTAN                     |0                  |NA             | 0.8407842| 0.7840972| 0.8974712|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL                        |1                  |NA             | 0.5175078| 0.4361948| 0.5988208|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL                        |0                  |NA             | 0.5761345| 0.5266827| 0.6255863|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH                   |1                  |NA             | 0.1772646| 0.1615890| 0.1929402|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH                   |0                  |NA             | 0.2535715| 0.2456305| 0.2615125|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH                   |1                  |NA             | 0.4190388| 0.3957521| 0.4423254|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH                   |0                  |NA             | 0.4037100| 0.3759943| 0.4314257|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH                   |1                  |NA             | 0.5466864| 0.4652854| 0.6280875|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH                   |0                  |NA             | 0.4789283| 0.3725116| 0.5853450|
|0-24 months (no birth st.) |MAL-ED       |BRAZIL                       |1                  |NA             | 0.1753149| 0.0974362| 0.2531936|
|0-24 months (no birth st.) |MAL-ED       |BRAZIL                       |0                  |NA             | 0.1396817| 0.0730481| 0.2063154|
|0-24 months (no birth st.) |MAL-ED       |INDIA                        |1                  |NA             | 0.5324128| 0.4462433| 0.6185822|
|0-24 months (no birth st.) |MAL-ED       |INDIA                        |0                  |NA             | 0.5285760| 0.4206180| 0.6365339|
|0-24 months (no birth st.) |MAL-ED       |NEPAL                        |1                  |NA             | 0.2789126| 0.1860897| 0.3717354|
|0-24 months (no birth st.) |MAL-ED       |NEPAL                        |0                  |NA             | 0.2453162| 0.1673303| 0.3233020|
|0-24 months (no birth st.) |MAL-ED       |PERU                         |1                  |NA             | 0.5798898| 0.5116446| 0.6481349|
|0-24 months (no birth st.) |MAL-ED       |PERU                         |0                  |NA             | 0.5280364| 0.4052489| 0.6508239|
|0-24 months (no birth st.) |MAL-ED       |SOUTH AFRICA                 |1                  |NA             | 0.5246614| 0.4491014| 0.6002214|
|0-24 months (no birth st.) |MAL-ED       |SOUTH AFRICA                 |0                  |NA             | 0.4970124| 0.4020075| 0.5920173|
|0-24 months (no birth st.) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.8260870| 0.7711946| 0.8809793|
|0-24 months (no birth st.) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.7714286| 0.6319952| 0.9108619|
|0-24 months (no birth st.) |NIH-Crypto   |BANGLADESH                   |1                  |NA             | 0.4147866| 0.3744570| 0.4551161|
|0-24 months (no birth st.) |NIH-Crypto   |BANGLADESH                   |0                  |NA             | 0.2585523| 0.1653183| 0.3517863|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA                        |1                  |NA             | 0.6696556| 0.5294582| 0.8098531|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA                        |0                  |NA             | 0.5721341| 0.5160117| 0.6282564|
|0-24 months (no birth st.) |ZVITAMBO     |ZIMBABWE                     |1                  |NA             | 0.3417912| 0.3300632| 0.3535193|
|0-24 months (no birth st.) |ZVITAMBO     |ZIMBABWE                     |0                  |NA             | 0.3499593| 0.3373674| 0.3625511|
|0-6 months (no birth st.)  |EE           |PAKISTAN                     |1                  |NA             | 0.4664487| 0.3261618| 0.6067357|
|0-6 months (no birth st.)  |EE           |PAKISTAN                     |0                  |NA             | 0.5854724| 0.5105917| 0.6603530|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL                        |1                  |NA             | 0.1848294| 0.1244765| 0.2451824|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL                        |0                  |NA             | 0.1640405| 0.1264620| 0.2016190|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH                   |1                  |NA             | 0.1564617| 0.1413728| 0.1715506|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH                   |0                  |NA             | 0.1306010| 0.1248792| 0.1363227|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH                   |1                  |NA             | 0.0847017| 0.0717772| 0.0976263|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH                   |0                  |NA             | 0.0888405| 0.0666881| 0.1109929|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH                   |1                  |NA             | 0.2216502| 0.1527262| 0.2905742|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH                   |0                  |NA             | 0.2009826| 0.1113882| 0.2905770|
|0-6 months (no birth st.)  |MAL-ED       |BRAZIL                       |1                  |NA             | 0.1263158| 0.0593474| 0.1932842|
|0-6 months (no birth st.)  |MAL-ED       |BRAZIL                       |0                  |NA             | 0.0841121| 0.0313911| 0.1368332|
|0-6 months (no birth st.)  |MAL-ED       |INDIA                        |1                  |NA             | 0.1969091| 0.1275792| 0.2662390|
|0-6 months (no birth st.)  |MAL-ED       |INDIA                        |0                  |NA             | 0.2531407| 0.1565600| 0.3497214|
|0-6 months (no birth st.)  |MAL-ED       |NEPAL                        |1                  |NA             | 0.0666667| 0.0150094| 0.1183239|
|0-6 months (no birth st.)  |MAL-ED       |NEPAL                        |0                  |NA             | 0.0661157| 0.0217359| 0.1104956|
|0-6 months (no birth st.)  |MAL-ED       |PERU                         |1                  |NA             | 0.3445152| 0.2785932| 0.4104372|
|0-6 months (no birth st.)  |MAL-ED       |PERU                         |0                  |NA             | 0.3304688| 0.2112791| 0.4496585|
|0-6 months (no birth st.)  |MAL-ED       |SOUTH AFRICA                 |1                  |NA             | 0.2956544| 0.2252472| 0.3660616|
|0-6 months (no birth st.)  |MAL-ED       |SOUTH AFRICA                 |0                  |NA             | 0.2587863| 0.1700647| 0.3475079|
|0-6 months (no birth st.)  |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.2932830| 0.2272037| 0.3593624|
|0-6 months (no birth st.)  |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.3278698| 0.1663020| 0.4894376|
|0-6 months (no birth st.)  |NIH-Crypto   |BANGLADESH                   |1                  |NA             | 0.1896985| 0.1574048| 0.2219922|
|0-6 months (no birth st.)  |NIH-Crypto   |BANGLADESH                   |0                  |NA             | 0.1884621| 0.1048102| 0.2721140|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA                        |1                  |NA             | 0.1354565| 0.1047200| 0.1661929|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA                        |0                  |NA             | 0.2023824| 0.1759158| 0.2288491|
|0-6 months (no birth st.)  |ZVITAMBO     |ZIMBABWE                     |1                  |NA             | 0.1614734| 0.1523408| 0.1706060|
|0-6 months (no birth st.)  |ZVITAMBO     |ZIMBABWE                     |0                  |NA             | 0.1790372| 0.1690290| 0.1890453|


### Parameter: E(Y)


|agecat                     |studyid      |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |EE           |PAKISTAN                     |NA                 |NA             | 0.8155340| 0.7624394| 0.8686286|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL                        |NA                 |NA             | 0.5597723| 0.5173495| 0.6021951|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH                   |NA                 |NA             | 0.2531680| 0.2454102| 0.2609258|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH                   |NA                 |NA             | 0.4135358| 0.3953404| 0.4317312|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH                   |NA                 |NA             | 0.5231481| 0.4563856| 0.5899107|
|0-24 months (no birth st.) |MAL-ED       |BRAZIL                       |NA                 |NA             | 0.1584158| 0.1079383| 0.2088934|
|0-24 months (no birth st.) |MAL-ED       |INDIA                        |NA                 |NA             | 0.5311005| 0.4632825| 0.5989184|
|0-24 months (no birth st.) |MAL-ED       |NEPAL                        |NA                 |NA             | 0.2606635| 0.2012891| 0.3200380|
|0-24 months (no birth st.) |MAL-ED       |PERU                         |NA                 |NA             | 0.5676692| 0.5080232| 0.6273151|
|0-24 months (no birth st.) |MAL-ED       |SOUTH AFRICA                 |NA                 |NA             | 0.5115385| 0.4506616| 0.5724154|
|0-24 months (no birth st.) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.8173516| 0.7660617| 0.8686415|
|0-24 months (no birth st.) |NIH-Crypto   |BANGLADESH                   |NA                 |NA             | 0.3935681| 0.3560687| 0.4310676|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA                        |NA                 |NA             | 0.5804327| 0.5278252| 0.6330403|
|0-24 months (no birth st.) |ZVITAMBO     |ZIMBABWE                     |NA                 |NA             | 0.3465550| 0.3377489| 0.3553610|
|0-6 months (no birth st.)  |EE           |PAKISTAN                     |NA                 |NA             | 0.5631068| 0.4952092| 0.6310044|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL                        |NA                 |NA             | 0.1688805| 0.1368637| 0.2008972|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH                   |NA                 |NA             | 0.1307419| 0.1251476| 0.1363361|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH                   |NA                 |NA             | 0.0855425| 0.0741829| 0.0969021|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH                   |NA                 |NA             | 0.2175926| 0.1624398| 0.2727454|
|0-6 months (no birth st.)  |MAL-ED       |BRAZIL                       |NA                 |NA             | 0.1039604| 0.0617667| 0.1461541|
|0-6 months (no birth st.)  |MAL-ED       |INDIA                        |NA                 |NA             | 0.2200957| 0.1637912| 0.2764002|
|0-6 months (no birth st.)  |MAL-ED       |NEPAL                        |NA                 |NA             | 0.0663507| 0.0326877| 0.1000137|
|0-6 months (no birth st.)  |MAL-ED       |PERU                         |NA                 |NA             | 0.3458647| 0.2885967| 0.4031327|
|0-6 months (no birth st.)  |MAL-ED       |SOUTH AFRICA                 |NA                 |NA             | 0.2846154| 0.2296617| 0.3395691|
|0-6 months (no birth st.)  |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.3013699| 0.2404592| 0.3622805|
|0-6 months (no birth st.)  |NIH-Crypto   |BANGLADESH                   |NA                 |NA             | 0.1898928| 0.1597870| 0.2199986|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA                        |NA                 |NA             | 0.1977401| 0.1736271| 0.2218531|
|0-6 months (no birth st.)  |ZVITAMBO     |ZIMBABWE                     |NA                 |NA             | 0.1710972| 0.1641255| 0.1780689|


### Parameter: RR


|agecat                     |studyid      |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |EE           |PAKISTAN                     |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth st.) |EE           |PAKISTAN                     |0                  |1              | 1.1040994| 0.9088097| 1.3413540|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL                        |0                  |1              | 1.1132866| 0.9327434| 1.3287760|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH                   |0                  |1              | 1.4304689| 1.3025504| 1.5709497|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH                   |0                  |1              | 0.9634193| 0.8834205| 1.0506625|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH                   |0                  |1              | 0.8760567| 0.6784947| 1.1311441|
|0-24 months (no birth st.) |MAL-ED       |BRAZIL                       |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth st.) |MAL-ED       |BRAZIL                       |0                  |1              | 0.7967476| 0.4143210| 1.5321617|
|0-24 months (no birth st.) |MAL-ED       |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth st.) |MAL-ED       |INDIA                        |0                  |1              | 0.9927935| 0.7689528| 1.2817939|
|0-24 months (no birth st.) |MAL-ED       |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth st.) |MAL-ED       |NEPAL                        |0                  |1              | 0.8795451| 0.5553659| 1.3929547|
|0-24 months (no birth st.) |MAL-ED       |PERU                         |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth st.) |MAL-ED       |PERU                         |0                  |1              | 0.9105806| 0.7028929| 1.1796351|
|0-24 months (no birth st.) |MAL-ED       |SOUTH AFRICA                 |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth st.) |MAL-ED       |SOUTH AFRICA                 |0                  |1              | 0.9473013| 0.7516707| 1.1938468|
|0-24 months (no birth st.) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth st.) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |0                  |1              | 0.9338346| 0.7702576| 1.1321499|
|0-24 months (no birth st.) |NIH-Crypto   |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth st.) |NIH-Crypto   |BANGLADESH                   |0                  |1              | 0.6233382| 0.4298530| 0.9039149|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA                        |0                  |1              | 0.8543706| 0.6889148| 1.0595636|
|0-24 months (no birth st.) |ZVITAMBO     |ZIMBABWE                     |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth st.) |ZVITAMBO     |ZIMBABWE                     |0                  |1              | 1.0238977| 0.9762245| 1.0738989|
|0-6 months (no birth st.)  |EE           |PAKISTAN                     |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth st.)  |EE           |PAKISTAN                     |0                  |1              | 1.2551698| 0.9117822| 1.7278811|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL                        |0                  |1              | 0.8875238| 0.5969338| 1.3195742|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH                   |0                  |1              | 0.8347155| 0.7510638| 0.9276841|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH                   |0                  |1              | 1.0488629| 0.7842619| 1.4027372|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH                   |0                  |1              | 0.9067556| 0.5309778| 1.5484748|
|0-6 months (no birth st.)  |MAL-ED       |BRAZIL                       |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth st.)  |MAL-ED       |BRAZIL                       |0                  |1              | 0.6658879| 0.2930014| 1.5133259|
|0-6 months (no birth st.)  |MAL-ED       |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth st.)  |MAL-ED       |INDIA                        |0                  |1              | 1.2855712| 0.7653902| 2.1592821|
|0-6 months (no birth st.)  |MAL-ED       |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth st.)  |MAL-ED       |NEPAL                        |0                  |1              | 0.9917355| 0.3557703| 2.7645348|
|0-6 months (no birth st.)  |MAL-ED       |PERU                         |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth st.)  |MAL-ED       |PERU                         |0                  |1              | 0.9592286| 0.6374412| 1.4434578|
|0-6 months (no birth st.)  |MAL-ED       |SOUTH AFRICA                 |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth st.)  |MAL-ED       |SOUTH AFRICA                 |0                  |1              | 0.8753000| 0.5769495| 1.3279326|
|0-6 months (no birth st.)  |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth st.)  |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |0                  |1              | 1.1179296| 0.6502959| 1.9218430|
|0-6 months (no birth st.)  |NIH-Crypto   |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth st.)  |NIH-Crypto   |BANGLADESH                   |0                  |1              | 0.9934822| 0.6181686| 1.5966630|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA                        |0                  |1              | 1.4940774| 1.1402286| 1.9577366|
|0-6 months (no birth st.)  |ZVITAMBO     |ZIMBABWE                     |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth st.)  |ZVITAMBO     |ZIMBABWE                     |0                  |1              | 1.1087719| 1.0278485| 1.1960665|


### Parameter: PAR


|agecat                     |studyid      |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:--------------------------|:------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth st.) |EE           |PAKISTAN                     |1                  |NA             |  0.0540226| -0.0662902|  0.1743354|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL                        |1                  |NA             |  0.0422645| -0.0256300|  0.1101590|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH                   |1                  |NA             |  0.0759034|  0.0588105|  0.0929964|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH                   |1                  |NA             | -0.0055030| -0.0182220|  0.0072161|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH                   |1                  |NA             | -0.0235383| -0.0698459|  0.0227693|
|0-24 months (no birth st.) |MAL-ED       |BRAZIL                       |1                  |NA             | -0.0168991| -0.0714685|  0.0376704|
|0-24 months (no birth st.) |MAL-ED       |INDIA                        |1                  |NA             | -0.0013123| -0.0539934|  0.0513688|
|0-24 months (no birth st.) |MAL-ED       |NEPAL                        |1                  |NA             | -0.0182491| -0.0878404|  0.0513423|
|0-24 months (no birth st.) |MAL-ED       |PERU                         |1                  |NA             | -0.0122206| -0.0453282|  0.0208870|
|0-24 months (no birth st.) |MAL-ED       |SOUTH AFRICA                 |1                  |NA             | -0.0131229| -0.0561285|  0.0298826|
|0-24 months (no birth st.) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0087354| -0.0328310|  0.0153603|
|0-24 months (no birth st.) |NIH-Crypto   |BANGLADESH                   |1                  |NA             | -0.0212184| -0.0347562| -0.0076806|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA                        |1                  |NA             | -0.0892229| -0.2226378|  0.0441920|
|0-24 months (no birth st.) |ZVITAMBO     |ZIMBABWE                     |1                  |NA             |  0.0047637| -0.0030235|  0.0125510|
|0-6 months (no birth st.)  |EE           |PAKISTAN                     |1                  |NA             |  0.0966581| -0.0267093|  0.2200254|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL                        |1                  |NA             | -0.0159490| -0.0661023|  0.0342044|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH                   |1                  |NA             | -0.0257198| -0.0414132| -0.0100264|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH                   |1                  |NA             |  0.0008408| -0.0075674|  0.0092490|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH                   |1                  |NA             | -0.0040577| -0.0438245|  0.0357092|
|0-6 months (no birth st.)  |MAL-ED       |BRAZIL                       |1                  |NA             | -0.0223554| -0.0675962|  0.0228854|
|0-6 months (no birth st.)  |MAL-ED       |INDIA                        |1                  |NA             |  0.0231866| -0.0242085|  0.0705817|
|0-6 months (no birth st.)  |MAL-ED       |NEPAL                        |1                  |NA             | -0.0003160| -0.0393704|  0.0387385|
|0-6 months (no birth st.)  |MAL-ED       |PERU                         |1                  |NA             |  0.0013495| -0.0310780|  0.0337770|
|0-6 months (no birth st.)  |MAL-ED       |SOUTH AFRICA                 |1                  |NA             | -0.0110390| -0.0522444|  0.0301664|
|0-6 months (no birth st.)  |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.0080868| -0.0193312|  0.0355049|
|0-6 months (no birth st.)  |NIH-Crypto   |BANGLADESH                   |1                  |NA             |  0.0001943| -0.0116745|  0.0120631|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA                        |1                  |NA             |  0.0622836|  0.0226435|  0.1019238|
|0-6 months (no birth st.)  |ZVITAMBO     |ZIMBABWE                     |1                  |NA             |  0.0096239|  0.0034460|  0.0158017|


### Parameter: PAF


|agecat                     |studyid      |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:--------------------------|:------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth st.) |EE           |PAKISTAN                     |1                  |NA             |  0.0662420| -0.0944277|  0.2033243|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL                        |1                  |NA             |  0.0755030| -0.0544852|  0.1894673|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH                   |1                  |NA             |  0.2998144|  0.2323880|  0.3613181|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH                   |1                  |NA             | -0.0133071| -0.0444767|  0.0169323|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH                   |1                  |NA             | -0.0449935| -0.1375455|  0.0400284|
|0-24 months (no birth st.) |MAL-ED       |BRAZIL                       |1                  |NA             | -0.1066753| -0.5085229|  0.1881261|
|0-24 months (no birth st.) |MAL-ED       |INDIA                        |1                  |NA             | -0.0024709| -0.1067347|  0.0919704|
|0-24 months (no birth st.) |MAL-ED       |NEPAL                        |1                  |NA             | -0.0700100| -0.3732437|  0.1662649|
|0-24 months (no birth st.) |MAL-ED       |PERU                         |1                  |NA             | -0.0215277| -0.0815909|  0.0352001|
|0-24 months (no birth st.) |MAL-ED       |SOUTH AFRICA                 |1                  |NA             | -0.0256539| -0.1132293|  0.0550322|
|0-24 months (no birth st.) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0106874| -0.0406648|  0.0184265|
|0-24 months (no birth st.) |NIH-Crypto   |BANGLADESH                   |1                  |NA             | -0.0539129| -0.0890804| -0.0198810|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA                        |1                  |NA             | -0.1537179| -0.4096843|  0.0557709|
|0-24 months (no birth st.) |ZVITAMBO     |ZIMBABWE                     |1                  |NA             |  0.0137459| -0.0089836|  0.0359634|
|0-6 months (no birth st.)  |EE           |PAKISTAN                     |1                  |NA             |  0.1716514| -0.0801684|  0.3647644|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL                        |1                  |NA             | -0.0944393| -0.4355739|  0.1656316|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH                   |1                  |NA             | -0.1967221| -0.3259238| -0.0801102|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH                   |1                  |NA             |  0.0098285| -0.0932710|  0.1032053|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH                   |1                  |NA             | -0.0186479| -0.2187360|  0.1485903|
|0-6 months (no birth st.)  |MAL-ED       |BRAZIL                       |1                  |NA             | -0.2150376| -0.7293081|  0.1462965|
|0-6 months (no birth st.)  |MAL-ED       |INDIA                        |1                  |NA             |  0.1053478| -0.1363404|  0.2956313|
|0-6 months (no birth st.)  |MAL-ED       |NEPAL                        |1                  |NA             | -0.0047619| -0.8050043|  0.4406958|
|0-6 months (no birth st.)  |MAL-ED       |PERU                         |1                  |NA             |  0.0039018| -0.0944154|  0.0933867|
|0-6 months (no birth st.)  |MAL-ED       |SOUTH AFRICA                 |1                  |NA             | -0.0387857| -0.1939032|  0.0961782|
|0-6 months (no birth st.)  |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.0268335| -0.0685402|  0.1136946|
|0-6 months (no birth st.)  |NIH-Crypto   |BANGLADESH                   |1                  |NA             |  0.0010232| -0.0634753|  0.0616100|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA                        |1                  |NA             |  0.3149773|  0.1108143|  0.4722631|
|0-6 months (no birth st.)  |ZVITAMBO     |ZIMBABWE                     |1                  |NA             |  0.0562479|  0.0194584|  0.0916571|
