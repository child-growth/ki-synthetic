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

**Intervention Variable:** predfeed3

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

|agecat                     |studyid   |country                      |predfeed3 | ever_stunted| n_cell|     n|
|:--------------------------|:---------|:----------------------------|:---------|------------:|------:|-----:|
|0-24 months (no birth st.) |EE        |PAKISTAN                     |1         |            0|      4|    21|
|0-24 months (no birth st.) |EE        |PAKISTAN                     |1         |            1|     17|    21|
|0-24 months (no birth st.) |EE        |PAKISTAN                     |0         |            0|      0|    21|
|0-24 months (no birth st.) |EE        |PAKISTAN                     |0         |            1|      0|    21|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL                        |1         |            0|    116|   380|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL                        |1         |            1|    201|   380|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL                        |0         |            0|     22|   380|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL                        |0         |            1|     41|   380|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH                   |1         |            0|   6792| 10148|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH                   |1         |            1|   2425| 10148|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH                   |0         |            0|    689| 10148|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH                   |0         |            1|    242| 10148|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH                   |1         |            0|     63|   113|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH                   |1         |            1|     40|   113|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH                   |0         |            0|      4|   113|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH                   |0         |            1|      6|   113|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH                   |1         |            0|     78|   202|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH                   |1         |            1|     86|   202|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH                   |0         |            0|     16|   202|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH                   |0         |            1|     22|   202|
|0-24 months (no birth st.) |MAL-ED    |BRAZIL                       |1         |            0|     69|   175|
|0-24 months (no birth st.) |MAL-ED    |BRAZIL                       |1         |            1|     17|   175|
|0-24 months (no birth st.) |MAL-ED    |BRAZIL                       |0         |            0|     75|   175|
|0-24 months (no birth st.) |MAL-ED    |BRAZIL                       |0         |            1|     14|   175|
|0-24 months (no birth st.) |MAL-ED    |INDIA                        |1         |            0|     48|   184|
|0-24 months (no birth st.) |MAL-ED    |INDIA                        |1         |            1|     79|   184|
|0-24 months (no birth st.) |MAL-ED    |INDIA                        |0         |            0|     35|   184|
|0-24 months (no birth st.) |MAL-ED    |INDIA                        |0         |            1|     22|   184|
|0-24 months (no birth st.) |MAL-ED    |NEPAL                        |1         |            0|     77|   201|
|0-24 months (no birth st.) |MAL-ED    |NEPAL                        |1         |            1|     28|   201|
|0-24 months (no birth st.) |MAL-ED    |NEPAL                        |0         |            0|     72|   201|
|0-24 months (no birth st.) |MAL-ED    |NEPAL                        |0         |            1|     24|   201|
|0-24 months (no birth st.) |MAL-ED    |PERU                         |1         |            0|     71|   253|
|0-24 months (no birth st.) |MAL-ED    |PERU                         |1         |            1|     95|   253|
|0-24 months (no birth st.) |MAL-ED    |PERU                         |0         |            0|     31|   253|
|0-24 months (no birth st.) |MAL-ED    |PERU                         |0         |            1|     56|   253|
|0-24 months (no birth st.) |MAL-ED    |SOUTH AFRICA                 |1         |            0|     31|   237|
|0-24 months (no birth st.) |MAL-ED    |SOUTH AFRICA                 |1         |            1|     35|   237|
|0-24 months (no birth st.) |MAL-ED    |SOUTH AFRICA                 |0         |            0|     75|   237|
|0-24 months (no birth st.) |MAL-ED    |SOUTH AFRICA                 |0         |            1|     96|   237|
|0-24 months (no birth st.) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1         |            0|     10|   185|
|0-24 months (no birth st.) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1         |            1|     46|   185|
|0-24 months (no birth st.) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |0         |            0|     20|   185|
|0-24 months (no birth st.) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |0         |            1|    109|   185|
|0-6 months (no birth st.)  |EE        |PAKISTAN                     |1         |            0|      8|    21|
|0-6 months (no birth st.)  |EE        |PAKISTAN                     |1         |            1|     13|    21|
|0-6 months (no birth st.)  |EE        |PAKISTAN                     |0         |            0|      0|    21|
|0-6 months (no birth st.)  |EE        |PAKISTAN                     |0         |            1|      0|    21|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL                        |1         |            0|    252|   380|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL                        |1         |            1|     65|   380|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL                        |0         |            0|     53|   380|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL                        |0         |            1|     10|   380|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH                   |1         |            0|   7952| 10145|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH                   |1         |            1|   1262| 10145|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH                   |0         |            0|    800| 10145|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH                   |0         |            1|    131| 10145|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH                   |1         |            0|     95|   113|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH                   |1         |            1|      8|   113|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH                   |0         |            0|      7|   113|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH                   |0         |            1|      3|   113|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH                   |1         |            0|    130|   202|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH                   |1         |            1|     34|   202|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH                   |0         |            0|     27|   202|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH                   |0         |            1|     11|   202|
|0-6 months (no birth st.)  |MAL-ED    |BRAZIL                       |1         |            0|     75|   175|
|0-6 months (no birth st.)  |MAL-ED    |BRAZIL                       |1         |            1|     11|   175|
|0-6 months (no birth st.)  |MAL-ED    |BRAZIL                       |0         |            0|     80|   175|
|0-6 months (no birth st.)  |MAL-ED    |BRAZIL                       |0         |            1|      9|   175|
|0-6 months (no birth st.)  |MAL-ED    |INDIA                        |1         |            0|     96|   184|
|0-6 months (no birth st.)  |MAL-ED    |INDIA                        |1         |            1|     31|   184|
|0-6 months (no birth st.)  |MAL-ED    |INDIA                        |0         |            0|     47|   184|
|0-6 months (no birth st.)  |MAL-ED    |INDIA                        |0         |            1|     10|   184|
|0-6 months (no birth st.)  |MAL-ED    |NEPAL                        |1         |            0|    101|   201|
|0-6 months (no birth st.)  |MAL-ED    |NEPAL                        |1         |            1|      4|   201|
|0-6 months (no birth st.)  |MAL-ED    |NEPAL                        |0         |            0|     89|   201|
|0-6 months (no birth st.)  |MAL-ED    |NEPAL                        |0         |            1|      7|   201|
|0-6 months (no birth st.)  |MAL-ED    |PERU                         |1         |            0|    112|   253|
|0-6 months (no birth st.)  |MAL-ED    |PERU                         |1         |            1|     54|   253|
|0-6 months (no birth st.)  |MAL-ED    |PERU                         |0         |            0|     49|   253|
|0-6 months (no birth st.)  |MAL-ED    |PERU                         |0         |            1|     38|   253|
|0-6 months (no birth st.)  |MAL-ED    |SOUTH AFRICA                 |1         |            0|     49|   237|
|0-6 months (no birth st.)  |MAL-ED    |SOUTH AFRICA                 |1         |            1|     17|   237|
|0-6 months (no birth st.)  |MAL-ED    |SOUTH AFRICA                 |0         |            0|    116|   237|
|0-6 months (no birth st.)  |MAL-ED    |SOUTH AFRICA                 |0         |            1|     55|   237|
|0-6 months (no birth st.)  |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1         |            0|     42|   185|
|0-6 months (no birth st.)  |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1         |            1|     14|   185|
|0-6 months (no birth st.)  |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |0         |            0|     85|   185|
|0-6 months (no birth st.)  |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |0         |            1|     44|   185|


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL

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




