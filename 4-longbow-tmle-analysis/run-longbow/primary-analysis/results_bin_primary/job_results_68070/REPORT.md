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

**Outcome Variable:** ever_wasted

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

|agecat                      |studyid        |country                      |exclfeed3 | ever_wasted| n_cell|     n|
|:---------------------------|:--------------|:----------------------------|:---------|-----------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1         |           0|      4|    10|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1         |           1|      6|    10|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0         |           0|      0|    10|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0         |           1|      0|    10|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1         |           0|     18|    39|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1         |           1|     21|    39|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0         |           0|      0|    39|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0         |           1|      0|    39|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1         |           0|    147|   453|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1         |           1|    229|   453|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0         |           0|     39|   453|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0         |           1|     38|   453|
|0-24 months (no birth wast) |IRC            |INDIA                        |1         |           0|      0|    10|
|0-24 months (no birth wast) |IRC            |INDIA                        |1         |           1|      0|    10|
|0-24 months (no birth wast) |IRC            |INDIA                        |0         |           0|      4|    10|
|0-24 months (no birth wast) |IRC            |INDIA                        |0         |           1|      6|    10|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1         |           0|  11034| 14768|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1         |           1|   2327| 14768|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0         |           0|   1167| 14768|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0         |           1|    240| 14768|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1         |           0|    109|   164|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1         |           1|     38|   164|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0         |           0|     13|   164|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0         |           1|      4|   164|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1         |           0|   1100|  2015|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1         |           1|    695|  2015|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0         |           0|    120|  2015|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0         |           1|    100|  2015|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1         |           0|    123|   244|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1         |           1|     36|   244|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0         |           0|     66|   244|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0         |           1|     19|   244|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1         |           0|     58|   202|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1         |           1|      6|   202|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0         |           0|    131|   202|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0         |           1|      7|   202|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1         |           0|     71|   212|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1         |           1|     41|   212|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0         |           0|     59|   212|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0         |           1|     41|   212|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1         |           0|     57|   227|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1         |           1|     13|   227|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0         |           0|    124|   227|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0         |           1|     33|   227|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1         |           0|     61|   287|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1         |           1|      3|   287|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0         |           0|    206|   287|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0         |           1|     17|   287|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1         |           0|     23|   269|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1         |           1|      2|   269|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0         |           0|    203|   269|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0         |           1|     41|   269|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |           0|     42|   219|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |           1|      5|   219|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |           0|    149|   219|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |           1|     23|   219|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1         |           0|    407|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1         |           1|     86|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0         |           0|    158|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0         |           1|     36|   687|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1         |           0|    263|   443|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1         |           1|    158|   443|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0         |           0|     12|   443|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0         |           1|     10|   443|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |1         |           0|      5|     9|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |1         |           1|      4|     9|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0         |           0|      0|     9|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0         |           1|      0|     9|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |1         |           0|     33|    38|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |1         |           1|      5|    38|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |0         |           0|      0|    38|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |0         |           1|      0|    38|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |1         |           0|    288|   439|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |1         |           1|     78|   439|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |0         |           0|     55|   439|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |0         |           1|     18|   439|
|0-6 months (no birth wast)  |IRC            |INDIA                        |1         |           0|      0|     9|
|0-6 months (no birth wast)  |IRC            |INDIA                        |1         |           1|      0|     9|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0         |           0|      3|     9|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0         |           1|      6|     9|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |1         |           0|  12287| 14643|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |1         |           1|    961| 14643|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0         |           0|   1279| 14643|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0         |           1|    116| 14643|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |1         |           0|    143|   161|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |1         |           1|      3|   161|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0         |           0|     14|   161|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0         |           1|      1|   161|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |1         |           0|   1582|  2001|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |1         |           1|    204|  2001|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |0         |           0|    172|  2001|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |0         |           1|     43|  2001|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |1         |           0|    148|   243|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |1         |           1|     10|   243|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |0         |           0|     78|   243|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |0         |           1|      7|   243|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |1         |           0|     60|   202|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |1         |           1|      4|   202|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |0         |           0|    134|   202|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |0         |           1|      4|   202|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |1         |           0|     98|   210|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |1         |           1|     14|   210|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |0         |           0|     80|   210|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |0         |           1|     18|   210|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |1         |           0|     66|   225|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |1         |           1|      4|   225|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |0         |           0|    143|   225|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |0         |           1|     12|   225|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |1         |           0|     64|   287|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |1         |           1|      0|   287|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |0         |           0|    218|   287|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |0         |           1|      5|   287|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |1         |           0|     24|   268|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |1         |           1|      1|   268|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |0         |           0|    231|   268|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |0         |           1|     12|   268|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |           0|     44|   219|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |           1|      3|   219|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |           0|    167|   219|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |           1|      5|   219|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |1         |           0|    471|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |1         |           1|     22|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0         |           0|    175|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0         |           1|     15|   683|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |1         |           0|    365|   437|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |1         |           1|     50|   437|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |0         |           0|     17|   437|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |0         |           1|      5|   437|


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
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/71154e6f-0c9f-4884-a1c7-18055ea56854/602dab4e-af65-4fff-ba46-4a86d05f8289/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/71154e6f-0c9f-4884-a1c7-18055ea56854/602dab4e-af65-4fff-ba46-4a86d05f8289/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/71154e6f-0c9f-4884-a1c7-18055ea56854/602dab4e-af65-4fff-ba46-4a86d05f8289/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/71154e6f-0c9f-4884-a1c7-18055ea56854/602dab4e-af65-4fff-ba46-4a86d05f8289/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid      |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL                        |1                  |NA             | 0.6114688| 0.5622911| 0.6606465|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL                        |0                  |NA             | 0.5277940| 0.4171190| 0.6384691|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH                   |1                  |NA             | 0.1733786| 0.1664162| 0.1803409|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH                   |0                  |NA             | 0.1792857| 0.1564733| 0.2020980|
|0-24 months (no birth wast) |Keneba       |GAMBIA                       |1                  |NA             | 0.3875430| 0.3650493| 0.4100366|
|0-24 months (no birth wast) |Keneba       |GAMBIA                       |0                  |NA             | 0.4580715| 0.3915529| 0.5245902|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH                   |1                  |NA             | 0.2222777| 0.1575337| 0.2870217|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH                   |0                  |NA             | 0.2291754| 0.1392036| 0.3191471|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL                       |1                  |NA             | 0.0937500| 0.0221611| 0.1653389|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL                       |0                  |NA             | 0.0507246| 0.0140225| 0.0874268|
|0-24 months (no birth wast) |MAL-ED       |INDIA                        |1                  |NA             | 0.3788865| 0.2880574| 0.4697156|
|0-24 months (no birth wast) |MAL-ED       |INDIA                        |0                  |NA             | 0.4187529| 0.3216528| 0.5158531|
|0-24 months (no birth wast) |MAL-ED       |NEPAL                        |1                  |NA             | 0.1798704| 0.0894244| 0.2703164|
|0-24 months (no birth wast) |MAL-ED       |NEPAL                        |0                  |NA             | 0.2134725| 0.1495001| 0.2774450|
|0-24 months (no birth wast) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.1063830| 0.0180333| 0.1947326|
|0-24 months (no birth wast) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.1337209| 0.0827402| 0.1847017|
|0-24 months (no birth wast) |PROVIDE      |BANGLADESH                   |1                  |NA             | 0.1771554| 0.1432368| 0.2110739|
|0-24 months (no birth wast) |PROVIDE      |BANGLADESH                   |0                  |NA             | 0.1788823| 0.1244104| 0.2333542|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA                        |1                  |NA             | 0.3749192| 0.3179202| 0.4319182|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA                        |0                  |NA             | 0.4616077| 0.3160035| 0.6072120|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL                        |1                  |NA             | 0.2129402| 0.1708954| 0.2549849|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL                        |0                  |NA             | 0.2294764| 0.1288166| 0.3301362|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH                   |1                  |NA             | 0.0725847| 0.0674591| 0.0777103|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH                   |0                  |NA             | 0.0829858| 0.0653255| 0.1006462|
|0-6 months (no birth wast)  |Keneba       |GAMBIA                       |1                  |NA             | 0.1142701| 0.0995058| 0.1290344|
|0-6 months (no birth wast)  |Keneba       |GAMBIA                       |0                  |NA             | 0.1894456| 0.1357810| 0.2431102|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH                   |1                  |NA             | 0.0632911| 0.0252469| 0.1013354|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH                   |0                  |NA             | 0.0823529| 0.0237915| 0.1409143|
|0-6 months (no birth wast)  |MAL-ED       |INDIA                        |1                  |NA             | 0.1390672| 0.0719849| 0.2061495|
|0-6 months (no birth wast)  |MAL-ED       |INDIA                        |0                  |NA             | 0.1791294| 0.1011525| 0.2571063|
|0-6 months (no birth wast)  |PROVIDE      |BANGLADESH                   |1                  |NA             | 0.0442484| 0.0259828| 0.0625140|
|0-6 months (no birth wast)  |PROVIDE      |BANGLADESH                   |0                  |NA             | 0.0751398| 0.0364930| 0.1137866|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA                        |1                  |NA             | 0.1204819| 0.0857775| 0.1551864|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA                        |0                  |NA             | 0.2272727| 0.0595457| 0.3949997|


