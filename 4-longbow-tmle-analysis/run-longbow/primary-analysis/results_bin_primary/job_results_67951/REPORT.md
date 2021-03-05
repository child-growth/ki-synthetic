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

|agecat                     |studyid        |country                      |exclfeed3 | ever_stunted| n_cell|     n|
|:--------------------------|:--------------|:----------------------------|:---------|------------:|------:|-----:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |1         |            0|      0|     8|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |1         |            1|      8|     8|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |0         |            0|      0|     8|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |0         |            1|      0|     8|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |1         |            0|      4|    21|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |1         |            1|     17|    21|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |0         |            0|      0|    21|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |0         |            1|      0|    21|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |1         |            0|    116|   380|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |1         |            1|    201|   380|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |0         |            0|     22|   380|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |0         |            1|     41|   380|
|0-24 months (no birth st.) |IRC            |INDIA                        |1         |            0|      0|    10|
|0-24 months (no birth st.) |IRC            |INDIA                        |1         |            1|      0|    10|
|0-24 months (no birth st.) |IRC            |INDIA                        |0         |            0|      3|    10|
|0-24 months (no birth st.) |IRC            |INDIA                        |0         |            1|      7|    10|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |1         |            0|   6792| 10148|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |1         |            1|   2424| 10148|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |0         |            0|    689| 10148|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |0         |            1|    243| 10148|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |1         |            0|     63|   113|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |1         |            1|     40|   113|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |0         |            0|      4|   113|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |0         |            1|      6|   113|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |1         |            0|    759|  1835|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |1         |            1|    874|  1835|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |0         |            0|     91|  1835|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |0         |            1|    111|  1835|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |1         |            0|     61|   202|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |1         |            1|     71|   202|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |0         |            0|     33|   202|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |0         |            1|     37|   202|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |1         |            0|     47|   175|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |1         |            1|      9|   175|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |0         |            0|     97|   175|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |0         |            1|     22|   175|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |1         |            0|     38|   184|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |1         |            1|     55|   184|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |0         |            0|     45|   184|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |0         |            1|     46|   184|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |1         |            0|     48|   201|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |1         |            1|     18|   201|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |0         |            0|    101|   201|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |0         |            1|     34|   201|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |1         |            0|     22|   253|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |1         |            1|     30|   253|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |0         |            0|     80|   253|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |0         |            1|    121|   253|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |1         |            0|     13|   237|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |1         |            1|     10|   237|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |0         |            0|     93|   237|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |0         |            1|    121|   237|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |            0|      7|   185|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |            1|     33|   185|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |            0|     23|   185|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |            1|    122|   185|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |1         |            0|    285|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |1         |            1|    170|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0         |            0|    110|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0         |            1|     68|   633|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |1         |            0|    121|   326|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |1         |            1|    191|   326|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |0         |            0|      5|   326|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |0         |            1|      9|   326|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |1         |            0|      7|     8|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |1         |            1|      1|     8|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |0         |            0|      0|     8|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |0         |            1|      0|     8|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |1         |            0|      8|    21|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |1         |            1|     13|    21|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |0         |            0|      0|    21|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |0         |            1|      0|    21|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |1         |            0|    252|   380|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |1         |            1|     65|   380|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |0         |            0|     53|   380|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |0         |            1|     10|   380|
|0-6 months (no birth st.)  |IRC            |INDIA                        |1         |            0|      0|    10|
|0-6 months (no birth st.)  |IRC            |INDIA                        |1         |            1|      0|    10|
|0-6 months (no birth st.)  |IRC            |INDIA                        |0         |            0|      5|    10|
|0-6 months (no birth st.)  |IRC            |INDIA                        |0         |            1|      5|    10|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |1         |            0|   7951| 10145|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |1         |            1|   1262| 10145|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |0         |            0|    801| 10145|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |0         |            1|    131| 10145|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |1         |            0|     95|   113|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |1         |            1|      8|   113|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |0         |            0|      7|   113|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |0         |            1|      3|   113|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |1         |            0|   1203|  1835|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |1         |            1|    430|  1835|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |0         |            0|    143|  1835|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |0         |            1|     59|  1835|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |1         |            0|    102|   202|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |1         |            1|     30|   202|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |0         |            0|     55|   202|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |0         |            1|     15|   202|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |1         |            0|     51|   175|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |1         |            1|      5|   175|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |0         |            0|    104|   175|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |0         |            1|     15|   175|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |1         |            0|     72|   184|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |1         |            1|     21|   184|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |0         |            0|     71|   184|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |0         |            1|     20|   184|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |1         |            0|     63|   201|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |1         |            1|      3|   201|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |0         |            0|    127|   201|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |0         |            1|      8|   201|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |1         |            0|     38|   253|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |1         |            1|     14|   253|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |0         |            0|    123|   253|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |0         |            1|     78|   253|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |1         |            0|     17|   237|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |1         |            1|      6|   237|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |0         |            0|    148|   237|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |0         |            1|     66|   237|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |            0|     28|   185|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |            1|     12|   185|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |            0|     99|   185|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |            1|     46|   185|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |1         |            0|    387|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |1         |            1|     68|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0         |            0|    145|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0         |            1|     33|   633|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |1         |            0|    250|   326|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |1         |            1|     62|   326|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |0         |            0|      9|   326|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |0         |            1|      5|   326|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
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
![](/tmp/ede470fd-7c3d-493d-8da1-432727fbdf3e/73c2d28d-e8a4-4ae5-b4db-527108d5a696/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ede470fd-7c3d-493d-8da1-432727fbdf3e/73c2d28d-e8a4-4ae5-b4db-527108d5a696/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ede470fd-7c3d-493d-8da1-432727fbdf3e/73c2d28d-e8a4-4ae5-b4db-527108d5a696/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ede470fd-7c3d-493d-8da1-432727fbdf3e/73c2d28d-e8a4-4ae5-b4db-527108d5a696/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                     |studyid      |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:--------------------------|:------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL                        |1                  |NA             | 0.6343083|  0.5815798| 0.6870369|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL                        |0                  |NA             | 0.6249817|  0.5192318| 0.7307316|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH                   |1                  |NA             | 0.2622135|  0.2514542| 0.2729728|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH                   |0                  |NA             | 0.2684611|  0.2427085| 0.2942137|
|0-24 months (no birth st.) |Keneba       |GAMBIA                       |1                  |NA             | 0.5349436|  0.5108978| 0.5589894|
|0-24 months (no birth st.) |Keneba       |GAMBIA                       |0                  |NA             | 0.5459808|  0.4791168| 0.6128448|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH                   |1                  |NA             | 0.5139401|  0.4303881| 0.5974921|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH                   |0                  |NA             | 0.5718593|  0.4602109| 0.6835076|
|0-24 months (no birth st.) |MAL-ED       |BRAZIL                       |1                  |NA             | 0.1607143|  0.0642469| 0.2571817|
|0-24 months (no birth st.) |MAL-ED       |BRAZIL                       |0                  |NA             | 0.1848739|  0.1149269| 0.2548210|
|0-24 months (no birth st.) |MAL-ED       |INDIA                        |1                  |NA             | 0.5798789|  0.4795307| 0.6802272|
|0-24 months (no birth st.) |MAL-ED       |INDIA                        |0                  |NA             | 0.5142376|  0.4119856| 0.6164895|
|0-24 months (no birth st.) |MAL-ED       |NEPAL                        |1                  |NA             | 0.2661279|  0.1579566| 0.3742992|
|0-24 months (no birth st.) |MAL-ED       |NEPAL                        |0                  |NA             | 0.2493318|  0.1756470| 0.3230165|
|0-24 months (no birth st.) |MAL-ED       |PERU                         |1                  |NA             | 0.5867483|  0.4491101| 0.7243865|
|0-24 months (no birth st.) |MAL-ED       |PERU                         |0                  |NA             | 0.6010462|  0.5330782| 0.6690141|
|0-24 months (no birth st.) |MAL-ED       |SOUTH AFRICA                 |1                  |NA             | 0.3756745|  0.1523448| 0.5990041|
|0-24 months (no birth st.) |MAL-ED       |SOUTH AFRICA                 |0                  |NA             | 0.5657008|  0.4990809| 0.6323207|
|0-24 months (no birth st.) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.8250000|  0.7069296| 0.9430704|
|0-24 months (no birth st.) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.8413793|  0.7817559| 0.9010027|
|0-24 months (no birth st.) |PROVIDE      |BANGLADESH                   |1                  |NA             | 0.3699159|  0.3265514| 0.4132804|
|0-24 months (no birth st.) |PROVIDE      |BANGLADESH                   |0                  |NA             | 0.3925465|  0.3241931| 0.4608999|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA                        |1                  |NA             | 0.6121795|  0.5306906| 0.6936683|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA                        |0                  |NA             | 0.6428571|  0.3329177| 0.9527966|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL                        |1                  |NA             | 0.2044876|  0.1600416| 0.2489337|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL                        |0                  |NA             | 0.1614874|  0.0670054| 0.2559694|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH                   |1                  |NA             | 0.1369884|  0.1290375| 0.1449393|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH                   |0                  |NA             | 0.1418184|  0.1197681| 0.1638686|
|0-6 months (no birth st.)  |Keneba       |GAMBIA                       |1                  |NA             | 0.2619220|  0.2406185| 0.2832255|
|0-6 months (no birth st.)  |Keneba       |GAMBIA                       |0                  |NA             | 0.3002971|  0.2405080| 0.3600862|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH                   |1                  |NA             | 0.2321972|  0.1599446| 0.3044497|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH                   |0                  |NA             | 0.2218952|  0.1274252| 0.3163651|
|0-6 months (no birth st.)  |MAL-ED       |BRAZIL                       |1                  |NA             | 0.0892857|  0.0143859| 0.1641855|
|0-6 months (no birth st.)  |MAL-ED       |BRAZIL                       |0                  |NA             | 0.1260504|  0.0662459| 0.1858550|
|0-6 months (no birth st.)  |MAL-ED       |INDIA                        |1                  |NA             | 0.2224254|  0.1366826| 0.3081683|
|0-6 months (no birth st.)  |MAL-ED       |INDIA                        |0                  |NA             | 0.2177822|  0.1338893| 0.3016751|
|0-6 months (no birth st.)  |MAL-ED       |PERU                         |1                  |NA             | 0.2762200|  0.1529201| 0.3995200|
|0-6 months (no birth st.)  |MAL-ED       |PERU                         |0                  |NA             | 0.3872913|  0.3196730| 0.4549096|
|0-6 months (no birth st.)  |MAL-ED       |SOUTH AFRICA                 |1                  |NA             | 0.2608696|  0.0810344| 0.4407047|
|0-6 months (no birth st.)  |MAL-ED       |SOUTH AFRICA                 |0                  |NA             | 0.3084112|  0.2464031| 0.3704193|
|0-6 months (no birth st.)  |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.3135728|  0.1678171| 0.4593286|
|0-6 months (no birth st.)  |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.3190902|  0.2428169| 0.3953634|
|0-6 months (no birth st.)  |PROVIDE      |BANGLADESH                   |1                  |NA             | 0.1478059|  0.1151128| 0.1804990|
|0-6 months (no birth st.)  |PROVIDE      |BANGLADESH                   |0                  |NA             | 0.1848033|  0.1296126| 0.2399940|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA                        |1                  |NA             | 0.1987179|  0.1419130| 0.2555229|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA                        |0                  |NA             | 0.3571429| -0.1170496| 0.8313354|


### Parameter: E(Y)


|agecat                     |studyid      |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL                        |NA                 |NA             | 0.6368421| 0.5884257| 0.6852585|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH                   |NA                 |NA             | 0.2628104| 0.2524838| 0.2731371|
|0-24 months (no birth st.) |Keneba       |GAMBIA                       |NA                 |NA             | 0.5367847| 0.5139635| 0.5596060|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH                   |NA                 |NA             | 0.5346535| 0.4656971| 0.6036099|
|0-24 months (no birth st.) |MAL-ED       |BRAZIL                       |NA                 |NA             | 0.1771429| 0.1204149| 0.2338709|
|0-24 months (no birth st.) |MAL-ED       |INDIA                        |NA                 |NA             | 0.5489130| 0.4768182| 0.6210079|
|0-24 months (no birth st.) |MAL-ED       |NEPAL                        |NA                 |NA             | 0.2587065| 0.1980144| 0.3193985|
|0-24 months (no birth st.) |MAL-ED       |PERU                         |NA                 |NA             | 0.5968379| 0.5362738| 0.6574021|
|0-24 months (no birth st.) |MAL-ED       |SOUTH AFRICA                 |NA                 |NA             | 0.5527426| 0.4893071| 0.6161781|
|0-24 months (no birth st.) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.8378378| 0.7845787| 0.8910970|
|0-24 months (no birth st.) |PROVIDE      |BANGLADESH                   |NA                 |NA             | 0.3759874| 0.3382238| 0.4137509|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA                        |NA                 |NA             | 0.6134969| 0.5286303| 0.6983636|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL                        |NA                 |NA             | 0.1973684| 0.1572979| 0.2374390|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH                   |NA                 |NA             | 0.1373090| 0.1297510| 0.1448670|
|0-6 months (no birth st.)  |Keneba       |GAMBIA                       |NA                 |NA             | 0.2664850| 0.2462507| 0.2867194|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH                   |NA                 |NA             | 0.2227723| 0.1652475| 0.2802970|
|0-6 months (no birth st.)  |MAL-ED       |BRAZIL                       |NA                 |NA             | 0.1142857| 0.0670124| 0.1615591|
|0-6 months (no birth st.)  |MAL-ED       |INDIA                        |NA                 |NA             | 0.2228261| 0.1625334| 0.2831188|
|0-6 months (no birth st.)  |MAL-ED       |PERU                         |NA                 |NA             | 0.3636364| 0.3042435| 0.4230292|
|0-6 months (no birth st.)  |MAL-ED       |SOUTH AFRICA                 |NA                 |NA             | 0.3037975| 0.2451226| 0.3624723|
|0-6 months (no birth st.)  |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.3135135| 0.2464813| 0.3805457|
|0-6 months (no birth st.)  |PROVIDE      |BANGLADESH                   |NA                 |NA             | 0.1595577| 0.1310079| 0.1881074|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA                        |NA                 |NA             | 0.2055215| 0.1385538| 0.2724891|


### Parameter: RR


|agecat                     |studyid      |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:--------------------------|:------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL                        |0                  |1              | 0.9852964| 0.8208098| 1.182745|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH                   |0                  |1              | 1.0238263| 0.9267687| 1.131048|
|0-24 months (no birth st.) |Keneba       |GAMBIA                       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |Keneba       |GAMBIA                       |0                  |1              | 1.0206325| 0.8972203| 1.161020|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH                   |0                  |1              | 1.1126962| 0.8725032| 1.419013|
|0-24 months (no birth st.) |MAL-ED       |BRAZIL                       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED       |BRAZIL                       |0                  |1              | 1.1503268| 0.5658150| 2.338665|
|0-24 months (no birth st.) |MAL-ED       |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED       |INDIA                        |0                  |1              | 0.8868016| 0.6839829| 1.149761|
|0-24 months (no birth st.) |MAL-ED       |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED       |NEPAL                        |0                  |1              | 0.9368869| 0.5663635| 1.549812|
|0-24 months (no birth st.) |MAL-ED       |PERU                         |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED       |PERU                         |0                  |1              | 1.0243680| 0.7898358| 1.328542|
|0-24 months (no birth st.) |MAL-ED       |SOUTH AFRICA                 |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED       |SOUTH AFRICA                 |0                  |1              | 1.5058271| 0.8203666| 2.764027|
|0-24 months (no birth st.) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |0                  |1              | 1.0198537| 0.8693236| 1.196449|
|0-24 months (no birth st.) |PROVIDE      |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |PROVIDE      |BANGLADESH                   |0                  |1              | 1.0611777| 0.8670207| 1.298814|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA                        |0                  |1              | 1.0501122| 0.6736522| 1.636951|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL                        |0                  |1              | 0.7897172| 0.4227208| 1.475331|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH                   |0                  |1              | 1.0352579| 0.8784722| 1.220026|
|0-6 months (no birth st.)  |Keneba       |GAMBIA                       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |Keneba       |GAMBIA                       |0                  |1              | 1.1465133| 0.9268640| 1.418215|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH                   |0                  |1              | 0.9556325| 0.5632928| 1.621241|
|0-6 months (no birth st.)  |MAL-ED       |BRAZIL                       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED       |BRAZIL                       |0                  |1              | 1.4117647| 0.5385303| 3.700961|
|0-6 months (no birth st.)  |MAL-ED       |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED       |INDIA                        |0                  |1              | 0.9791246| 0.5686577| 1.685874|
|0-6 months (no birth st.)  |MAL-ED       |PERU                         |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED       |PERU                         |0                  |1              | 1.4021117| 0.8681961| 2.264370|
|0-6 months (no birth st.)  |MAL-ED       |SOUTH AFRICA                 |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED       |SOUTH AFRICA                 |0                  |1              | 1.1822430| 0.5765601| 2.424203|
|0-6 months (no birth st.)  |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |0                  |1              | 1.0175951| 0.6023367| 1.719138|
|0-6 months (no birth st.)  |PROVIDE      |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |PROVIDE      |BANGLADESH                   |0                  |1              | 1.2503110| 0.8646206| 1.808050|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA                        |0                  |1              | 1.7972350| 0.5064696| 6.377587|


### Parameter: PAR


|agecat                     |studyid      |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL                        |1                  |NA             |  0.0025338| -0.0161257| 0.0211933|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH                   |1                  |NA             |  0.0005969| -0.0018403| 0.0030341|
|0-24 months (no birth st.) |Keneba       |GAMBIA                       |1                  |NA             |  0.0018411| -0.0055957| 0.0092780|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH                   |1                  |NA             |  0.0207133| -0.0257451| 0.0671718|
|0-24 months (no birth st.) |MAL-ED       |BRAZIL                       |1                  |NA             |  0.0164286| -0.0646159| 0.0974731|
|0-24 months (no birth st.) |MAL-ED       |INDIA                        |1                  |NA             | -0.0309659| -0.1013565| 0.0394247|
|0-24 months (no birth st.) |MAL-ED       |NEPAL                        |1                  |NA             | -0.0074215| -0.0955039| 0.0806610|
|0-24 months (no birth st.) |MAL-ED       |PERU                         |1                  |NA             |  0.0100897| -0.1124468| 0.1326261|
|0-24 months (no birth st.) |MAL-ED       |SOUTH AFRICA                 |1                  |NA             |  0.1770681| -0.0362403| 0.3903766|
|0-24 months (no birth st.) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.0128378| -0.0908385| 0.1165141|
|0-24 months (no birth st.) |PROVIDE      |BANGLADESH                   |1                  |NA             |  0.0060714| -0.0156451| 0.0277880|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA                        |1                  |NA             |  0.0013174| -0.0112602| 0.0138950|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL                        |1                  |NA             | -0.0071192| -0.0241228| 0.0098843|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH                   |1                  |NA             |  0.0003206| -0.0018091| 0.0024503|
|0-6 months (no birth st.)  |Keneba       |GAMBIA                       |1                  |NA             |  0.0045630| -0.0023038| 0.0114298|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH                   |1                  |NA             | -0.0094249| -0.0523822| 0.0335324|
|0-6 months (no birth st.)  |MAL-ED       |BRAZIL                       |1                  |NA             |  0.0250000| -0.0402255| 0.0902255|
|0-6 months (no birth st.)  |MAL-ED       |INDIA                        |1                  |NA             |  0.0004007| -0.0597085| 0.0605099|
|0-6 months (no birth st.)  |MAL-ED       |PERU                         |1                  |NA             |  0.0874163| -0.0249516| 0.1997843|
|0-6 months (no birth st.)  |MAL-ED       |SOUTH AFRICA                 |1                  |NA             |  0.0429279| -0.1288462| 0.2147020|
|0-6 months (no birth st.)  |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0000593| -0.1298988| 0.1297802|
|0-6 months (no birth st.)  |PROVIDE      |BANGLADESH                   |1                  |NA             |  0.0117518| -0.0066319| 0.0301355|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA                        |1                  |NA             |  0.0068035| -0.0151879| 0.0287949|


### Parameter: PAF


|agecat                     |studyid      |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL                        |1                  |NA             |  0.0039787| -0.0257734| 0.0328678|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH                   |1                  |NA             |  0.0022712| -0.0070516| 0.0115077|
|0-24 months (no birth st.) |Keneba       |GAMBIA                       |1                  |NA             |  0.0034299| -0.0105229| 0.0171901|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH                   |1                  |NA             |  0.0387416| -0.0524162| 0.1220035|
|0-24 months (no birth st.) |MAL-ED       |BRAZIL                       |1                  |NA             |  0.0927419| -0.5012539| 0.4517136|
|0-24 months (no birth st.) |MAL-ED       |INDIA                        |1                  |NA             | -0.0564131| -0.1930669| 0.0645884|
|0-24 months (no birth st.) |MAL-ED       |NEPAL                        |1                  |NA             | -0.0286868| -0.4321359| 0.2611061|
|0-24 months (no birth st.) |MAL-ED       |PERU                         |1                  |NA             |  0.0169052| -0.2114623| 0.2022241|
|0-24 months (no birth st.) |MAL-ED       |SOUTH AFRICA                 |1                  |NA             |  0.3203447| -0.2031002| 0.6160491|
|0-24 months (no birth st.) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.0153226| -0.1165714| 0.1316367|
|0-24 months (no birth st.) |PROVIDE      |BANGLADESH                   |1                  |NA             |  0.0161480| -0.0433459| 0.0722494|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA                        |1                  |NA             |  0.0021474| -0.0184658| 0.0223435|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL                        |1                  |NA             | -0.0360707| -0.1257721| 0.0464833|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH                   |1                  |NA             |  0.0023349| -0.0133037| 0.0177321|
|0-6 months (no birth st.)  |Keneba       |GAMBIA                       |1                  |NA             |  0.0171229| -0.0090062| 0.0425755|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH                   |1                  |NA             | -0.0423073| -0.2543246| 0.1338728|
|0-6 months (no birth st.)  |MAL-ED       |BRAZIL                       |1                  |NA             |  0.2187500| -0.6101023| 0.6209237|
|0-6 months (no birth st.)  |MAL-ED       |INDIA                        |1                  |NA             |  0.0017982| -0.3079382| 0.2381851|
|0-6 months (no birth st.)  |MAL-ED       |PERU                         |1                  |NA             |  0.2403950| -0.1404803| 0.4940730|
|0-6 months (no birth st.)  |MAL-ED       |SOUTH AFRICA                 |1                  |NA             |  0.1413043| -0.6585343| 0.5554157|
|0-6 months (no birth st.)  |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0001892| -0.5132418| 0.3389171|
|0-6 months (no birth st.)  |PROVIDE      |BANGLADESH                   |1                  |NA             |  0.0736522| -0.0486921| 0.1817234|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA                        |1                  |NA             |  0.0331037| -0.0733606| 0.1290081|
