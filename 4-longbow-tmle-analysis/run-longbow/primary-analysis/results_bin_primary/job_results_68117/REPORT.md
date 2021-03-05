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
* W_birthwt
* W_birthlen
* W_nrooms
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
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
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

|agecat      |studyid      |country                      |earlybf | pers_wast| n_cell|     n|
|:-----------|:------------|:----------------------------|:-------|---------:|------:|-----:|
|0-24 months |EE           |PAKISTAN                     |1       |         0|     63|   366|
|0-24 months |EE           |PAKISTAN                     |1       |         1|      6|   366|
|0-24 months |EE           |PAKISTAN                     |0       |         0|    271|   366|
|0-24 months |EE           |PAKISTAN                     |0       |         1|     26|   366|
|0-24 months |GMS-Nepal    |NEPAL                        |1       |         0|    143|   543|
|0-24 months |GMS-Nepal    |NEPAL                        |1       |         1|     18|   543|
|0-24 months |GMS-Nepal    |NEPAL                        |0       |         0|    327|   543|
|0-24 months |GMS-Nepal    |NEPAL                        |0       |         1|     55|   543|
|0-24 months |JiVitA-3     |BANGLADESH                   |1       |         0|     20| 15803|
|0-24 months |JiVitA-3     |BANGLADESH                   |1       |         1|      4| 15803|
|0-24 months |JiVitA-3     |BANGLADESH                   |0       |         0|  14885| 15803|
|0-24 months |JiVitA-3     |BANGLADESH                   |0       |         1|    894| 15803|
|0-24 months |JiVitA-4     |BANGLADESH                   |1       |         0|   3096|  5281|
|0-24 months |JiVitA-4     |BANGLADESH                   |1       |         1|    266|  5281|
|0-24 months |JiVitA-4     |BANGLADESH                   |0       |         0|   1759|  5281|
|0-24 months |JiVitA-4     |BANGLADESH                   |0       |         1|    160|  5281|
|0-24 months |MAL-ED       |BANGLADESH                   |1       |         0|    144|   247|
|0-24 months |MAL-ED       |BANGLADESH                   |1       |         1|      8|   247|
|0-24 months |MAL-ED       |BANGLADESH                   |0       |         0|     90|   247|
|0-24 months |MAL-ED       |BANGLADESH                   |0       |         1|      5|   247|
|0-24 months |MAL-ED       |BRAZIL                       |1       |         0|     99|   218|
|0-24 months |MAL-ED       |BRAZIL                       |1       |         1|      1|   218|
|0-24 months |MAL-ED       |BRAZIL                       |0       |         0|    117|   218|
|0-24 months |MAL-ED       |BRAZIL                       |0       |         1|      1|   218|
|0-24 months |MAL-ED       |INDIA                        |1       |         0|    127|   241|
|0-24 months |MAL-ED       |INDIA                        |1       |         1|     16|   241|
|0-24 months |MAL-ED       |INDIA                        |0       |         0|     93|   241|
|0-24 months |MAL-ED       |INDIA                        |0       |         1|      5|   241|
|0-24 months |MAL-ED       |NEPAL                        |1       |         0|     94|   238|
|0-24 months |MAL-ED       |NEPAL                        |1       |         1|      3|   238|
|0-24 months |MAL-ED       |NEPAL                        |0       |         0|    140|   238|
|0-24 months |MAL-ED       |NEPAL                        |0       |         1|      1|   238|
|0-24 months |MAL-ED       |PERU                         |1       |         0|    211|   284|
|0-24 months |MAL-ED       |PERU                         |1       |         1|      1|   284|
|0-24 months |MAL-ED       |PERU                         |0       |         0|     72|   284|
|0-24 months |MAL-ED       |PERU                         |0       |         1|      0|   284|
|0-24 months |MAL-ED       |SOUTH AFRICA                 |1       |         0|    166|   270|
|0-24 months |MAL-ED       |SOUTH AFRICA                 |1       |         1|      1|   270|
|0-24 months |MAL-ED       |SOUTH AFRICA                 |0       |         0|    102|   270|
|0-24 months |MAL-ED       |SOUTH AFRICA                 |0       |         1|      1|   270|
|0-24 months |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1       |         0|    210|   253|
|0-24 months |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1       |         1|      0|   253|
|0-24 months |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |0       |         0|     43|   253|
|0-24 months |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |0       |         1|      0|   253|
|0-24 months |NIH-Crypto   |BANGLADESH                   |1       |         0|    607|   730|
|0-24 months |NIH-Crypto   |BANGLADESH                   |1       |         1|     25|   730|
|0-24 months |NIH-Crypto   |BANGLADESH                   |0       |         0|     97|   730|
|0-24 months |NIH-Crypto   |BANGLADESH                   |0       |         1|      1|   730|
|0-24 months |SAS-CompFeed |INDIA                        |1       |         0|     92|  1366|
|0-24 months |SAS-CompFeed |INDIA                        |1       |         1|      9|  1366|
|0-24 months |SAS-CompFeed |INDIA                        |0       |         0|   1160|  1366|
|0-24 months |SAS-CompFeed |INDIA                        |0       |         1|    105|  1366|
|0-24 months |ZVITAMBO     |ZIMBABWE                     |1       |         0|   4499|  8450|
|0-24 months |ZVITAMBO     |ZIMBABWE                     |1       |         1|     74|  8450|
|0-24 months |ZVITAMBO     |ZIMBABWE                     |0       |         0|   3796|  8450|
|0-24 months |ZVITAMBO     |ZIMBABWE                     |0       |         1|     81|  8450|


