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

**Intervention Variable:** fage

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_fhtcm
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_fhtcm
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid       |country                      |fage    | pers_wast| n_cell|     n|
|:-----------|:-------------|:----------------------------|:-------|---------:|------:|-----:|
|0-24 months |COHORTS       |GUATEMALA                    |>=38    |         0|    289|  1018|
|0-24 months |COHORTS       |GUATEMALA                    |>=38    |         1|      9|  1018|
|0-24 months |COHORTS       |GUATEMALA                    |<32     |         0|    458|  1018|
|0-24 months |COHORTS       |GUATEMALA                    |<32     |         1|     15|  1018|
|0-24 months |COHORTS       |GUATEMALA                    |[32-38) |         0|    236|  1018|
|0-24 months |COHORTS       |GUATEMALA                    |[32-38) |         1|     11|  1018|
|0-24 months |COHORTS       |PHILIPPINES                  |>=38    |         0|    284|  2723|
|0-24 months |COHORTS       |PHILIPPINES                  |>=38    |         1|     21|  2723|
|0-24 months |COHORTS       |PHILIPPINES                  |<32     |         0|   1824|  2723|
|0-24 months |COHORTS       |PHILIPPINES                  |<32     |         1|     89|  2723|
|0-24 months |COHORTS       |PHILIPPINES                  |[32-38) |         0|    477|  2723|
|0-24 months |COHORTS       |PHILIPPINES                  |[32-38) |         1|     28|  2723|
|0-24 months |LCNI-5        |MALAWI                       |>=38    |         0|     26|    99|
|0-24 months |LCNI-5        |MALAWI                       |>=38    |         1|      0|    99|
|0-24 months |LCNI-5        |MALAWI                       |<32     |         0|     50|    99|
|0-24 months |LCNI-5        |MALAWI                       |<32     |         1|      1|    99|
|0-24 months |LCNI-5        |MALAWI                       |[32-38) |         0|     22|    99|
|0-24 months |LCNI-5        |MALAWI                       |[32-38) |         1|      0|    99|
|0-24 months |MAL-ED        |BANGLADESH                   |>=38    |         0|     65|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |>=38    |         1|      4|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |<32     |         0|     30|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |<32     |         1|      0|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |[32-38) |         0|     49|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |[32-38) |         1|      3|   151|
|0-24 months |MAL-ED        |BRAZIL                       |>=38    |         0|     30|    79|
|0-24 months |MAL-ED        |BRAZIL                       |>=38    |         1|      0|    79|
|0-24 months |MAL-ED        |BRAZIL                       |<32     |         0|     18|    79|
|0-24 months |MAL-ED        |BRAZIL                       |<32     |         1|      0|    79|
|0-24 months |MAL-ED        |BRAZIL                       |[32-38) |         0|     30|    79|
|0-24 months |MAL-ED        |BRAZIL                       |[32-38) |         1|      1|    79|
|0-24 months |MAL-ED        |INDIA                        |>=38    |         0|     36|   161|
|0-24 months |MAL-ED        |INDIA                        |>=38    |         1|      0|   161|
|0-24 months |MAL-ED        |INDIA                        |<32     |         0|     46|   161|
|0-24 months |MAL-ED        |INDIA                        |<32     |         1|      7|   161|
|0-24 months |MAL-ED        |INDIA                        |[32-38) |         0|     66|   161|
|0-24 months |MAL-ED        |INDIA                        |[32-38) |         1|      6|   161|
|0-24 months |MAL-ED        |NEPAL                        |>=38    |         0|     17|    79|
|0-24 months |MAL-ED        |NEPAL                        |>=38    |         1|      0|    79|
|0-24 months |MAL-ED        |NEPAL                        |<32     |         0|     14|    79|
|0-24 months |MAL-ED        |NEPAL                        |<32     |         1|      1|    79|
|0-24 months |MAL-ED        |NEPAL                        |[32-38) |         0|     47|    79|
|0-24 months |MAL-ED        |NEPAL                        |[32-38) |         1|      0|    79|
|0-24 months |MAL-ED        |PERU                         |>=38    |         0|     27|    84|
|0-24 months |MAL-ED        |PERU                         |>=38    |         1|      0|    84|
|0-24 months |MAL-ED        |PERU                         |<32     |         0|     28|    84|
|0-24 months |MAL-ED        |PERU                         |<32     |         1|      1|    84|
|0-24 months |MAL-ED        |PERU                         |[32-38) |         0|     28|    84|
|0-24 months |MAL-ED        |PERU                         |[32-38) |         1|      0|    84|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |>=38    |         0|     64|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |>=38    |         1|      1|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |<32     |         0|      9|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |<32     |         1|      0|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |[32-38) |         0|     16|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |[32-38) |         1|      0|    90|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>=38    |         0|     48|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>=38    |         1|      0|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |<32     |         0|     15|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |<32     |         1|      0|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |[32-38) |         0|     37|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |[32-38) |         1|      0|   100|
|0-24 months |PROBIT        |BELARUS                      |>=38    |         0|    726| 15977|
|0-24 months |PROBIT        |BELARUS                      |>=38    |         1|      7| 15977|
|0-24 months |PROBIT        |BELARUS                      |<32     |         0|  12698| 15977|
|0-24 months |PROBIT        |BELARUS                      |<32     |         1|    101| 15977|
|0-24 months |PROBIT        |BELARUS                      |[32-38) |         0|   2423| 15977|
|0-24 months |PROBIT        |BELARUS                      |[32-38) |         1|     22| 15977|
|0-24 months |SAS-CompFeed  |INDIA                        |>=38    |         0|     33|  1363|
|0-24 months |SAS-CompFeed  |INDIA                        |>=38    |         1|     10|  1363|
|0-24 months |SAS-CompFeed  |INDIA                        |<32     |         0|   1059|  1363|
|0-24 months |SAS-CompFeed  |INDIA                        |<32     |         1|     92|  1363|
|0-24 months |SAS-CompFeed  |INDIA                        |[32-38) |         0|    157|  1363|
|0-24 months |SAS-CompFeed  |INDIA                        |[32-38) |         1|     12|  1363|
|0-24 months |SAS-FoodSuppl |INDIA                        |>=38    |         0|     29|   375|
|0-24 months |SAS-FoodSuppl |INDIA                        |>=38    |         1|     12|   375|
|0-24 months |SAS-FoodSuppl |INDIA                        |<32     |         0|    221|   375|
|0-24 months |SAS-FoodSuppl |INDIA                        |<32     |         1|     36|   375|
|0-24 months |SAS-FoodSuppl |INDIA                        |[32-38) |         0|     60|   375|
|0-24 months |SAS-FoodSuppl |INDIA                        |[32-38) |         1|     17|   375|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/8e41ff2e-3bba-44a7-a64c-7395053fdad7/d421a776-a4e8-408b-8761-14e27e888b7b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8e41ff2e-3bba-44a7-a64c-7395053fdad7/d421a776-a4e8-408b-8761-14e27e888b7b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8e41ff2e-3bba-44a7-a64c-7395053fdad7/d421a776-a4e8-408b-8761-14e27e888b7b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8e41ff2e-3bba-44a7-a64c-7395053fdad7/d421a776-a4e8-408b-8761-14e27e888b7b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid       |country     |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:-------------|:-----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |COHORTS       |GUATEMALA   |>=38               |NA             | 0.0302013|  0.0107608| 0.0496418|
|0-24 months |COHORTS       |GUATEMALA   |<32                |NA             | 0.0317125|  0.0159128| 0.0475121|
|0-24 months |COHORTS       |GUATEMALA   |[32-38)            |NA             | 0.0445344|  0.0187968| 0.0702720|
|0-24 months |COHORTS       |PHILIPPINES |>=38               |NA             | 0.1172782|  0.0646793| 0.1698772|
|0-24 months |COHORTS       |PHILIPPINES |<32                |NA             | 0.0398838|  0.0315382| 0.0482294|
|0-24 months |COHORTS       |PHILIPPINES |[32-38)            |NA             | 0.0482342|  0.0210727| 0.0753957|
|0-24 months |PROBIT        |BELARUS     |>=38               |NA             | 0.0095498| -0.0004274| 0.0195270|
|0-24 months |PROBIT        |BELARUS     |<32                |NA             | 0.0078912|  0.0044813| 0.0113012|
|0-24 months |PROBIT        |BELARUS     |[32-38)            |NA             | 0.0089980|  0.0032551| 0.0147408|
|0-24 months |SAS-CompFeed  |INDIA       |>=38               |NA             | 0.2817387|  0.1620544| 0.4014230|
|0-24 months |SAS-CompFeed  |INDIA       |<32                |NA             | 0.0836778|  0.0618861| 0.1054696|
|0-24 months |SAS-CompFeed  |INDIA       |[32-38)            |NA             | 0.0573737|  0.0173126| 0.0974349|
|0-24 months |SAS-FoodSuppl |INDIA       |>=38               |NA             | 0.2874605|  0.1433984| 0.4315226|
|0-24 months |SAS-FoodSuppl |INDIA       |<32                |NA             | 0.1372837|  0.0953624| 0.1792049|
|0-24 months |SAS-FoodSuppl |INDIA       |[32-38)            |NA             | 0.2272690|  0.1273365| 0.3272016|


