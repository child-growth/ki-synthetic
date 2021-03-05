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

**Intervention Variable:** predfeed6

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

|agecat                      |studyid       |country                      |predfeed6 | ever_wasted| n_cell|     n|
|:---------------------------|:-------------|:----------------------------|:---------|-----------:|------:|-----:|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |1         |           0|     21|    48|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |1         |           1|     22|    48|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |0         |           0|      3|    48|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |0         |           1|      2|    48|
|0-24 months (no birth wast) |GMS-Nepal     |NEPAL                        |1         |           0|    176|   560|
|0-24 months (no birth wast) |GMS-Nepal     |NEPAL                        |1         |           1|    241|   560|
|0-24 months (no birth wast) |GMS-Nepal     |NEPAL                        |0         |           0|     66|   560|
|0-24 months (no birth wast) |GMS-Nepal     |NEPAL                        |0         |           1|     77|   560|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |1         |           0|  10160| 15666|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |1         |           1|   2046| 15666|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |0         |           0|   2829| 15666|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |0         |           1|    631| 15666|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |1         |           0|   2753|  4722|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |1         |           1|    927|  4722|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |0         |           0|    736|  4722|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |0         |           1|    306|  4722|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |1         |           0|     42|   271|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |1         |           1|      5|   271|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |0         |           0|    204|   271|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |0         |           1|     20|   271|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |1         |           0|     62|   233|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |1         |           1|     23|   233|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |0         |           0|    116|   233|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |0         |           1|     32|   233|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |1         |           0|     29|   210|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |1         |           1|      1|   210|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |0         |           0|    168|   210|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |0         |           1|     12|   210|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |1         |           0|     10|   216|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |1         |           1|      1|   216|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |0         |           0|    126|   216|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |0         |           1|     79|   216|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |1         |           0|     10|   225|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |1         |           1|      2|   225|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |0         |           0|    169|   225|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |0         |           1|     44|   225|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |1         |           0|     87|   271|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |1         |           1|      5|   271|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |0         |           0|    163|   271|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |0         |           1|     16|   271|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |1         |           0|      3|   237|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |1         |           1|      0|   237|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |0         |           0|    193|   237|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |0         |           1|     41|   237|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1         |           0|      1|   235|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1         |           1|      0|   235|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0         |           0|    201|   235|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0         |           1|     33|   235|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |1         |           0|      0|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |1         |           1|      0|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |0         |           0|    117|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |0         |           1|     56|   173|
|0-6 months (no birth wast)  |EE            |PAKISTAN                     |1         |           0|     36|    47|
|0-6 months (no birth wast)  |EE            |PAKISTAN                     |1         |           1|      6|    47|
|0-6 months (no birth wast)  |EE            |PAKISTAN                     |0         |           0|      4|    47|
|0-6 months (no birth wast)  |EE            |PAKISTAN                     |0         |           1|      1|    47|
|0-6 months (no birth wast)  |GMS-Nepal     |NEPAL                        |1         |           0|    320|   544|
|0-6 months (no birth wast)  |GMS-Nepal     |NEPAL                        |1         |           1|     86|   544|
|0-6 months (no birth wast)  |GMS-Nepal     |NEPAL                        |0         |           0|    105|   544|
|0-6 months (no birth wast)  |GMS-Nepal     |NEPAL                        |0         |           1|     33|   544|
|0-6 months (no birth wast)  |JiVitA-3      |BANGLADESH                   |1         |           0|  11256| 15533|
|0-6 months (no birth wast)  |JiVitA-3      |BANGLADESH                   |1         |           1|    849| 15533|
|0-6 months (no birth wast)  |JiVitA-3      |BANGLADESH                   |0         |           0|   3160| 15533|
|0-6 months (no birth wast)  |JiVitA-3      |BANGLADESH                   |0         |           1|    268| 15533|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH                   |1         |           0|   3530|  4593|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH                   |1         |           1|     92|  4593|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH                   |0         |           0|    937|  4593|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH                   |0         |           1|     34|  4593|
|0-6 months (no birth wast)  |LCNI-5        |MALAWI                       |1         |           0|     47|   268|
|0-6 months (no birth wast)  |LCNI-5        |MALAWI                       |1         |           1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5        |MALAWI                       |0         |           0|    221|   268|
|0-6 months (no birth wast)  |LCNI-5        |MALAWI                       |0         |           1|      0|   268|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH                   |1         |           0|     79|   232|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH                   |1         |           1|      6|   232|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH                   |0         |           0|    135|   232|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH                   |0         |           1|     12|   232|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL                       |1         |           0|     29|   210|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL                       |1         |           1|      1|   210|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL                       |0         |           0|    173|   210|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL                       |0         |           1|      7|   210|
|0-6 months (no birth wast)  |MAL-ED        |INDIA                        |1         |           0|     11|   215|
|0-6 months (no birth wast)  |MAL-ED        |INDIA                        |1         |           1|      0|   215|
|0-6 months (no birth wast)  |MAL-ED        |INDIA                        |0         |           0|    172|   215|
|0-6 months (no birth wast)  |MAL-ED        |INDIA                        |0         |           1|     32|   215|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL                        |1         |           0|     12|   223|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL                        |1         |           1|      0|   223|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL                        |0         |           0|    195|   223|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL                        |0         |           1|     16|   223|
|0-6 months (no birth wast)  |MAL-ED        |PERU                         |1         |           0|     90|   271|
|0-6 months (no birth wast)  |MAL-ED        |PERU                         |1         |           1|      2|   271|
|0-6 months (no birth wast)  |MAL-ED        |PERU                         |0         |           0|    176|   271|
|0-6 months (no birth wast)  |MAL-ED        |PERU                         |0         |           1|      3|   271|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA                 |1         |           0|      3|   236|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA                 |1         |           1|      0|   236|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA                 |0         |           0|    220|   236|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA                 |0         |           1|     13|   236|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1         |           0|      1|   235|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1         |           1|      0|   235|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0         |           0|    224|   235|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0         |           1|     10|   235|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA                        |1         |           0|      0|   137|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA                        |1         |           1|      0|   137|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA                        |0         |           0|    137|   137|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA                        |0         |           1|      0|   137|


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
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
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
![](/tmp/d08dac82-2ae7-422c-a8d1-f51e831b5eab/2ef0b405-89d6-4251-871a-9654fa53bac3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d08dac82-2ae7-422c-a8d1-f51e831b5eab/2ef0b405-89d6-4251-871a-9654fa53bac3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d08dac82-2ae7-422c-a8d1-f51e831b5eab/2ef0b405-89d6-4251-871a-9654fa53bac3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d08dac82-2ae7-422c-a8d1-f51e831b5eab/2ef0b405-89d6-4251-871a-9654fa53bac3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | 0.5803260| 0.5331135| 0.6275385|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |0                  |NA             | 0.5228287| 0.4406880| 0.6049694|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             | 0.1682435| 0.1610708| 0.1754162|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |0                  |NA             | 0.1805199| 0.1662488| 0.1947911|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             | 0.2541485| 0.2374265| 0.2708705|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |0                  |NA             | 0.2813339| 0.2496713| 0.3129965|
|0-24 months (no birth wast) |LCNI-5    |MALAWI     |1                  |NA             | 0.1063830| 0.0180722| 0.1946938|
|0-24 months (no birth wast) |LCNI-5    |MALAWI     |0                  |NA             | 0.0892857| 0.0518739| 0.1266975|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |NA             | 0.2570291| 0.1606563| 0.3534020|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |0                  |NA             | 0.2229083| 0.1559831| 0.2898335|
|0-24 months (no birth wast) |MAL-ED    |PERU       |1                  |NA             | 0.0543478| 0.0079376| 0.1007581|
|0-24 months (no birth wast) |MAL-ED    |PERU       |0                  |NA             | 0.0893855| 0.0475133| 0.1312576|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL      |1                  |NA             | 0.2129996| 0.1732339| 0.2527653|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL      |0                  |NA             | 0.2485260| 0.1778666| 0.3191854|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0700459| 0.0649242| 0.0751676|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH |0                  |NA             | 0.0783913| 0.0685247| 0.0882579|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0248980| 0.0188771| 0.0309189|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH |0                  |NA             | 0.0361352| 0.0229667| 0.0493036|
|0-6 months (no birth wast)  |MAL-ED    |BANGLADESH |1                  |NA             | 0.0705882| 0.0160191| 0.1251573|
|0-6 months (no birth wast)  |MAL-ED    |BANGLADESH |0                  |NA             | 0.0816327| 0.0372751| 0.1259902|


### Parameter: E(Y)


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |NA                 |NA             | 0.5678571| 0.5267918| 0.6089225|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.1708796| 0.1645476| 0.1772116|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |NA                 |NA             | 0.2611182| 0.2462845| 0.2759518|
|0-24 months (no birth wast) |LCNI-5    |MALAWI     |NA                 |NA             | 0.0922509| 0.0577338| 0.1267680|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |NA                 |NA             | 0.2360515| 0.1814079| 0.2906951|
|0-24 months (no birth wast) |MAL-ED    |PERU       |NA                 |NA             | 0.0774908| 0.0455992| 0.1093824|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL      |NA                 |NA             | 0.2187500| 0.1839790| 0.2535210|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.0719114| 0.0672720| 0.0765508|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH |NA                 |NA             | 0.0274331| 0.0219967| 0.0328694|
|0-6 months (no birth wast)  |MAL-ED    |BANGLADESH |NA                 |NA             | 0.0775862| 0.0430879| 0.1120845|


### Parameter: RR


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |0                  |1              | 0.9009224| 0.7557254| 1.074016|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |0                  |1              | 1.0729683| 0.9798061| 1.174988|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |0                  |1              | 1.1069664| 0.9726171| 1.259874|
|0-24 months (no birth wast) |LCNI-5    |MALAWI     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |LCNI-5    |MALAWI     |0                  |1              | 0.8392857| 0.3311837| 2.126918|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |0                  |1              | 0.8672490| 0.5384202| 1.396903|
|0-24 months (no birth wast) |MAL-ED    |PERU       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED    |PERU       |0                  |1              | 1.6446927| 0.6209888| 4.355979|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL      |0                  |1              | 1.1667910| 0.8298522| 1.640535|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH |0                  |1              | 1.1191421| 0.9705371| 1.290501|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH |0                  |1              | 1.4513278| 0.9254770| 2.275964|
|0-6 months (no birth wast)  |MAL-ED    |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |MAL-ED    |BANGLADESH |0                  |1              | 1.1564626| 0.4495261| 2.975146|


### Parameter: PAR


|agecat                      |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | -0.0124689| -0.0362460| 0.0113083|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             |  0.0026361| -0.0009299| 0.0062021|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0069696| -0.0008571| 0.0147963|
|0-24 months (no birth wast) |LCNI-5    |MALAWI     |1                  |NA             | -0.0141321| -0.0934107| 0.0651466|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |NA             | -0.0209776| -0.0956389| 0.0536836|
|0-24 months (no birth wast) |MAL-ED    |PERU       |1                  |NA             |  0.0231429| -0.0181917| 0.0644776|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL      |1                  |NA             |  0.0057504| -0.0150739| 0.0265747|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH |1                  |NA             |  0.0018655| -0.0005447| 0.0042758|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0025351| -0.0005305| 0.0056006|
|0-6 months (no birth wast)  |MAL-ED    |BANGLADESH |1                  |NA             |  0.0069980| -0.0375657| 0.0515616|


### Parameter: PAF


|agecat                      |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | -0.0219578| -0.0647497| 0.0191143|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             |  0.0154267| -0.0056552| 0.0360665|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0266915| -0.0037769| 0.0562351|
|0-24 months (no birth wast) |LCNI-5    |MALAWI     |1                  |NA             | -0.1531915| -1.4265796| 0.4519650|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |NA             | -0.0888689| -0.4543298| 0.1847547|
|0-24 months (no birth wast) |MAL-ED    |PERU       |1                  |NA             |  0.2986542| -0.4737013| 0.6662242|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL      |1                  |NA             |  0.0262877| -0.0736239| 0.1169015|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH |1                  |NA             |  0.0259421| -0.0081161| 0.0588496|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0924086| -0.0265284| 0.1975652|
|0-6 months (no birth wast)  |MAL-ED    |BANGLADESH |1                  |NA             |  0.0901961| -0.7082806| 0.5154524|