The following strata were considered:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/938a3ca8-fab0-4266-a9a9-0d4fa8608329/0a337ecc-e585-4a3d-8341-2fa85dfe148e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/938a3ca8-fab0-4266-a9a9-0d4fa8608329/0a337ecc-e585-4a3d-8341-2fa85dfe148e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/938a3ca8-fab0-4266-a9a9-0d4fa8608329/0a337ecc-e585-4a3d-8341-2fa85dfe148e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/938a3ca8-fab0-4266-a9a9-0d4fa8608329/0a337ecc-e585-4a3d-8341-2fa85dfe148e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid      |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |EE           |PAKISTAN   |1                  |NA             | 0.0869565| 0.0203810| 0.1535320|
|0-24 months |EE           |PAKISTAN   |0                  |NA             | 0.0875421| 0.0553552| 0.1197290|
|0-24 months |GMS-Nepal    |NEPAL      |1                  |NA             | 0.1159894| 0.0668453| 0.1651334|
|0-24 months |GMS-Nepal    |NEPAL      |0                  |NA             | 0.1445184| 0.1092060| 0.1798308|
|0-24 months |JiVitA-4     |BANGLADESH |1                  |NA             | 0.0806083| 0.0697509| 0.0914656|
|0-24 months |JiVitA-4     |BANGLADESH |0                  |NA             | 0.0802622| 0.0674566| 0.0930678|
|0-24 months |MAL-ED       |BANGLADESH |1                  |NA             | 0.0526316| 0.0170611| 0.0882021|
|0-24 months |MAL-ED       |BANGLADESH |0                  |NA             | 0.0526316| 0.0076381| 0.0976251|
|0-24 months |MAL-ED       |INDIA      |1                  |NA             | 0.1118881| 0.0601145| 0.1636618|
|0-24 months |MAL-ED       |INDIA      |0                  |NA             | 0.0510204| 0.0073650| 0.0946758|
|0-24 months |SAS-CompFeed |INDIA      |1                  |NA             | 0.0891089| 0.0534033| 0.1248146|
|0-24 months |SAS-CompFeed |INDIA      |0                  |NA             | 0.0830040| 0.0588611| 0.1071469|
|0-24 months |ZVITAMBO     |ZIMBABWE   |1                  |NA             | 0.0164788| 0.0127472| 0.0202104|
|0-24 months |ZVITAMBO     |ZIMBABWE   |0                  |NA             | 0.0209775| 0.0164281| 0.0255269|


### Parameter: E(Y)


