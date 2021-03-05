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

**Intervention Variable:** exclfeed36

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

|agecat                     |studyid        |country                      |exclfeed36 | ever_stunted| n_cell|    n|
|:--------------------------|:--------------|:----------------------------|:----------|------------:|------:|----:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |1          |            0|      1|    6|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |1          |            1|      5|    6|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |0          |            0|      0|    6|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |0          |            1|      0|    6|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |1          |            0|      0|    6|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |1          |            1|      2|    6|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |0          |            0|      2|    6|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |0          |            1|      2|    6|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |1          |            0|    132|  443|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |1          |            1|    225|  443|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |0          |            0|     22|  443|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |0          |            1|     64|  443|
|0-24 months (no birth st.) |IRC            |INDIA                        |1          |            0|      0|    3|
|0-24 months (no birth st.) |IRC            |INDIA                        |1          |            1|      0|    3|
|0-24 months (no birth st.) |IRC            |INDIA                        |0          |            0|      1|    3|
|0-24 months (no birth st.) |IRC            |INDIA                        |0          |            1|      2|    3|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |1          |            0|   4970| 8764|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |1          |            1|   1853| 8764|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |0          |            0|   1441| 8764|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |0          |            1|    500| 8764|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |1          |            0|   1495| 3285|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |1          |            1|   1083| 3285|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |0          |            0|    396| 3285|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |0          |            1|    311| 3285|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |1          |            0|    285| 1798|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |1          |            1|    286| 1798|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |0          |            0|    544| 1798|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |0          |            1|    683| 1798|
|0-24 months (no birth st.) |LCNI-5         |MALAWI                       |1          |            0|     18|  175|
|0-24 months (no birth st.) |LCNI-5         |MALAWI                       |1          |            1|     12|  175|
|0-24 months (no birth st.) |LCNI-5         |MALAWI                       |0          |            0|     83|  175|
|0-24 months (no birth st.) |LCNI-5         |MALAWI                       |0          |            1|     62|  175|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |1          |            0|     12|  209|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |1          |            1|     17|  209|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |0          |            0|     85|  209|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |0          |            1|     95|  209|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |1          |            0|     11|  195|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |1          |            1|      1|  195|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |0          |            0|    153|  195|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |0          |            1|     30|  195|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |1          |            0|      4|  201|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |1          |            1|      5|  201|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |0          |            0|     88|  201|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |0          |            1|    104|  201|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |1          |            0|      4|  208|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |1          |            1|      1|  208|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |0          |            0|    150|  208|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |0          |            1|     53|  208|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |1          |            0|      4|  251|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |1          |            1|      4|  251|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |0          |            0|     97|  251|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |0          |            1|    146|  251|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |1          |            0|      3|  244|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |1          |            1|      0|  244|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |0          |            0|    108|  244|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |0          |            1|    133|  244|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1          |            0|      2|  210|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1          |            1|      1|  210|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0          |            0|     32|  210|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0          |            1|    175|  210|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |1          |            0|     86|  576|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |1          |            1|     64|  576|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0          |            0|    253|  576|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0          |            1|    173|  576|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA                        |1          |            0|      0|   95|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA                        |1          |            1|      0|   95|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA                        |0          |            0|     25|   95|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA                        |0          |            1|     70|   95|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |1          |            0|      4|    6|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |1          |            1|      2|    6|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |0          |            0|      0|    6|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |0          |            1|      0|    6|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |1          |            0|      0|    6|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |1          |            1|      2|    6|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |0          |            0|      3|    6|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |0          |            1|      1|    6|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |1          |            0|    294|  443|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |1          |            1|     63|  443|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |0          |            0|     60|  443|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |0          |            1|     26|  443|
|0-6 months (no birth st.)  |IRC            |INDIA                        |1          |            0|      0|    3|
|0-6 months (no birth st.)  |IRC            |INDIA                        |1          |            1|      0|    3|
|0-6 months (no birth st.)  |IRC            |INDIA                        |0          |            0|      3|    3|
|0-6 months (no birth st.)  |IRC            |INDIA                        |0          |            1|      0|    3|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |1          |            0|   5874| 8761|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |1          |            1|    947| 8761|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |0          |            0|   1693| 8761|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |0          |            1|    247| 8761|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |1          |            0|   2338| 3257|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |1          |            1|    229| 3257|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |0          |            0|    618| 3257|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |0          |            1|     72| 3257|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |1          |            0|    431| 1798|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |1          |            1|    140| 1798|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |0          |            0|    890| 1798|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |0          |            1|    337| 1798|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI                       |1          |            0|     30|  175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI                       |1          |            1|      0|  175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI                       |0          |            0|    145|  175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI                       |0          |            1|      0|  175|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |1          |            0|     21|  209|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |1          |            1|      8|  209|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |0          |            0|    143|  209|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |0          |            1|     37|  209|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |1          |            0|     12|  195|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |1          |            1|      0|  195|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |0          |            0|    163|  195|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |0          |            1|     20|  195|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |1          |            0|      9|  201|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |1          |            1|      0|  201|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |0          |            0|    147|  201|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |0          |            1|     45|  201|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |1          |            0|      5|  208|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |1          |            1|      0|  208|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |0          |            0|    190|  208|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |0          |            1|     13|  208|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |1          |            0|      6|  251|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |1          |            1|      2|  251|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |0          |            0|    154|  251|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |0          |            1|     89|  251|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |1          |            0|      3|  244|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |1          |            1|      0|  244|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |0          |            0|    167|  244|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |0          |            1|     74|  244|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1          |            0|      2|  210|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1          |            1|      1|  210|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0          |            0|    144|  210|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0          |            1|     63|  210|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |1          |            0|    123|  576|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |1          |            1|     27|  576|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0          |            0|    353|  576|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0          |            1|     73|  576|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA                        |1          |            0|      0|   95|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA                        |1          |            1|      0|   95|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA                        |0          |            0|     95|   95|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA                        |0          |            1|      0|   95|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/2caeaa38-076a-4d13-8372-64802f82dd90/c1b42fb7-1cae-4024-bc4e-f9b4511d498e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2caeaa38-076a-4d13-8372-64802f82dd90/c1b42fb7-1cae-4024-bc4e-f9b4511d498e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2caeaa38-076a-4d13-8372-64802f82dd90/c1b42fb7-1cae-4024-bc4e-f9b4511d498e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2caeaa38-076a-4d13-8372-64802f82dd90/c1b42fb7-1cae-4024-bc4e-f9b4511d498e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                     |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL      |1                  |NA             | 0.6298392| 0.5796493| 0.6800292|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL      |0                  |NA             | 0.7454821| 0.6519844| 0.8389799|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH |1                  |NA             | 0.2715968| 0.2593120| 0.2838816|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH |0                  |NA             | 0.2581165| 0.2388566| 0.2773764|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH |1                  |NA             | 0.4183718| 0.3957999| 0.4409438|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH |0                  |NA             | 0.4502609| 0.4086167| 0.4919052|
|0-24 months (no birth st.) |Keneba    |GAMBIA     |1                  |NA             | 0.5043555| 0.4649258| 0.5437853|
|0-24 months (no birth st.) |Keneba    |GAMBIA     |0                  |NA             | 0.5552387| 0.5280057| 0.5824717|
|0-24 months (no birth st.) |LCNI-5    |MALAWI     |1                  |NA             | 0.4176650| 0.2413533| 0.5939767|
|0-24 months (no birth st.) |LCNI-5    |MALAWI     |0                  |NA             | 0.4285160| 0.3476791| 0.5093530|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH |1                  |NA             | 0.5930269| 0.4013667| 0.7846871|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH |0                  |NA             | 0.5227875| 0.4500437| 0.5955313|
|0-24 months (no birth st.) |PROVIDE   |BANGLADESH |1                  |NA             | 0.3988472| 0.3252920| 0.4724024|
|0-24 months (no birth st.) |PROVIDE   |BANGLADESH |0                  |NA             | 0.4167334| 0.3708939| 0.4625729|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL      |1                  |NA             | 0.1755672| 0.1358659| 0.2152686|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL      |0                  |NA             | 0.3160613| 0.2155366| 0.4165860|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH |1                  |NA             | 0.1374865| 0.1283631| 0.1466099|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH |0                  |NA             | 0.1313839| 0.1172730| 0.1454948|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0869167| 0.0732174| 0.1006161|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH |0                  |NA             | 0.1131327| 0.0886704| 0.1375949|
|0-6 months (no birth st.)  |Keneba    |GAMBIA     |1                  |NA             | 0.2459374| 0.2110814| 0.2807934|
|0-6 months (no birth st.)  |Keneba    |GAMBIA     |0                  |NA             | 0.2764170| 0.2517654| 0.3010685|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH |1                  |NA             | 0.2758621| 0.1128022| 0.4389220|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH |0                  |NA             | 0.2055556| 0.1463790| 0.2647321|
|0-6 months (no birth st.)  |PROVIDE   |BANGLADESH |1                  |NA             | 0.1687946| 0.1070548| 0.2305345|
|0-6 months (no birth st.)  |PROVIDE   |BANGLADESH |0                  |NA             | 0.1750283| 0.1393568| 0.2106998|


