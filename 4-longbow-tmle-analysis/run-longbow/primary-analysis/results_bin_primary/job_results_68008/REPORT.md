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

|agecat      |studyid        |country                      |nrooms | ever_swasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:------|------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |4+     |            0|     11|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |4+     |            1|      3|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1      |            0|    145|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1      |            1|     57|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |2      |            0|     83|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |2      |            1|     23|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |3      |            0|     42|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |3      |            1|      9|   373|
|0-24 months |COHORTS        |INDIA                        |4+     |            0|    100|  5366|
|0-24 months |COHORTS        |INDIA                        |4+     |            1|      6|  5366|
|0-24 months |COHORTS        |INDIA                        |1      |            0|   3106|  5366|
|0-24 months |COHORTS        |INDIA                        |1      |            1|    405|  5366|
|0-24 months |COHORTS        |INDIA                        |2      |            0|   1423|  5366|
|0-24 months |COHORTS        |INDIA                        |2      |            1|    131|  5366|
|0-24 months |COHORTS        |INDIA                        |3      |            0|    184|  5366|
|0-24 months |COHORTS        |INDIA                        |3      |            1|     11|  5366|
|0-24 months |CONTENT        |PERU                         |4+     |            0|     77|   215|
|0-24 months |CONTENT        |PERU                         |4+     |            1|      1|   215|
|0-24 months |CONTENT        |PERU                         |1      |            0|     44|   215|
|0-24 months |CONTENT        |PERU                         |1      |            1|      0|   215|
|0-24 months |CONTENT        |PERU                         |2      |            0|     54|   215|
|0-24 months |CONTENT        |PERU                         |2      |            1|      0|   215|
|0-24 months |CONTENT        |PERU                         |3      |            0|     39|   215|
|0-24 months |CONTENT        |PERU                         |3      |            1|      0|   215|
|0-24 months |GMS-Nepal      |NEPAL                        |4+     |            0|    234|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |4+     |            1|     80|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |            0|     38|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |            1|     11|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |2      |            0|    104|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |2      |            1|     39|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |3      |            0|    133|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |3      |            1|     47|   686|
|0-24 months |IRC            |INDIA                        |4+     |            0|      9|   408|
|0-24 months |IRC            |INDIA                        |4+     |            1|      8|   408|
|0-24 months |IRC            |INDIA                        |1      |            0|    121|   408|
|0-24 months |IRC            |INDIA                        |1      |            1|     64|   408|
|0-24 months |IRC            |INDIA                        |2      |            0|    117|   408|
|0-24 months |IRC            |INDIA                        |2      |            1|     53|   408|
|0-24 months |IRC            |INDIA                        |3      |            0|     22|   408|
|0-24 months |IRC            |INDIA                        |3      |            1|     14|   408|
|0-24 months |JiVitA-3       |BANGLADESH                   |4+     |            0|   1076| 26926|
|0-24 months |JiVitA-3       |BANGLADESH                   |4+     |            1|     59| 26926|
|0-24 months |JiVitA-3       |BANGLADESH                   |1      |            0|  14935| 26926|
|0-24 months |JiVitA-3       |BANGLADESH                   |1      |            1|   1007| 26926|
|0-24 months |JiVitA-3       |BANGLADESH                   |2      |            0|   6803| 26926|
|0-24 months |JiVitA-3       |BANGLADESH                   |2      |            1|    447| 26926|
|0-24 months |JiVitA-3       |BANGLADESH                   |3      |            0|   2468| 26926|
|0-24 months |JiVitA-3       |BANGLADESH                   |3      |            1|    131| 26926|
|0-24 months |JiVitA-4       |BANGLADESH                   |4+     |            0|    269|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |4+     |            1|     17|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |1      |            0|   2988|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |1      |            1|    204|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |2      |            0|   1299|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |2      |            1|     88|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |3      |            0|    529|  5427|
|0-24 months |JiVitA-4       |BANGLADESH                   |3      |            1|     33|  5427|
|0-24 months |MAL-ED         |BANGLADESH                   |4+     |            0|     11|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |4+     |            1|      1|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |1      |            0|    135|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |1      |            1|     17|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |2      |            0|     48|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |2      |            1|      2|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |3      |            0|     27|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |3      |            1|      1|   242|
|0-24 months |MAL-ED         |BRAZIL                       |4+     |            0|    124|   210|
|0-24 months |MAL-ED         |BRAZIL                       |4+     |            1|      3|   210|
|0-24 months |MAL-ED         |BRAZIL                       |1      |            0|      4|   210|
|0-24 months |MAL-ED         |BRAZIL                       |1      |            1|      0|   210|
|0-24 months |MAL-ED         |BRAZIL                       |2      |            0|     20|   210|
|0-24 months |MAL-ED         |BRAZIL                       |2      |            1|      0|   210|
|0-24 months |MAL-ED         |BRAZIL                       |3      |            0|     58|   210|
|0-24 months |MAL-ED         |BRAZIL                       |3      |            1|      1|   210|
|0-24 months |MAL-ED         |INDIA                        |4+     |            0|     23|   235|
|0-24 months |MAL-ED         |INDIA                        |4+     |            1|      2|   235|
|0-24 months |MAL-ED         |INDIA                        |1      |            0|     73|   235|
|0-24 months |MAL-ED         |INDIA                        |1      |            1|     11|   235|
|0-24 months |MAL-ED         |INDIA                        |2      |            0|     72|   235|
|0-24 months |MAL-ED         |INDIA                        |2      |            1|      6|   235|
|0-24 months |MAL-ED         |INDIA                        |3      |            0|     43|   235|
|0-24 months |MAL-ED         |INDIA                        |3      |            1|      5|   235|
|0-24 months |MAL-ED         |NEPAL                        |4+     |            0|    126|   236|
|0-24 months |MAL-ED         |NEPAL                        |4+     |            1|      5|   236|
|0-24 months |MAL-ED         |NEPAL                        |1      |            0|     48|   236|
|0-24 months |MAL-ED         |NEPAL                        |1      |            1|      4|   236|
|0-24 months |MAL-ED         |NEPAL                        |2      |            0|     31|   236|
|0-24 months |MAL-ED         |NEPAL                        |2      |            1|      0|   236|
|0-24 months |MAL-ED         |NEPAL                        |3      |            0|     22|   236|
|0-24 months |MAL-ED         |NEPAL                        |3      |            1|      0|   236|
|0-24 months |MAL-ED         |PERU                         |4+     |            0|    138|   272|
|0-24 months |MAL-ED         |PERU                         |4+     |            1|      1|   272|
|0-24 months |MAL-ED         |PERU                         |1      |            0|     18|   272|
|0-24 months |MAL-ED         |PERU                         |1      |            1|      1|   272|
|0-24 months |MAL-ED         |PERU                         |2      |            0|     51|   272|
|0-24 months |MAL-ED         |PERU                         |2      |            1|      1|   272|
|0-24 months |MAL-ED         |PERU                         |3      |            0|     61|   272|
|0-24 months |MAL-ED         |PERU                         |3      |            1|      1|   272|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |4+     |            0|    185|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |4+     |            1|     11|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1      |            0|     14|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1      |            1|      0|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |2      |            0|     20|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |2      |            1|      2|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |3      |            0|     23|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |3      |            1|      2|   257|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+     |            0|    106|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+     |            1|      2|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |            0|     13|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |            1|      0|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2      |            0|     61|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2      |            1|      2|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3      |            0|     61|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3      |            1|      5|   250|
|0-24 months |NIH-Crypto     |BANGLADESH                   |4+     |            0|     88|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |4+     |            1|      7|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1      |            0|    333|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1      |            1|     35|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2      |            0|    175|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2      |            1|     16|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |3      |            0|     96|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |3      |            1|      8|   758|
|0-24 months |PROVIDE        |BANGLADESH                   |4+     |            0|     22|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |4+     |            1|      1|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |            0|    475|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |            1|     32|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2      |            0|    104|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2      |            1|      4|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |3      |            0|     57|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |3      |            1|      5|   700|


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
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/be61645a-27a2-453c-b8c4-fa177cb4c7ce/519538d5-29a3-4f32-9594-5e0ae721f497/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/be61645a-27a2-453c-b8c4-fa177cb4c7ce/519538d5-29a3-4f32-9594-5e0ae721f497/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/be61645a-27a2-453c-b8c4-fa177cb4c7ce/519538d5-29a3-4f32-9594-5e0ae721f497/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/be61645a-27a2-453c-b8c4-fa177cb4c7ce/519538d5-29a3-4f32-9594-5e0ae721f497/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid    |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:----------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS    |INDIA      |4+                 |NA             | 0.0566038| 0.0218405| 0.0913670|
|0-24 months |COHORTS    |INDIA      |1                  |NA             | 0.1153518| 0.1047843| 0.1259192|
|0-24 months |COHORTS    |INDIA      |2                  |NA             | 0.0842986| 0.0704836| 0.0981136|
|0-24 months |COHORTS    |INDIA      |3                  |NA             | 0.0564103| 0.0240254| 0.0887951|
|0-24 months |GMS-Nepal  |NEPAL      |4+                 |NA             | 0.2545299| 0.2061069| 0.3029529|
|0-24 months |GMS-Nepal  |NEPAL      |1                  |NA             | 0.2279077| 0.1089557| 0.3468597|
|0-24 months |GMS-Nepal  |NEPAL      |2                  |NA             | 0.2716213| 0.1983367| 0.3449060|
|0-24 months |GMS-Nepal  |NEPAL      |3                  |NA             | 0.2614960| 0.1963748| 0.3266172|
|0-24 months |IRC        |INDIA      |4+                 |NA             | 0.4705882| 0.2330280| 0.7081485|
|0-24 months |IRC        |INDIA      |1                  |NA             | 0.3459459| 0.2773172| 0.4145747|
|0-24 months |IRC        |INDIA      |2                  |NA             | 0.3117647| 0.2420477| 0.3814817|
|0-24 months |IRC        |INDIA      |3                  |NA             | 0.3888889| 0.2294469| 0.5483308|
|0-24 months |JiVitA-3   |BANGLADESH |4+                 |NA             | 0.0459494| 0.0342629| 0.0576359|
|0-24 months |JiVitA-3   |BANGLADESH |1                  |NA             | 0.0626469| 0.0578696| 0.0674241|
|0-24 months |JiVitA-3   |BANGLADESH |2                  |NA             | 0.0614046| 0.0546774| 0.0681318|
|0-24 months |JiVitA-3   |BANGLADESH |3                  |NA             | 0.0571240| 0.0459067| 0.0683413|
|0-24 months |JiVitA-4   |BANGLADESH |4+                 |NA             | 0.0683197| 0.0176279| 0.1190115|
|0-24 months |JiVitA-4   |BANGLADESH |1                  |NA             | 0.0627874| 0.0534784| 0.0720965|
|0-24 months |JiVitA-4   |BANGLADESH |2                  |NA             | 0.0634457| 0.0485086| 0.0783827|
|0-24 months |JiVitA-4   |BANGLADESH |3                  |NA             | 0.0556617| 0.0324846| 0.0788389|
|0-24 months |NIH-Crypto |BANGLADESH |4+                 |NA             | 0.0736842| 0.0211140| 0.1262544|
|0-24 months |NIH-Crypto |BANGLADESH |1                  |NA             | 0.0951087| 0.0651157| 0.1251016|
|0-24 months |NIH-Crypto |BANGLADESH |2                  |NA             | 0.0837696| 0.0444541| 0.1230851|
|0-24 months |NIH-Crypto |BANGLADESH |3                  |NA             | 0.0769231| 0.0256764| 0.1281697|


