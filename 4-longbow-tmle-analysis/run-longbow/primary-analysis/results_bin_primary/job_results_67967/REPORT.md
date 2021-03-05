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

**Outcome Variable:** ever_sstunted

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

|agecat      |studyid        |country                      |nrooms | ever_sstunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:------|-------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |4+     |             0|      5|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |4+     |             1|      9|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1      |             0|     68|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1      |             1|    134|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |2      |             0|     40|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |2      |             1|     66|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |3      |             0|     23|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |3      |             1|     28|   373|
|0-24 months |COHORTS        |INDIA                        |4+     |             0|    102|  5374|
|0-24 months |COHORTS        |INDIA                        |4+     |             1|      4|  5374|
|0-24 months |COHORTS        |INDIA                        |1      |             0|   2917|  5374|
|0-24 months |COHORTS        |INDIA                        |1      |             1|    602|  5374|
|0-24 months |COHORTS        |INDIA                        |2      |             0|   1440|  5374|
|0-24 months |COHORTS        |INDIA                        |2      |             1|    114|  5374|
|0-24 months |COHORTS        |INDIA                        |3      |             0|    178|  5374|
|0-24 months |COHORTS        |INDIA                        |3      |             1|     17|  5374|
|0-24 months |CONTENT        |PERU                         |4+     |             0|     75|   215|
|0-24 months |CONTENT        |PERU                         |4+     |             1|      3|   215|
|0-24 months |CONTENT        |PERU                         |1      |             0|     42|   215|
|0-24 months |CONTENT        |PERU                         |1      |             1|      2|   215|
|0-24 months |CONTENT        |PERU                         |2      |             0|     50|   215|
|0-24 months |CONTENT        |PERU                         |2      |             1|      4|   215|
|0-24 months |CONTENT        |PERU                         |3      |             0|     38|   215|
|0-24 months |CONTENT        |PERU                         |3      |             1|      1|   215|
|0-24 months |GMS-Nepal      |NEPAL                        |4+     |             0|    241|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |4+     |             1|     82|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |             0|     37|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |             1|     12|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |2      |             0|    111|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |2      |             1|     34|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |3      |             0|    140|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |3      |             1|     41|   698|
|0-24 months |IRC            |INDIA                        |4+     |             0|     14|   408|
|0-24 months |IRC            |INDIA                        |4+     |             1|      3|   408|
|0-24 months |IRC            |INDIA                        |1      |             0|    138|   408|
|0-24 months |IRC            |INDIA                        |1      |             1|     47|   408|
|0-24 months |IRC            |INDIA                        |2      |             0|    124|   408|
|0-24 months |IRC            |INDIA                        |2      |             1|     46|   408|
|0-24 months |IRC            |INDIA                        |3      |             0|     30|   408|
|0-24 months |IRC            |INDIA                        |3      |             1|      6|   408|
|0-24 months |JiVitA-3       |BANGLADESH                   |4+     |             0|   1017| 27197|
|0-24 months |JiVitA-3       |BANGLADESH                   |4+     |             1|    122| 27197|
|0-24 months |JiVitA-3       |BANGLADESH                   |1      |             0|  13084| 27197|
|0-24 months |JiVitA-3       |BANGLADESH                   |1      |             1|   3039| 27197|
|0-24 months |JiVitA-3       |BANGLADESH                   |2      |             0|   5874| 27197|
|0-24 months |JiVitA-3       |BANGLADESH                   |2      |             1|   1446| 27197|
|0-24 months |JiVitA-3       |BANGLADESH                   |3      |             0|   2203| 27197|
|0-24 months |JiVitA-3       |BANGLADESH                   |3      |             1|    412| 27197|
|0-24 months |JiVitA-4       |BANGLADESH                   |4+     |             0|    250|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |4+     |             1|     36|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |1      |             0|   2466|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |1      |             1|    725|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |2      |             0|   1130|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |2      |             1|    257|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |3      |             0|    476|  5426|
|0-24 months |JiVitA-4       |BANGLADESH                   |3      |             1|     86|  5426|
|0-24 months |MAL-ED         |BANGLADESH                   |4+     |             0|     12|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |4+     |             1|      0|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |1      |             0|    113|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |1      |             1|     39|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |2      |             0|     38|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |2      |             1|     12|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |3      |             0|     26|   242|
|0-24 months |MAL-ED         |BANGLADESH                   |3      |             1|      2|   242|
|0-24 months |MAL-ED         |BRAZIL                       |4+     |             0|    116|   210|
|0-24 months |MAL-ED         |BRAZIL                       |4+     |             1|     11|   210|
|0-24 months |MAL-ED         |BRAZIL                       |1      |             0|      4|   210|
|0-24 months |MAL-ED         |BRAZIL                       |1      |             1|      0|   210|
|0-24 months |MAL-ED         |BRAZIL                       |2      |             0|     18|   210|
|0-24 months |MAL-ED         |BRAZIL                       |2      |             1|      2|   210|
|0-24 months |MAL-ED         |BRAZIL                       |3      |             0|     51|   210|
|0-24 months |MAL-ED         |BRAZIL                       |3      |             1|      8|   210|
|0-24 months |MAL-ED         |INDIA                        |4+     |             0|     21|   235|
|0-24 months |MAL-ED         |INDIA                        |4+     |             1|      4|   235|
|0-24 months |MAL-ED         |INDIA                        |1      |             0|     65|   235|
|0-24 months |MAL-ED         |INDIA                        |1      |             1|     19|   235|
|0-24 months |MAL-ED         |INDIA                        |2      |             0|     53|   235|
|0-24 months |MAL-ED         |INDIA                        |2      |             1|     25|   235|
|0-24 months |MAL-ED         |INDIA                        |3      |             0|     38|   235|
|0-24 months |MAL-ED         |INDIA                        |3      |             1|     10|   235|
|0-24 months |MAL-ED         |NEPAL                        |4+     |             0|    120|   236|
|0-24 months |MAL-ED         |NEPAL                        |4+     |             1|     11|   236|
|0-24 months |MAL-ED         |NEPAL                        |1      |             0|     46|   236|
|0-24 months |MAL-ED         |NEPAL                        |1      |             1|      6|   236|
|0-24 months |MAL-ED         |NEPAL                        |2      |             0|     30|   236|
|0-24 months |MAL-ED         |NEPAL                        |2      |             1|      1|   236|
|0-24 months |MAL-ED         |NEPAL                        |3      |             0|     19|   236|
|0-24 months |MAL-ED         |NEPAL                        |3      |             1|      3|   236|
|0-24 months |MAL-ED         |PERU                         |4+     |             0|    110|   272|
|0-24 months |MAL-ED         |PERU                         |4+     |             1|     29|   272|
|0-24 months |MAL-ED         |PERU                         |1      |             0|     13|   272|
|0-24 months |MAL-ED         |PERU                         |1      |             1|      6|   272|
|0-24 months |MAL-ED         |PERU                         |2      |             0|     41|   272|
|0-24 months |MAL-ED         |PERU                         |2      |             1|     11|   272|
|0-24 months |MAL-ED         |PERU                         |3      |             0|     49|   272|
|0-24 months |MAL-ED         |PERU                         |3      |             1|     13|   272|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |4+     |             0|    140|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |4+     |             1|     56|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1      |             0|     10|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1      |             1|      4|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |2      |             0|     19|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |2      |             1|      3|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |3      |             0|     18|   257|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |3      |             1|      7|   257|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+     |             0|     51|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+     |             1|     57|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |             0|      7|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |             1|      6|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2      |             0|     24|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2      |             1|     39|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3      |             0|     34|   250|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3      |             1|     32|   250|
|0-24 months |NIH-Crypto     |BANGLADESH                   |4+     |             0|     86|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |4+     |             1|      9|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1      |             0|    318|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1      |             1|     50|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2      |             0|    162|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2      |             1|     29|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |3      |             0|     93|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |3      |             1|     11|   758|
|0-24 months |PROVIDE        |BANGLADESH                   |4+     |             0|     21|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |4+     |             1|      2|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |             0|    434|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |             1|     73|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2      |             0|     96|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2      |             1|     12|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |3      |             0|     54|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |3      |             1|      8|   700|


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

* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
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
![](/tmp/5013d9f0-5793-472c-84b1-cc70ae6fe519/69cc5101-bd25-405b-8b4c-a01d5ea7361a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5013d9f0-5793-472c-84b1-cc70ae6fe519/69cc5101-bd25-405b-8b4c-a01d5ea7361a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5013d9f0-5793-472c-84b1-cc70ae6fe519/69cc5101-bd25-405b-8b4c-a01d5ea7361a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5013d9f0-5793-472c-84b1-cc70ae6fe519/69cc5101-bd25-405b-8b4c-a01d5ea7361a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |4+                 |NA             | 0.6428571| 0.3915266| 0.8941877|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1                  |NA             | 0.6633663| 0.5981118| 0.7286209|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |2                  |NA             | 0.6226415| 0.5302410| 0.7150420|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |3                  |NA             | 0.5490196| 0.4122723| 0.6857669|
|0-24 months |GMS-Nepal      |NEPAL                        |4+                 |NA             | 0.2660650| 0.2159825| 0.3161475|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             | 0.2235724| 0.1163399| 0.3308048|
|0-24 months |GMS-Nepal      |NEPAL                        |2                  |NA             | 0.2233095| 0.1519179| 0.2947011|
|0-24 months |GMS-Nepal      |NEPAL                        |3                  |NA             | 0.2098947| 0.1525225| 0.2672670|
|0-24 months |JiVitA-3       |BANGLADESH                   |4+                 |NA             | 0.2236982| 0.2098054| 0.2375910|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.1806282| 0.1724087| 0.1888477|
|0-24 months |JiVitA-3       |BANGLADESH                   |2                  |NA             | 0.1848701| 0.1709137| 0.1988266|
|0-24 months |JiVitA-3       |BANGLADESH                   |3                  |NA             | 0.1867640| 0.1693682| 0.2041598|
|0-24 months |JiVitA-4       |BANGLADESH                   |4+                 |NA             | 0.1852583| 0.1446610| 0.2258555|
|0-24 months |JiVitA-4       |BANGLADESH                   |1                  |NA             | 0.2047932| 0.1860218| 0.2235645|
|0-24 months |JiVitA-4       |BANGLADESH                   |2                  |NA             | 0.1997215| 0.1679884| 0.2314546|
|0-24 months |JiVitA-4       |BANGLADESH                   |3                  |NA             | 0.1670935| 0.1322667| 0.2019203|
|0-24 months |MAL-ED         |PERU                         |4+                 |NA             | 0.2086331| 0.1409592| 0.2763070|
|0-24 months |MAL-ED         |PERU                         |1                  |NA             | 0.3157895| 0.1063952| 0.5251837|
|0-24 months |MAL-ED         |PERU                         |2                  |NA             | 0.2115385| 0.1003317| 0.3227452|
|0-24 months |MAL-ED         |PERU                         |3                  |NA             | 0.2096774| 0.1081625| 0.3111924|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+                 |NA             | 0.5277778| 0.4334357| 0.6221198|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.4615385| 0.1900021| 0.7330749|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2                  |NA             | 0.6190476| 0.4988916| 0.7392036|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3                  |NA             | 0.4848485| 0.3640346| 0.6056624|
|0-24 months |NIH-Crypto     |BANGLADESH                   |4+                 |NA             | 0.0947368| 0.0358091| 0.1536646|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.1358696| 0.1008378| 0.1709013|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2                  |NA             | 0.1518325| 0.1009063| 0.2027587|
|0-24 months |NIH-Crypto     |BANGLADESH                   |3                  |NA             | 0.1057692| 0.0466236| 0.1649148|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.6353887| 0.5864772| 0.6843003|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.2421203| 0.2103189| 0.2739218|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1845424| 0.1789365| 0.1901483|
|0-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.2034648| 0.1916516| 0.2152780|
|0-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.2169118| 0.1678424| 0.2659811|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.5360000| 0.4740573| 0.5979427|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1306069| 0.1066024| 0.1546113|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1                  |4+             | 1.0319032| 0.6895341| 1.5442661|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |2                  |4+             | 0.9685535| 0.6375466| 1.4714152|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |3                  |4+             | 0.8540305| 0.5372200| 1.3576712|
|0-24 months |GMS-Nepal      |NEPAL                        |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |4+             | 0.8402923| 0.5022745| 1.4057873|
|0-24 months |GMS-Nepal      |NEPAL                        |2                  |4+             | 0.8393042| 0.5793992| 1.2157964|
|0-24 months |GMS-Nepal      |NEPAL                        |3                  |4+             | 0.7888852| 0.5666160| 1.0983451|
|0-24 months |JiVitA-3       |BANGLADESH                   |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |4+             | 0.8074639| 0.7504239| 0.8688394|
|0-24 months |JiVitA-3       |BANGLADESH                   |2                  |4+             | 0.8264265| 0.7503092| 0.9102657|
|0-24 months |JiVitA-3       |BANGLADESH                   |3                  |4+             | 0.8348926| 0.7499411| 0.9294672|
|0-24 months |JiVitA-4       |BANGLADESH                   |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-4       |BANGLADESH                   |1                  |4+             | 1.1054468| 0.8764938| 1.3942057|
|0-24 months |JiVitA-4       |BANGLADESH                   |2                  |4+             | 1.0780707| 0.8252176| 1.4083999|
|0-24 months |JiVitA-4       |BANGLADESH                   |3                  |4+             | 0.9019488| 0.6703258| 1.2136064|
|0-24 months |MAL-ED         |PERU                         |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |PERU                         |1                  |4+             | 1.5136116| 0.7234893| 3.1666259|
|0-24 months |MAL-ED         |PERU                         |2                  |4+             | 1.0139257| 0.5466799| 1.8805254|
|0-24 months |MAL-ED         |PERU                         |3                  |4+             | 1.0050056| 0.5611477| 1.7999471|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1                  |4+             | 0.8744939| 0.4728415| 1.6173275|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |2                  |4+             | 1.1729323| 0.9008990| 1.5271082|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |3                  |4+             | 0.9186603| 0.6760401| 1.2483530|
|0-24 months |NIH-Crypto     |BANGLADESH                   |4+                 |4+             | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |4+             | 1.4341787| 0.7314377| 2.8120902|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2                  |4+             | 1.6026760| 0.7905631| 3.2490388|
|0-24 months |NIH-Crypto     |BANGLADESH                   |3                  |4+             | 1.1164530| 0.4837121| 2.5768782|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |4+                 |NA             | -0.0074684| -0.2540807|  0.2391439|
|0-24 months |GMS-Nepal      |NEPAL                        |4+                 |NA             | -0.0239446| -0.0607443|  0.0128550|
|0-24 months |JiVitA-3       |BANGLADESH                   |4+                 |NA             | -0.0391558| -0.0528919| -0.0254197|
|0-24 months |JiVitA-4       |BANGLADESH                   |4+                 |NA             |  0.0182065| -0.0217233|  0.0581364|
|0-24 months |MAL-ED         |PERU                         |4+                 |NA             |  0.0082787| -0.0397503|  0.0563076|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+                 |NA             |  0.0082222| -0.0628225|  0.0792669|
|0-24 months |NIH-Crypto     |BANGLADESH                   |4+                 |NA             |  0.0358700| -0.0205062|  0.0922463|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |4+                 |NA             | -0.0117541| -0.4848403|  0.3106018|
|0-24 months |GMS-Nepal      |NEPAL                        |4+                 |NA             | -0.0988956| -0.2616250|  0.0428443|
|0-24 months |JiVitA-3       |BANGLADESH                   |4+                 |NA             | -0.2121777| -0.2904332| -0.1386679|
|0-24 months |JiVitA-4       |BANGLADESH                   |4+                 |NA             |  0.0894824| -0.1290203|  0.2656976|
|0-24 months |MAL-ED         |PERU                         |4+                 |NA             |  0.0381661| -0.2107165|  0.2358868|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |4+                 |NA             |  0.0153400| -0.1265586|  0.1393654|
|0-24 months |NIH-Crypto     |BANGLADESH                   |4+                 |NA             |  0.2746411| -0.3110170|  0.5986738|