### Parameter: E(Y)


|agecat                      |studyid      |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL                        |NA                 |NA             | 0.5894040| 0.5440524| 0.6347556|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH                   |NA                 |NA             | 0.1738218| 0.1671074| 0.1805361|
|0-24 months (no birth wast) |Keneba       |GAMBIA                       |NA                 |NA             | 0.3945409| 0.3731954| 0.4158865|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH                   |NA                 |NA             | 0.2254098| 0.1728726| 0.2779471|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL                       |NA                 |NA             | 0.0643564| 0.0304329| 0.0982800|
|0-24 months (no birth wast) |MAL-ED       |INDIA                        |NA                 |NA             | 0.3867925| 0.3210797| 0.4525052|
|0-24 months (no birth wast) |MAL-ED       |NEPAL                        |NA                 |NA             | 0.2026432| 0.1502365| 0.2550498|
|0-24 months (no birth wast) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1278539| 0.0835266| 0.1721812|
|0-24 months (no birth wast) |PROVIDE      |BANGLADESH                   |NA                 |NA             | 0.1775837| 0.1489858| 0.2061816|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA                        |NA                 |NA             | 0.3792325| 0.3255512| 0.4329138|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL                        |NA                 |NA             | 0.2186788| 0.1799683| 0.2573894|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH                   |NA                 |NA             | 0.0735505| 0.0685774| 0.0785236|
|0-6 months (no birth wast)  |Keneba       |GAMBIA                       |NA                 |NA             | 0.1234383| 0.1090221| 0.1378544|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH                   |NA                 |NA             | 0.0699588| 0.0378213| 0.1020964|
|0-6 months (no birth wast)  |MAL-ED       |INDIA                        |NA                 |NA             | 0.1523810| 0.1036572| 0.2011047|
|0-6 months (no birth wast)  |PROVIDE      |BANGLADESH                   |NA                 |NA             | 0.0541728| 0.0371844| 0.0711612|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA                        |NA                 |NA             | 0.1258581| 0.0910745| 0.1606418|