### Parameter: E(Y)


|agecat      |studyid       |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS       |GUATEMALA   |NA                 |NA             | 0.0343811| 0.0231829| 0.0455794|
|0-24 months |COHORTS       |PHILIPPINES |NA                 |NA             | 0.0506794| 0.0424394| 0.0589194|
|0-24 months |PROBIT        |BELARUS     |NA                 |NA             | 0.0081367| 0.0045083| 0.0117651|
|0-24 months |SAS-CompFeed  |INDIA       |NA                 |NA             | 0.0836390| 0.0602327| 0.1070453|
|0-24 months |SAS-FoodSuppl |INDIA       |NA                 |NA             | 0.1733333| 0.1349698| 0.2116969|


### Parameter: RR


|agecat      |studyid       |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS       |GUATEMALA   |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS       |GUATEMALA   |<32                |>=38           | 1.0500352| 0.4652609| 2.3697973|
|0-24 months |COHORTS       |GUATEMALA   |[32-38)            |>=38           | 1.4745839| 0.6208331| 3.5023869|
|0-24 months |COHORTS       |PHILIPPINES |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS       |PHILIPPINES |<32                |>=38           | 0.3400781| 0.2073588| 0.5577440|
|0-24 months |COHORTS       |PHILIPPINES |[32-38)            |>=38           | 0.4112798| 0.2001858| 0.8449704|
|0-24 months |PROBIT        |BELARUS     |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROBIT        |BELARUS     |<32                |>=38           | 0.8263257| 0.3563087| 1.9163557|
|0-24 months |PROBIT        |BELARUS     |[32-38)            |>=38           | 0.9422144| 0.3541747| 2.5065823|
|0-24 months |SAS-CompFeed  |INDIA       |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-CompFeed  |INDIA       |<32                |>=38           | 0.2970052| 0.2084008| 0.4232809|
|0-24 months |SAS-CompFeed  |INDIA       |[32-38)            |>=38           | 0.2036416| 0.1020434| 0.4063948|
|0-24 months |SAS-FoodSuppl |INDIA       |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-FoodSuppl |INDIA       |<32                |>=38           | 0.4775741| 0.2646465| 0.8618176|
|0-24 months |SAS-FoodSuppl |INDIA       |[32-38)            |>=38           | 0.7906097| 0.4055206| 1.5413858|


