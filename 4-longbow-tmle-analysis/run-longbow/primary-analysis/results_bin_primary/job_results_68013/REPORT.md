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

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_nrooms
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |parity | ever_swasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:------|------------:|------:|-----:|
|0-24 months |COHORTS        |GUATEMALA                    |1      |            0|    191|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |1      |            1|     17|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |2      |            0|    172|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |2      |            1|     15|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |3+     |            0|    881|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |3+     |            1|     65|  1341|
|0-24 months |COHORTS        |INDIA                        |1      |            0|    737|  4624|
|0-24 months |COHORTS        |INDIA                        |1      |            1|     73|  4624|
|0-24 months |COHORTS        |INDIA                        |2      |            0|   1082|  4624|
|0-24 months |COHORTS        |INDIA                        |2      |            1|    102|  4624|
|0-24 months |COHORTS        |INDIA                        |3+     |            0|   2336|  4624|
|0-24 months |COHORTS        |INDIA                        |3+     |            1|    294|  4624|
|0-24 months |COHORTS        |PHILIPPINES                  |1      |            0|    584|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |1      |            1|     93|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |2      |            0|    609|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |2      |            1|     73|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |3+     |            0|   1470|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |3+     |            1|    216|  3045|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |            0|    158|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |            1|     45|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |2      |            0|    127|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |2      |            1|     53|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |3+     |            0|    224|   686|
|0-24 months |GMS-Nepal      |NEPAL                        |3+     |            1|     79|   686|
|0-24 months |JiVitA-3       |BANGLADESH                   |1      |            0|   9487| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |1      |            1|    639| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |2      |            0|   8441| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |2      |            1|    493| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |3+     |            0|   7383| 26956|
|0-24 months |JiVitA-3       |BANGLADESH                   |3+     |            1|    513| 26956|
|0-24 months |Keneba         |GAMBIA                       |1      |            0|    195|  1990|
|0-24 months |Keneba         |GAMBIA                       |1      |            1|     45|  1990|
|0-24 months |Keneba         |GAMBIA                       |2      |            0|    175|  1990|
|0-24 months |Keneba         |GAMBIA                       |2      |            1|     39|  1990|
|0-24 months |Keneba         |GAMBIA                       |3+     |            0|   1222|  1990|
|0-24 months |Keneba         |GAMBIA                       |3+     |            1|    314|  1990|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |            0|    252|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |            1|     19|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2      |            0|    236|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |2      |            1|      8|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |3+     |            0|    170|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |3+     |            1|     15|   700|
|0-24 months |SAS-CompFeed   |INDIA                        |1      |            0|    400|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |1      |            1|     48|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |2      |            0|    300|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |2      |            1|     54|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |3+     |            0|    590|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |3+     |            1|    121|  1513|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1      |            0|     17|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1      |            1|      4|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |2      |            0|     70|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |2      |            1|      7|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |3+     |            0|    260|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |3+     |            1|     60|   418|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |            0|    767|  2357|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |            1|     54|  2357|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2      |            0|    717|  2357|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2      |            1|     54|  2357|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+     |            0|    716|  2357|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+     |            1|     49|  2357|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1      |            0|   5431| 13945|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1      |            1|    575| 13945|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2      |            0|   3816| 13945|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2      |            1|    362| 13945|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3+     |            0|   3412| 13945|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3+     |            1|    349| 13945|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/f37faef0-ddb0-4e84-b0be-a39d257b838a/526ef5d8-e6c2-4c1a-ae8f-8c188f6a502f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f37faef0-ddb0-4e84-b0be-a39d257b838a/526ef5d8-e6c2-4c1a-ae8f-8c188f6a502f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f37faef0-ddb0-4e84-b0be-a39d257b838a/526ef5d8-e6c2-4c1a-ae8f-8c188f6a502f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f37faef0-ddb0-4e84-b0be-a39d257b838a/526ef5d8-e6c2-4c1a-ae8f-8c188f6a502f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |NA             | 0.0857602| 0.0486397| 0.1228807|
|0-24 months |COHORTS        |GUATEMALA                    |2                  |NA             | 0.0842965| 0.0457539| 0.1228391|
|0-24 months |COHORTS        |GUATEMALA                    |3+                 |NA             | 0.0690078| 0.0528760| 0.0851397|
|0-24 months |COHORTS        |INDIA                        |1                  |NA             | 0.0967854| 0.0690815| 0.1244894|
|0-24 months |COHORTS        |INDIA                        |2                  |NA             | 0.0847173| 0.0637347| 0.1057000|
|0-24 months |COHORTS        |INDIA                        |3+                 |NA             | 0.1027552| 0.0896553| 0.1158551|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             | 0.1309071| 0.0986976| 0.1631167|
|0-24 months |COHORTS        |PHILIPPINES                  |2                  |NA             | 0.1078297| 0.0666338| 0.1490255|
|0-24 months |COHORTS        |PHILIPPINES                  |3+                 |NA             | 0.1420013| 0.1182374| 0.1657651|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             | 0.2143610| 0.1277314| 0.3009906|
|0-24 months |GMS-Nepal      |NEPAL                        |2                  |NA             | 0.2720065| 0.1694273| 0.3745858|
|0-24 months |GMS-Nepal      |NEPAL                        |3+                 |NA             | 0.2368613| 0.1751682| 0.2985544|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.0584720| 0.0495389| 0.0674051|
|0-24 months |JiVitA-3       |BANGLADESH                   |2                  |NA             | 0.0559243| 0.0452999| 0.0665488|
|0-24 months |JiVitA-3       |BANGLADESH                   |3+                 |NA             | 0.0554220| 0.0478937| 0.0629503|
|0-24 months |Keneba         |GAMBIA                       |1                  |NA             | 0.1687511| 0.1119275| 0.2255747|
|0-24 months |Keneba         |GAMBIA                       |2                  |NA             | 0.1896740| 0.1121674| 0.2671806|
|0-24 months |Keneba         |GAMBIA                       |3+                 |NA             | 0.1839008| 0.1636085| 0.2041931|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.0701107| 0.0396891| 0.1005323|
|0-24 months |PROVIDE        |BANGLADESH                   |2                  |NA             | 0.0327869| 0.0104267| 0.0551470|
|0-24 months |PROVIDE        |BANGLADESH                   |3+                 |NA             | 0.0810811| 0.0417196| 0.1204425|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             | 0.1057364| 0.0422013| 0.1692715|
|0-24 months |SAS-CompFeed   |INDIA                        |2                  |NA             | 0.1669454| 0.1063431| 0.2275478|
|0-24 months |SAS-CompFeed   |INDIA                        |3+                 |NA             | 0.1513335| 0.1222711| 0.1803958|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.0856119| 0.0581318| 0.1130921|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |NA             | 0.0750973| 0.0501109| 0.1000837|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+                 |NA             | 0.0710256| 0.0479373| 0.0941140|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.0977823| 0.0862109| 0.1093537|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2                  |NA             | 0.0899941| 0.0764295| 0.1035587|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3+                 |NA             | 0.0853507| 0.0727457| 0.0979558|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.0723341| 0.0584645| 0.0862036|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.1014273| 0.0927249| 0.1101298|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.1254516| 0.1136848| 0.1372183|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.2580175| 0.2252514| 0.2907836|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0610254| 0.0575469| 0.0645038|
|0-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.2000000| 0.1824211| 0.2175789|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.0600000| 0.0423945| 0.0776055|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.1473893| 0.1184132| 0.1763654|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0666101| 0.0565417| 0.0766785|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0922194| 0.0874171| 0.0970218|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA                    |2                  |1              | 0.9829324| 0.5236052| 1.845200|
|0-24 months |COHORTS        |GUATEMALA                    |3+                 |1              | 0.8046606| 0.4919216| 1.316223|
|0-24 months |COHORTS        |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |INDIA                        |2                  |1              | 0.8753108| 0.5995433| 1.277921|
|0-24 months |COHORTS        |INDIA                        |3+                 |1              | 1.0616806| 0.7762663| 1.452035|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |2                  |1              | 0.8237111| 0.5229414| 1.297468|
|0-24 months |COHORTS        |PHILIPPINES                  |3+                 |1              | 1.0847482| 0.8056063| 1.460613|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal      |NEPAL                        |2                  |1              | 1.2689178| 0.7301366| 2.205275|
|0-24 months |GMS-Nepal      |NEPAL                        |3+                 |1              | 1.1049644| 0.6830341| 1.787534|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |2                  |1              | 0.9564295| 0.7465297| 1.225346|
|0-24 months |JiVitA-3       |BANGLADESH                   |3+                 |1              | 0.9478381| 0.7760756| 1.157615|
|0-24 months |Keneba         |GAMBIA                       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |Keneba         |GAMBIA                       |2                  |1              | 1.1239868| 0.6618489| 1.908814|
|0-24 months |Keneba         |GAMBIA                       |3+                 |1              | 1.0897756| 0.7646470| 1.553149|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |2                  |1              | 0.4676445| 0.2083855| 1.049456|
|0-24 months |PROVIDE        |BANGLADESH                   |3+                 |1              | 1.1564723| 0.6030613| 2.217732|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA                        |2                  |1              | 1.5788835| 0.7131037| 3.495807|
|0-24 months |SAS-CompFeed   |INDIA                        |3+                 |1              | 1.4312334| 0.8095320| 2.530387|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2                  |1              | 0.8771824| 0.5530074| 1.391390|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |3+                 |1              | 0.8296232| 0.5252619| 1.310346|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |2                  |1              | 0.9203514| 0.7598617| 1.114738|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |3+                 |1              | 0.8728649| 0.7223768| 1.054703|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |NA             | -0.0134261| -0.0472487| 0.0203965|
|0-24 months |COHORTS        |INDIA                        |1                  |NA             |  0.0046419| -0.0219461| 0.0312299|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             | -0.0054556| -0.0356291| 0.0247180|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             |  0.0436565| -0.0384653| 0.1257782|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             |  0.0025534| -0.0058419| 0.0109486|
|0-24 months |Keneba         |GAMBIA                       |1                  |NA             |  0.0312489| -0.0252403| 0.0877381|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.0101107| -0.0328889| 0.0126675|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             |  0.0416529| -0.0103557| 0.0936615|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.0190018| -0.0438878| 0.0058841|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | -0.0055629| -0.0160843| 0.0049586|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |NA             | -0.1856126| -0.7584928| 0.2006353|
|0-24 months |COHORTS        |INDIA                        |1                  |NA             |  0.0457658| -0.2557843| 0.2749050|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             | -0.0434875| -0.3141113| 0.1714049|
|0-24 months |GMS-Nepal      |NEPAL                        |1                  |NA             |  0.1691996| -0.2178696| 0.4332486|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             |  0.0418411| -0.1059873| 0.1699105|
|0-24 months |Keneba         |GAMBIA                       |1                  |NA             |  0.1562446| -0.1770657| 0.3951713|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | -0.1685117| -0.6132761| 0.1536356|
|0-24 months |SAS-CompFeed   |INDIA                        |1                  |NA             |  0.2826047| -0.1949953| 0.5693238|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | -0.2852696| -0.7182033| 0.0385783|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | -0.0603220| -0.1808216| 0.0478809|
