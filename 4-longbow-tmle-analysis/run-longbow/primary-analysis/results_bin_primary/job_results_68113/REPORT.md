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

|agecat      |studyid        |country                      |exclfeed3 | pers_wast| n_cell|    n|
|:-----------|:--------------|:----------------------------|:---------|---------:|------:|----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1         |         0|     10|   10|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1         |         1|      0|   10|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |0         |         0|      0|   10|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |0         |         1|      0|   10|
|0-24 months |EE             |PAKISTAN                     |1         |         0|     38|   39|
|0-24 months |EE             |PAKISTAN                     |1         |         1|      1|   39|
|0-24 months |EE             |PAKISTAN                     |0         |         0|      0|   39|
|0-24 months |EE             |PAKISTAN                     |0         |         1|      0|   39|
|0-24 months |GMS-Nepal      |NEPAL                        |1         |         0|    326|  457|
|0-24 months |GMS-Nepal      |NEPAL                        |1         |         1|     54|  457|
|0-24 months |GMS-Nepal      |NEPAL                        |0         |         0|     63|  457|
|0-24 months |GMS-Nepal      |NEPAL                        |0         |         1|     14|  457|
|0-24 months |IRC            |INDIA                        |1         |         0|      0|   10|
|0-24 months |IRC            |INDIA                        |1         |         1|      0|   10|
|0-24 months |IRC            |INDIA                        |0         |         0|      9|   10|
|0-24 months |IRC            |INDIA                        |0         |         1|      1|   10|
|0-24 months |JiVitA-3       |BANGLADESH                   |1         |         0|   7714| 8954|
|0-24 months |JiVitA-3       |BANGLADESH                   |1         |         1|    470| 8954|
|0-24 months |JiVitA-3       |BANGLADESH                   |0         |         0|    731| 8954|
|0-24 months |JiVitA-3       |BANGLADESH                   |0         |         1|     39| 8954|
|0-24 months |JiVitA-4       |BANGLADESH                   |1         |         0|    136|  163|
|0-24 months |JiVitA-4       |BANGLADESH                   |1         |         1|     10|  163|
|0-24 months |JiVitA-4       |BANGLADESH                   |0         |         0|     16|  163|
|0-24 months |JiVitA-4       |BANGLADESH                   |0         |         1|      1|  163|
|0-24 months |Keneba         |GAMBIA                       |1         |         0|   1645| 1950|
|0-24 months |Keneba         |GAMBIA                       |1         |         1|     90| 1950|
|0-24 months |Keneba         |GAMBIA                       |0         |         0|    194| 1950|
|0-24 months |Keneba         |GAMBIA                       |0         |         1|     21| 1950|
|0-24 months |MAL-ED         |BANGLADESH                   |1         |         0|    148|  240|
|0-24 months |MAL-ED         |BANGLADESH                   |1         |         1|      8|  240|
|0-24 months |MAL-ED         |BANGLADESH                   |0         |         0|     80|  240|
|0-24 months |MAL-ED         |BANGLADESH                   |0         |         1|      4|  240|
|0-24 months |MAL-ED         |BRAZIL                       |1         |         0|     62|  195|
|0-24 months |MAL-ED         |BRAZIL                       |1         |         1|      1|  195|
|0-24 months |MAL-ED         |BRAZIL                       |0         |         0|    131|  195|
|0-24 months |MAL-ED         |BRAZIL                       |0         |         1|      1|  195|
|0-24 months |MAL-ED         |INDIA                        |1         |         0|    104|  215|
|0-24 months |MAL-ED         |INDIA                        |1         |         1|      8|  215|
|0-24 months |MAL-ED         |INDIA                        |0         |         0|     93|  215|
|0-24 months |MAL-ED         |INDIA                        |0         |         1|     10|  215|
|0-24 months |MAL-ED         |NEPAL                        |1         |         0|     69|  228|
|0-24 months |MAL-ED         |NEPAL                        |1         |         1|      2|  228|
|0-24 months |MAL-ED         |NEPAL                        |0         |         0|    155|  228|
|0-24 months |MAL-ED         |NEPAL                        |0         |         1|      2|  228|
|0-24 months |MAL-ED         |PERU                         |1         |         0|     62|  281|
|0-24 months |MAL-ED         |PERU                         |1         |         1|      0|  281|
|0-24 months |MAL-ED         |PERU                         |0         |         0|    218|  281|
|0-24 months |MAL-ED         |PERU                         |0         |         1|      1|  281|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1         |         0|     24|  264|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1         |         1|      0|  264|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0         |         0|    238|  264|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0         |         1|      2|  264|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |         0|     46|  218|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |         1|      0|  218|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |         0|    172|  218|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |         1|      0|  218|
|0-24 months |PROVIDE        |BANGLADESH                   |1         |         0|    443|  641|
|0-24 months |PROVIDE        |BANGLADESH                   |1         |         1|      8|  641|
|0-24 months |PROVIDE        |BANGLADESH                   |0         |         0|    183|  641|
|0-24 months |PROVIDE        |BANGLADESH                   |0         |         1|      7|  641|
|0-24 months |SAS-CompFeed   |INDIA                        |1         |         0|    355|  413|
|0-24 months |SAS-CompFeed   |INDIA                        |1         |         1|     40|  413|
|0-24 months |SAS-CompFeed   |INDIA                        |0         |         0|     16|  413|
|0-24 months |SAS-CompFeed   |INDIA                        |0         |         1|      2|  413|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/8b3f631e-8ea8-4953-a215-f0c8c25a09ac/f1889a28-3b0c-43ed-bf17-a1cc076f6db2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8b3f631e-8ea8-4953-a215-f0c8c25a09ac/f1889a28-3b0c-43ed-bf17-a1cc076f6db2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8b3f631e-8ea8-4953-a215-f0c8c25a09ac/f1889a28-3b0c-43ed-bf17-a1cc076f6db2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8b3f631e-8ea8-4953-a215-f0c8c25a09ac/f1889a28-3b0c-43ed-bf17-a1cc076f6db2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |NA             | 0.1428863| 0.1077240| 0.1780486|
|0-24 months |GMS-Nepal |NEPAL      |0                  |NA             | 0.2025675| 0.1176756| 0.2874594|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0574570| 0.0516666| 0.0632475|
|0-24 months |JiVitA-3  |BANGLADESH |0                  |NA             | 0.0509228| 0.0346443| 0.0672013|
|0-24 months |Keneba    |GAMBIA     |1                  |NA             | 0.0517791| 0.0413411| 0.0622170|
|0-24 months |Keneba    |GAMBIA     |0                  |NA             | 0.0990711| 0.0599745| 0.1381676|
|0-24 months |MAL-ED    |INDIA      |1                  |NA             | 0.0714286| 0.0236212| 0.1192360|
|0-24 months |MAL-ED    |INDIA      |0                  |NA             | 0.0970874| 0.0397753| 0.1543994|
|0-24 months |PROVIDE   |BANGLADESH |1                  |NA             | 0.0177384| 0.0055465| 0.0299302|
|0-24 months |PROVIDE   |BANGLADESH |0                  |NA             | 0.0368421| 0.0100362| 0.0636481|


