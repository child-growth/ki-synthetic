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

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country                      |gagebrth          | ever_wasted| n_cell|     n|
|:---------------------------|:--------------|:----------------------------|:-----------------|-----------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Full or late term |           0|    123|   348|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Full or late term |           1|     90|   348|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Preterm           |           0|     25|   348|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Preterm           |           1|     27|   348|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Early term        |           0|     46|   348|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Early term        |           1|     37|   348|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Full or late term |           0|    394|   809|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Full or late term |           1|     54|   809|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Preterm           |           0|    105|   809|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Preterm           |           1|     25|   809|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Early term        |           0|    191|   809|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Early term        |           1|     40|   809|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Full or late term |           0|    470|  1345|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Full or late term |           1|    109|  1345|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Preterm           |           0|    242|  1345|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Preterm           |           1|     66|  1345|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Early term        |           0|    358|  1345|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Early term        |           1|    100|  1345|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Full or late term |           0|    830|  2993|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Full or late term |           1|    328|  2993|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Preterm           |           0|    434|  2993|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Preterm           |           1|    199|  2993|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Early term        |           0|    822|  2993|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Early term        |           1|    380|  2993|
|0-24 months (no birth wast) |IRC            |INDIA                        |Full or late term |           0|    121|   389|
|0-24 months (no birth wast) |IRC            |INDIA                        |Full or late term |           1|    128|   389|
|0-24 months (no birth wast) |IRC            |INDIA                        |Preterm           |           0|     16|   389|
|0-24 months (no birth wast) |IRC            |INDIA                        |Preterm           |           1|     26|   389|
|0-24 months (no birth wast) |IRC            |INDIA                        |Early term        |           0|     44|   389|
|0-24 months (no birth wast) |IRC            |INDIA                        |Early term        |           1|     54|   389|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Full or late term |           0|  10907| 25266|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Full or late term |           1|   2227| 25266|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Preterm           |           0|   4285| 25266|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Preterm           |           1|    827| 25266|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Early term        |           0|   5814| 25266|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Early term        |           1|   1206| 25266|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Full or late term |           0|    528|  1692|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Full or late term |           1|    310|  1692|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Preterm           |           0|    153|  1692|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Preterm           |           1|    103|  1692|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Early term        |           0|    392|  1692|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Early term        |           1|    206|  1692|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Full or late term |           0|    152|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Full or late term |           1|     16|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Preterm           |           0|    214|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Preterm           |           1|     47|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Early term        |           0|    280|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Early term        |           1|     45|   754|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Full or late term |           0|   8030| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Full or late term |           1|    591| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Preterm           |           0|    547| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Preterm           |           1|     44| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Early term        |           0|   7154| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Early term        |           1|    513| 16879|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term |           0|   1145|  2242|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term |           1|    240|  2242|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm           |           0|    253|  2242|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm           |           1|     91|  2242|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term        |           0|    401|  2242|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term        |           1|    112|  2242|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Full or late term |           0|    136|   332|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Full or late term |           1|     64|   332|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Preterm           |           0|     36|   332|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Preterm           |           1|     15|   332|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Early term        |           0|     58|   332|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Early term        |           1|     23|   332|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA                    |Full or late term |           0|    406|   745|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA                    |Full or late term |           1|      4|   745|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA                    |Preterm           |           0|    120|   745|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA                    |Preterm           |           1|      2|   745|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA                    |Early term        |           0|    208|   745|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA                    |Early term        |           1|      5|   745|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Full or late term |           0|    484|  1249|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Full or late term |           1|     49|  1249|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Preterm           |           0|    262|  1249|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Preterm           |           1|     20|  1249|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Early term        |           0|    395|  1249|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Early term        |           1|     39|  1249|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Full or late term |           0|   1047|  2972|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Full or late term |           1|    103|  2972|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Preterm           |           0|    569|  2972|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Preterm           |           1|     60|  2972|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Early term        |           0|   1076|  2972|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Early term        |           1|    117|  2972|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Full or late term |           0|    160|   371|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Full or late term |           1|     79|   371|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Preterm           |           0|     28|   371|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Preterm           |           1|     10|   371|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Early term        |           0|     54|   371|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Early term        |           1|     40|   371|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Full or late term |           0|  12058| 24985|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Full or late term |           1|    944| 24985|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Preterm           |           0|   4726| 24985|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Preterm           |           1|    309| 24985|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Early term        |           0|   6443| 24985|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Early term        |           1|    505| 24985|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Full or late term |           0|    672|  1565|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Full or late term |           1|     95|  1565|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Preterm           |           0|    206|  1565|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Preterm           |           1|     34|  1565|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Early term        |           0|    506|  1565|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Early term        |           1|     52|  1565|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |Full or late term |           0|    162|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |Full or late term |           1|      6|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |Preterm           |           0|    255|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |Preterm           |           1|      5|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |Early term        |           0|    312|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |Early term        |           1|      9|   749|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |Full or late term |           0|   7996| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |Full or late term |           1|    533| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |Preterm           |           0|    542| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |Preterm           |           1|     39| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |Early term        |           0|   7133| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |Early term        |           1|    450| 16693|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term |           0|   1270|  2234|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term |           1|    110|  2234|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm           |           0|    301|  2234|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm           |           1|     42|  2234|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term        |           0|    471|  2234|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term        |           1|     40|  2234|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA

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