### Parameter: E(Y)


|agecat                     |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL      |NA                 |NA             | 0.6523702| 0.6079743| 0.6967661|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.2684847| 0.2575491| 0.2794203|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH |NA                 |NA             | 0.4243531| 0.4041458| 0.4445604|
|0-24 months (no birth st.) |Keneba    |GAMBIA     |NA                 |NA             | 0.5389321| 0.5158847| 0.5619796|
|0-24 months (no birth st.) |LCNI-5    |MALAWI     |NA                 |NA             | 0.4228571| 0.3494545| 0.4962598|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH |NA                 |NA             | 0.5358852| 0.4681109| 0.6036595|
|0-24 months (no birth st.) |PROVIDE   |BANGLADESH |NA                 |NA             | 0.4114583| 0.3712361| 0.4516805|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL      |NA                 |NA             | 0.2009029| 0.1635496| 0.2382563|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.1362858| 0.1283472| 0.1442245|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH |NA                 |NA             | 0.0924163| 0.0803439| 0.1044888|
|0-6 months (no birth st.)  |Keneba    |GAMBIA     |NA                 |NA             | 0.2652948| 0.2448823| 0.2857072|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH |NA                 |NA             | 0.2153110| 0.1594513| 0.2711707|
|0-6 months (no birth st.)  |PROVIDE   |BANGLADESH |NA                 |NA             | 0.1736111| 0.1426515| 0.2045707|