### Parameter: E(Y)


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |NA                 |NA             | 0.1487965| 0.1161318| 0.1814612|
|0-24 months |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.0568461| 0.0514610| 0.0622312|
|0-24 months |Keneba    |GAMBIA     |NA                 |NA             | 0.0569231| 0.0466368| 0.0672094|
|0-24 months |MAL-ED    |INDIA      |NA                 |NA             | 0.0837209| 0.0466125| 0.1208293|
|0-24 months |PROVIDE   |BANGLADESH |NA                 |NA             | 0.0234009| 0.0116889| 0.0351130|


### Parameter: RR


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal |NEPAL      |0                  |1              | 1.4176835| 0.8725097| 2.303500|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3  |BANGLADESH |0                  |1              | 0.8862764| 0.6299206| 1.246960|
|0-24 months |Keneba    |GAMBIA     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |Keneba    |GAMBIA     |0                  |1              | 1.9133412| 1.2289066| 2.978969|
|0-24 months |MAL-ED    |INDIA      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED    |INDIA      |0                  |1              | 1.3592233| 0.5568160| 3.317950|
|0-24 months |PROVIDE   |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE   |BANGLADESH |0                  |1              | 2.0769737| 0.7633930| 5.650850|


### Parameter: PAR


|agecat      |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |NA             |  0.0059102| -0.0100402| 0.0218607|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |NA             | -0.0006109| -0.0021207| 0.0008988|
|0-24 months |Keneba    |GAMBIA     |1                  |NA             |  0.0051440|  0.0006052| 0.0096828|
|0-24 months |MAL-ED    |INDIA      |1                  |NA             |  0.0122924| -0.0235037| 0.0480884|
|0-24 months |PROVIDE   |BANGLADESH |1                  |NA             |  0.0056626| -0.0030924| 0.0144175|


### Parameter: PAF


|agecat      |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |NA             |  0.0397201| -0.0732890| 0.1408302|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |NA             | -0.0107466| -0.0375323| 0.0153475|
|0-24 months |Keneba    |GAMBIA     |1                  |NA             |  0.0903674|  0.0085528| 0.1654307|
|0-24 months |MAL-ED    |INDIA      |1                  |NA             |  0.1468254| -0.4013411| 0.4805641|
|0-24 months |PROVIDE   |BANGLADESH |1                  |NA             |  0.2419808| -0.2103743| 0.5252765|
