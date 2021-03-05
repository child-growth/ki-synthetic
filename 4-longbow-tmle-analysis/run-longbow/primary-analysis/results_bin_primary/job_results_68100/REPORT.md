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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
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
* delta_vagbrth
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

|agecat      |studyid    |country      |hfoodsec             | pers_wast| n_cell|     n|
|:-----------|:----------|:------------|:--------------------|---------:|------:|-----:|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |         0|    367|   579|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |         1|     52|   579|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |         0|     75|   579|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |         1|      6|   579|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |         0|     61|   579|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |         1|     18|   579|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |         0|   7574| 15772|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |         1|    386| 15772|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |         0|   4908| 15772|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |         1|    302| 15772|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |         0|   2397| 15772|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |         1|    205| 15772|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |         0|   2471|  5240|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |         1|    205|  5240|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |         0|   1716|  5240|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |         1|    168|  5240|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |         0|    629|  5240|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |         1|     51|  5240|
|0-24 months |MAL-ED     |BANGLADESH   |Food Secure          |         0|    152|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Food Secure          |         1|      9|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |         0|      4|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |         1|      0|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |         0|     27|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |         1|      2|   194|
|0-24 months |MAL-ED     |BRAZIL       |Food Secure          |         0|      3|   129|
|0-24 months |MAL-ED     |BRAZIL       |Food Secure          |         1|      0|   129|
|0-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |         0|     11|   129|
|0-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |         1|      0|   129|
|0-24 months |MAL-ED     |BRAZIL       |Food Insecure        |         0|    115|   129|
|0-24 months |MAL-ED     |BRAZIL       |Food Insecure        |         1|      0|   129|
|0-24 months |MAL-ED     |INDIA        |Food Secure          |         0|    173|   212|
|0-24 months |MAL-ED     |INDIA        |Food Secure          |         1|     17|   212|
|0-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |         0|      3|   212|
|0-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |         1|      2|   212|
|0-24 months |MAL-ED     |INDIA        |Food Insecure        |         0|     16|   212|
|0-24 months |MAL-ED     |INDIA        |Food Insecure        |         1|      1|   212|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |         0|     93|   128|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |         1|      1|   128|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |         0|     14|   128|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |         1|      1|   128|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |         0|     19|   128|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |         1|      0|   128|
|0-24 months |MAL-ED     |PERU         |Food Secure          |         0|     27|   112|
|0-24 months |MAL-ED     |PERU         |Food Secure          |         1|      0|   112|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |         0|     29|   112|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |         1|      0|   112|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |         0|     55|   112|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |         1|      1|   112|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |         0|    131|   232|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |         1|      0|   232|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |         0|     18|   232|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |         1|      1|   232|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |         0|     81|   232|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |         1|      1|   232|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |         0|     74|   534|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |         1|      4|   534|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |         0|    379|   534|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |         1|     38|   534|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |         0|     34|   534|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |         1|      5|   534|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |         0|    425|   730|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |         1|     13|   730|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |         0|    197|   730|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |         1|     10|   730|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |         0|     82|   730|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |         1|      3|   730|


The following strata were considered:

* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/51ec3a03-6e16-4d34-8a2e-d959236be589/b271f368-ff57-485e-9005-a84533d63997/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/51ec3a03-6e16-4d34-8a2e-d959236be589/b271f368-ff57-485e-9005-a84533d63997/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/51ec3a03-6e16-4d34-8a2e-d959236be589/b271f368-ff57-485e-9005-a84533d63997/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/51ec3a03-6e16-4d34-8a2e-d959236be589/b271f368-ff57-485e-9005-a84533d63997/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid   |country    |intervention_level   |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:---------|:----------|:--------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |Food Secure          |NA             | 0.1241050| 0.0925086| 0.1557014|
|0-24 months |GMS-Nepal |NEPAL      |Mildly Food Insecure |NA             | 0.0740741| 0.0169917| 0.1311565|
|0-24 months |GMS-Nepal |NEPAL      |Food Insecure        |NA             | 0.2278481| 0.1352752| 0.3204210|
|0-24 months |JiVitA-3  |BANGLADESH |Food Secure          |NA             | 0.0517001| 0.0454285| 0.0579717|
|0-24 months |JiVitA-3  |BANGLADESH |Mildly Food Insecure |NA             | 0.0547793| 0.0476659| 0.0618927|
|0-24 months |JiVitA-3  |BANGLADESH |Food Insecure        |NA             | 0.0623945| 0.0504194| 0.0743695|
|0-24 months |JiVitA-4  |BANGLADESH |Food Secure          |NA             | 0.0765424| 0.0650549| 0.0880299|
|0-24 months |JiVitA-4  |BANGLADESH |Mildly Food Insecure |NA             | 0.0891876| 0.0743701| 0.1040051|
|0-24 months |JiVitA-4  |BANGLADESH |Food Insecure        |NA             | 0.0752535| 0.0532130| 0.0972941|


### Parameter: E(Y)


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |NA                 |NA             | 0.1312608| 0.1037314| 0.1587902|
|0-24 months |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.0566193| 0.0525138| 0.0607248|
|0-24 months |JiVitA-4  |BANGLADESH |NA                 |NA             | 0.0809160| 0.0722421| 0.0895899|


### Parameter: RR


|agecat      |studyid   |country    |intervention_level   |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:---------|:----------|:--------------------|:--------------|---------:|---------:|--------:|
|0-24 months |GMS-Nepal |NEPAL      |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal |NEPAL      |Mildly Food Insecure |Food Secure    | 0.5968661| 0.2651016| 1.343821|
|0-24 months |GMS-Nepal |NEPAL      |Food Insecure        |Food Secure    | 1.8359299| 1.1366453| 2.965427|
|0-24 months |JiVitA-3  |BANGLADESH |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3  |BANGLADESH |Mildly Food Insecure |Food Secure    | 1.0595586| 0.8873443| 1.265196|
|0-24 months |JiVitA-3  |BANGLADESH |Food Insecure        |Food Secure    | 1.2068533| 0.9650319| 1.509271|
|0-24 months |JiVitA-4  |BANGLADESH |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4  |BANGLADESH |Mildly Food Insecure |Food Secure    | 1.1652056| 0.9345602| 1.452773|
|0-24 months |JiVitA-4  |BANGLADESH |Food Insecure        |Food Secure    | 0.9831612| 0.7157855| 1.350413|


### Parameter: PAR


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |Food Secure        |NA             | 0.0071558| -0.0104876| 0.0247992|
|0-24 months |JiVitA-3  |BANGLADESH |Food Secure        |NA             | 0.0049192| -0.0001822| 0.0100206|
|0-24 months |JiVitA-4  |BANGLADESH |Food Secure        |NA             | 0.0043736| -0.0035892| 0.0123365|


### Parameter: PAF


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |Food Secure        |NA             | 0.0545158| -0.0895224| 0.1795116|
|0-24 months |JiVitA-3  |BANGLADESH |Food Secure        |NA             | 0.0868822| -0.0074665| 0.1723952|
|0-24 months |JiVitA-4  |BANGLADESH |Food Secure        |NA             | 0.0540516| -0.0495361| 0.1474153|
