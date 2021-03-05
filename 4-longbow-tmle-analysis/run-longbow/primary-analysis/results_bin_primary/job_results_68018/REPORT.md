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

**Intervention Variable:** birthwt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country                      |birthwt                    | ever_swasted| n_cell|     n|
|:---------------------------|:--------------|:----------------------------|:--------------------------|------------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |            0|    271|   361|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |            1|     50|   361|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Low birthweight            |            0|     35|   361|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Low birthweight            |            1|      5|   361|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |Normal or high birthweight |            0|     12|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |Normal or high birthweight |            1|      0|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |Low birthweight            |            0|      5|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |Low birthweight            |            1|      0|    17|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Normal or high birthweight |            0|    825|   917|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Normal or high birthweight |            1|     13|   917|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Low birthweight            |            0|     74|   917|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Low birthweight            |            1|      5|   917|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Normal or high birthweight |            0|   5070|  6524|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Normal or high birthweight |            1|    243|  6524|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Low birthweight            |            0|   1124|  6524|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Low birthweight            |            1|     87|  6524|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Normal or high birthweight |            0|   2494|  2975|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Normal or high birthweight |            1|    210|  2975|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Low birthweight            |            0|    233|  2975|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Low birthweight            |            1|     38|  2975|
|0-24 months (no birth wast) |CONTENT        |PERU                         |Normal or high birthweight |            0|      2|     2|
|0-24 months (no birth wast) |CONTENT        |PERU                         |Normal or high birthweight |            1|      0|     2|
|0-24 months (no birth wast) |CONTENT        |PERU                         |Low birthweight            |            0|      0|     2|
|0-24 months (no birth wast) |CONTENT        |PERU                         |Low birthweight            |            1|      0|     2|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |Normal or high birthweight |            0|    203|   376|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |Normal or high birthweight |            1|     40|   376|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |Low birthweight            |            0|    107|   376|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |Low birthweight            |            1|     26|   376|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |Normal or high birthweight |            0|    372|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |Normal or high birthweight |            1|     86|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |Low birthweight            |            0|    156|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |Low birthweight            |            1|     45|   659|
|0-24 months (no birth wast) |IRC            |INDIA                        |Normal or high birthweight |            0|    277|   403|
|0-24 months (no birth wast) |IRC            |INDIA                        |Normal or high birthweight |            1|     58|   403|
|0-24 months (no birth wast) |IRC            |INDIA                        |Low birthweight            |            0|     51|   403|
|0-24 months (no birth wast) |IRC            |INDIA                        |Low birthweight            |            1|     17|   403|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |            0|  12499| 22227|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |            1|    437| 22227|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Low birthweight            |            0|   8892| 22227|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Low birthweight            |            1|    399| 22227|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |            0|   3204|  4487|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |            1|    118|  4487|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |Low birthweight            |            0|   1075|  4487|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |Low birthweight            |            1|     90|  4487|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Normal or high birthweight |            0|   1128|  1533|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Normal or high birthweight |            1|    183|  1533|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Low birthweight            |            0|    179|  1533|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Low birthweight            |            1|     43|  1533|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |Normal or high birthweight |            0|    196|   260|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |Normal or high birthweight |            1|      9|   260|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |Low birthweight            |            0|     52|   260|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |Low birthweight            |            1|      3|   260|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |Normal or high birthweight |            0|    217|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |Normal or high birthweight |            1|      4|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |Low birthweight            |            0|     12|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |Low birthweight            |            1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |Normal or high birthweight |            0|    190|   236|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |Normal or high birthweight |            1|     12|   236|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |Low birthweight            |            0|     34|   236|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |Low birthweight            |            1|      0|   236|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |Normal or high birthweight |            0|    212|   232|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |Normal or high birthweight |            1|      1|   232|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |Low birthweight            |            0|     19|   232|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |Low birthweight            |            1|      0|   232|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |Normal or high birthweight |            0|    278|   299|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |Normal or high birthweight |            1|      4|   299|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |Low birthweight            |            0|     17|   299|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |Low birthweight            |            1|      0|   299|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |Normal or high birthweight |            0|    276|   306|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |Normal or high birthweight |            1|     11|   306|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |Low birthweight            |            0|     18|   306|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |Low birthweight            |            1|      1|   306|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |            0|    180|   196|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |            1|      6|   196|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |            0|     10|   196|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |            1|      0|   196|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |            0|    369|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |            1|     31|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |Low birthweight            |            0|    159|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |Low birthweight            |            1|     22|   581|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |            0|    570|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |            1|      9|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Low birthweight            |            0|    164|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Low birthweight            |            1|     11|   754|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Normal or high birthweight |            0|  16675| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Normal or high birthweight |            1|    204| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Low birthweight            |            0|      0| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Low birthweight            |            1|      0| 16879|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |Normal or high birthweight |            0|    518|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |Normal or high birthweight |            1|     10|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |Low birthweight            |            0|    150|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |Low birthweight            |            1|      9|   687|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |Normal or high birthweight |            0|     31|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |Normal or high birthweight |            1|      3|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |Low birthweight            |            0|      7|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |Low birthweight            |            1|      0|    41|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |Normal or high birthweight |            0|   1025|  1492|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |Normal or high birthweight |            1|    107|  1492|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |Low birthweight            |            0|    296|  1492|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |Low birthweight            |            1|     64|  1492|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |            0|   2171|  2359|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |            1|    108|  2359|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |            0|     70|  2359|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |            1|     10|  2359|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |            0|  11511| 13593|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |            1|    398| 13593|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |            0|   1605| 13593|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |            1|     79| 13593|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
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
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/96bdbe8c-d7b5-42d9-9572-1ab76e29236e/42cc4e57-b842-4b7e-b002-cc1c085e7fc1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/96bdbe8c-d7b5-42d9-9572-1ab76e29236e/42cc4e57-b842-4b7e-b002-cc1c085e7fc1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/96bdbe8c-d7b5-42d9-9572-1ab76e29236e/42cc4e57-b842-4b7e-b002-cc1c085e7fc1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/96bdbe8c-d7b5-42d9-9572-1ab76e29236e/42cc4e57-b842-4b7e-b002-cc1c085e7fc1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid        |country                      |intervention_level         |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:--------------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |NA             | 0.1557632| 0.1160384| 0.1954881|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Low birthweight            |NA             | 0.1250000| 0.0223688| 0.2276312|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Normal or high birthweight |NA             | 0.0155131| 0.0071413| 0.0238849|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Low birthweight            |NA             | 0.0632911| 0.0095700| 0.1170123|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Normal or high birthweight |NA             | 0.0457576| 0.0401474| 0.0513677|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Low birthweight            |NA             | 0.0708968| 0.0560057| 0.0857878|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Normal or high birthweight |NA             | 0.0776216| 0.0675371| 0.0877061|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Low birthweight            |NA             | 0.1365110| 0.0956194| 0.1774026|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |Normal or high birthweight |NA             | 0.1653462| 0.1188998| 0.2117927|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |Low birthweight            |NA             | 0.2090307| 0.1411920| 0.2768694|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |Normal or high birthweight |NA             | 0.1861609| 0.1500934| 0.2222283|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |Low birthweight            |NA             | 0.2348937| 0.1748004| 0.2949869|
|0-24 months (no birth wast) |IRC            |INDIA                        |Normal or high birthweight |NA             | 0.1730235| 0.1324062| 0.2136408|
|0-24 months (no birth wast) |IRC            |INDIA                        |Low birthweight            |NA             | 0.2499538| 0.1446870| 0.3552206|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |NA             | 0.0333718| 0.0297830| 0.0369606|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Low birthweight            |NA             | 0.0433732| 0.0384438| 0.0483027|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |NA             | 0.0355447| 0.0286584| 0.0424310|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |Low birthweight            |NA             | 0.0766882| 0.0600915| 0.0932849|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Normal or high birthweight |NA             | 0.1389941| 0.1202263| 0.1577620|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Low birthweight            |NA             | 0.2054185| 0.1504436| 0.2603934|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |NA             | 0.0790359| 0.0527331| 0.1053387|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |Low birthweight            |NA             | 0.1170714| 0.0697615| 0.1643813|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |NA             | 0.0155440| 0.0054613| 0.0256267|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Low birthweight            |NA             | 0.0628571| 0.0268741| 0.0988402|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |Normal or high birthweight |NA             | 0.0189394| 0.0073041| 0.0305747|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |Low birthweight            |NA             | 0.0566038| 0.0206590| 0.0925485|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |Normal or high birthweight |NA             | 0.0953483| 0.0729147| 0.1177820|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |Low birthweight            |NA             | 0.1723192| 0.1300045| 0.2146340|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |NA             | 0.0474002| 0.0386717| 0.0561287|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |NA             | 0.1235824| 0.0506081| 0.1965566|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |NA             | 0.0334121| 0.0301855| 0.0366386|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |NA             | 0.0469032| 0.0367451| 0.0570613|


