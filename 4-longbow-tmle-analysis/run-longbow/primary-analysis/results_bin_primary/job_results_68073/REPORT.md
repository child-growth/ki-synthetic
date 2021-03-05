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

**Intervention Variable:** predfeed36

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
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
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
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

|agecat                      |studyid       |country                      |predfeed36 | ever_wasted| n_cell|     n|
|:---------------------------|:-------------|:----------------------------|:----------|-----------:|------:|-----:|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |1          |           0|      3|     9|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |1          |           1|      1|     9|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |0          |           0|      3|     9|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |0          |           1|      2|     9|
|0-24 months (no birth wast) |GMS-Nepal     |NEPAL                        |1          |           0|    180|   524|
|0-24 months (no birth wast) |GMS-Nepal     |NEPAL                        |1          |           1|    240|   524|
|0-24 months (no birth wast) |GMS-Nepal     |NEPAL                        |0          |           0|     47|   524|
|0-24 months (no birth wast) |GMS-Nepal     |NEPAL                        |0          |           1|     57|   524|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |1          |           0|   8064| 12568|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |1          |           1|   1729| 12568|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |0          |           0|   2248| 12568|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |0          |           1|    527| 12568|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |1          |           0|   2645|  4559|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |1          |           1|    889|  4559|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |0          |           0|    723|  4559|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |0          |           1|    302|  4559|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |1          |           0|     42|   271|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |1          |           1|      5|   271|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |0          |           0|    204|   271|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |0          |           1|     20|   271|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |1          |           0|     64|   251|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |1          |           1|     21|   251|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |0          |           0|    130|   251|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |0          |           1|     36|   251|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |1          |           0|     29|   224|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |1          |           1|      0|   224|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |0          |           0|    182|   224|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |0          |           1|     13|   224|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |1          |           0|     13|   234|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |1          |           1|      5|   234|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |0          |           0|    132|   234|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |0          |           1|     84|   234|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |1          |           0|      8|   235|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |1          |           1|      0|   235|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |0          |           0|    181|   235|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |0          |           1|     46|   235|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |1          |           0|     78|   286|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |1          |           1|      3|   286|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |0          |           0|    187|   286|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |0          |           1|     18|   286|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |1          |           0|      6|   276|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |1          |           1|      0|   276|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |0          |           0|    225|   276|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |0          |           1|     45|   276|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1          |           0|      6|   250|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1          |           1|      0|   250|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0          |           0|    211|   250|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0          |           1|     33|   250|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |1          |           0|      0|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |1          |           1|      0|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |0          |           0|    117|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |0          |           1|     56|   173|
|0-6 months (no birth wast)  |EE            |PAKISTAN                     |1          |           0|      3|     9|
|0-6 months (no birth wast)  |EE            |PAKISTAN                     |1          |           1|      1|     9|
|0-6 months (no birth wast)  |EE            |PAKISTAN                     |0          |           0|      4|     9|
|0-6 months (no birth wast)  |EE            |PAKISTAN                     |0          |           1|      1|     9|
|0-6 months (no birth wast)  |GMS-Nepal     |NEPAL                        |1          |           0|    318|   510|
|0-6 months (no birth wast)  |GMS-Nepal     |NEPAL                        |1          |           1|     92|   510|
|0-6 months (no birth wast)  |GMS-Nepal     |NEPAL                        |0          |           0|     75|   510|
|0-6 months (no birth wast)  |GMS-Nepal     |NEPAL                        |0          |           1|     25|   510|
|0-6 months (no birth wast)  |JiVitA-3      |BANGLADESH                   |1          |           0|   9026| 12458|
|0-6 months (no birth wast)  |JiVitA-3      |BANGLADESH                   |1          |           1|    685| 12458|
|0-6 months (no birth wast)  |JiVitA-3      |BANGLADESH                   |0          |           0|   2536| 12458|
|0-6 months (no birth wast)  |JiVitA-3      |BANGLADESH                   |0          |           1|    211| 12458|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH                   |1          |           0|   3388|  4433|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH                   |1          |           1|     89|  4433|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH                   |0          |           0|    923|  4433|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH                   |0          |           1|     33|  4433|
|0-6 months (no birth wast)  |LCNI-5        |MALAWI                       |1          |           0|     47|   268|
|0-6 months (no birth wast)  |LCNI-5        |MALAWI                       |1          |           1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5        |MALAWI                       |0          |           0|    221|   268|
|0-6 months (no birth wast)  |LCNI-5        |MALAWI                       |0          |           1|      0|   268|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH                   |1          |           0|     80|   250|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH                   |1          |           1|      5|   250|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH                   |0          |           0|    152|   250|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH                   |0          |           1|     13|   250|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL                       |1          |           0|     29|   224|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL                       |1          |           1|      0|   224|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL                       |0          |           0|    187|   224|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL                       |0          |           1|      8|   224|
|0-6 months (no birth wast)  |MAL-ED        |INDIA                        |1          |           0|     15|   232|
|0-6 months (no birth wast)  |MAL-ED        |INDIA                        |1          |           1|      3|   232|
|0-6 months (no birth wast)  |MAL-ED        |INDIA                        |0          |           0|    180|   232|
|0-6 months (no birth wast)  |MAL-ED        |INDIA                        |0          |           1|     34|   232|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL                        |1          |           0|      8|   233|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL                        |1          |           1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL                        |0          |           0|    209|   233|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL                        |0          |           1|     16|   233|
|0-6 months (no birth wast)  |MAL-ED        |PERU                         |1          |           0|     79|   286|
|0-6 months (no birth wast)  |MAL-ED        |PERU                         |1          |           1|      2|   286|
|0-6 months (no birth wast)  |MAL-ED        |PERU                         |0          |           0|    202|   286|
|0-6 months (no birth wast)  |MAL-ED        |PERU                         |0          |           1|      3|   286|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA                 |1          |           0|      6|   275|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA                 |1          |           1|      0|   275|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA                 |0          |           0|    255|   275|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA                 |0          |           1|     14|   275|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1          |           0|      6|   250|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1          |           1|      0|   250|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0          |           0|    234|   250|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0          |           1|     10|   250|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA                        |1          |           0|      0|   137|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA                        |1          |           1|      0|   137|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA                        |0          |           0|    137|   137|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA                        |0          |           1|      0|   137|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
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
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
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
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/78fd97e9-c2c1-4510-a8fd-fe1fcff6e64f/174f8b5c-8c96-42a9-85b9-9b0055d39511/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/78fd97e9-c2c1-4510-a8fd-fe1fcff6e64f/174f8b5c-8c96-42a9-85b9-9b0055d39511/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/78fd97e9-c2c1-4510-a8fd-fe1fcff6e64f/174f8b5c-8c96-42a9-85b9-9b0055d39511/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/78fd97e9-c2c1-4510-a8fd-fe1fcff6e64f/174f8b5c-8c96-42a9-85b9-9b0055d39511/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | 0.5715064| 0.5241389| 0.6188738|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |0                  |NA             | 0.5213914| 0.4253851| 0.6173978|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             | 0.1771362| 0.1687357| 0.1855368|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |0                  |NA             | 0.1876221| 0.1705445| 0.2046998|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             | 0.2534483| 0.2362227| 0.2706738|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |0                  |NA             | 0.2851112| 0.2532709| 0.3169516|
|0-24 months (no birth wast) |LCNI-5    |MALAWI     |1                  |NA             | 0.1063830| 0.0180722| 0.1946938|
|0-24 months (no birth wast) |LCNI-5    |MALAWI     |0                  |NA             | 0.0892857| 0.0518739| 0.1266975|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |NA             | 0.2605944| 0.1675890| 0.3535999|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |0                  |NA             | 0.2096513| 0.1472330| 0.2720695|
|0-24 months (no birth wast) |MAL-ED    |INDIA      |1                  |NA             | 0.2777778| 0.0704173| 0.4851383|
|0-24 months (no birth wast) |MAL-ED    |INDIA      |0                  |NA             | 0.3888889| 0.3237374| 0.4540403|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL      |1                  |NA             | 0.2259935| 0.1854124| 0.2665747|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL      |0                  |NA             | 0.2454898| 0.1606763| 0.3303034|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0703334| 0.0646213| 0.0760455|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH |0                  |NA             | 0.0772827| 0.0649813| 0.0895842|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0253605| 0.0190925| 0.0316285|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH |0                  |NA             | 0.0356795| 0.0220756| 0.0492833|
|0-6 months (no birth wast)  |MAL-ED    |BANGLADESH |1                  |NA             | 0.0588235| 0.0087025| 0.1089446|
|0-6 months (no birth wast)  |MAL-ED    |BANGLADESH |0                  |NA             | 0.0787879| 0.0375984| 0.1199773|


