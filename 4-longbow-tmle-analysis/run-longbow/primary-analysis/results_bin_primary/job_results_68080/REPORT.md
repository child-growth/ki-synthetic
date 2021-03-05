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

|agecat      |studyid        |country                      |birthwt                    | pers_wast| n_cell|     n|
|:-----------|:--------------|:----------------------------|:--------------------------|---------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |         0|    305|   365|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |         1|     17|   365|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Low birthweight            |         0|     38|   365|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Low birthweight            |         1|      5|   365|
|0-24 months |CMIN           |BANGLADESH                   |Normal or high birthweight |         0|      8|    12|
|0-24 months |CMIN           |BANGLADESH                   |Normal or high birthweight |         1|      0|    12|
|0-24 months |CMIN           |BANGLADESH                   |Low birthweight            |         0|      4|    12|
|0-24 months |CMIN           |BANGLADESH                   |Low birthweight            |         1|      0|    12|
|0-24 months |COHORTS        |GUATEMALA                    |Normal or high birthweight |         0|    706|   795|
|0-24 months |COHORTS        |GUATEMALA                    |Normal or high birthweight |         1|     17|   795|
|0-24 months |COHORTS        |GUATEMALA                    |Low birthweight            |         0|     69|   795|
|0-24 months |COHORTS        |GUATEMALA                    |Low birthweight            |         1|      3|   795|
|0-24 months |COHORTS        |INDIA                        |Normal or high birthweight |         0|   3998|  5268|
|0-24 months |COHORTS        |INDIA                        |Normal or high birthweight |         1|    281|  5268|
|0-24 months |COHORTS        |INDIA                        |Low birthweight            |         0|    763|  5268|
|0-24 months |COHORTS        |INDIA                        |Low birthweight            |         1|    226|  5268|
|0-24 months |COHORTS        |PHILIPPINES                  |Normal or high birthweight |         0|   2409|  2768|
|0-24 months |COHORTS        |PHILIPPINES                  |Normal or high birthweight |         1|    106|  2768|
|0-24 months |COHORTS        |PHILIPPINES                  |Low birthweight            |         0|    219|  2768|
|0-24 months |COHORTS        |PHILIPPINES                  |Low birthweight            |         1|     34|  2768|
|0-24 months |CONTENT        |PERU                         |Normal or high birthweight |         0|      2|     2|
|0-24 months |CONTENT        |PERU                         |Normal or high birthweight |         1|      0|     2|
|0-24 months |CONTENT        |PERU                         |Low birthweight            |         0|      0|     2|
|0-24 months |CONTENT        |PERU                         |Low birthweight            |         1|      0|     2|
|0-24 months |EE             |PAKISTAN                     |Normal or high birthweight |         0|    225|   376|
|0-24 months |EE             |PAKISTAN                     |Normal or high birthweight |         1|     19|   376|
|0-24 months |EE             |PAKISTAN                     |Low birthweight            |         0|    118|   376|
|0-24 months |EE             |PAKISTAN                     |Low birthweight            |         1|     14|   376|
|0-24 months |GMS-Nepal      |NEPAL                        |Normal or high birthweight |         0|    366|   596|
|0-24 months |GMS-Nepal      |NEPAL                        |Normal or high birthweight |         1|     39|   596|
|0-24 months |GMS-Nepal      |NEPAL                        |Low birthweight            |         0|    150|   596|
|0-24 months |GMS-Nepal      |NEPAL                        |Low birthweight            |         1|     41|   596|
|0-24 months |IRC            |INDIA                        |Normal or high birthweight |         0|    303|   404|
|0-24 months |IRC            |INDIA                        |Normal or high birthweight |         1|     32|   404|
|0-24 months |IRC            |INDIA                        |Low birthweight            |         0|     53|   404|
|0-24 months |IRC            |INDIA                        |Low birthweight            |         1|     16|   404|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |         0|   8052| 13429|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |         1|    237| 13429|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low birthweight            |         0|   4630| 13429|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low birthweight            |         1|    510| 13429|
|0-24 months |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |         0|   3108|  4435|
|0-24 months |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |         1|    171|  4435|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low birthweight            |         0|    976|  4435|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low birthweight            |         1|    180|  4435|
|0-24 months |Keneba         |GAMBIA                       |Normal or high birthweight |         0|   1219|  1496|
|0-24 months |Keneba         |GAMBIA                       |Normal or high birthweight |         1|     60|  1496|
|0-24 months |Keneba         |GAMBIA                       |Low birthweight            |         0|    197|  1496|
|0-24 months |Keneba         |GAMBIA                       |Low birthweight            |         1|     20|  1496|
|0-24 months |MAL-ED         |BANGLADESH                   |Normal or high birthweight |         0|    186|   245|
|0-24 months |MAL-ED         |BANGLADESH                   |Normal or high birthweight |         1|      8|   245|
|0-24 months |MAL-ED         |BANGLADESH                   |Low birthweight            |         0|     47|   245|
|0-24 months |MAL-ED         |BANGLADESH                   |Low birthweight            |         1|      4|   245|
|0-24 months |MAL-ED         |BRAZIL                       |Normal or high birthweight |         0|    206|   218|
|0-24 months |MAL-ED         |BRAZIL                       |Normal or high birthweight |         1|      2|   218|
|0-24 months |MAL-ED         |BRAZIL                       |Low birthweight            |         0|     10|   218|
|0-24 months |MAL-ED         |BRAZIL                       |Low birthweight            |         1|      0|   218|
|0-24 months |MAL-ED         |INDIA                        |Normal or high birthweight |         0|    181|   231|
|0-24 months |MAL-ED         |INDIA                        |Normal or high birthweight |         1|     14|   231|
|0-24 months |MAL-ED         |INDIA                        |Low birthweight            |         0|     31|   231|
|0-24 months |MAL-ED         |INDIA                        |Low birthweight            |         1|      5|   231|
|0-24 months |MAL-ED         |NEPAL                        |Normal or high birthweight |         0|    209|   231|
|0-24 months |MAL-ED         |NEPAL                        |Normal or high birthweight |         1|      3|   231|
|0-24 months |MAL-ED         |NEPAL                        |Low birthweight            |         0|     19|   231|
|0-24 months |MAL-ED         |NEPAL                        |Low birthweight            |         1|      0|   231|
|0-24 months |MAL-ED         |PERU                         |Normal or high birthweight |         0|    263|   281|
|0-24 months |MAL-ED         |PERU                         |Normal or high birthweight |         1|      1|   281|
|0-24 months |MAL-ED         |PERU                         |Low birthweight            |         0|     17|   281|
|0-24 months |MAL-ED         |PERU                         |Low birthweight            |         1|      0|   281|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Normal or high birthweight |         0|    256|   274|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Normal or high birthweight |         1|      2|   274|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low birthweight            |         0|     16|   274|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low birthweight            |         1|      0|   274|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |         0|    181|   190|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |         1|      0|   190|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |         0|      9|   190|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |         1|      0|   190|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |         0|    334|   515|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |         1|     17|   515|
|0-24 months |NIH-Birth      |BANGLADESH                   |Low birthweight            |         0|    134|   515|
|0-24 months |NIH-Birth      |BANGLADESH                   |Low birthweight            |         1|     30|   515|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |         0|    548|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |         1|     11|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low birthweight            |         0|    156|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low birthweight            |         1|     15|   730|
|0-24 months |PROBIT         |BELARUS                      |Normal or high birthweight |         0|  16449| 16583|
|0-24 months |PROBIT         |BELARUS                      |Normal or high birthweight |         1|    134| 16583|
|0-24 months |PROBIT         |BELARUS                      |Low birthweight            |         0|      0| 16583|
|0-24 months |PROBIT         |BELARUS                      |Low birthweight            |         1|      0| 16583|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal or high birthweight |         0|    482|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal or high birthweight |         1|      6|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |Low birthweight            |         0|    144|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |Low birthweight            |         1|      9|   641|
|0-24 months |ResPak         |PAKISTAN                     |Normal or high birthweight |         0|     28|    35|
|0-24 months |ResPak         |PAKISTAN                     |Normal or high birthweight |         1|      2|    35|
|0-24 months |ResPak         |PAKISTAN                     |Low birthweight            |         0|      4|    35|
|0-24 months |ResPak         |PAKISTAN                     |Low birthweight            |         1|      1|    35|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal or high birthweight |         0|    986|  1356|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal or high birthweight |         1|     48|  1356|
|0-24 months |SAS-CompFeed   |INDIA                        |Low birthweight            |         0|    258|  1356|
|0-24 months |SAS-CompFeed   |INDIA                        |Low birthweight            |         1|     64|  1356|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |         0|   2016|  2143|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |         1|     52|  2143|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |         0|     70|  2143|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |         1|      5|  2143|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |         0|   8208|  9501|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |         1|    110|  9501|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |         0|   1125|  9501|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |         1|     58|  9501|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN

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
![](/tmp/911b861f-4c2a-4c24-9318-643d12f41bf7/74b6b025-05ea-4817-976a-7b65999ea806/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/911b861f-4c2a-4c24-9318-643d12f41bf7/74b6b025-05ea-4817-976a-7b65999ea806/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/911b861f-4c2a-4c24-9318-643d12f41bf7/74b6b025-05ea-4817-976a-7b65999ea806/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/911b861f-4c2a-4c24-9318-643d12f41bf7/74b6b025-05ea-4817-976a-7b65999ea806/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level         |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:--------------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |NA             | 0.0527950| 0.0283363| 0.0772538|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Low birthweight            |NA             | 0.1162791| 0.0203350| 0.2122231|
|0-24 months |COHORTS        |INDIA                        |Normal or high birthweight |NA             | 0.0658701| 0.0584430| 0.0732972|
|0-24 months |COHORTS        |INDIA                        |Low birthweight            |NA             | 0.2244041| 0.1982388| 0.2505694|
|0-24 months |COHORTS        |PHILIPPINES                  |Normal or high birthweight |NA             | 0.0420989| 0.0342497| 0.0499481|
|0-24 months |COHORTS        |PHILIPPINES                  |Low birthweight            |NA             | 0.1318031| 0.0902231| 0.1733830|
|0-24 months |EE             |PAKISTAN                     |Normal or high birthweight |NA             | 0.0783773| 0.0444222| 0.1123324|
|0-24 months |EE             |PAKISTAN                     |Low birthweight            |NA             | 0.1049796| 0.0520260| 0.1579331|
|0-24 months |GMS-Nepal      |NEPAL                        |Normal or high birthweight |NA             | 0.0965015| 0.0673765| 0.1256265|
|0-24 months |GMS-Nepal      |NEPAL                        |Low birthweight            |NA             | 0.2069511| 0.1499604| 0.2639419|
|0-24 months |IRC            |INDIA                        |Normal or high birthweight |NA             | 0.0957208| 0.0641539| 0.1272877|
|0-24 months |IRC            |INDIA                        |Low birthweight            |NA             | 0.2335239| 0.1332922| 0.3337556|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |NA             | 0.0285107| 0.0243085| 0.0327129|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low birthweight            |NA             | 0.0988425| 0.0897656| 0.1079193|
|0-24 months |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |NA             | 0.0523609| 0.0434421| 0.0612798|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low birthweight            |NA             | 0.1531416| 0.1294107| 0.1768725|
|0-24 months |Keneba         |GAMBIA                       |Normal or high birthweight |NA             | 0.0466288| 0.0350484| 0.0582091|
|0-24 months |Keneba         |GAMBIA                       |Low birthweight            |NA             | 0.0946275| 0.0554585| 0.1337965|
|0-24 months |MAL-ED         |INDIA                        |Normal or high birthweight |NA             | 0.0717949| 0.0354836| 0.1081062|
|0-24 months |MAL-ED         |INDIA                        |Low birthweight            |NA             | 0.1388889| 0.0256743| 0.2521034|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |NA             | 0.0477615| 0.0251786| 0.0703443|
|0-24 months |NIH-Birth      |BANGLADESH                   |Low birthweight            |NA             | 0.1797425| 0.1195943| 0.2398908|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |NA             | 0.0197988| 0.0082245| 0.0313731|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low birthweight            |NA             | 0.0847787| 0.0432097| 0.1263477|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal or high birthweight |NA             | 0.0122951| 0.0025102| 0.0220800|
|0-24 months |PROVIDE        |BANGLADESH                   |Low birthweight            |NA             | 0.0588235| 0.0215112| 0.0961359|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal or high birthweight |NA             | 0.0475142| 0.0324666| 0.0625617|
|0-24 months |SAS-CompFeed   |INDIA                        |Low birthweight            |NA             | 0.1883246| 0.1312427| 0.2454066|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |NA             | 0.0251451| 0.0183956| 0.0318946|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |NA             | 0.0666667| 0.0102001| 0.1231333|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |NA             | 0.0132394| 0.0107840| 0.0156949|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |NA             | 0.0489469| 0.0366403| 0.0612535|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.0602740| 0.0358249| 0.0847231|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.0962415| 0.0882767| 0.1042062|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.0505780| 0.0424131| 0.0587430|
|0-24 months |EE             |PAKISTAN                     |NA                 |NA             | 0.0877660| 0.0591276| 0.1164044|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.1342282| 0.1068369| 0.1616195|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.1188119| 0.0872211| 0.1504026|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0556259| 0.0512873| 0.0599644|
|0-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.0791432| 0.0700117| 0.0882747|
|0-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.0534759| 0.0420715| 0.0648803|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.0822511| 0.0467438| 0.1177583|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.0912621| 0.0663660| 0.1161582|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.0356164| 0.0221630| 0.0490699|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.0234009| 0.0116889| 0.0351130|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.0825959| 0.0584656| 0.1067261|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0265982| 0.0197841| 0.0334124|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0176823| 0.0150321| 0.0203326|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level         |baseline_level             | estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:--------------------------|:--------------------------|--------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Low birthweight            |Normal or high birthweight | 2.202462| 0.8549566|  5.673786|
|0-24 months |COHORTS        |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months |COHORTS        |INDIA                        |Low birthweight            |Normal or high birthweight | 3.406768| 2.8978146|  4.005110|
|0-24 months |COHORTS        |PHILIPPINES                  |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |Low birthweight            |Normal or high birthweight | 3.130795| 2.1710118|  4.514889|
|0-24 months |EE             |PAKISTAN                     |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months |EE             |PAKISTAN                     |Low birthweight            |Normal or high birthweight | 1.339413| 0.6881483|  2.607036|
|0-24 months |GMS-Nepal      |NEPAL                        |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months |GMS-Nepal      |NEPAL                        |Low birthweight            |Normal or high birthweight | 2.144538| 1.4210813|  3.236298|
|0-24 months |IRC            |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months |IRC            |INDIA                        |Low birthweight            |Normal or high birthweight | 2.439635| 1.4190739|  4.194157|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 3.466852| 2.9246302|  4.109600|
|0-24 months |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 2.924729| 2.3195762|  3.687760|
|0-24 months |Keneba         |GAMBIA                       |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months |Keneba         |GAMBIA                       |Low birthweight            |Normal or high birthweight | 2.029380| 1.2525035|  3.288123|
|0-24 months |MAL-ED         |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months |MAL-ED         |INDIA                        |Low birthweight            |Normal or high birthweight | 1.934524| 0.7412333|  5.048859|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 3.763337| 2.1033002|  6.733563|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 4.282010| 2.0024193|  9.156728|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 4.784314| 1.7291761| 13.237320|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months |SAS-CompFeed   |INDIA                        |Low birthweight            |Normal or high birthweight | 3.963545| 3.0652924|  5.125022|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |Normal or high birthweight | 2.651282| 1.0903832|  6.446630|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |Normal or high birthweight | 1.000000| 1.0000000|  1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |Normal or high birthweight | 3.697054| 2.7052091|  5.052553|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level         |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:--------------------------|:--------------|---------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |NA             | 0.0074789| -0.0043735| 0.0193314|
|0-24 months |COHORTS        |INDIA                        |Normal or high birthweight |NA             | 0.0303714|  0.0250116| 0.0357311|
|0-24 months |COHORTS        |PHILIPPINES                  |Normal or high birthweight |NA             | 0.0084791|  0.0044615| 0.0124968|
|0-24 months |EE             |PAKISTAN                     |Normal or high birthweight |NA             | 0.0093887| -0.0127869| 0.0315642|
|0-24 months |GMS-Nepal      |NEPAL                        |Normal or high birthweight |NA             | 0.0377267|  0.0160288| 0.0594245|
|0-24 months |IRC            |INDIA                        |Normal or high birthweight |NA             | 0.0230911|  0.0045162| 0.0416660|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |NA             | 0.0271152|  0.0233352| 0.0308952|
|0-24 months |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |NA             | 0.0267822|  0.0199311| 0.0336334|
|0-24 months |Keneba         |GAMBIA                       |Normal or high birthweight |NA             | 0.0068472|  0.0009621| 0.0127323|
|0-24 months |MAL-ED         |INDIA                        |Normal or high birthweight |NA             | 0.0104562| -0.0083379| 0.0292503|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |NA             | 0.0435007|  0.0224374| 0.0645639|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |NA             | 0.0158176|  0.0053583| 0.0262769|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal or high birthweight |NA             | 0.0111059|  0.0017713| 0.0204404|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal or high birthweight |NA             | 0.0350817|  0.0216207| 0.0485427|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |NA             | 0.0014532| -0.0005632| 0.0034695|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |NA             | 0.0044429|  0.0028651| 0.0060208|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level         |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:--------------------------|:--------------|---------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |NA             | 0.1240824| -0.0891428| 0.2955638|
|0-24 months |COHORTS        |INDIA                        |Normal or high birthweight |NA             | 0.3155747|  0.2634579| 0.3640037|
|0-24 months |COHORTS        |PHILIPPINES                  |Normal or high birthweight |NA             | 0.1676442|  0.0889568| 0.2395353|
|0-24 months |EE             |PAKISTAN                     |Normal or high birthweight |NA             | 0.1069738| -0.1824554| 0.3255594|
|0-24 months |GMS-Nepal      |NEPAL                        |Normal or high birthweight |NA             | 0.2810638|  0.1097764| 0.4193938|
|0-24 months |IRC            |INDIA                        |Normal or high birthweight |NA             | 0.1943497|  0.0301162| 0.3307731|
|0-24 months |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |NA             | 0.4874558|  0.4235336| 0.5442898|
|0-24 months |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |NA             | 0.3384023|  0.2542504| 0.4130583|
|0-24 months |Keneba         |GAMBIA                       |Normal or high birthweight |NA             | 0.1280423|  0.0139977| 0.2288961|
|0-24 months |MAL-ED         |INDIA                        |Normal or high birthweight |NA             | 0.1271255| -0.1267794| 0.3238163|
|0-24 months |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |NA             | 0.4766562|  0.2385971| 0.6402840|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |NA             | 0.4441105|  0.1375325| 0.6417104|
|0-24 months |PROVIDE        |BANGLADESH                   |Normal or high birthweight |NA             | 0.4745902|  0.0290084| 0.7156973|
|0-24 months |SAS-CompFeed   |INDIA                        |Normal or high birthweight |NA             | 0.4247390|  0.3246016| 0.5100296|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |NA             | 0.0546337| -0.0229578| 0.1263399|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |NA             | 0.2512625|  0.1655810| 0.3281458|