# Results Detail

## Results Plots
![](/tmp/6b5086d2-6f02-4884-8b1a-46ded745dea5/bca2dea4-b0b6-46cd-9cb2-c6ee1f11b295/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6b5086d2-6f02-4884-8b1a-46ded745dea5/bca2dea4-b0b6-46cd-9cb2-c6ee1f11b295/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6b5086d2-6f02-4884-8b1a-46ded745dea5/bca2dea4-b0b6-46cd-9cb2-c6ee1f11b295/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6b5086d2-6f02-4884-8b1a-46ded745dea5/bca2dea4-b0b6-46cd-9cb2-c6ee1f11b295/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                     |studyid   |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:---------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL                        |1                  |NA             | 0.6344581| 0.5817957| 0.6871205|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL                        |0                  |NA             | 0.6313928| 0.5265836| 0.7362020|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH                   |1                  |NA             | 0.2623346| 0.2515592| 0.2731100|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH                   |0                  |NA             | 0.2668876| 0.2409188| 0.2928564|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH                   |1                  |NA             | 0.5251695| 0.4483890| 0.6019500|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH                   |0                  |NA             | 0.5854117| 0.4270974| 0.7437260|
|0-24 months (no birth st.) |MAL-ED    |BRAZIL                       |1                  |NA             | 0.1984809| 0.1133063| 0.2836555|
|0-24 months (no birth st.) |MAL-ED    |BRAZIL                       |0                  |NA             | 0.1553940| 0.0802096| 0.2305785|
|0-24 months (no birth st.) |MAL-ED    |INDIA                        |1                  |NA             | 0.6150907| 0.5308102| 0.6993711|
|0-24 months (no birth st.) |MAL-ED    |INDIA                        |0                  |NA             | 0.3637240| 0.2349634| 0.4924846|
|0-24 months (no birth st.) |MAL-ED    |NEPAL                        |1                  |NA             | 0.2641715| 0.1786803| 0.3496627|
|0-24 months (no birth st.) |MAL-ED    |NEPAL                        |0                  |NA             | 0.2481589| 0.1608541| 0.3354636|
|0-24 months (no birth st.) |MAL-ED    |PERU                         |1                  |NA             | 0.5729502| 0.4982475| 0.6476528|
|0-24 months (no birth st.) |MAL-ED    |PERU                         |0                  |NA             | 0.6432285| 0.5435803| 0.7428767|
|0-24 months (no birth st.) |MAL-ED    |SOUTH AFRICA                 |1                  |NA             | 0.4716287| 0.3440102| 0.5992471|
|0-24 months (no birth st.) |MAL-ED    |SOUTH AFRICA                 |0                  |NA             | 0.5772054| 0.5031947| 0.6512162|
|0-24 months (no birth st.) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.8132160| 0.7079982| 0.9184338|
|0-24 months (no birth st.) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.8504871| 0.7880713| 0.9129028|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL                        |1                  |NA             | 0.2043300| 0.1598802| 0.2487798|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL                        |0                  |NA             | 0.1612507| 0.0684208| 0.2540806|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH                   |1                  |NA             | 0.1369749| 0.1290360| 0.1449139|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH                   |0                  |NA             | 0.1392943| 0.1171012| 0.1614873|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH                   |1                  |NA             | 0.2071410| 0.1446894| 0.2695927|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH                   |0                  |NA             | 0.2578892| 0.1055913| 0.4101871|
|0-6 months (no birth st.)  |MAL-ED    |BRAZIL                       |1                  |NA             | 0.1279070| 0.0571170| 0.1986970|
|0-6 months (no birth st.)  |MAL-ED    |BRAZIL                       |0                  |NA             | 0.1011236| 0.0383071| 0.1639401|
|0-6 months (no birth st.)  |MAL-ED    |INDIA                        |1                  |NA             | 0.2395303| 0.1641883| 0.3148724|
|0-6 months (no birth st.)  |MAL-ED    |INDIA                        |0                  |NA             | 0.1575799| 0.0561051| 0.2590548|
|0-6 months (no birth st.)  |MAL-ED    |PERU                         |1                  |NA             | 0.3206422| 0.2509813| 0.3903031|
|0-6 months (no birth st.)  |MAL-ED    |PERU                         |0                  |NA             | 0.4373456| 0.3377688| 0.5369224|
|0-6 months (no birth st.)  |MAL-ED    |SOUTH AFRICA                 |1                  |NA             | 0.2564164| 0.1488086| 0.3640243|
|0-6 months (no birth st.)  |MAL-ED    |SOUTH AFRICA                 |0                  |NA             | 0.3217523| 0.2513740| 0.3921306|
|0-6 months (no birth st.)  |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.2588405| 0.1437783| 0.3739028|
|0-6 months (no birth st.)  |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.3429612| 0.2607233| 0.4251991|


### Parameter: E(Y)


|agecat                     |studyid   |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:---------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL                        |NA                 |NA             | 0.6368421| 0.5884257| 0.6852585|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH                   |NA                 |NA             | 0.2628104| 0.2524838| 0.2731371|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH                   |NA                 |NA             | 0.5346535| 0.4656971| 0.6036099|
|0-24 months (no birth st.) |MAL-ED    |BRAZIL                       |NA                 |NA             | 0.1771429| 0.1204149| 0.2338709|
|0-24 months (no birth st.) |MAL-ED    |INDIA                        |NA                 |NA             | 0.5489130| 0.4768182| 0.6210079|
|0-24 months (no birth st.) |MAL-ED    |NEPAL                        |NA                 |NA             | 0.2587065| 0.1980144| 0.3193985|
|0-24 months (no birth st.) |MAL-ED    |PERU                         |NA                 |NA             | 0.5968379| 0.5362738| 0.6574021|
|0-24 months (no birth st.) |MAL-ED    |SOUTH AFRICA                 |NA                 |NA             | 0.5527426| 0.4893071| 0.6161781|
|0-24 months (no birth st.) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.8378378| 0.7845787| 0.8910970|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL                        |NA                 |NA             | 0.1973684| 0.1572979| 0.2374390|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH                   |NA                 |NA             | 0.1373090| 0.1297510| 0.1448670|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH                   |NA                 |NA             | 0.2227723| 0.1652475| 0.2802970|
|0-6 months (no birth st.)  |MAL-ED    |BRAZIL                       |NA                 |NA             | 0.1142857| 0.0670124| 0.1615591|
|0-6 months (no birth st.)  |MAL-ED    |INDIA                        |NA                 |NA             | 0.2228261| 0.1625334| 0.2831188|
|0-6 months (no birth st.)  |MAL-ED    |PERU                         |NA                 |NA             | 0.3636364| 0.3042435| 0.4230292|
|0-6 months (no birth st.)  |MAL-ED    |SOUTH AFRICA                 |NA                 |NA             | 0.3037975| 0.2451226| 0.3624723|
|0-6 months (no birth st.)  |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.3135135| 0.2464813| 0.3805457|


### Parameter: RR


|agecat                     |studyid   |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:--------------------------|:---------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL                        |0                  |1              | 0.9951687| 0.8317369| 1.190714|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH                   |0                  |1              | 1.0173557| 0.9193409| 1.125820|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH                   |0                  |1              | 1.1147100| 0.8199930| 1.515352|
|0-24 months (no birth st.) |MAL-ED    |BRAZIL                       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED    |BRAZIL                       |0                  |1              | 0.7829167| 0.4091631| 1.498079|
|0-24 months (no birth st.) |MAL-ED    |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED    |INDIA                        |0                  |1              | 0.5913339| 0.4043149| 0.864860|
|0-24 months (no birth st.) |MAL-ED    |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED    |NEPAL                        |0                  |1              | 0.9393856| 0.5832075| 1.513090|
|0-24 months (no birth st.) |MAL-ED    |PERU                         |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED    |PERU                         |0                  |1              | 1.1226605| 0.9197698| 1.370307|
|0-24 months (no birth st.) |MAL-ED    |SOUTH AFRICA                 |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED    |SOUTH AFRICA                 |0                  |1              | 1.2238556| 0.9102038| 1.645590|
|0-24 months (no birth st.) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |0                  |1              | 1.0458317| 0.9018162| 1.212846|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL                        |0                  |1              | 0.7891680| 0.4259899| 1.461974|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH                   |0                  |1              | 1.0169326| 0.8597057| 1.202914|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH                   |0                  |1              | 1.2449934| 0.6391006| 2.425297|
|0-6 months (no birth st.)  |MAL-ED    |BRAZIL                       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED    |BRAZIL                       |0                  |1              | 0.7906027| 0.3440626| 1.816682|
|0-6 months (no birth st.)  |MAL-ED    |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED    |INDIA                        |0                  |1              | 0.6578705| 0.3210735| 1.347958|
|0-6 months (no birth st.)  |MAL-ED    |PERU                         |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED    |PERU                         |0                  |1              | 1.3639676| 1.0067181| 1.847992|
|0-6 months (no birth st.)  |MAL-ED    |SOUTH AFRICA                 |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED    |SOUTH AFRICA                 |0                  |1              | 1.2548037| 0.7813934| 2.015032|
|0-6 months (no birth st.)  |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |0                  |1              | 1.3249903| 0.7988183| 2.197745|


### Parameter: PAR


|agecat                     |studyid   |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:--------------------------|:---------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL                        |1                  |NA             |  0.0023840| -0.0162508|  0.0210188|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH                   |1                  |NA             |  0.0004758| -0.0019840|  0.0029356|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH                   |1                  |NA             |  0.0094840| -0.0235063|  0.0424742|
|0-24 months (no birth st.) |MAL-ED    |BRAZIL                       |1                  |NA             | -0.0213381| -0.0802871|  0.0376110|
|0-24 months (no birth st.) |MAL-ED    |INDIA                        |1                  |NA             | -0.0661776| -0.1153475| -0.0170077|
|0-24 months (no birth st.) |MAL-ED    |NEPAL                        |1                  |NA             | -0.0054650| -0.0637601|  0.0528301|
|0-24 months (no birth st.) |MAL-ED    |PERU                         |1                  |NA             |  0.0238878| -0.0182908|  0.0660663|
|0-24 months (no birth st.) |MAL-ED    |SOUTH AFRICA                 |1                  |NA             |  0.0811139| -0.0278753|  0.1901031|
|0-24 months (no birth st.) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.0246219| -0.0614908|  0.1107345|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL                        |1                  |NA             | -0.0069616| -0.0239127|  0.0099895|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH                   |1                  |NA             |  0.0003341| -0.0017963|  0.0024644|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH                   |1                  |NA             |  0.0156313| -0.0147423|  0.0460048|
|0-6 months (no birth st.)  |MAL-ED    |BRAZIL                       |1                  |NA             | -0.0136213| -0.0617946|  0.0345521|
|0-6 months (no birth st.)  |MAL-ED    |INDIA                        |1                  |NA             | -0.0167042| -0.0557118|  0.0223033|
|0-6 months (no birth st.)  |MAL-ED    |PERU                         |1                  |NA             |  0.0429941|  0.0016595|  0.0843288|
|0-6 months (no birth st.)  |MAL-ED    |SOUTH AFRICA                 |1                  |NA             |  0.0473810| -0.0459441|  0.1407062|
|0-6 months (no birth st.)  |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.0546730| -0.0446837|  0.1540297|


### Parameter: PAF


|agecat                     |studyid   |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:--------------------------|:---------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL                        |1                  |NA             |  0.0037435| -0.0259665|  0.0325931|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH                   |1                  |NA             |  0.0018105| -0.0075983|  0.0111315|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH                   |1                  |NA             |  0.0177385| -0.0460176|  0.0776087|
|0-24 months (no birth st.) |MAL-ED    |BRAZIL                       |1                  |NA             | -0.1204568| -0.5065772|  0.1667049|
|0-24 months (no birth st.) |MAL-ED    |INDIA                        |1                  |NA             | -0.1205612| -0.2165359| -0.0321581|
|0-24 months (no birth st.) |MAL-ED    |NEPAL                        |1                  |NA             | -0.0211243| -0.2731236|  0.1809948|
|0-24 months (no birth st.) |MAL-ED    |PERU                         |1                  |NA             |  0.0400239| -0.0335518|  0.1083619|
|0-24 months (no birth st.) |MAL-ED    |SOUTH AFRICA                 |1                  |NA             |  0.1467481| -0.0765670|  0.3237403|
|0-24 months (no birth st.) |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.0293874| -0.0792353|  0.1270774|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL                        |1                  |NA             | -0.0352720| -0.1246706|  0.0470204|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH                   |1                  |NA             |  0.0024331| -0.0132096|  0.0178343|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH                   |1                  |NA             |  0.0701670| -0.0760829|  0.1965402|
|0-6 months (no birth st.)  |MAL-ED    |BRAZIL                       |1                  |NA             | -0.1191860| -0.6280671|  0.2306353|
|0-6 months (no birth st.)  |MAL-ED    |INDIA                        |1                  |NA             | -0.0749654| -0.2638270|  0.0856735|
|0-6 months (no birth st.)  |MAL-ED    |PERU                         |1                  |NA             |  0.1182339| -0.0032389|  0.2249987|
|0-6 months (no birth st.)  |MAL-ED    |SOUTH AFRICA                 |1                  |NA             |  0.1559625| -0.2144409|  0.4133932|
|0-6 months (no birth st.)  |MAL-ED    |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.1743879| -0.2105331|  0.4369132|
