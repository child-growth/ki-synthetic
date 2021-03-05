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

**Intervention Variable:** enstunt

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

|agecat                      |studyid        |country                      |enstunt | ever_swasted| n_cell|     n|
|:---------------------------|:--------------|:----------------------------|:-------|------------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0       |            0|    249|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0       |            1|     44|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1       |            0|     64|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1       |            1|     11|   368|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |0       |            0|    149|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |0       |            1|     17|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |1       |            0|     82|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |1       |            1|     20|   268|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |0       |            0|   1003|  1332|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |0       |            1|     10|  1332|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |1       |            0|    302|  1332|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |1       |            1|     17|  1332|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |0       |            0|   6014|  7135|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |0       |            1|    274|  7135|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |1       |            0|    784|  7135|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |1       |            1|     63|  7135|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |0       |            0|   2617|  3019|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |0       |            1|    228|  3019|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |1       |            0|    153|  3019|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |1       |            1|     21|  3019|
|0-24 months (no birth wast) |CONTENT        |PERU                         |0       |            0|    194|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |0       |            1|      1|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |1       |            0|     20|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |1       |            1|      0|   215|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0       |            0|    183|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0       |            1|     28|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1       |            0|    128|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1       |            1|     38|   377|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0       |            0|    441|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0       |            1|    112|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1       |            0|     88|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1       |            1|     19|   660|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |0       |            0|    239|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |0       |            1|      0|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |1       |            0|     72|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |1       |            1|      2|   313|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |0       |            0|   2434|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |0       |            1|     12|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |1       |            0|    632|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |1       |            1|     13|  3091|
|0-24 months (no birth wast) |IRC            |INDIA                        |0       |            0|    288|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |0       |            1|     69|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |1       |            0|     44|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |1       |            1|      8|   409|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0       |            0|  17486| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0       |            1|    599| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1       |            0|   8095| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1       |            1|    349| 26529|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0       |            0|   3727|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0       |            1|    132|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1       |            0|   1437|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1       |            1|    100|  5396|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0       |            0|   2218|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0       |            1|    332|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1       |            0|    267|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1       |            1|     51|  2868|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |0       |            0|    527|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |0       |            1|      3|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |1       |            0|    303|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |1       |            1|      4|   837|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0       |            0|    207|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0       |            1|     10|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1       |            0|     44|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1       |            1|      2|   263|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0       |            0|    198|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0       |            1|      4|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1       |            0|     31|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1       |            1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0       |            0|    197|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0       |            1|      9|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1       |            0|     36|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1       |            1|      4|   246|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0       |            0|    209|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0       |            1|      1|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1       |            0|     27|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1       |            1|      2|   239|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0       |            0|    262|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0       |            1|      4|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1       |            0|     36|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1       |            1|      0|   302|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0       |            0|    260|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0       |            1|     10|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1       |            0|     36|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1       |            1|      2|   308|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0       |            0|    213|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0       |            1|      6|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1       |            0|     40|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1       |            1|      2|   261|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |0       |            0|    465|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |0       |            1|     43|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |1       |            0|     83|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |1       |            1|     11|   602|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0       |            0|    637|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0       |            1|     12|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1       |            0|     97|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1       |            1|      8|   754|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |0       |            0|  16545| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |0       |            1|    202| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |1       |            0|    130| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |1       |            1|      2| 16879|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0       |            0|    606|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0       |            1|     15|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1       |            0|     62|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1       |            1|      4|   687|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |0       |            0|    167|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |0       |            1|     32|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |1       |            0|     61|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |1       |            1|     20|   280|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0       |            0|    982|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0       |            1|    101|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1       |            0|    348|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1       |            1|     71|  1502|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0       |            0|    226|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0       |            1|     18|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1       |            0|    131|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1       |            1|     22|   397|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0       |            0|   2117|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0       |            1|    105|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |            0|    146|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |            1|     16|  2384|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0       |            0|  11829| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0       |            1|    414| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |1       |            0|   1330| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |1       |            1|     64| 13637|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
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
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/7d6fbf70-212f-4c93-846c-ead01fa71207/f3effb2a-166d-44b9-a89d-e53313c60a37/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7d6fbf70-212f-4c93-846c-ead01fa71207/f3effb2a-166d-44b9-a89d-e53313c60a37/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7d6fbf70-212f-4c93-846c-ead01fa71207/f3effb2a-166d-44b9-a89d-e53313c60a37/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7d6fbf70-212f-4c93-846c-ead01fa71207/f3effb2a-166d-44b9-a89d-e53313c60a37/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0                  |NA             | 0.1505060| 0.1092895| 0.1917225|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1                  |NA             | 0.1477447| 0.0652946| 0.2301949|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |0                  |NA             | 0.1044312| 0.0583115| 0.1505509|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |1                  |NA             | 0.1977311| 0.1188635| 0.2765987|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |0                  |NA             | 0.0099282| 0.0038125| 0.0160439|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |1                  |NA             | 0.0527172| 0.0278530| 0.0775813|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |0                  |NA             | 0.0437718| 0.0387256| 0.0488180|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |1                  |NA             | 0.0716296| 0.0540397| 0.0892194|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |0                  |NA             | 0.0801343| 0.0701517| 0.0901169|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |1                  |NA             | 0.1174620| 0.0699889| 0.1649352|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0                  |NA             | 0.1358779| 0.0899320| 0.1818238|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1                  |NA             | 0.2278180| 0.1636465| 0.2919894|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0                  |NA             | 0.2026534| 0.1690817| 0.2362252|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1                  |NA             | 0.1832775| 0.1060097| 0.2605453|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |0                  |NA             | 0.0048852| 0.0014475| 0.0083229|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             | 0.0201543| 0.0068110| 0.0334975|
|0-24 months (no birth wast) |IRC            |INDIA                        |0                  |NA             | 0.1932773| 0.1522665| 0.2342881|
|0-24 months (no birth wast) |IRC            |INDIA                        |1                  |NA             | 0.1538462| 0.0556610| 0.2520313|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0                  |NA             | 0.0333594| 0.0303496| 0.0363692|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.0405614| 0.0355744| 0.0455483|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0                  |NA             | 0.0345810| 0.0280019| 0.0411601|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1                  |NA             | 0.0630344| 0.0508700| 0.0751988|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0                  |NA             | 0.1304132| 0.1173287| 0.1434977|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1                  |NA             | 0.1629310| 0.1213759| 0.2044860|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |0                  |NA             | 0.0846097| 0.0603634| 0.1088560|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |1                  |NA             | 0.1091929| 0.0417495| 0.1766362|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0                  |NA             | 0.0184900| 0.0081188| 0.0288612|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.0761905| 0.0254116| 0.1269694|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |0                  |NA             | 0.1525487| 0.1023187| 0.2027786|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |1                  |NA             | 0.2643379| 0.1703989| 0.3582770|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0                  |NA             | 0.0944281| 0.0736559| 0.1152002|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1                  |NA             | 0.1643226| 0.1229043| 0.2057408|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0                  |NA             | 0.0737065| 0.0407968| 0.1066163|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1                  |NA             | 0.1406434| 0.0848734| 0.1964135|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.0473040| 0.0384740| 0.0561339|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.0932063| 0.0496716| 0.1367411|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0                  |NA             | 0.0338943| 0.0306841| 0.0371045|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.0455394| 0.0344078| 0.0566710|