### Parameter: RR


|agecat                     |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:--------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL      |0                  |1              | 1.1836070| 1.0200246| 1.373423|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH |0                  |1              | 0.9503666| 0.8750444| 1.032172|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH |0                  |1              | 1.0762219| 0.9698265| 1.194290|
|0-24 months (no birth st.) |Keneba    |GAMBIA     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |Keneba    |GAMBIA     |0                  |1              | 1.1008874| 1.0064716| 1.204160|
|0-24 months (no birth st.) |LCNI-5    |MALAWI     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |LCNI-5    |MALAWI     |0                  |1              | 1.0259802| 0.6456861| 1.630259|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH |0                  |1              | 0.8815579| 0.6198395| 1.253783|
|0-24 months (no birth st.) |PROVIDE   |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |PROVIDE   |BANGLADESH |0                  |1              | 1.0448448| 0.8499704| 1.284398|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL      |0                  |1              | 1.8002291| 1.2184566| 2.659779|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH |0                  |1              | 0.9556133| 0.8453458| 1.080264|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH |0                  |1              | 1.3016219| 0.9986231| 1.696556|
|0-6 months (no birth st.)  |Keneba    |GAMBIA     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |Keneba    |GAMBIA     |0                  |1              | 1.1239322| 0.9539140| 1.324253|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH |0                  |1              | 0.7451389| 0.3861012| 1.438048|
|0-6 months (no birth st.)  |PROVIDE   |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |PROVIDE   |BANGLADESH |0                  |1              | 1.0369306| 0.6837748| 1.572484|


### Parameter: PAR


|agecat                     |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL      |1                  |NA             |  0.0225310|  0.0015242| 0.0435377|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH |1                  |NA             | -0.0031121| -0.0078900| 0.0016659|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0059813| -0.0039745| 0.0159371|
|0-24 months (no birth st.) |Keneba    |GAMBIA     |1                  |NA             |  0.0345766|  0.0027497| 0.0664035|
|0-24 months (no birth st.) |LCNI-5    |MALAWI     |1                  |NA             |  0.0051921| -0.1559501| 0.1663343|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH |1                  |NA             | -0.0571417| -0.2361584| 0.1218750|
|0-24 months (no birth st.) |PROVIDE   |BANGLADESH |1                  |NA             |  0.0126112| -0.0490646| 0.0742870|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL      |1                  |NA             |  0.0253357|  0.0043330| 0.0463384|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH |1                  |NA             | -0.0012007| -0.0048028| 0.0024014|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0054996| -0.0001883| 0.0111876|
|0-6 months (no birth st.)  |Keneba    |GAMBIA     |1                  |NA             |  0.0193574| -0.0094083| 0.0481231|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH |1                  |NA             | -0.0605511| -0.2099840| 0.0888819|
|0-6 months (no birth st.)  |PROVIDE   |BANGLADESH |1                  |NA             |  0.0048165| -0.0477878| 0.0574208|


### Parameter: PAF


|agecat                     |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL      |1                  |NA             |  0.0345371|  0.0015664| 0.0664190|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH |1                  |NA             | -0.0115912| -0.0295118| 0.0060174|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0140951| -0.0096607| 0.0372919|
|0-24 months (no birth st.) |Keneba    |GAMBIA     |1                  |NA             |  0.0641576|  0.0031101| 0.1214667|
|0-24 months (no birth st.) |LCNI-5    |MALAWI     |1                  |NA             |  0.0122787| -0.4527288| 0.3284408|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH |1                  |NA             | -0.1066305| -0.4968881| 0.1818819|
|0-24 months (no birth st.) |PROVIDE   |BANGLADESH |1                  |NA             |  0.0306499| -0.1314833| 0.1695507|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL      |1                  |NA             |  0.1261091|  0.0164838| 0.2235153|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH |1                  |NA             | -0.0088101| -0.0355279| 0.0172183|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0595093| -0.0051908| 0.1200449|
|0-6 months (no birth st.)  |Keneba    |GAMBIA     |1                  |NA             |  0.0729655| -0.0420660| 0.1752990|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH |1                  |NA             | -0.2812261| -1.2003633| 0.2539685|
|0-6 months (no birth st.)  |PROVIDE   |BANGLADESH |1                  |NA             |  0.0277429| -0.3280183| 0.2881997|