### Parameter: E(Y)


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.1523546| 0.1152325| 0.1894766|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.0196292| 0.0106457| 0.0286128|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |NA                 |NA             | 0.0505825| 0.0452644| 0.0559005|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.0833613| 0.0734265| 0.0932961|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |NA                 |NA             | 0.1755319| 0.1370287| 0.2140352|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.1987860| 0.1682929| 0.2292792|
|0-24 months (no birth wast) |IRC            |INDIA                        |NA                 |NA             | 0.1861042| 0.1480592| 0.2241492|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0376119| 0.0347245| 0.0404993|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.0463561| 0.0396916| 0.0530207|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |NA                 |NA             | 0.1474234| 0.1296705| 0.1651762|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.0912220| 0.0677898| 0.1146542|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.0265252| 0.0150478| 0.0380026|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.0276565| 0.0153851| 0.0399279|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.1146113| 0.0915227| 0.1376999|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0500212| 0.0412227| 0.0588197|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0350916| 0.0319981| 0.0381851|


### Parameter: RR


|agecat                      |studyid        |country                      |intervention_level         |baseline_level             | estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:--------------------------|:--------------------------|--------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Low birthweight            |Normal or high birthweight | 0.802500| 0.3396735|  1.895957|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Low birthweight            |Normal or high birthweight | 4.079844| 1.4921752| 11.154943|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Low birthweight            |Normal or high birthweight | 1.549400| 1.2152952|  1.975356|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Low birthweight            |Normal or high birthweight | 1.758672| 1.2689874|  2.437319|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |Low birthweight            |Normal or high birthweight | 1.264200| 0.8211926|  1.946197|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |Low birthweight            |Normal or high birthweight | 1.261778| 0.9160562|  1.737976|
|0-24 months (no birth wast) |IRC            |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |IRC            |INDIA                        |Low birthweight            |Normal or high birthweight | 1.444623| 0.8914524|  2.341052|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 1.299697| 1.1133035|  1.517298|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 2.157516| 1.6058960|  2.898615|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Low birthweight            |Normal or high birthweight | 1.477893| 1.0954944|  1.993775|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 1.481243| 0.8789385|  2.496285|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 4.043810| 1.7024219|  9.605372|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 2.988679| 1.2352498|  7.231091|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |Low birthweight            |Normal or high birthweight | 1.807260| 1.3895501|  2.350537|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |Normal or high birthweight | 2.607210| 1.4046178|  4.839427|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |Normal or high birthweight | 1.403779| 1.1074602|  1.779384|