### Parameter: E(Y)


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.1494565| 0.1129794| 0.1859337|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |NA                 |NA             | 0.1380597| 0.0966822| 0.1794372|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.0202703| 0.0126995| 0.0278411|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |NA                 |NA             | 0.0472320| 0.0423094| 0.0521545|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.0824776| 0.0726632| 0.0922921|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |NA                 |NA             | 0.1750663| 0.1366545| 0.2134781|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.1984849| 0.1680322| 0.2289375|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.0080880| 0.0040249| 0.0121511|
|0-24 months (no birth wast) |IRC            |INDIA                        |NA                 |NA             | 0.1882641| 0.1503318| 0.2261964|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0357345| 0.0331597| 0.0383093|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.0429948| 0.0372768| 0.0487128|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |NA                 |NA             | 0.1335425| 0.1210912| 0.1459939|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.0897010| 0.0668555| 0.1125465|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.0265252| 0.0150478| 0.0380026|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |NA                 |NA             | 0.1857143| 0.1400836| 0.2313450|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.1145140| 0.0913579| 0.1376700|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.1007557| 0.0711091| 0.1304022|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0507550| 0.0419422| 0.0595679|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0350517| 0.0319649| 0.0381385|


### Parameter: RR


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0                  |0              | 1.0000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1                  |0              | 0.9816535| 0.5266639|  1.829712|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |1                  |0              | 1.8934098| 1.0492153|  3.416840|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |0                  |0              | 1.0000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |1                  |0              | 5.3098485| 2.4439157| 11.536605|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |0                  |0              | 1.0000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |1                  |0              | 1.6364332| 1.2476905|  2.146296|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |0                  |0              | 1.0000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |1                  |0              | 1.4658141| 0.9603757|  2.237261|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0                  |0              | 1.0000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1                  |0              | 1.6766372| 1.0791347|  2.604969|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0                  |0              | 1.0000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1                  |0              | 0.9043890| 0.5749681|  1.422547|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |0                  |0              | 1.0000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |1                  |0              | 4.1255785| 1.8443581|  9.228359|
|0-24 months (no birth wast) |IRC            |INDIA                        |0                  |0              | 1.0000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |IRC            |INDIA                        |1                  |0              | 0.7959866| 0.4062748|  1.559522|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1                  |0              | 1.2158896| 1.0470743|  1.411922|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1                  |0              | 1.8228030| 1.3827802|  2.402848|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0                  |0              | 1.0000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1                  |0              | 1.2493440| 0.9500487|  1.642927|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |1                  |0              | 1.2905482| 0.6532749|  2.549485|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1                  |0              | 4.1206349| 1.7244576|  9.846361|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |0                  |0              | 1.0000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |1                  |0              | 1.7328108| 1.0714811|  2.802320|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0                  |0              | 1.0000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1                  |0              | 1.7401881| 1.4226673|  2.128576|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0                  |0              | 1.0000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1                  |0              | 1.9081544| 1.0513210|  3.463313|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |0              | 1.0000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |0              | 1.9703709| 1.1916579|  3.257950|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0                  |0              | 1.0000000| 1.0000000|  1.000000|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |1                  |0              | 1.3435714| 1.0337389|  1.746267|


