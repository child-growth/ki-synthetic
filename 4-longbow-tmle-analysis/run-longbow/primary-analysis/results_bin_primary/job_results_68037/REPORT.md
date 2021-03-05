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

|agecat                      |studyid      |country                      |earlybf | ever_swasted| n_cell|     n|
|:---------------------------|:------------|:----------------------------|:-------|------------:|------:|-----:|
|0-24 months (no birth wast) |EE           |PAKISTAN                     |1       |            0|     57|   366|
|0-24 months (no birth wast) |EE           |PAKISTAN                     |1       |            1|     11|   366|
|0-24 months (no birth wast) |EE           |PAKISTAN                     |0       |            0|    245|   366|
|0-24 months (no birth wast) |EE           |PAKISTAN                     |0       |            1|     53|   366|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL                        |1       |            0|    146|   599|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL                        |1       |            1|     26|   599|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL                        |0       |            0|    335|   599|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL                        |0       |            1|     92|   599|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH                   |1       |            0|    137| 26458|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH                   |1       |            1|      6| 26458|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH                   |0       |            0|  25373| 26458|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH                   |0       |            1|    942| 26458|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH                   |1       |            0|   3268|  5396|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH                   |1       |            1|    146|  5396|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH                   |0       |            0|   1896|  5396|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH                   |0       |            1|     86|  5396|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH                   |1       |            0|    154|   262|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH                   |1       |            1|      7|   262|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH                   |0       |            0|     96|   262|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH                   |0       |            1|      5|   262|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL                       |1       |            0|    106|   233|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL                       |1       |            1|      2|   233|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL                       |0       |            0|    123|   233|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL                       |0       |            1|      2|   233|
|0-24 months (no birth wast) |MAL-ED       |INDIA                        |1       |            0|    136|   245|
|0-24 months (no birth wast) |MAL-ED       |INDIA                        |1       |            1|     10|   245|
|0-24 months (no birth wast) |MAL-ED       |INDIA                        |0       |            0|     96|   245|
|0-24 months (no birth wast) |MAL-ED       |INDIA                        |0       |            1|      3|   245|
|0-24 months (no birth wast) |MAL-ED       |NEPAL                        |1       |            0|     96|   239|
|0-24 months (no birth wast) |MAL-ED       |NEPAL                        |1       |            1|      1|   239|
|0-24 months (no birth wast) |MAL-ED       |NEPAL                        |0       |            0|    140|   239|
|0-24 months (no birth wast) |MAL-ED       |NEPAL                        |0       |            1|      2|   239|
|0-24 months (no birth wast) |MAL-ED       |PERU                         |1       |            0|    221|   302|
|0-24 months (no birth wast) |MAL-ED       |PERU                         |1       |            1|      4|   302|
|0-24 months (no birth wast) |MAL-ED       |PERU                         |0       |            0|     77|   302|
|0-24 months (no birth wast) |MAL-ED       |PERU                         |0       |            1|      0|   302|
|0-24 months (no birth wast) |MAL-ED       |SOUTH AFRICA                 |1       |            0|    171|   296|
|0-24 months (no birth wast) |MAL-ED       |SOUTH AFRICA                 |1       |            1|     10|   296|
|0-24 months (no birth wast) |MAL-ED       |SOUTH AFRICA                 |0       |            0|    113|   296|
|0-24 months (no birth wast) |MAL-ED       |SOUTH AFRICA                 |0       |            1|      2|   296|
|0-24 months (no birth wast) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1       |            0|    210|   261|
|0-24 months (no birth wast) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1       |            1|      6|   261|
|0-24 months (no birth wast) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |0       |            0|     43|   261|
|0-24 months (no birth wast) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |0       |            1|      2|   261|
|0-24 months (no birth wast) |NIH-Crypto   |BANGLADESH                   |1       |            0|    634|   754|
|0-24 months (no birth wast) |NIH-Crypto   |BANGLADESH                   |1       |            1|     20|   754|
|0-24 months (no birth wast) |NIH-Crypto   |BANGLADESH                   |0       |            0|    100|   754|
|0-24 months (no birth wast) |NIH-Crypto   |BANGLADESH                   |0       |            1|      0|   754|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA                        |1       |            0|     91|  1465|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA                        |1       |            1|     12|  1465|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA                        |0       |            0|   1202|  1465|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA                        |0       |            1|    160|  1465|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE                     |1       |            0|   6245| 12131|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE                     |1       |            1|    227| 12131|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE                     |0       |            0|   5458| 12131|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE                     |0       |            1|    201| 12131|


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/fa2adab7-ed04-4701-95ae-8c0f49a27a0a/7dba3f45-c3f4-4ff1-a6ea-56abaf68186e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fa2adab7-ed04-4701-95ae-8c0f49a27a0a/7dba3f45-c3f4-4ff1-a6ea-56abaf68186e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fa2adab7-ed04-4701-95ae-8c0f49a27a0a/7dba3f45-c3f4-4ff1-a6ea-56abaf68186e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fa2adab7-ed04-4701-95ae-8c0f49a27a0a/7dba3f45-c3f4-4ff1-a6ea-56abaf68186e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid      |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |EE           |PAKISTAN   |1                  |NA             | 0.1573477| 0.0660469| 0.2486484|
|0-24 months (no birth wast) |EE           |PAKISTAN   |0                  |NA             | 0.1791286| 0.1355506| 0.2227066|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL      |1                  |NA             | 0.1544669| 0.0995604| 0.2093735|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL      |0                  |NA             | 0.2112709| 0.1726444| 0.2498974|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH |1                  |NA             | 0.0419580| 0.0335267| 0.0503894|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH |0                  |NA             | 0.0357971| 0.0331555| 0.0384386|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH |1                  |NA             | 0.0429833| 0.0352747| 0.0506920|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH |0                  |NA             | 0.0423325| 0.0336609| 0.0510041|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH |1                  |NA             | 0.0434783| 0.0119174| 0.0750391|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH |0                  |NA             | 0.0495050| 0.0071195| 0.0918904|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA      |1                  |NA             | 0.1389999| 0.0711481| 0.2068517|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA      |0                  |NA             | 0.1179228| 0.0952318| 0.1406138|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE   |1                  |NA             | 0.0349636| 0.0303835| 0.0395437|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE   |0                  |NA             | 0.0355718| 0.0306205| 0.0405231|