### Parameter: E(Y)


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |NA                 |NA             | 0.5667939| 0.5243264| 0.6092614|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.1795035| 0.1720409| 0.1869661|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |NA                 |NA             | 0.2612415| 0.2461119| 0.2763711|
|0-24 months (no birth wast) |LCNI-5    |MALAWI     |NA                 |NA             | 0.0922509| 0.0577338| 0.1267680|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |NA                 |NA             | 0.2270916| 0.1751587| 0.2790245|
|0-24 months (no birth wast) |MAL-ED    |INDIA      |NA                 |NA             | 0.3803419| 0.3180067| 0.4426771|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL      |NA                 |NA             | 0.2294118| 0.1928853| 0.2659383|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.0719217| 0.0666549| 0.0771884|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH |NA                 |NA             | 0.0275209| 0.0219532| 0.0330885|
|0-6 months (no birth wast)  |MAL-ED    |BANGLADESH |NA                 |NA             | 0.0720000| 0.0398938| 0.1041062|


### Parameter: RR


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |0                  |1              | 0.9123108| 0.7453288| 1.116703|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |0                  |1              | 1.0591969| 0.9548461| 1.174952|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |0                  |1              | 1.1249287| 0.9884595| 1.280239|
|0-24 months (no birth wast) |LCNI-5    |MALAWI     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |LCNI-5    |MALAWI     |0                  |1              | 0.8392857| 0.3311837| 2.126918|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |0                  |1              | 0.8045116| 0.5102361| 1.268509|
|0-24 months (no birth wast) |MAL-ED    |INDIA      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED    |INDIA      |0                  |1              | 1.4000000| 0.6514245| 3.008790|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL      |0                  |1              | 1.0862693| 0.7363964| 1.602372|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH |0                  |1              | 1.0988057| 0.9203065| 1.311926|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH |0                  |1              | 1.4068918| 0.8823105| 2.243365|
|0-6 months (no birth wast)  |MAL-ED    |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |MAL-ED    |BANGLADESH |0                  |1              | 1.3393939| 0.4929054| 3.639595|