### Parameter: PAR


|agecat                      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0                  |NA             | -0.0010495| -0.0196568| 0.0175578|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |0                  |NA             |  0.0336285| -0.0007620| 0.0680190|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |0                  |NA             |  0.0103421|  0.0041687| 0.0165155|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |0                  |NA             |  0.0034602|  0.0012647| 0.0056557|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |0                  |NA             |  0.0023433| -0.0005275| 0.0052142|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0                  |NA             |  0.0391884|  0.0040150| 0.0743619|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0                  |NA             | -0.0041686| -0.0172149| 0.0088777|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |0                  |NA             |  0.0032028|  0.0013424| 0.0050632|
|0-24 months (no birth wast) |IRC            |INDIA                        |0                  |NA             | -0.0050133| -0.0186015| 0.0085750|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0                  |NA             |  0.0023751|  0.0006047| 0.0041455|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0                  |NA             |  0.0084138|  0.0043517| 0.0124759|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0                  |NA             |  0.0031293| -0.0015864| 0.0078450|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |0                  |NA             |  0.0050913| -0.0058452| 0.0160278|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0                  |NA             |  0.0080352|  0.0006782| 0.0153922|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |0                  |NA             |  0.0331656|  0.0026382| 0.0636931|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0                  |NA             |  0.0200859|  0.0116053| 0.0285666|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0                  |NA             |  0.0270491|  0.0019612| 0.0521371|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0034511|  0.0002298| 0.0066723|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0011574| -0.0000191| 0.0023339|


### Parameter: PAF


|agecat                      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0                  |NA             | -0.0070220| -0.1395271| 0.1100753|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |0                  |NA             |  0.2435793| -0.0387706| 0.4491833|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |0                  |NA             |  0.5102094|  0.2025008| 0.6991911|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |0                  |NA             |  0.0732596|  0.0262687| 0.1179828|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |0                  |NA             |  0.0284115| -0.0068915| 0.0624768|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0                  |NA             |  0.2238489|  0.0009812| 0.3969979|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0                  |NA             | -0.0210021| -0.0888503| 0.0426184|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |0                  |NA             |  0.3959943|  0.1481306| 0.5717385|
|0-24 months (no birth wast) |IRC            |INDIA                        |0                  |NA             | -0.0266288| -0.1012912| 0.0429717|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0                  |NA             |  0.0664646|  0.0157292| 0.1145847|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0                  |NA             |  0.1956934|  0.0951355| 0.2850763|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0                  |NA             |  0.0234331| -0.0124783| 0.0580709|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |0                  |NA             |  0.0567585| -0.0726014| 0.1705172|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0                  |NA             |  0.3029276|  0.0082660| 0.5100400|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |0                  |NA             |  0.1785842| -0.0010925| 0.3260123|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0                  |NA             |  0.1754015|  0.1064929| 0.2389958|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0                  |NA             |  0.2684627| -0.0138321| 0.4721544|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0679947|  0.0033921| 0.1284097|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0330196| -0.0010124| 0.0658946|