|agecat      |studyid      |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |EE           |PAKISTAN   |NA                 |NA             | 0.0874317| 0.0584537| 0.1164097|
|0-24 months |GMS-Nepal    |NEPAL      |NA                 |NA             | 0.1344383| 0.1057200| 0.1631566|
|0-24 months |JiVitA-4     |BANGLADESH |NA                 |NA             | 0.0806665| 0.0720540| 0.0892791|
|0-24 months |MAL-ED       |BANGLADESH |NA                 |NA             | 0.0526316| 0.0247278| 0.0805354|
|0-24 months |MAL-ED       |INDIA      |NA                 |NA             | 0.0871369| 0.0514552| 0.1228187|
|0-24 months |SAS-CompFeed |INDIA      |NA                 |NA             | 0.0834553| 0.0601989| 0.1067118|
|0-24 months |ZVITAMBO     |ZIMBABWE   |NA                 |NA             | 0.0183432| 0.0154819| 0.0212045|


### Parameter: RR


|agecat      |studyid      |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:------------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |EE           |PAKISTAN   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |EE           |PAKISTAN   |0                  |1              | 1.0067340| 0.4305832| 2.353815|
|0-24 months |GMS-Nepal    |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal    |NEPAL      |0                  |1              | 1.2459626| 0.7636786| 2.032822|
|0-24 months |JiVitA-4     |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4     |BANGLADESH |0                  |1              | 0.9957065| 0.8149542| 1.216549|
|0-24 months |MAL-ED       |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED       |BANGLADESH |0                  |1              | 1.0000000| 0.3362978| 2.973555|
|0-24 months |MAL-ED       |INDIA      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED       |INDIA      |0                  |1              | 0.4559949| 0.1723848| 1.206205|
|0-24 months |SAS-CompFeed |INDIA      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed |INDIA      |0                  |1              | 0.9314888| 0.6140480| 1.413035|
|0-24 months |ZVITAMBO     |ZIMBABWE   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO     |ZIMBABWE   |0                  |1              | 1.2729985| 0.9304275| 1.741700|


### Parameter: PAR


|agecat      |studyid      |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:------------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |EE           |PAKISTAN   |1                  |NA             |  0.0004752| -0.0595317| 0.0604821|
|0-24 months |GMS-Nepal    |NEPAL      |1                  |NA             |  0.0184490| -0.0242215| 0.0611194|
|0-24 months |JiVitA-4     |BANGLADESH |1                  |NA             |  0.0000583| -0.0058359| 0.0059524|
|0-24 months |MAL-ED       |BANGLADESH |1                  |NA             |  0.0000000| -0.0220599| 0.0220599|
|0-24 months |MAL-ED       |INDIA      |1                  |NA             | -0.0247512| -0.0525483| 0.0030459|
|0-24 months |SAS-CompFeed |INDIA      |1                  |NA             | -0.0056536| -0.0393651| 0.0280580|
|0-24 months |ZVITAMBO     |ZIMBABWE   |1                  |NA             |  0.0018644| -0.0008620| 0.0045908|


### Parameter: PAF


|agecat      |studyid      |country    |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:------------|:----------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |EE           |PAKISTAN   |1                  |NA             |  0.0054348| -0.9830339|  0.5011886|
|0-24 months |GMS-Nepal    |NEPAL      |1                  |NA             |  0.1372299| -0.2443918|  0.4018184|
|0-24 months |JiVitA-4     |BANGLADESH |1                  |NA             |  0.0007225| -0.0750908|  0.0711896|
|0-24 months |MAL-ED       |BANGLADESH |1                  |NA             |  0.0000000| -0.5206498|  0.3423864|
|0-24 months |MAL-ED       |INDIA      |1                  |NA             | -0.2840493| -0.6252463| -0.0144817|
|0-24 months |SAS-CompFeed |INDIA      |1                  |NA             | -0.0677436| -0.5664076|  0.2721713|
|0-24 months |ZVITAMBO     |ZIMBABWE   |1                  |NA             |  0.1016400| -0.0589570|  0.2378815|