### Parameter: PAR


|agecat                      |studyid        |country                      |intervention_level         |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:--------------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |NA             | -0.0034087| -0.0156434| 0.0088261|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Normal or high birthweight |NA             |  0.0041161| -0.0006476| 0.0088798|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Normal or high birthweight |NA             |  0.0048249|  0.0019258| 0.0077240|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Normal or high birthweight |NA             |  0.0057397|  0.0018175| 0.0096619|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |Normal or high birthweight |NA             |  0.0101857| -0.0190632| 0.0394346|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |Normal or high birthweight |NA             |  0.0126252| -0.0084840| 0.0337343|
|0-24 months (no birth wast) |IRC            |INDIA                        |Normal or high birthweight |NA             |  0.0130807| -0.0059491| 0.0321105|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |NA             |  0.0042401|  0.0017431| 0.0067371|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |NA             |  0.0108115|  0.0059737| 0.0156492|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Normal or high birthweight |NA             |  0.0084292|  0.0003528| 0.0165056|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |NA             |  0.0121861| -0.0047906| 0.0291629|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |NA             |  0.0109812|  0.0021914| 0.0197709|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |Normal or high birthweight |NA             |  0.0087171| -0.0001074| 0.0175416|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |Normal or high birthweight |NA             |  0.0192629|  0.0105835| 0.0279423|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |NA             |  0.0026210|  0.0000810| 0.0051609|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |NA             |  0.0016795|  0.0003651| 0.0029940|


### Parameter: PAF


|agecat                      |studyid        |country                      |intervention_level         |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:--------------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |NA             | -0.0223733| -0.1057891| 0.0547501|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Normal or high birthweight |NA             |  0.2096924| -0.0486896| 0.4044128|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Normal or high birthweight |NA             |  0.0953869|  0.0370957| 0.1501493|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Normal or high birthweight |NA             |  0.0688534|  0.0212165| 0.1141718|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |Normal or high birthweight |NA             |  0.0580276| -0.1236099| 0.2103024|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |Normal or high birthweight |NA             |  0.0635113| -0.0488021| 0.1637975|
|0-24 months (no birth wast) |IRC            |INDIA                        |Normal or high birthweight |NA             |  0.0702871| -0.0371569| 0.1666004|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |NA             |  0.1127333|  0.0442864| 0.1762781|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |NA             |  0.2332264|  0.1275484| 0.3261039|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Normal or high birthweight |NA             |  0.0571770|  0.0010291| 0.1101691|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |NA             |  0.1335877| -0.0701347| 0.2985274|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |NA             |  0.4139896|  0.0540478| 0.6369709|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |Normal or high birthweight |NA             |  0.3151914| -0.0430123| 0.5503765|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |Normal or high birthweight |NA             |  0.1680718|  0.0902394| 0.2392454|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |NA             |  0.0523971|  0.0010280| 0.1011248|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |NA             |  0.0478608|  0.0098886| 0.0843767|