### Parameter: E(Y)


|agecat                      |studyid      |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |EE           |PAKISTAN   |NA                 |NA             | 0.1748634| 0.1358949| 0.2138319|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL      |NA                 |NA             | 0.1969950| 0.1651175| 0.2288725|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH |NA                 |NA             | 0.0358304| 0.0332487| 0.0384121|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH |NA                 |NA             | 0.0429948| 0.0372768| 0.0487128|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH |NA                 |NA             | 0.0458015| 0.0204393| 0.0711637|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA      |NA                 |NA             | 0.1174061| 0.0943414| 0.1404709|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE   |NA                 |NA             | 0.0352815| 0.0319984| 0.0385647|


### Parameter: RR


|agecat                      |studyid      |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:------------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |EE           |PAKISTAN   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |EE           |PAKISTAN   |0                  |1              | 1.1384254| 0.6070902| 2.134794|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL      |0                  |1              | 1.3677422| 0.9175421| 2.038837|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH |0                  |1              | 0.8531636| 0.6882144| 1.057647|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH |0                  |1              | 0.9848585| 0.7449533| 1.302023|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH |0                  |1              | 1.1386139| 0.3705824| 3.498390|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA      |0                  |1              | 0.8483665| 0.5412968| 1.329632|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE   |0                  |1              | 1.0173947| 0.8405898| 1.231388|


### Parameter: PAR


|agecat                      |studyid      |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:------------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |EE           |PAKISTAN   |1                  |NA             |  0.0175157| -0.0659580| 0.1009895|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL      |1                  |NA             |  0.0425281| -0.0061641| 0.0912202|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH |1                  |NA             | -0.0061277| -0.0147695| 0.0025141|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH |1                  |NA             |  0.0000115| -0.0044030| 0.0044260|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH |1                  |NA             |  0.0023233| -0.0180515| 0.0226980|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA      |1                  |NA             | -0.0215937| -0.0805585| 0.0373711|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE   |1                  |NA             |  0.0003179| -0.0029012| 0.0035369|


### Parameter: PAF


|agecat                      |studyid      |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:------------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |EE           |PAKISTAN   |1                  |NA             |  0.1001681| -0.5295347| 0.4706250|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL      |1                  |NA             |  0.2158841| -0.0723207| 0.4266288|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH |1                  |NA             | -0.1710189| -0.4426878| 0.0494928|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH |1                  |NA             |  0.0002671| -0.1078721| 0.0978509|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH |1                  |NA             |  0.0507246| -0.5154506| 0.4053757|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA      |1                  |NA             | -0.1839232| -0.7993501| 0.2210109|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE   |1                  |NA             |  0.0090098| -0.0865583| 0.0961722|