### Parameter: PAR


|agecat      |studyid       |country     |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:-------------|:-----------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |COHORTS       |GUATEMALA   |>=38               |NA             |  0.0041798| -0.0126151|  0.0209747|
|0-24 months |COHORTS       |PHILIPPINES |>=38               |NA             | -0.0665988| -0.1178004| -0.0153972|
|0-24 months |PROBIT        |BELARUS     |>=38               |NA             | -0.0014131| -0.0092896|  0.0064634|
|0-24 months |SAS-CompFeed  |INDIA       |>=38               |NA             | -0.1980997| -0.3037206| -0.0924787|
|0-24 months |SAS-FoodSuppl |INDIA       |>=38               |NA             | -0.1141272| -0.2487631|  0.0205088|


### Parameter: PAF


|agecat      |studyid       |country     |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:-------------|:-----------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |COHORTS       |GUATEMALA   |>=38               |NA             |  0.1215724| -0.5292244|  0.4954076|
|0-24 months |COHORTS       |PHILIPPINES |>=38               |NA             | -1.3141203| -2.5856213| -0.4935076|
|0-24 months |PROBIT        |BELARUS     |>=38               |NA             | -0.1736698| -1.6092332|  0.4720668|
|0-24 months |SAS-CompFeed  |INDIA       |>=38               |NA             | -2.3685074| -3.6291506| -1.4511716|
|0-24 months |SAS-FoodSuppl |INDIA       |>=38               |NA             | -0.6584259| -1.6449310| -0.0398670|
