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

**Intervention Variable:** nrooms

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

|agecat      |studyid        |country                      |nrooms | pers_wast| n_cell|     n|
|:-----------|:--------------|:----------------------------|:------|---------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |4+     |         0|     14|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |4+     |         1|      0|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1      |         0|    189|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1      |         1|     13|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |2      |         0|     97|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |2      |         1|      9|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |3      |         0|     50|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |3      |         1|      1|   373|
|0-24 months |COHORTS        |INDIA                        |4+     |         0|     75|  4119|
|0-24 months |COHORTS        |INDIA                        |4+     |         1|      2|  4119|
|0-24 months |COHORTS        |INDIA                        |1      |         0|   2328|  4119|
|0-24 months |COHORTS        |INDIA                        |1      |         1|    310|  4119|
|0-24 months |COHORTS        |INDIA                        |2      |         0|   1162|  4119|
|0-24 months |COHORTS        |INDIA                        |2      |         1|     93|  4119|
|0-24 months |COHORTS        |INDIA                        |3      |         0|    142|  4119|
|0-24 months |COHORTS        |INDIA                        |3      |         1|      7|  4119|
|0-24 months |CONTENT        |PERU                         |4+     |         0|     78|   215|
|0-24 months |CONTENT        |PERU                         |4+     |         1|      0|   215|
|0-24 months |CONTENT        |PERU                         |1      |         0|     44|   215|
|0-24 months |CONTENT        |PERU                         |1      |         1|      0|   215|
|0-24 months |CONTENT        |PERU                         |2      |         0|     54|   215|
|0-24 months |CONTENT        |PERU                         |2      |         1|      0|   215|
|0-24 months |CONTENT        |PERU                         |3      |         0|     39|   215|
|0-24 months |CONTENT        |PERU                         |3      |         1|      0|   215|
|0-24 months |GMS-Nepal      |NEPAL                        |4+     |         0|    246|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |4+     |         1|     35|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |         0|     34|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |         1|      6|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |2      |         0|    108|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |2      |         1|     20|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |3      |         0|    129|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |3      |         1|     19|   597|
|0-24 months |IRC            |INDIA                        |4+     |         0|     15|   408|
|0-24 months |IRC            |INDIA                        |4+     |         1|      2|   408|
|0-24 months |IRC            |INDIA                        |1      |         0|    167|   408|
|0-24 months |IRC            |INDIA                        |1      |         1|     18|   408|
|0-24 months |IRC            |INDIA                        |2      |         0|    149|   408|
|0-24 months |IRC            |INDIA                        |2      |         1|     21|   408|
|0-24 months |IRC            |INDIA                        |3      |         0|     30|   408|
|0-24 months |IRC            |INDIA                        |3      |         1|      6|   408|
|0-24 months |JiVitA-3       |BANGLADESH                   |4+     |         0|    645| 15793|
|0-24 months |JiVitA-3       |BANGLADESH                   |4+     |         1|     28| 15793|
|0-24 months |JiVitA-3       |BANGLADESH                   |1      |         0|   8598| 15793|
|0-24 months |JiVitA-3       |BANGLADESH                   |1      |         1|    529| 15793|
|0-24 months |JiVitA-3       |BANGLADESH                   |2      |         0|   4143| 15793|
|0-24 months |JiVitA-3       |BANGLADESH                   |2      |         1|    271| 15793|
|0-24 months |JiVitA-3       |BANGLADESH                   |3      |         0|   1511| 15793|
|0-24 months |JiVitA-3       |BANGLADESH                   |3      |         1|     68| 15793|
|0-24 months |JiVitA-4       |BANGLADESH                   |4+     |         0|    263|  5279|
|0-24 months |JiVitA-4       |BANGLADESH                   |4+     |         1|     13|  5279|
|0-24 months |JiVitA-4       |BANGLADESH                   |1      |         0|   2833|  5279|
|0-24 months |JiVitA-4       |BANGLADESH                   |1      |         1|    274|  5279|
|0-24 months |JiVitA-4       |BANGLADESH                   |2      |         0|   1239|  5279|
|0-24 months |JiVitA-4       |BANGLADESH                   |2      |         1|    107|  5279|
|0-24 months |JiVitA-4       |BANGLADESH                   |3      |         0|    518|  5279|
|0-24 months |JiVitA-4       |BANGLADESH                   |3      |         1|     32|  5279|
|0-24 months |MAL-ED         |BANGLADESH                   |4+     |         0|      9|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |4+     |         1|      3|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |1      |         0|    145|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |1      |         1|      7|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |2      |         0|     48|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |2      |         1|      2|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |3      |         0|     27|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |3      |         1|      1|   242|
|0-24 months |MAL-ED         |BRAZIL                       |4+     |         0|    125|   210|
|0-24 months |MAL-ED         |BRAZIL                       |4+     |         1|      2|   210|
|0-24 months |MAL-ED         |BRAZIL                       |1      |         0|      4|   210|
|0-24 months |MAL-ED         |BRAZIL                       |1      |         1|      0|   210|
|0-24 months |MAL-ED         |BRAZIL                       |2      |         0|     20|   210|
|0-24 months |MAL-ED         |BRAZIL                       |2      |         1|      0|   210|
|0-24 months |MAL-ED         |BRAZIL                       |3      |         0|     59|   210|
|0-24 months |MAL-ED         |BRAZIL                       |3      |         1|      0|   210|
|0-24 months |MAL-ED         |INDIA                        |4+     |         0|     23|   235|
|0-24 months |MAL-ED         |INDIA                        |4+     |         1|      2|   235|
|0-24 months |MAL-ED         |INDIA                        |1      |         0|     78|   235|
|0-24 months |MAL-ED         |INDIA                        |1      |         1|      6|   235|
|0-24 months |MAL-ED         |INDIA                        |2      |         0|     72|   235|
|0-24 months |MAL-ED         |INDIA                        |2      |         1|      6|   235|
|0-24 months |MAL-ED         |INDIA                        |3      |         0|     42|   235|
|0-24 months |MAL-ED         |INDIA                        |3      |         1|      6|   235|
|0-24 months |MAL-ED         |NEPAL                        |4+     |         0|    129|   236|
|0-24 months |MAL-ED         |NEPAL                        |4+     |         1|      2|   236|
|0-24 months |MAL-ED         |NEPAL                        |1      |         0|     51|   236|
|0-24 months |MAL-ED         |NEPAL                        |1      |         1|      1|   236|
|0-24 months |MAL-ED         |NEPAL                        |2      |         0|     31|   236|
|0-24 months |MAL-ED         |NEPAL                        |2      |         1|      0|   236|
|0-24 months |MAL-ED         |NEPAL                        |3      |         0|     22|   236|
|0-24 months |MAL-ED         |NEPAL                        |3      |         1|      0|   236|
|0-24 months |MAL-ED         |PERU                         |4+     |         0|    139|   271|
|0-24 months |MAL-ED         |PERU                         |4+     |         1|      0|   271|
|0-24 months |MAL-ED         |PERU                         |1      |         0|     18|   271|
|0-24 months |MAL-ED         |PERU                         |1      |         1|      1|   271|
|0-24 months |MAL-ED         |PERU                         |2      |         0|     51|   271|
|0-24 months |MAL-ED         |PERU                         |2      |         1|      0|   271|
|0-24 months |MAL-ED         |PERU                         |3      |         0|     62|   271|
|0-24 months |MAL-ED         |PERU                         |3      |         1|      0|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |4+     |         0|    193|   256|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |4+     |         1|      2|   256|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1      |         0|     14|   256|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1      |         1|      0|   256|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |2      |         0|     22|   256|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |2      |         1|      0|   256|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |3      |         0|     25|   256|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |3      |         1|      0|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+     |         0|    108|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+     |         1|      0|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |         0|     13|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |         1|      0|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2      |         0|     63|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2      |         1|      0|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3      |         0|     66|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3      |         1|      0|   250|
|0-24 months |NIH-Crypto     |BANGLADESH                   |4+     |         0|     88|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |4+     |         1|      3|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1      |         0|    329|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1      |         1|     18|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2      |         0|    183|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2      |         1|      5|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |3      |         0|    104|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |3      |         1|      0|   730|
|0-24 months |PROVIDE        |BANGLADESH                   |4+     |         0|     22|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |4+     |         1|      0|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |         0|    447|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |         1|     12|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |2      |         0|     98|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |2      |         1|      3|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |3      |         0|     59|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |3      |         1|      0|   641|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
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
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/fe87641f-b5a2-4ad8-8726-b6931504e58c/a139eec6-3f0f-4a3a-bbb7-153ceece7f7b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fe87641f-b5a2-4ad8-8726-b6931504e58c/a139eec6-3f0f-4a3a-bbb7-153ceece7f7b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fe87641f-b5a2-4ad8-8726-b6931504e58c/a139eec6-3f0f-4a3a-bbb7-153ceece7f7b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fe87641f-b5a2-4ad8-8726-b6931504e58c/a139eec6-3f0f-4a3a-bbb7-153ceece7f7b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |4+                 |NA             | 0.1245552|  0.0859136| 0.1631967|
|0-24 months |GMS-Nepal |NEPAL      |1                  |NA             | 0.1500000|  0.0392517| 0.2607483|
|0-24 months |GMS-Nepal |NEPAL      |2                  |NA             | 0.1562500|  0.0932959| 0.2192041|
|0-24 months |GMS-Nepal |NEPAL      |3                  |NA             | 0.1283784|  0.0744408| 0.1823159|
|0-24 months |JiVitA-3  |BANGLADESH |4+                 |NA             | 0.0407812|  0.0241524| 0.0574099|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0577370|  0.0525205| 0.0629534|
|0-24 months |JiVitA-3  |BANGLADESH |2                  |NA             | 0.0623132|  0.0539035| 0.0707228|
|0-24 months |JiVitA-3  |BANGLADESH |3                  |NA             | 0.0426457|  0.0306923| 0.0545991|
|0-24 months |JiVitA-4  |BANGLADESH |4+                 |NA             | 0.0517279| -0.0123002| 0.1157560|
|0-24 months |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0847026|  0.0724051| 0.0970001|
|0-24 months |JiVitA-4  |BANGLADESH |2                  |NA             | 0.0794414|  0.0635231| 0.0953598|
|0-24 months |JiVitA-4  |BANGLADESH |3                  |NA             | 0.0606543|  0.0380375| 0.0832711|