### Parameter: PAR


|agecat                      |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | -0.0047125| -0.0260571| 0.0166322|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             |  0.0023673| -0.0018742| 0.0066088|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0077932| -0.0004221| 0.0160086|
|0-24 months (no birth wast) |LCNI-5    |MALAWI     |1                  |NA             | -0.0141321| -0.0934107| 0.0651466|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |NA             | -0.0335028| -0.1075746| 0.0405690|
|0-24 months (no birth wast) |MAL-ED    |INDIA      |1                  |NA             |  0.1025641| -0.0981070| 0.3032352|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL      |1                  |NA             |  0.0034182| -0.0150598| 0.0218963|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH |1                  |NA             |  0.0015883| -0.0013901| 0.0045666|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0021604| -0.0010656| 0.0053864|
|0-6 months (no birth wast)  |MAL-ED    |BANGLADESH |1                  |NA             |  0.0131765| -0.0296567| 0.0560097|


### Parameter: PAF


|agecat                      |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | -0.0083142| -0.0466957| 0.0286598|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             |  0.0131880| -0.0107050| 0.0365161|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0298316| -0.0021822| 0.0608226|
|0-24 months (no birth wast) |LCNI-5    |MALAWI     |1                  |NA             | -0.1531915| -1.4265796| 0.4519650|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |NA             | -0.1475299| -0.5243859| 0.1361604|
|0-24 months (no birth wast) |MAL-ED    |INDIA      |1                  |NA             |  0.2696629| -0.5036640| 0.6452716|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL      |1                  |NA             |  0.0149000| -0.0690127| 0.0922259|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH |1                  |NA             |  0.0220831| -0.0200356| 0.0624627|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0784999| -0.0466602| 0.1886933|
|0-6 months (no birth wast)  |MAL-ED    |BANGLADESH |1                  |NA             |  0.1830065| -0.6820838| 0.6031837|