# Results Detail

## Results Plots
![](/tmp/f5f861c1-985c-4b71-8b0f-926811c571b1/dfcb8b18-4714-496c-8fd3-fa9c0ebeaa6b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f5f861c1-985c-4b71-8b0f-926811c571b1/dfcb8b18-4714-496c-8fd3-fa9c0ebeaa6b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f5f861c1-985c-4b71-8b0f-926811c571b1/dfcb8b18-4714-496c-8fd3-fa9c0ebeaa6b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f5f861c1-985c-4b71-8b0f-926811c571b1/dfcb8b18-4714-496c-8fd3-fa9c0ebeaa6b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Full or late term  |NA             | 0.4241141| 0.3576871| 0.4905411|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Preterm            |NA             | 0.5168221| 0.3790460| 0.6545981|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Early term         |NA             | 0.4400139| 0.3325362| 0.5474915|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Full or late term  |NA             | 0.1208878| 0.0905370| 0.1512386|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Preterm            |NA             | 0.1938843| 0.1280816| 0.2596870|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Early term         |NA             | 0.1779991| 0.1293221| 0.2266762|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Full or late term  |NA             | 0.1857616| 0.1540042| 0.2175190|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Preterm            |NA             | 0.2151148| 0.1700537| 0.2601759|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Early term         |NA             | 0.2203061| 0.1830487| 0.2575635|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Full or late term  |NA             | 0.2844952| 0.2586120| 0.3103783|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Preterm            |NA             | 0.3096671| 0.2738302| 0.3455040|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Early term         |NA             | 0.3179779| 0.2918459| 0.3441099|
|0-24 months (no birth wast) |IRC            |INDIA                        |Full or late term  |NA             | 0.5144821| 0.4521467| 0.5768176|
|0-24 months (no birth wast) |IRC            |INDIA                        |Preterm            |NA             | 0.6064883| 0.4512999| 0.7616767|
|0-24 months (no birth wast) |IRC            |INDIA                        |Early term         |NA             | 0.5448097| 0.4445624| 0.6450571|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Full or late term  |NA             | 0.1708903| 0.1637313| 0.1780493|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Preterm            |NA             | 0.1567663| 0.1460026| 0.1675299|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Early term         |NA             | 0.1722551| 0.1624261| 0.1820840|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Full or late term  |NA             | 0.3670807| 0.3346495| 0.3995119|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Preterm            |NA             | 0.4040471| 0.3440150| 0.4640792|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Early term         |NA             | 0.3457208| 0.3074239| 0.3840177|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Full or late term  |NA             | 0.0893176| 0.0463025| 0.1323327|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Preterm            |NA             | 0.1774566| 0.1312326| 0.2236807|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Early term         |NA             | 0.1388470| 0.1011292| 0.1765648|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Full or late term  |NA             | 0.0686766| 0.0562787| 0.0810745|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Preterm            |NA             | 0.0764673| 0.0486831| 0.1042514|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Early term         |NA             | 0.0671792| 0.0543402| 0.0800183|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |NA             | 0.1729820| 0.1530381| 0.1929259|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm            |NA             | 0.2666246| 0.2197479| 0.3135013|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term         |NA             | 0.2173872| 0.1815767| 0.2531976|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Full or late term  |NA             | 0.3191699| 0.2542798| 0.3840601|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Preterm            |NA             | 0.2910806| 0.1629312| 0.4192299|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Early term         |NA             | 0.2819089| 0.1825016| 0.3813162|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Full or late term  |NA             | 0.0894264| 0.0648110| 0.1140418|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Preterm            |NA             | 0.0696066| 0.0393447| 0.0998684|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Early term         |NA             | 0.0892413| 0.0621724| 0.1163101|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Full or late term  |NA             | 0.0900986| 0.0735991| 0.1065982|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Preterm            |NA             | 0.0953331| 0.0723285| 0.1183377|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Early term         |NA             | 0.0985921| 0.0816858| 0.1154984|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Full or late term  |NA             | 0.3291298| 0.2692848| 0.3889748|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Preterm            |NA             | 0.2583655| 0.1172681| 0.3994629|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Early term         |NA             | 0.4263873| 0.3224346| 0.5303400|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Full or late term  |NA             | 0.0732210| 0.0681014| 0.0783407|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Preterm            |NA             | 0.0590489| 0.0521639| 0.0659338|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Early term         |NA             | 0.0723121| 0.0656358| 0.0789884|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Full or late term  |NA             | 0.1244836| 0.1010738| 0.1478933|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Preterm            |NA             | 0.1414302| 0.0969330| 0.1859274|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Early term         |NA             | 0.0932280| 0.0689643| 0.1174916|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |Full or late term  |NA             | 0.0357143| 0.0076336| 0.0637950|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |Preterm            |NA             | 0.0192308| 0.0025263| 0.0359353|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |Early term         |NA             | 0.0280374| 0.0099665| 0.0461083|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |Full or late term  |NA             | 0.0615995| 0.0497817| 0.0734172|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |Preterm            |NA             | 0.0676070| 0.0441191| 0.0910949|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |Early term         |NA             | 0.0597738| 0.0476077| 0.0719399|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |NA             | 0.0795174| 0.0652222| 0.0938126|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm            |NA             | 0.1225584| 0.0877012| 0.1574156|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term         |NA             | 0.0786079| 0.0552580| 0.1019578|


### Parameter: E(Y)


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.4425287| 0.3902692| 0.4947882|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.1470952| 0.1226726| 0.1715178|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |NA                 |NA             | 0.2044610| 0.1828992| 0.2260227|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.3030404| 0.2865732| 0.3195077|
|0-24 months (no birth wast) |IRC            |INDIA                        |NA                 |NA             | 0.5347044| 0.4850733| 0.5843354|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1686060| 0.1631976| 0.1740145|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |NA                 |NA             | 0.3658392| 0.3428819| 0.3887966|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1432361| 0.1182149| 0.1682572|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |NA                 |NA             | 0.0680135| 0.0562135| 0.0798135|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1975914| 0.1811057| 0.2140772|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.3072289| 0.2575285| 0.3569293|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |NA                 |NA             | 0.0864692| 0.0708761| 0.1020623|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.0942127| 0.0837084| 0.1047169|
|0-6 months (no birth wast)  |IRC            |INDIA                        |NA                 |NA             | 0.3477089| 0.2991827| 0.3962350|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0703622| 0.0666948| 0.0740296|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |NA                 |NA             | 0.1156550| 0.0998052| 0.1315047|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.0267023| 0.0151493| 0.0382553|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |NA                 |NA             | 0.0612233| 0.0502388| 0.0722078|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0859445| 0.0743193| 0.0975697|


### Parameter: RR


|agecat                      |studyid        |country                      |intervention_level |baseline_level    |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:-----------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Preterm            |Full or late term | 1.2185920| 0.8935815| 1.6618143|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Early term         |Full or late term | 1.0374893| 0.7772053| 1.3849418|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Preterm            |Full or late term | 1.6038373| 1.0517615| 2.4457008|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Early term         |Full or late term | 1.4724330| 1.0152465| 2.1355000|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Preterm            |Full or late term | 1.1580154| 0.8844960| 1.5161174|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Early term         |Full or late term | 1.1859612| 0.9337516| 1.5062935|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Preterm            |Full or late term | 1.0884791| 0.9399341| 1.2604997|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Early term         |Full or late term | 1.1176917| 0.9891155| 1.2629815|
|0-24 months (no birth wast) |IRC            |INDIA                        |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |IRC            |INDIA                        |Preterm            |Full or late term | 1.1788325| 0.8878056| 1.5652594|
|0-24 months (no birth wast) |IRC            |INDIA                        |Early term         |Full or late term | 1.0589478| 0.8497728| 1.3196122|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Preterm            |Full or late term | 0.9173502| 0.8488990| 0.9913210|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Early term         |Full or late term | 1.0079862| 0.9411199| 1.0796033|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Preterm            |Full or late term | 1.1007037| 0.9261389| 1.3081717|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Early term         |Full or late term | 0.9418115| 0.8177488| 1.0846960|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Preterm            |Full or late term | 1.9868043| 1.1484197| 3.4372375|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Early term         |Full or late term | 1.5545307| 0.8937711| 2.7037858|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Preterm            |Full or late term | 1.1134397| 0.8105981| 1.5294237|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Early term         |Full or late term | 0.9781970| 0.8545649| 1.1197152|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm            |Full or late term | 1.5413429| 1.2491567| 1.9018734|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term         |Full or late term | 1.2567039| 1.0279888| 1.5363052|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Preterm            |Full or late term | 0.9119924| 0.5612754| 1.4818574|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Early term         |Full or late term | 0.8832564| 0.5877791| 1.3272705|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Preterm            |Full or late term | 0.7783671| 0.4652452| 1.3022282|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Early term         |Full or late term | 0.9979296| 0.6624177| 1.5033771|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Preterm            |Full or late term | 1.0580971| 0.7815154| 1.4325623|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Early term         |Full or late term | 1.0942681| 0.8514731| 1.4062953|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Preterm            |Full or late term | 0.7849957| 0.4412681| 1.3964714|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Early term         |Full or late term | 1.2954989| 0.9554530| 1.7565672|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Preterm            |Full or late term | 0.8064467| 0.7063002| 0.9207931|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Early term         |Full or late term | 0.9875872| 0.8811547| 1.1068756|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Preterm            |Full or late term | 1.1361359| 0.7873827| 1.6393613|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Early term         |Full or late term | 0.7489180| 0.5433540| 1.0322518|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |Preterm            |Full or late term | 0.5384615| 0.1668478| 1.7377568|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |Early term         |Full or late term | 0.7850467| 0.2840280| 2.1698509|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |Preterm            |Full or late term | 1.0975252| 0.7972724| 1.5108532|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |Early term         |Full or late term | 0.9703626| 0.8353803| 1.1271555|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm            |Full or late term | 1.5412781| 1.1008237| 2.1579642|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term         |Full or late term | 0.9885625| 0.6987405| 1.3985964|


### Parameter: PAR


|agecat                      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Full or late term  |NA             |  0.0184146| -0.0232362| 0.0600654|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Full or late term  |NA             |  0.0262074|  0.0038890| 0.0485258|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Full or late term  |NA             |  0.0186993| -0.0056333| 0.0430319|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Full or late term  |NA             |  0.0185452| -0.0018736| 0.0389641|
|0-24 months (no birth wast) |IRC            |INDIA                        |Full or late term  |NA             |  0.0202222| -0.0174311| 0.0578756|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Full or late term  |NA             | -0.0022843| -0.0070758| 0.0025072|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Full or late term  |NA             | -0.0012415| -0.0242810| 0.0217981|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Full or late term  |NA             |  0.0539185|  0.0132710| 0.0945659|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Full or late term  |NA             | -0.0006631| -0.0049519| 0.0036257|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |NA             |  0.0246094|  0.0112832| 0.0379356|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Full or late term  |NA             | -0.0119410| -0.0522679| 0.0283859|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Full or late term  |NA             | -0.0029572| -0.0212506| 0.0153362|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Full or late term  |NA             |  0.0041140| -0.0089963| 0.0172243|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Full or late term  |NA             |  0.0185791| -0.0183277| 0.0554860|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Full or late term  |NA             | -0.0028588| -0.0062007| 0.0004831|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Full or late term  |NA             | -0.0088286| -0.0251091| 0.0074519|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |Full or late term  |NA             | -0.0090120| -0.0328503| 0.0148263|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |Full or late term  |NA             | -0.0003762| -0.0045176| 0.0037652|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |NA             |  0.0064271| -0.0029020| 0.0157562|


### Parameter: PAF


|agecat                      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Full or late term  |NA             |  0.0416123| -0.0573595| 0.1313200|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Full or late term  |NA             |  0.1781663|  0.0137313| 0.3151860|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Full or late term  |NA             |  0.0914568| -0.0356357| 0.2029525|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Full or late term  |NA             |  0.0611973| -0.0086514| 0.1262089|
|0-24 months (no birth wast) |IRC            |INDIA                        |Full or late term  |NA             |  0.0378195| -0.0353393| 0.1058087|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Full or late term  |NA             | -0.0135481| -0.0423802| 0.0144865|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Full or late term  |NA             | -0.0033934| -0.0683906| 0.0576495|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Full or late term  |NA             |  0.3764307|  0.0269191| 0.6004046|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Full or late term  |NA             | -0.0097495| -0.0749115| 0.0514623|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |NA             |  0.1245470|  0.0548929| 0.1890676|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Full or late term  |NA             | -0.0388669| -0.1787473| 0.0844141|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Full or late term  |NA             | -0.0341997| -0.2686892| 0.1569496|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Full or late term  |NA             |  0.0436673| -0.1060172| 0.1730941|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Full or late term  |NA             |  0.0534330| -0.0588674| 0.1538231|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Full or late term  |NA             | -0.0406298| -0.0891316| 0.0057121|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Full or late term  |NA             | -0.0763357| -0.2264329| 0.0553918|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |Full or late term  |NA             | -0.3375000| -1.5855791| 0.3081216|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |Full or late term  |NA             | -0.0061446| -0.0761003| 0.0592633|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |NA             |  0.0747820| -0.0399845| 0.1768836|