### Parameter: RR


|agecat                      |studyid      |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL                        |0                  |1              | 0.8631577| 0.6906992| 1.078677|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH                   |0                  |1              | 1.0340705| 0.9056947| 1.180643|
|0-24 months (no birth wast) |Keneba       |GAMBIA                       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |Keneba       |GAMBIA                       |0                  |1              | 1.1819890| 1.0114071| 1.381341|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH                   |0                  |1              | 1.0310319| 0.6355269| 1.672670|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL                       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL                       |0                  |1              | 0.5410628| 0.1889656| 1.549219|
|0-24 months (no birth wast) |MAL-ED       |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED       |INDIA                        |0                  |1              | 1.1052200| 0.7911129| 1.544042|
|0-24 months (no birth wast) |MAL-ED       |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED       |NEPAL                        |0                  |1              | 1.1868131| 0.6628250| 2.125033|
|0-24 months (no birth wast) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |0                  |1              | 1.2569767| 0.5040371| 3.134671|
|0-24 months (no birth wast) |PROVIDE      |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |PROVIDE      |BANGLADESH                   |0                  |1              | 1.0097481| 0.7045426| 1.447168|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA                        |0                  |1              | 1.2312191| 0.8795362| 1.723523|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL                        |0                  |1              | 1.0776568| 0.6652980| 1.745600|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH                   |0                  |1              | 1.1432961| 0.9153752| 1.427967|
|0-6 months (no birth wast)  |Keneba       |GAMBIA                       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |Keneba       |GAMBIA                       |0                  |1              | 1.6578749| 1.2144122| 2.263275|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH                   |0                  |1              | 1.3011765| 0.5128087| 3.301544|
|0-6 months (no birth wast)  |MAL-ED       |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |MAL-ED       |INDIA                        |0                  |1              | 1.2880778| 0.6717729| 2.469800|
|0-6 months (no birth wast)  |PROVIDE      |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |PROVIDE      |BANGLADESH                   |0                  |1              | 1.6981362| 0.8778379| 3.284965|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA                        |0                  |1              | 1.8863636| 0.8915751| 3.991103|


