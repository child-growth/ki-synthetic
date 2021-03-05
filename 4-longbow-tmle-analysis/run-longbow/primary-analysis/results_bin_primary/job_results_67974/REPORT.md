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

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |feducyrs | ever_sstunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:--------|-------------:|------:|-----:|
|0-24 months |COHORTS        |GUATEMALA                    |High     |             0|    128|  1250|
|0-24 months |COHORTS        |GUATEMALA                    |High     |             1|    106|  1250|
|0-24 months |COHORTS        |GUATEMALA                    |Low      |             0|    294|  1250|
|0-24 months |COHORTS        |GUATEMALA                    |Low      |             1|    273|  1250|
|0-24 months |COHORTS        |GUATEMALA                    |Medium   |             0|    237|  1250|
|0-24 months |COHORTS        |GUATEMALA                    |Medium   |             1|    212|  1250|
|0-24 months |COHORTS        |INDIA                        |High     |             0|    525|  1447|
|0-24 months |COHORTS        |INDIA                        |High     |             1|     42|  1447|
|0-24 months |COHORTS        |INDIA                        |Low      |             0|    397|  1447|
|0-24 months |COHORTS        |INDIA                        |Low      |             1|     75|  1447|
|0-24 months |COHORTS        |INDIA                        |Medium   |             0|    365|  1447|
|0-24 months |COHORTS        |INDIA                        |Medium   |             1|     43|  1447|
|0-24 months |COHORTS        |PHILIPPINES                  |High     |             0|    794|  2880|
|0-24 months |COHORTS        |PHILIPPINES                  |High     |             1|    237|  2880|
|0-24 months |COHORTS        |PHILIPPINES                  |Low      |             0|    424|  2880|
|0-24 months |COHORTS        |PHILIPPINES                  |Low      |             1|    404|  2880|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium   |             0|    625|  2880|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium   |             1|    396|  2880|
|0-24 months |GMS-Nepal      |NEPAL                        |High     |             0|    135|   696|
|0-24 months |GMS-Nepal      |NEPAL                        |High     |             1|     38|   696|
|0-24 months |GMS-Nepal      |NEPAL                        |Low      |             0|    217|   696|
|0-24 months |GMS-Nepal      |NEPAL                        |Low      |             1|     79|   696|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium   |             0|    175|   696|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium   |             1|     52|   696|
|0-24 months |JiVitA-3       |BANGLADESH                   |High     |             0|   5711| 26233|
|0-24 months |JiVitA-3       |BANGLADESH                   |High     |             1|    793| 26233|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low      |             0|   8589| 26233|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low      |             1|   2196| 26233|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium   |             0|   7136| 26233|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium   |             1|   1808| 26233|
|0-24 months |JiVitA-4       |BANGLADESH                   |High     |             0|   1086|  5276|
|0-24 months |JiVitA-4       |BANGLADESH                   |High     |             1|    161|  5276|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low      |             0|   1469|  5276|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low      |             1|    484|  5276|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium   |             0|   1653|  5276|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium   |             1|    423|  5276|
|0-24 months |LCNI-5         |MALAWI                       |High     |             0|    199|   813|
|0-24 months |LCNI-5         |MALAWI                       |High     |             1|     52|   813|
|0-24 months |LCNI-5         |MALAWI                       |Low      |             0|    226|   813|
|0-24 months |LCNI-5         |MALAWI                       |Low      |             1|     65|   813|
|0-24 months |LCNI-5         |MALAWI                       |Medium   |             0|    219|   813|
|0-24 months |LCNI-5         |MALAWI                       |Medium   |             1|     52|   813|
|0-24 months |MAL-ED         |BANGLADESH                   |High     |             0|     47|   149|
|0-24 months |MAL-ED         |BANGLADESH                   |High     |             1|      7|   149|
|0-24 months |MAL-ED         |BANGLADESH                   |Low      |             0|     32|   149|
|0-24 months |MAL-ED         |BANGLADESH                   |Low      |             1|      8|   149|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium   |             0|     39|   149|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium   |             1|     16|   149|
|0-24 months |MAL-ED         |INDIA                        |High     |             0|     37|   147|
|0-24 months |MAL-ED         |INDIA                        |High     |             1|      7|   147|
|0-24 months |MAL-ED         |INDIA                        |Low      |             0|     44|   147|
|0-24 months |MAL-ED         |INDIA                        |Low      |             1|     15|   147|
|0-24 months |MAL-ED         |INDIA                        |Medium   |             0|     36|   147|
|0-24 months |MAL-ED         |INDIA                        |Medium   |             1|      8|   147|
|0-24 months |MAL-ED         |NEPAL                        |High     |             0|     39|    98|
|0-24 months |MAL-ED         |NEPAL                        |High     |             1|      3|    98|
|0-24 months |MAL-ED         |NEPAL                        |Low      |             0|     26|    98|
|0-24 months |MAL-ED         |NEPAL                        |Low      |             1|      2|    98|
|0-24 months |MAL-ED         |NEPAL                        |Medium   |             0|     24|    98|
|0-24 months |MAL-ED         |NEPAL                        |Medium   |             1|      4|    98|
|0-24 months |MAL-ED         |PERU                         |High     |             0|     98|   250|
|0-24 months |MAL-ED         |PERU                         |High     |             1|     22|   250|
|0-24 months |MAL-ED         |PERU                         |Low      |             0|     53|   250|
|0-24 months |MAL-ED         |PERU                         |Low      |             1|     16|   250|
|0-24 months |MAL-ED         |PERU                         |Medium   |             0|     49|   250|
|0-24 months |MAL-ED         |PERU                         |Medium   |             1|     12|   250|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High     |             0|     35|   110|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High     |             1|      8|   110|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |             0|     30|   110|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |             1|      7|   110|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |             0|     20|   110|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |             1|     10|   110|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |             0|     64|   212|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |             1|     66|   212|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |             0|     28|   212|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |             1|     33|   212|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |             0|     12|   212|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |             1|      9|   212|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High     |             0|    267|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High     |             1|     29|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low      |             0|    210|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low      |             1|     32|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |             0|    182|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |             1|     38|   758|
|0-24 months |PROBIT         |BELARUS                      |High     |             0|   2665| 16314|
|0-24 months |PROBIT         |BELARUS                      |High     |             1|     42| 16314|
|0-24 months |PROBIT         |BELARUS                      |Low      |             0|   6196| 16314|
|0-24 months |PROBIT         |BELARUS                      |Low      |             1|    222| 16314|
|0-24 months |PROBIT         |BELARUS                      |Medium   |             0|   7013| 16314|
|0-24 months |PROBIT         |BELARUS                      |Medium   |             1|    176| 16314|
|0-24 months |PROVIDE        |BANGLADESH                   |High     |             0|    210|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |High     |             1|     22|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Low      |             0|    192|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Low      |             1|     46|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium   |             0|    203|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium   |             1|     27|   700|
|0-24 months |SAS-CompFeed   |INDIA                        |High     |             0|    284|  1530|
|0-24 months |SAS-CompFeed   |INDIA                        |High     |             1|    105|  1530|
|0-24 months |SAS-CompFeed   |INDIA                        |Low      |             0|    388|  1530|
|0-24 months |SAS-CompFeed   |INDIA                        |Low      |             1|    266|  1530|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium   |             0|    353|  1530|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium   |             1|    134|  1530|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High     |             0|     62|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High     |             1|     48|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low      |             0|     81|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low      |             1|     66|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |             0|     74|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |             1|     87|   418|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |             0|    414|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |             1|     35|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |             0|   1130|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |             1|    140|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |             0|    602|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |             1|     62|  2383|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High     |             0|    872| 13694|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High     |             1|    128| 13694|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |             0|   1838| 13694|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |             1|    474| 13694|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |             0|   8710| 13694|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |             1|   1672| 13694|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/15f88f31-b093-42f6-8d99-a3a052dae5ab/f6b0e071-5671-4993-9290-4ee6e809af3d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/15f88f31-b093-42f6-8d99-a3a052dae5ab/f6b0e071-5671-4993-9290-4ee6e809af3d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/15f88f31-b093-42f6-8d99-a3a052dae5ab/f6b0e071-5671-4993-9290-4ee6e809af3d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/15f88f31-b093-42f6-8d99-a3a052dae5ab/f6b0e071-5671-4993-9290-4ee6e809af3d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             | 0.4691330| 0.3859364| 0.5523297|
|0-24 months |COHORTS        |GUATEMALA                    |Low                |NA             | 0.4605218| 0.4186691| 0.5023746|
|0-24 months |COHORTS        |GUATEMALA                    |Medium             |NA             | 0.4831036| 0.4307869| 0.5354204|
|0-24 months |COHORTS        |INDIA                        |High               |NA             | 0.0816467| 0.0575006| 0.1057928|
|0-24 months |COHORTS        |INDIA                        |Low                |NA             | 0.1167473| 0.0887981| 0.1446966|
|0-24 months |COHORTS        |INDIA                        |Medium             |NA             | 0.1153548| 0.0791492| 0.1515605|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             | 0.2921867| 0.2597774| 0.3245960|
|0-24 months |COHORTS        |PHILIPPINES                  |Low                |NA             | 0.4349910| 0.3977726| 0.4722093|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium             |NA             | 0.3739566| 0.3419911| 0.4059222|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             | 0.2484792| 0.1833286| 0.3136297|
|0-24 months |GMS-Nepal      |NEPAL                        |Low                |NA             | 0.2489785| 0.2006194| 0.2973376|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium             |NA             | 0.2482202| 0.1851133| 0.3113272|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             | 0.1816748| 0.1673388| 0.1960107|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low                |NA             | 0.1875723| 0.1789396| 0.1962050|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium             |NA             | 0.1900924| 0.1813235| 0.1988613|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             | 0.1499314| 0.1189086| 0.1809542|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low                |NA             | 0.2240273| 0.1998475| 0.2482071|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium             |NA             | 0.2112310| 0.1886469| 0.2338151|
|0-24 months |LCNI-5         |MALAWI                       |High               |NA             | 0.2175459| 0.1666303| 0.2684616|
|0-24 months |LCNI-5         |MALAWI                       |Low                |NA             | 0.2147915| 0.1683041| 0.2612789|
|0-24 months |LCNI-5         |MALAWI                       |Medium             |NA             | 0.1981038| 0.1506933| 0.2455142|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |NA             | 0.1296296| 0.0397383| 0.2195209|
|0-24 months |MAL-ED         |BANGLADESH                   |Low                |NA             | 0.2000000| 0.0756229| 0.3243771|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium             |NA             | 0.2909091| 0.1704725| 0.4113457|
|0-24 months |MAL-ED         |INDIA                        |High               |NA             | 0.1590909| 0.0506480| 0.2675338|
|0-24 months |MAL-ED         |INDIA                        |Low                |NA             | 0.2542373| 0.1427503| 0.3657243|
|0-24 months |MAL-ED         |INDIA                        |Medium             |NA             | 0.1818182| 0.0674652| 0.2961712|
|0-24 months |MAL-ED         |PERU                         |High               |NA             | 0.1802244| 0.1119092| 0.2485396|
|0-24 months |MAL-ED         |PERU                         |Low                |NA             | 0.2268067| 0.1319236| 0.3216898|
|0-24 months |MAL-ED         |PERU                         |Medium             |NA             | 0.1847719| 0.0871501| 0.2823936|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             | 0.1860465| 0.0692022| 0.3028908|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low                |NA             | 0.1891892| 0.0624128| 0.3159655|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium             |NA             | 0.3333333| 0.1638745| 0.5027922|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High               |NA             | 0.5076923| 0.4215490| 0.5938357|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low                |NA             | 0.5409836| 0.4156360| 0.6663312|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium             |NA             | 0.4285714| 0.2164143| 0.6407286|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             | 0.1305670| 0.0879095| 0.1732245|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low                |NA             | 0.1147761| 0.0691022| 0.1604500|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |NA             | 0.1802703| 0.1231796| 0.2373611|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             | 0.0158127| 0.0093811| 0.0222442|
|0-24 months |PROBIT         |BELARUS                      |Low                |NA             | 0.0306043| 0.0211494| 0.0400591|
|0-24 months |PROBIT         |BELARUS                      |Medium             |NA             | 0.0264711| 0.0170021| 0.0359400|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             | 0.1130184| 0.0627659| 0.1632710|
|0-24 months |PROVIDE        |BANGLADESH                   |Low                |NA             | 0.1920946| 0.1366538| 0.2475355|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium             |NA             | 0.1153749| 0.0704349| 0.1603149|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             | 0.3582798| 0.2868771| 0.4296826|
|0-24 months |SAS-CompFeed   |INDIA                        |Low                |NA             | 0.3486000| 0.3101667| 0.3870333|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium             |NA             | 0.2827466| 0.2345754| 0.3309179|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             | 0.4404614| 0.3483418| 0.5325811|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low                |NA             | 0.4299276| 0.3498107| 0.5100445|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |NA             | 0.5465644| 0.4698709| 0.6232579|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | 0.0790125| 0.0543616| 0.1036634|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |NA             | 0.1086450| 0.0914000| 0.1258901|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |NA             | 0.0973738| 0.0748407| 0.1199068|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             | 0.1505112| 0.1283898| 0.1726326|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |NA             | 0.1775039| 0.1577549| 0.1972530|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |NA             | 0.1656155| 0.1581071| 0.1731238|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.4728000| 0.4451119| 0.5004881|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.1105736| 0.0944098| 0.1267374|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.3600694| 0.3425352| 0.3776037|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.2428161| 0.2109378| 0.2746944|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1828613| 0.1771578| 0.1885648|
|0-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.2024261| 0.1900868| 0.2147654|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.2078721| 0.1799617| 0.2357825|
|0-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.2080537| 0.1426574| 0.2734499|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.2040816| 0.1387072| 0.2694561|
|0-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.2000000| 0.1503169| 0.2496831|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.2272727| 0.1486005| 0.3059450|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.5094340| 0.4419812| 0.5768867|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1306069| 0.1066024| 0.1546113|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0269707| 0.0195564| 0.0343850|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1357143| 0.1103250| 0.1611036|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.3300654| 0.3020915| 0.3580392|
|0-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.4808612| 0.4329065| 0.5288160|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0994545| 0.0874362| 0.1114727|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.1660581| 0.1598251| 0.1722911|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |COHORTS        |GUATEMALA                    |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA                    |Low                |High           | 0.9816445| 0.8061107| 1.195401|
|0-24 months |COHORTS        |GUATEMALA                    |Medium             |High           | 1.0297796| 0.8384222| 1.264811|
|0-24 months |COHORTS        |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |INDIA                        |Low                |High           | 1.4299087| 0.9786898| 2.089160|
|0-24 months |COHORTS        |INDIA                        |Medium             |High           | 1.4128539| 0.9197720| 2.170273|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |Low                |High           | 1.4887432| 1.2968528| 1.709027|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium             |High           | 1.2798552| 1.1155229| 1.468396|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal      |NEPAL                        |Low                |High           | 1.0020094| 0.7310747| 1.373352|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium             |High           | 0.9989579| 0.6972439| 1.431231|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low                |High           | 1.0324618| 0.9496845| 1.122454|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium             |High           | 1.0463337| 0.9610021| 1.139242|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low                |High           | 1.4941986| 1.1859522| 1.882563|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium             |High           | 1.4088510| 1.1204276| 1.771521|
|0-24 months |LCNI-5         |MALAWI                       |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |LCNI-5         |MALAWI                       |Low                |High           | 0.9873385| 0.7210363| 1.351995|
|0-24 months |LCNI-5         |MALAWI                       |Medium             |High           | 0.9106297| 0.6538006| 1.268347|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |BANGLADESH                   |Low                |High           | 1.5428571| 0.6078543| 3.916084|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium             |High           | 2.2441558| 1.0006999| 5.032713|
|0-24 months |MAL-ED         |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |INDIA                        |Low                |High           | 1.5980630| 0.7105469| 3.594140|
|0-24 months |MAL-ED         |INDIA                        |Medium             |High           | 1.1428571| 0.4520604| 2.889265|
|0-24 months |MAL-ED         |PERU                         |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |PERU                         |Low                |High           | 1.2584684| 0.7140354| 2.218017|
|0-24 months |MAL-ED         |PERU                         |Medium             |High           | 1.0252321| 0.5351913| 1.963972|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low                |High           | 1.0168919| 0.4058970| 2.547614|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium             |High           | 1.7916667| 0.7986258| 4.019491|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low                |High           | 1.0655738| 0.7995761| 1.420062|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium             |High           | 0.8441558| 0.5002121| 1.424594|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low                |High           | 0.8790590| 0.5258704| 1.469459|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |High           | 1.3806731| 0.8786428| 2.169548|
|0-24 months |PROBIT         |BELARUS                      |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |Low                |High           | 1.9354244| 1.1837294| 3.164463|
|0-24 months |PROBIT         |BELARUS                      |Medium             |High           | 1.6740394| 1.0713846| 2.615688|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |Low                |High           | 1.6996752| 1.0006329| 2.887069|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium             |High           | 1.0208505| 0.5655305| 1.842758|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA                        |Low                |High           | 0.9729824| 0.7678020| 1.232993|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium             |High           | 0.7891782| 0.5582640| 1.115605|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low                |High           | 0.9760846| 0.7390106| 1.289212|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |High           | 1.2408905| 0.9667479| 1.592772|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |High           | 1.3750369| 0.9697331| 1.949739|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |High           | 1.2323850| 0.8368201| 1.814933|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |High           | 1.1793404| 0.9825824| 1.415498|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |High           | 1.1003532| 0.9456676| 1.280341|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             |  0.0036670| -0.0740643| 0.0813982|
|0-24 months |COHORTS        |INDIA                        |High               |NA             |  0.0289269|  0.0073206| 0.0505332|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0678828|  0.0392056| 0.0965599|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             | -0.0056631| -0.0629756| 0.0516494|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.0011865| -0.0120503| 0.0144233|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0524947|  0.0227210| 0.0822683|
|0-24 months |LCNI-5         |MALAWI                       |High               |NA             | -0.0096738| -0.0517764| 0.0324287|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |NA             |  0.0784241| -0.0021994| 0.1590476|
|0-24 months |MAL-ED         |INDIA                        |High               |NA             |  0.0449907| -0.0498447| 0.1398262|
|0-24 months |MAL-ED         |PERU                         |High               |NA             |  0.0197756| -0.0318386| 0.0713898|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             |  0.0412262| -0.0545238| 0.1369763|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0017417| -0.0518281| 0.0553114|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.0000399| -0.0367619| 0.0368417|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.0111580|  0.0030082| 0.0193078|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             |  0.0226959| -0.0231402| 0.0685319|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             | -0.0282145| -0.0988921| 0.0424632|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.0403998| -0.0386938| 0.1194934|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0204420| -0.0024082| 0.0432922|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0155469| -0.0059400| 0.0370339|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             |  0.0077559| -0.1710700| 0.1592745|
|0-24 months |COHORTS        |INDIA                        |High               |NA             |  0.2616078|  0.0434284| 0.4300238|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.1885268|  0.1050608| 0.2642084|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             | -0.0233226| -0.2888796| 0.1875199|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.0064885| -0.0685980| 0.0762990|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.2593275|  0.0975912| 0.3920763|
|0-24 months |LCNI-5         |MALAWI                       |High               |NA             | -0.0465375| -0.2699907| 0.1375995|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |NA             |  0.3769415| -0.1376520| 0.6587692|
|0-24 months |MAL-ED         |INDIA                        |High               |NA             |  0.2204545| -0.4090534| 0.5687239|
|0-24 months |MAL-ED         |PERU                         |High               |NA             |  0.0988780| -0.1985289| 0.3224853|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             |  0.1813953| -0.3655131| 0.5092588|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0034188| -0.1074860| 0.1032175|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.0003053| -0.3251858| 0.2458495|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.4137086|  0.1136074| 0.6122062|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             |  0.1672326| -0.2470023| 0.4438651|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             | -0.0854815| -0.3238563| 0.1099713|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.0840156| -0.0963244| 0.2346905|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.2055414| -0.0591171| 0.4040654|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0936235| -0.0453481| 0.2141198|