### Parameter: E(Y)


|agecat      |studyid    |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:----------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS    |INDIA      |NA                 |NA             | 0.1030563| 0.0949208| 0.1111918|
|0-24 months |GMS-Nepal  |NEPAL      |NA                 |NA             | 0.2580175| 0.2252514| 0.2907836|
|0-24 months |IRC        |INDIA      |NA                 |NA             | 0.3406863| 0.2946421| 0.3867304|
|0-24 months |JiVitA-3   |BANGLADESH |NA                 |NA             | 0.0610562| 0.0575753| 0.0645372|
|0-24 months |JiVitA-4   |BANGLADESH |NA                 |NA             | 0.0630182| 0.0560941| 0.0699424|
|0-24 months |NIH-Crypto |BANGLADESH |NA                 |NA             | 0.0870712| 0.0669870| 0.1071555|


### Parameter: RR


|agecat      |studyid    |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:----------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |COHORTS    |INDIA      |4+                 |4+             | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS    |INDIA      |1                  |4+             | 2.0378809| 1.0952301| 3.791860|
|0-24 months |COHORTS    |INDIA      |2                  |4+             | 1.4892750| 0.7887145| 2.812095|
|0-24 months |COHORTS    |INDIA      |3                  |4+             | 0.9965812| 0.4299360| 2.310051|
|0-24 months |GMS-Nepal  |NEPAL      |4+                 |4+             | 1.0000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal  |NEPAL      |1                  |4+             | 0.8954065| 0.5137395| 1.560621|
|0-24 months |GMS-Nepal  |NEPAL      |2                  |4+             | 1.0671491| 0.7670558| 1.484647|
|0-24 months |GMS-Nepal  |NEPAL      |3                  |4+             | 1.0273685| 0.7508642| 1.405695|
|0-24 months |IRC        |INDIA      |4+                 |4+             | 1.0000000| 1.0000000| 1.000000|
|0-24 months |IRC        |INDIA      |1                  |4+             | 0.7351351| 0.4273735| 1.264523|
|0-24 months |IRC        |INDIA      |2                  |4+             | 0.6625000| 0.3814169| 1.150726|
|0-24 months |IRC        |INDIA      |3                  |4+             | 0.8263889| 0.4312690| 1.583509|
|0-24 months |JiVitA-3   |BANGLADESH |4+                 |4+             | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3   |BANGLADESH |1                  |4+             | 1.3633881| 1.0494662| 1.771212|
|0-24 months |JiVitA-3   |BANGLADESH |2                  |4+             | 1.3363519| 1.0110221| 1.766367|
|0-24 months |JiVitA-3   |BANGLADESH |3                  |4+             | 1.2431946| 0.9059136| 1.706049|
|0-24 months |JiVitA-4   |BANGLADESH |4+                 |4+             | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4   |BANGLADESH |1                  |4+             | 0.9190240| 0.4284293| 1.971399|
|0-24 months |JiVitA-4   |BANGLADESH |2                  |4+             | 0.9286584| 0.4257703| 2.025520|
|0-24 months |JiVitA-4   |BANGLADESH |3                  |4+             | 0.8147245| 0.3471225| 1.912224|
|0-24 months |NIH-Crypto |BANGLADESH |4+                 |4+             | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto |BANGLADESH |1                  |4+             | 1.2907609| 0.5916685| 2.815873|
|0-24 months |NIH-Crypto |BANGLADESH |2                  |4+             | 1.1368736| 0.4839859| 2.670494|
|0-24 months |NIH-Crypto |BANGLADESH |3                  |4+             | 1.0439560| 0.3933243| 2.770854|