### Parameter: PAR


|agecat                      |studyid      |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:---------------------------|:------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL                        |1                  |NA             | -0.0220648| -0.0428632| -0.0012665|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH                   |1                  |NA             |  0.0004432| -0.0017922|  0.0026786|
|0-24 months (no birth wast) |Keneba       |GAMBIA                       |1                  |NA             |  0.0069980| -0.0005068|  0.0145027|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH                   |1                  |NA             |  0.0031321| -0.0342553|  0.0405196|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL                       |1                  |NA             | -0.0293936| -0.0844233|  0.0256361|
|0-24 months (no birth wast) |MAL-ED       |INDIA                        |1                  |NA             |  0.0079060| -0.0558685|  0.0716804|
|0-24 months (no birth wast) |MAL-ED       |NEPAL                        |1                  |NA             |  0.0227728| -0.0534535|  0.0989990|
|0-24 months (no birth wast) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.0214709| -0.0586552|  0.1015970|
|0-24 months (no birth wast) |PROVIDE      |BANGLADESH                   |1                  |NA             |  0.0004283| -0.0180398|  0.0188965|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA                        |1                  |NA             |  0.0043133| -0.0046855|  0.0133121|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL                        |1                  |NA             |  0.0057387| -0.0122510|  0.0237283|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH                   |1                  |NA             |  0.0009658| -0.0007704|  0.0027020|
|0-6 months (no birth wast)  |Keneba       |GAMBIA                       |1                  |NA             |  0.0091681|  0.0031235|  0.0152128|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH                   |1                  |NA             |  0.0066677| -0.0177867|  0.0311221|
|0-6 months (no birth wast)  |MAL-ED       |INDIA                        |1                  |NA             |  0.0133137| -0.0372637|  0.0638912|
|0-6 months (no birth wast)  |PROVIDE      |BANGLADESH                   |1                  |NA             |  0.0099244| -0.0019927|  0.0218414|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA                        |1                  |NA             |  0.0053762| -0.0018898|  0.0126422|


### Parameter: PAF


|agecat                      |studyid      |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:---------------------------|:------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL                        |1                  |NA             | -0.0374358| -0.0735628| -0.0025246|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH                   |1                  |NA             |  0.0025497| -0.0103889|  0.0153227|
|0-24 months (no birth wast) |Keneba       |GAMBIA                       |1                  |NA             |  0.0177370| -0.0014763|  0.0365817|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH                   |1                  |NA             |  0.0138953| -0.1668050|  0.1666111|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL                       |1                  |NA             | -0.4567308| -1.5709361|  0.1745946|
|0-24 months (no birth wast) |MAL-ED       |INDIA                        |1                  |NA             |  0.0204398| -0.1591062|  0.1721741|
|0-24 months (no birth wast) |MAL-ED       |NEPAL                        |1                  |NA             |  0.1123787| -0.3556707|  0.4188326|
|0-24 months (no birth wast) |MAL-ED       |TANZANIA, UNITED REPUBLIC OF |1                  |NA             |  0.1679331| -0.7627614|  0.6072439|
|0-24 months (no birth wast) |PROVIDE      |BANGLADESH                   |1                  |NA             |  0.0024121| -0.1071964|  0.1011697|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA                        |1                  |NA             |  0.0113737| -0.0131809|  0.0353333|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL                        |1                  |NA             |  0.0262424| -0.0595430|  0.1050822|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH                   |1                  |NA             |  0.0131311| -0.0106978|  0.0363982|
|0-6 months (no birth wast)  |Keneba       |GAMBIA                       |1                  |NA             |  0.0742731|  0.0245628|  0.1214501|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH                   |1                  |NA             |  0.0953090| -0.3278890|  0.3836339|
|0-6 months (no birth wast)  |MAL-ED       |INDIA                        |1                  |NA             |  0.0873714| -0.3111002|  0.3647389|
|0-6 months (no birth wast)  |PROVIDE      |BANGLADESH                   |1                  |NA             |  0.1831982| -0.0609731|  0.3711762|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA                        |1                  |NA             |  0.0427163| -0.0166271|  0.0985957|
