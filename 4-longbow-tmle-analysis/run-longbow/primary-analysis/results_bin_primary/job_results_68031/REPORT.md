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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

* arm
* sex
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
* month
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
* delta_month
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

|agecat                      |studyid        |country                      |exclfeed3 | ever_swasted| n_cell|     n|
|:---------------------------|:--------------|:----------------------------|:---------|------------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1         |            0|      6|    10|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1         |            1|      4|    10|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0         |            0|      0|    10|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0         |            1|      0|    10|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1         |            0|     34|    39|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1         |            1|      5|    39|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0         |            0|      0|    39|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0         |            1|      0|    39|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1         |            0|    283|   453|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1         |            1|     93|   453|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0         |            0|     62|   453|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0         |            1|     15|   453|
|0-24 months (no birth wast) |IRC            |INDIA                        |1         |            0|      0|    10|
|0-24 months (no birth wast) |IRC            |INDIA                        |1         |            1|      0|    10|
|0-24 months (no birth wast) |IRC            |INDIA                        |0         |            0|      6|    10|
|0-24 months (no birth wast) |IRC            |INDIA                        |0         |            1|      4|    10|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1         |            0|  12883| 14768|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1         |            1|    478| 14768|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0         |            0|   1350| 14768|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0         |            1|     57| 14768|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1         |            0|    142|   164|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1         |            1|      5|   164|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0         |            0|     16|   164|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0         |            1|      1|   164|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1         |            0|   1519|  2015|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1         |            1|    276|  2015|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0         |            0|    178|  2015|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0         |            1|     42|  2015|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1         |            0|    153|   244|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1         |            1|      6|   244|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0         |            0|     79|   244|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0         |            1|      6|   244|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1         |            0|     61|   202|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1         |            1|      3|   202|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0         |            0|    137|   202|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0         |            1|      1|   202|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1         |            0|    106|   212|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1         |            1|      6|   212|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0         |            0|     94|   212|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0         |            1|      6|   212|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1         |            0|     68|   227|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1         |            1|      2|   227|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0         |            0|    156|   227|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0         |            1|      1|   227|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1         |            0|     63|   287|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1         |            1|      1|   287|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0         |            0|    220|   287|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0         |            1|      3|   287|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1         |            0|     25|   269|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1         |            1|      0|   269|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0         |            0|    233|   269|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0         |            1|     11|   269|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |            0|     46|   219|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |            1|      1|   219|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |            0|    166|   219|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |            1|      6|   219|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1         |            0|    481|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1         |            1|     12|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0         |            0|    187|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0         |            1|      7|   687|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1         |            0|    368|   443|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1         |            1|     53|   443|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0         |            0|     20|   443|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0         |            1|      2|   443|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA

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
![](/tmp/f5240203-3524-4707-afed-c539bc43b3ae/fa6a6bca-058c-45a8-b545-b74f402acd18/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f5240203-3524-4707-afed-c539bc43b3ae/fa6a6bca-058c-45a8-b545-b74f402acd18/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f5240203-3524-4707-afed-c539bc43b3ae/fa6a6bca-058c-45a8-b545-b74f402acd18/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f5240203-3524-4707-afed-c539bc43b3ae/fa6a6bca-058c-45a8-b545-b74f402acd18/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | 0.2477945| 0.2040875| 0.2915015|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |0                  |NA             | 0.1944803| 0.1043415| 0.2846191|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0357015| 0.0321802| 0.0392228|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |0                  |NA             | 0.0417556| 0.0280485| 0.0554627|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |1                  |NA             | 0.1538107| 0.1371227| 0.1704987|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |0                  |NA             | 0.1921359| 0.1402069| 0.2440650|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |NA             | 0.0377358| 0.0080557| 0.0674160|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |0                  |NA             | 0.0705882| 0.0160249| 0.1251515|
|0-24 months (no birth wast) |MAL-ED    |INDIA      |1                  |NA             | 0.0535714| 0.0117714| 0.0953714|
|0-24 months (no birth wast) |MAL-ED    |INDIA      |0                  |NA             | 0.0600000| 0.0133433| 0.1066567|
|0-24 months (no birth wast) |PROVIDE   |BANGLADESH |1                  |NA             | 0.0243408| 0.0107277| 0.0379539|
|0-24 months (no birth wast) |PROVIDE   |BANGLADESH |0                  |NA             | 0.0360825| 0.0098202| 0.0623447|


### Parameter: E(Y)


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |NA                 |NA             | 0.2384106| 0.1991278| 0.2776934|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.0362270| 0.0327939| 0.0396601|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |NA                 |NA             | 0.1578164| 0.1418944| 0.1737384|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |NA                 |NA             | 0.0491803| 0.0219915| 0.0763691|
|0-24 months (no birth wast) |MAL-ED    |INDIA      |NA                 |NA             | 0.0566038| 0.0254237| 0.0877838|
|0-24 months (no birth wast) |PROVIDE   |BANGLADESH |NA                 |NA             | 0.0276565| 0.0153851| 0.0399279|


### Parameter: RR


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |0                  |1              | 0.7848451| 0.4780487| 1.288534|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |0                  |1              | 1.1695762| 0.8295372| 1.649002|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |0                  |1              | 1.2491714| 0.9336740| 1.671278|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |0                  |1              | 1.8705882| 0.6209381| 5.635184|
|0-24 months (no birth wast) |MAL-ED    |INDIA      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED    |INDIA      |0                  |1              | 1.1200000| 0.3722239| 3.370015|
|0-24 months (no birth wast) |PROVIDE   |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |PROVIDE   |BANGLADESH |0                  |1              | 1.4823883| 0.5920038| 3.711927|


### Parameter: PAR


|agecat                      |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | -0.0093839| -0.0262726| 0.0075048|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             |  0.0005255| -0.0008227| 0.0018737|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |1                  |NA             |  0.0040057| -0.0019549| 0.0099662|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |NA             |  0.0114445| -0.0102827| 0.0331716|
|0-24 months (no birth wast) |MAL-ED    |INDIA      |1                  |NA             |  0.0030323| -0.0265192| 0.0325839|
|0-24 months (no birth wast) |PROVIDE   |BANGLADESH |1                  |NA             |  0.0033157| -0.0050469| 0.0116783|


### Parameter: PAF


|agecat                      |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | -0.0393603| -0.1125577| 0.0290213|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             |  0.0145056| -0.0232622| 0.0508794|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |1                  |NA             |  0.0253818| -0.0130710| 0.0623750|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |NA             |  0.2327044| -0.3336978| 0.5585638|
|0-24 months (no birth wast) |MAL-ED    |INDIA      |1                  |NA             |  0.0535714| -0.6417907| 0.4544207|
|0-24 months (no birth wast) |PROVIDE   |BANGLADESH |1                  |NA             |  0.1198890| -0.2346253| 0.3726069|
