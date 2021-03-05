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

**Intervention Variable:** earlybf

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
* vagbrth
* W_gagebrth
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

|agecat                      |studyid      |country                      |earlybf | ever_wasted| n_cell|     n|
|:---------------------------|:------------|:----------------------------|:-------|-----------:|------:|-----:|
|0-24 months (no birth wast) |EE           |PAKISTAN                     |1       |           0|     33|   366|
|0-24 months (no birth wast) |EE           |PAKISTAN                     |1       |           1|     35|   366|
|0-24 months (no birth wast) |EE           |PAKISTAN                     |0       |           0|    137|   366|
|0-24 months (no birth wast) |EE           |PAKISTAN                     |0       |           1|    161|   366|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL                        |1       |           0|     95|   599|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL                        |1       |           1|     77|   599|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL                        |0       |           0|    209|   599|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL                        |0       |           1|    218|   599|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH                   |1       |           0|    122| 26458|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH                   |1       |           1|     21| 26458|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH                   |0       |           0|  21842| 26458|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH                   |0       |           1|   4473| 26458|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH                   |1       |           0|   2528|  5396|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH                   |1       |           1|    886|  5396|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH                   |0       |           0|   1477|  5396|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH                   |0       |           1|    505|  5396|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH                   |1       |           0|    128|   262|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH                   |1       |           1|     33|   262|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH                   |0       |           0|     77|   262|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH                   |0       |           1|     24|   262|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL                       |1       |           0|    103|   233|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL                       |1       |           1|      5|   233|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL                       |0       |           0|    117|   233|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL                       |0       |           1|      8|   233|
|0-24 months (no birth wast) |MAL-ED       |INDIA                        |1       |           0|     90|   245|
|0-24 months (no birth wast) |MAL-ED       |INDIA                        |1       |           1|     56|   245|
|0-24 months (no birth wast) |MAL-ED       |INDIA                        |0       |           0|     64|   245|
|0-24 months (no birth wast) |MAL-ED       |INDIA                        |0       |           1|     35|   245|
|0-24 months (no birth wast) |MAL-ED       |NEPAL                        |1       |           0|     79|   239|
|0-24 months (no birth wast) |MAL-ED       |NEPAL                        |1       |           1|     18|   239|
|0-24 months (no birth wast) |MAL-ED       |NEPAL                        |0       |           0|    114|   239|
|0-24 months (no birth wast) |MAL-ED       |NEPAL                        |0       |           1|     28|   239|
|0-24 months (no birth wast) |MAL-ED       |PERU                         |1       |           0|    205|   302|
|0-24 months (no birth wast) |MAL-ED       |PERU                         |1       |           1|     20|   302|
|0-24 months (no birth wast) |MAL-ED       |PERU                         |0       |           0|     76|   302|
|0-24 months (no birth wast) |MAL-ED       |PERU                         |0       |           1|      1|   302|
|0-24 months (no birth wast) |MAL-ED       |SOUTH AFRICA                 |1       |           0|    150|   296|
|0-24 months (no birth wast) |MAL-ED       |SOUTH AFRICA                 |1       |           1|     31|   296|
|0-24 months (no birth wast) |MAL-ED       |SOUTH AFRICA                 |0       |           0|    101|   296|
|0-24 months (no birth wast) |MAL-ED       |SOUTH AFRICA                 |0       |           1|     14|   296|
|0-24 months (no birth wast) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1       |           0|    185|   261|
|0-24 months (no birth wast) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1       |           1|     31|   261|
|0-24 months (no birth wast) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |0       |           0|     42|   261|
|0-24 months (no birth wast) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |0       |           1|      3|   261|
|0-24 months (no birth wast) |NIH-Crypto   |BANGLADESH                   |1       |           0|    555|   754|
|0-24 months (no birth wast) |NIH-Crypto   |BANGLADESH                   |1       |           1|     99|   754|
|0-24 months (no birth wast) |NIH-Crypto   |BANGLADESH                   |0       |           0|     91|   754|
|0-24 months (no birth wast) |NIH-Crypto   |BANGLADESH                   |0       |           1|      9|   754|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA                        |1       |           0|     60|  1465|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA                        |1       |           1|     43|  1465|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA                        |0       |           0|    862|  1465|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA                        |0       |           1|    500|  1465|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE                     |1       |           0|   5789| 12131|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE                     |1       |           1|    683| 12131|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE                     |0       |           0|   5095| 12131|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE                     |0       |           1|    564| 12131|
|0-6 months (no birth wast)  |EE           |PAKISTAN                     |1       |           0|     54|   364|
|0-6 months (no birth wast)  |EE           |PAKISTAN                     |1       |           1|     14|   364|
|0-6 months (no birth wast)  |EE           |PAKISTAN                     |0       |           0|    231|   364|
|0-6 months (no birth wast)  |EE           |PAKISTAN                     |0       |           1|     65|   364|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL                        |1       |           0|    140|   582|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL                        |1       |           1|     25|   582|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL                        |0       |           0|    332|   582|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL                        |0       |           1|     85|   582|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH                   |1       |           0|    124| 26164|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH                   |1       |           1|     17| 26164|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH                   |0       |           0|  24159| 26164|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH                   |0       |           1|   1864| 26164|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH                   |1       |           0|   3221|  4957|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH                   |1       |           1|     90|  4957|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH                   |0       |           0|   1609|  4957|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH                   |0       |           1|     37|  4957|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH                   |1       |           0|    148|   261|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH                   |1       |           1|     13|   261|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH                   |0       |           0|     94|   261|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH                   |0       |           1|      6|   261|
|0-6 months (no birth wast)  |MAL-ED       |BRAZIL                       |1       |           0|    105|   233|
|0-6 months (no birth wast)  |MAL-ED       |BRAZIL                       |1       |           1|      3|   233|
|0-6 months (no birth wast)  |MAL-ED       |BRAZIL                       |0       |           0|    120|   233|
|0-6 months (no birth wast)  |MAL-ED       |BRAZIL                       |0       |           1|      5|   233|
|0-6 months (no birth wast)  |MAL-ED       |INDIA                        |1       |           0|    121|   243|
|0-6 months (no birth wast)  |MAL-ED       |INDIA                        |1       |           1|     24|   243|
|0-6 months (no birth wast)  |MAL-ED       |INDIA                        |0       |           0|     83|   243|
|0-6 months (no birth wast)  |MAL-ED       |INDIA                        |0       |           1|     15|   243|
|0-6 months (no birth wast)  |MAL-ED       |NEPAL                        |1       |           0|     91|   237|
|0-6 months (no birth wast)  |MAL-ED       |NEPAL                        |1       |           1|      6|   237|
|0-6 months (no birth wast)  |MAL-ED       |NEPAL                        |0       |           0|    130|   237|
|0-6 months (no birth wast)  |MAL-ED       |NEPAL                        |0       |           1|     10|   237|
|0-6 months (no birth wast)  |MAL-ED       |PERU                         |1       |           0|    220|   302|
|0-6 months (no birth wast)  |MAL-ED       |PERU                         |1       |           1|      5|   302|
|0-6 months (no birth wast)  |MAL-ED       |PERU                         |0       |           0|     77|   302|
|0-6 months (no birth wast)  |MAL-ED       |PERU                         |0       |           1|      0|   302|
|0-6 months (no birth wast)  |MAL-ED       |SOUTH AFRICA                 |1       |           0|    171|   295|
|0-6 months (no birth wast)  |MAL-ED       |SOUTH AFRICA                 |1       |           1|     10|   295|
|0-6 months (no birth wast)  |MAL-ED       |SOUTH AFRICA                 |0       |           0|    110|   295|
|0-6 months (no birth wast)  |MAL-ED       |SOUTH AFRICA                 |0       |           1|      4|   295|
|0-6 months (no birth wast)  |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1       |           0|    206|   261|
|0-6 months (no birth wast)  |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1       |           1|     10|   261|
|0-6 months (no birth wast)  |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |0       |           0|     45|   261|
|0-6 months (no birth wast)  |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |0       |           1|      0|   261|
|0-6 months (no birth wast)  |NIH-Crypto   |BANGLADESH                   |1       |           0|    635|   749|
|0-6 months (no birth wast)  |NIH-Crypto   |BANGLADESH                   |1       |           1|     16|   749|
|0-6 months (no birth wast)  |NIH-Crypto   |BANGLADESH                   |0       |           0|     94|   749|
|0-6 months (no birth wast)  |NIH-Crypto   |BANGLADESH                   |0       |           1|      4|   749|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA                        |1       |           0|     84|  1436|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA                        |1       |           1|     18|  1436|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA                        |0       |           0|   1167|  1436|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA                        |0       |           1|    167|  1436|
|0-6 months (no birth wast)  |ZVITAMBO     |ZIMBABWE                     |1       |           0|   6147| 11900|
|0-6 months (no birth wast)  |ZVITAMBO     |ZIMBABWE                     |1       |           1|    207| 11900|
|0-6 months (no birth wast)  |ZVITAMBO     |ZIMBABWE                     |0       |           0|   5371| 11900|
|0-6 months (no birth wast)  |ZVITAMBO     |ZIMBABWE                     |0       |           1|    175| 11900|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH

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
![](/tmp/8fe9ae2d-6af9-4e61-9bcb-5b94f16f0450/aa59a3e0-269c-491c-bd3e-02cb244c392b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8fe9ae2d-6af9-4e61-9bcb-5b94f16f0450/aa59a3e0-269c-491c-bd3e-02cb244c392b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8fe9ae2d-6af9-4e61-9bcb-5b94f16f0450/aa59a3e0-269c-491c-bd3e-02cb244c392b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8fe9ae2d-6af9-4e61-9bcb-5b94f16f0450/aa59a3e0-269c-491c-bd3e-02cb244c392b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid      |country      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:------------|:------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |EE           |PAKISTAN     |1                  |NA             | 0.4982652| 0.3686581| 0.6278724|
|0-24 months (no birth wast) |EE           |PAKISTAN     |0                  |NA             | 0.5423051| 0.4858222| 0.5987881|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL        |1                  |NA             | 0.4589379| 0.3843339| 0.5335418|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL        |0                  |NA             | 0.5078108| 0.4604314| 0.5551903|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH   |1                  |NA             | 0.1492582| 0.1366631| 0.1618533|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH   |0                  |NA             | 0.1699745| 0.1645518| 0.1753971|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH   |1                  |NA             | 0.2583847| 0.2405410| 0.2762284|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH   |0                  |NA             | 0.2542874| 0.2333511| 0.2752237|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH   |1                  |NA             | 0.1993346| 0.1375838| 0.2610855|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH   |0                  |NA             | 0.2361756| 0.1564923| 0.3158589|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL       |1                  |NA             | 0.0462963| 0.0065817| 0.0860109|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL       |0                  |NA             | 0.0640000| 0.0210013| 0.1069987|
|0-24 months (no birth wast) |MAL-ED       |INDIA        |1                  |NA             | 0.3873215| 0.3076857| 0.4669573|
|0-24 months (no birth wast) |MAL-ED       |INDIA        |0                  |NA             | 0.3474959| 0.2513741| 0.4436176|
|0-24 months (no birth wast) |MAL-ED       |NEPAL        |1                  |NA             | 0.1766888| 0.0996471| 0.2537304|
|0-24 months (no birth wast) |MAL-ED       |NEPAL        |0                  |NA             | 0.2021482| 0.1353347| 0.2689616|
|0-24 months (no birth wast) |MAL-ED       |SOUTH AFRICA |1                  |NA             | 0.1679405| 0.1136625| 0.2222186|
|0-24 months (no birth wast) |MAL-ED       |SOUTH AFRICA |0                  |NA             | 0.1270010| 0.0659868| 0.1880152|
|0-24 months (no birth wast) |NIH-Crypto   |BANGLADESH   |1                  |NA             | 0.1513761| 0.1238887| 0.1788636|
|0-24 months (no birth wast) |NIH-Crypto   |BANGLADESH   |0                  |NA             | 0.0900000| 0.0338722| 0.1461278|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA        |1                  |NA             | 0.4725361| 0.2208702| 0.7242019|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA        |0                  |NA             | 0.3669072| 0.3124769| 0.4213376|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE     |1                  |NA             | 0.1047291| 0.0972034| 0.1122548|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE     |0                  |NA             | 0.1003320| 0.0923430| 0.1083210|
|0-6 months (no birth wast)  |EE           |PAKISTAN     |1                  |NA             | 0.2247370| 0.1237379| 0.3257362|
|0-6 months (no birth wast)  |EE           |PAKISTAN     |0                  |NA             | 0.2184810| 0.1713493| 0.2656128|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL        |1                  |NA             | 0.1537028| 0.0972542| 0.2101513|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL        |0                  |NA             | 0.2042671| 0.1655145| 0.2430197|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH   |1                  |NA             | 0.1238825| 0.1118966| 0.1358684|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH   |0                  |NA             | 0.0716183| 0.0678774| 0.0753593|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH   |1                  |NA             | 0.0272381| 0.0210286| 0.0334476|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH   |0                  |NA             | 0.0223408| 0.0147337| 0.0299479|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH   |1                  |NA             | 0.0807453| 0.0385810| 0.1229097|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH   |0                  |NA             | 0.0600000| 0.0133640| 0.1066360|
|0-6 months (no birth wast)  |MAL-ED       |INDIA        |1                  |NA             | 0.1663269| 0.1051262| 0.2275276|
|0-6 months (no birth wast)  |MAL-ED       |INDIA        |0                  |NA             | 0.1462831| 0.0769912| 0.2155750|
|0-6 months (no birth wast)  |MAL-ED       |NEPAL        |1                  |NA             | 0.0618557| 0.0138155| 0.1098959|
|0-6 months (no birth wast)  |MAL-ED       |NEPAL        |0                  |NA             | 0.0714286| 0.0286776| 0.1141795|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA        |1                  |NA             | 0.1890047| 0.1120398| 0.2659695|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA        |0                  |NA             | 0.1253717| 0.0960253| 0.1547180|
|0-6 months (no birth wast)  |ZVITAMBO     |ZIMBABWE     |1                  |NA             | 0.0318835| 0.0275341| 0.0362328|
|0-6 months (no birth wast)  |ZVITAMBO     |ZIMBABWE     |0                  |NA             | 0.0323536| 0.0275743| 0.0371329|


### Parameter: E(Y)


|agecat                      |studyid      |country      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:------------|:------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |EE           |PAKISTAN     |NA                 |NA             | 0.5355191| 0.4843541| 0.5866841|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL        |NA                 |NA             | 0.4924875| 0.4524176| 0.5325574|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH   |NA                 |NA             | 0.1698541| 0.1645584| 0.1751498|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH   |NA                 |NA             | 0.2577835| 0.2441424| 0.2714247|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH   |NA                 |NA             | 0.2175573| 0.1675030| 0.2676115|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL       |NA                 |NA             | 0.0557940| 0.0262594| 0.0853286|
|0-24 months (no birth wast) |MAL-ED       |INDIA        |NA                 |NA             | 0.3714286| 0.3108013| 0.4320559|
|0-24 months (no birth wast) |MAL-ED       |NEPAL        |NA                 |NA             | 0.1924686| 0.1423823| 0.2425550|
|0-24 months (no birth wast) |MAL-ED       |SOUTH AFRICA |NA                 |NA             | 0.1520270| 0.1110549| 0.1929992|
|0-24 months (no birth wast) |NIH-Crypto   |BANGLADESH   |NA                 |NA             | 0.1432361| 0.1182149| 0.1682572|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA        |NA                 |NA             | 0.3706485| 0.3201448| 0.4211521|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE     |NA                 |NA             | 0.1027945| 0.0973901| 0.1081989|
|0-6 months (no birth wast)  |EE           |PAKISTAN     |NA                 |NA             | 0.2170330| 0.1746268| 0.2594392|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL        |NA                 |NA             | 0.1890034| 0.1571685| 0.2208384|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH   |NA                 |NA             | 0.0718927| 0.0682457| 0.0755397|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH   |NA                 |NA             | 0.0256203| 0.0209093| 0.0303314|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH   |NA                 |NA             | 0.0727969| 0.0412174| 0.1043764|
|0-6 months (no birth wast)  |MAL-ED       |INDIA        |NA                 |NA             | 0.1604938| 0.1142470| 0.2067406|
|0-6 months (no birth wast)  |MAL-ED       |NEPAL        |NA                 |NA             | 0.0675105| 0.0354995| 0.0995216|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA        |NA                 |NA             | 0.1288301| 0.0985331| 0.1591271|
|0-6 months (no birth wast)  |ZVITAMBO     |ZIMBABWE     |NA                 |NA             | 0.0321008| 0.0289337| 0.0352680|


### Parameter: RR


|agecat                      |studyid      |country      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:------------|:------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |EE           |PAKISTAN     |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |EE           |PAKISTAN     |0                  |1              | 1.0883865| 0.8230992| 1.4391767|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL        |0                  |1              | 1.1064915| 0.9183566| 1.3331678|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH   |0                  |1              | 1.1387951| 1.0405670| 1.2462958|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH   |0                  |1              | 0.9841427| 0.8838791| 1.0957797|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH   |0                  |1              | 1.1848196| 0.7480343| 1.8766487|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL       |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL       |0                  |1              | 1.3824000| 0.4649629| 4.1100691|
|0-24 months (no birth wast) |MAL-ED       |INDIA        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |MAL-ED       |INDIA        |0                  |1              | 0.8971768| 0.6357125| 1.2661794|
|0-24 months (no birth wast) |MAL-ED       |NEPAL        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |MAL-ED       |NEPAL        |0                  |1              | 1.1440918| 0.6618009| 1.9778548|
|0-24 months (no birth wast) |MAL-ED       |SOUTH AFRICA |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |MAL-ED       |SOUTH AFRICA |0                  |1              | 0.7562260| 0.4244847| 1.3472281|
|0-24 months (no birth wast) |NIH-Crypto   |BANGLADESH   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |NIH-Crypto   |BANGLADESH   |0                  |1              | 0.5945455| 0.3105227| 1.1383526|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA        |0                  |1              | 0.7764640| 0.4333268| 1.3913202|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE     |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE     |0                  |1              | 0.9580144| 0.8612330| 1.0656716|
|0-6 months (no birth wast)  |EE           |PAKISTAN     |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |EE           |PAKISTAN     |0                  |1              | 0.9721630| 0.5903109| 1.6010222|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL        |0                  |1              | 1.3289750| 0.8787375| 2.0099001|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH   |0                  |1              | 0.5781148| 0.5168665| 0.6466210|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH   |0                  |1              | 0.8202043| 0.5372659| 1.2521455|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH   |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH   |0                  |1              | 0.7430769| 0.2913165| 1.8954069|
|0-6 months (no birth wast)  |MAL-ED       |INDIA        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |MAL-ED       |INDIA        |0                  |1              | 0.8794919| 0.4801950| 1.6108164|
|0-6 months (no birth wast)  |MAL-ED       |NEPAL        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |MAL-ED       |NEPAL        |0                  |1              | 1.1547619| 0.4331731| 3.0783885|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA        |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA        |0                  |1              | 0.6633258| 0.4480001| 0.9821451|
|0-6 months (no birth wast)  |ZVITAMBO     |ZIMBABWE     |1                  |1              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |ZVITAMBO     |ZIMBABWE     |0                  |1              | 1.0147461| 0.8301411| 1.2404032|


### Parameter: PAR


|agecat                      |studyid      |country      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:---------------------------|:------------|:------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth wast) |EE           |PAKISTAN     |1                  |NA             |  0.0372539| -0.0806073|  0.1551151|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL        |1                  |NA             |  0.0335496| -0.0297167|  0.0968159|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH   |1                  |NA             |  0.0205959|  0.0072265|  0.0339654|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH   |1                  |NA             | -0.0006012| -0.0107351|  0.0095327|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH   |1                  |NA             |  0.0182226| -0.0221295|  0.0585748|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL       |1                  |NA             |  0.0094977| -0.0219248|  0.0409202|
|0-24 months (no birth wast) |MAL-ED       |INDIA        |1                  |NA             | -0.0158929| -0.0661628|  0.0343769|
|0-24 months (no birth wast) |MAL-ED       |NEPAL        |1                  |NA             |  0.0157799| -0.0443626|  0.0759223|
|0-24 months (no birth wast) |MAL-ED       |SOUTH AFRICA |1                  |NA             | -0.0159135| -0.0470224|  0.0151953|
|0-24 months (no birth wast) |NIH-Crypto   |BANGLADESH   |1                  |NA             | -0.0081401| -0.0165611|  0.0002810|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA        |1                  |NA             | -0.1018876| -0.3572371|  0.1534619|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE     |1                  |NA             | -0.0019346| -0.0070865|  0.0032173|
|0-6 months (no birth wast)  |EE           |PAKISTAN     |1                  |NA             | -0.0077041| -0.0993517|  0.0839436|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL        |1                  |NA             |  0.0353007| -0.0143405|  0.0849418|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH   |1                  |NA             | -0.0519898| -0.0643895| -0.0395902|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH   |1                  |NA             | -0.0016178| -0.0050282|  0.0017927|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH   |1                  |NA             | -0.0079484| -0.0320680|  0.0161712|
|0-6 months (no birth wast)  |MAL-ED       |INDIA        |1                  |NA             | -0.0058330| -0.0448940|  0.0332280|
|0-6 months (no birth wast)  |MAL-ED       |NEPAL        |1                  |NA             |  0.0056549| -0.0323377|  0.0436474|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA        |1                  |NA             | -0.0601746| -0.1291244|  0.0087752|
|0-6 months (no birth wast)  |ZVITAMBO     |ZIMBABWE     |1                  |NA             |  0.0002174| -0.0027716|  0.0032063|