### Parameter: E(Y)


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |NA                 |NA             | 0.1340034| 0.1066544| 0.1613523|
|0-24 months |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.0567340| 0.0526176| 0.0608504|
|0-24 months |JiVitA-4  |BANGLADESH |NA                 |NA             | 0.0806971| 0.0720842| 0.0893100|


### Parameter: RR


|agecat      |studyid   |country    |intervention_level |baseline_level | estimate|  ci_lower| ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|--------:|---------:|--------:|
|0-24 months |GMS-Nepal |NEPAL      |4+                 |4+             | 1.000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal |NEPAL      |1                  |4+             | 1.204286| 0.5406588| 2.682476|
|0-24 months |GMS-Nepal |NEPAL      |2                  |4+             | 1.254464| 0.7544253| 2.085933|
|0-24 months |GMS-Nepal |NEPAL      |3                  |4+             | 1.030695| 0.6113785| 1.737602|
|0-24 months |JiVitA-3  |BANGLADESH |4+                 |4+             | 1.000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |4+             | 1.415775| 0.9270149| 2.162230|
|0-24 months |JiVitA-3  |BANGLADESH |2                  |4+             | 1.527989| 0.9890711| 2.360548|
|0-24 months |JiVitA-3  |BANGLADESH |3                  |4+             | 1.045721| 0.6281076| 1.740994|
|0-24 months |JiVitA-4  |BANGLADESH |4+                 |4+             | 1.000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4  |BANGLADESH |1                  |4+             | 1.637464| 0.4694614| 5.711414|
|0-24 months |JiVitA-4  |BANGLADESH |2                  |4+             | 1.535756| 0.4379061| 5.385962|
|0-24 months |JiVitA-4  |BANGLADESH |3                  |4+             | 1.172565| 0.3264264| 4.212000|


### Parameter: PAR


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |4+                 |NA             | 0.0094482| -0.0194569| 0.0383533|
|0-24 months |JiVitA-3  |BANGLADESH |4+                 |NA             | 0.0159528| -0.0007817| 0.0326873|
|0-24 months |JiVitA-4  |BANGLADESH |4+                 |NA             | 0.0289692| -0.0339073| 0.0918457|


### Parameter: PAF


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |4+                 |NA             | 0.0705071| -0.1718485| 0.2627400|
|0-24 months |JiVitA-3  |BANGLADESH |4+                 |NA             | 0.2811865| -0.0799839| 0.5215736|
|0-24 months |JiVitA-4  |BANGLADESH |4+                 |NA             | 0.3589869| -1.1733025| 0.8109339|