### Parameter: PAR


|agecat      |studyid    |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:----------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS    |INDIA      |4+                 |NA             |  0.0464525|  0.0116065| 0.0812985|
|0-24 months |GMS-Nepal  |NEPAL      |4+                 |NA             |  0.0034876| -0.0323273| 0.0393025|
|0-24 months |IRC        |INDIA      |4+                 |NA             | -0.1299020| -0.3619624| 0.1021585|
|0-24 months |JiVitA-3   |BANGLADESH |4+                 |NA             |  0.0151068|  0.0035183| 0.0266954|
|0-24 months |JiVitA-4   |BANGLADESH |4+                 |NA             | -0.0053015| -0.0551388| 0.0445359|
|0-24 months |NIH-Crypto |BANGLADESH |4+                 |NA             |  0.0133870| -0.0363551| 0.0631291|


### Parameter: PAF


|agecat      |studyid    |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:----------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS    |INDIA      |4+                 |NA             |  0.4507489| -0.0116500| 0.7017973|
|0-24 months |GMS-Nepal  |NEPAL      |4+                 |NA             |  0.0135169| -0.1355342| 0.1430035|
|0-24 months |IRC        |INDIA      |4+                 |NA             | -0.3812950| -1.2631390| 0.1569339|
|0-24 months |JiVitA-3   |BANGLADESH |4+                 |NA             |  0.2474249|  0.0330862| 0.4142505|
|0-24 months |JiVitA-4   |BANGLADESH |4+                 |NA             | -0.0841258| -1.2475198| 0.4770552|
|0-24 months |NIH-Crypto |BANGLADESH |4+                 |NA             |  0.1537480| -0.6603715| 0.5686854|