### Parameter: PAF


|agecat                      |studyid      |country      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:---------------------------|:------------|:------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth wast) |EE           |PAKISTAN     |1                  |NA             |  0.0695660| -0.1790604|  0.2657650|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL        |1                  |NA             |  0.0681228| -0.0696998|  0.1881879|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH   |1                  |NA             |  0.1212566|  0.0402282|  0.1954442|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH   |1                  |NA             | -0.0023321| -0.0424113|  0.0362062|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH   |1                  |NA             |  0.0837601| -0.1211781|  0.2512380|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL       |1                  |NA             |  0.1702279| -0.6229402|  0.5757566|
|0-24 months (no birth wast) |MAL-ED       |INDIA        |1                  |NA             | -0.0427887| -0.1873298|  0.0841565|
|0-24 months (no birth wast) |MAL-ED       |NEPAL        |1                  |NA             |  0.0819867| -0.2903352|  0.3468763|
|0-24 months (no birth wast) |MAL-ED       |SOUTH AFRICA |1                  |NA             | -0.1046756| -0.3278264|  0.0809731|
|0-24 months (no birth wast) |NIH-Crypto   |BANGLADESH   |1                  |NA             | -0.0568298| -0.1167117| -0.0001589|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA        |1                  |NA             | -0.2748901| -1.2012853|  0.2616383|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE     |1                  |NA             | -0.0188202| -0.0701859|  0.0300801|
|0-6 months (no birth wast)  |EE           |PAKISTAN     |1                  |NA             | -0.0354973| -0.5569573|  0.3113140|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL        |1                  |NA             |  0.1867726| -0.1218433|  0.4104892|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH   |1                  |NA             | -0.7231592| -0.9188796| -0.5474017|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH   |1                  |NA             | -0.0631438| -0.2035811|  0.0609068|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH   |1                  |NA             | -0.1091860| -0.4915374|  0.1751507|
|0-6 months (no birth wast)  |MAL-ED       |INDIA        |1                  |NA             | -0.0363443| -0.3106655|  0.1805617|
|0-6 months (no birth wast)  |MAL-ED       |NEPAL        |1                  |NA             |  0.0837629| -0.6911428|  0.5035958|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA        |1                  |NA             | -0.4670848| -1.1196323| -0.0154298|
|0-6 months (no birth wast)  |ZVITAMBO     |ZIMBABWE     |1                  |NA             |  0.0067710| -0.0908462|  0.0956528|
