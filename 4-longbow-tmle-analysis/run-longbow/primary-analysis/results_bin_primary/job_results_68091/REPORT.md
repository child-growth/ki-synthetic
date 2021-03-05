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

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |single | pers_wast| n_cell|     n|
|:-----------|:--------------|:----------------------------|:------|---------:|------:|-----:|
|0-24 months |COHORTS        |GUATEMALA                    |0      |         0|    880|   990|
|0-24 months |COHORTS        |GUATEMALA                    |0      |         1|     30|   990|
|0-24 months |COHORTS        |GUATEMALA                    |1      |         0|     76|   990|
|0-24 months |COHORTS        |GUATEMALA                    |1      |         1|      4|   990|
|0-24 months |COHORTS        |INDIA                        |0      |         0|   3707|  4127|
|0-24 months |COHORTS        |INDIA                        |0      |         1|    413|  4127|
|0-24 months |COHORTS        |INDIA                        |1      |         0|      7|  4127|
|0-24 months |COHORTS        |INDIA                        |1      |         1|      0|  4127|
|0-24 months |COHORTS        |PHILIPPINES                  |0      |         0|   2571|  2778|
|0-24 months |COHORTS        |PHILIPPINES                  |0      |         1|    136|  2778|
|0-24 months |COHORTS        |PHILIPPINES                  |1      |         0|     63|  2778|
|0-24 months |COHORTS        |PHILIPPINES                  |1      |         1|      8|  2778|
|0-24 months |Guatemala BSC  |GUATEMALA                    |0      |         0|    221|   251|
|0-24 months |Guatemala BSC  |GUATEMALA                    |0      |         1|      3|   251|
|0-24 months |Guatemala BSC  |GUATEMALA                    |1      |         0|     26|   251|
|0-24 months |Guatemala BSC  |GUATEMALA                    |1      |         1|      1|   251|
|0-24 months |JiVitA-4       |BANGLADESH                   |0      |         0|   4842|  5276|
|0-24 months |JiVitA-4       |BANGLADESH                   |0      |         1|    426|  5276|
|0-24 months |JiVitA-4       |BANGLADESH                   |1      |         0|      8|  5276|
|0-24 months |JiVitA-4       |BANGLADESH                   |1      |         1|      0|  5276|
|0-24 months |MAL-ED         |BANGLADESH                   |0      |         0|    235|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |0      |         1|     13|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |1      |         0|      0|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |1      |         1|      0|   248|
|0-24 months |MAL-ED         |BRAZIL                       |0      |         0|    186|   218|
|0-24 months |MAL-ED         |BRAZIL                       |0      |         1|      1|   218|
|0-24 months |MAL-ED         |BRAZIL                       |1      |         0|     30|   218|
|0-24 months |MAL-ED         |BRAZIL                       |1      |         1|      1|   218|
|0-24 months |MAL-ED         |INDIA                        |0      |         0|    218|   239|
|0-24 months |MAL-ED         |INDIA                        |0      |         1|     21|   239|
|0-24 months |MAL-ED         |INDIA                        |1      |         0|      0|   239|
|0-24 months |MAL-ED         |INDIA                        |1      |         1|      0|   239|
|0-24 months |MAL-ED         |NEPAL                        |0      |         0|    234|   238|
|0-24 months |MAL-ED         |NEPAL                        |0      |         1|      4|   238|
|0-24 months |MAL-ED         |NEPAL                        |1      |         0|      0|   238|
|0-24 months |MAL-ED         |NEPAL                        |1      |         1|      0|   238|
|0-24 months |MAL-ED         |PERU                         |0      |         0|    249|   284|
|0-24 months |MAL-ED         |PERU                         |0      |         1|      1|   284|
|0-24 months |MAL-ED         |PERU                         |1      |         0|     34|   284|
|0-24 months |MAL-ED         |PERU                         |1      |         1|      0|   284|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0      |         0|    155|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0      |         1|      1|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1      |         0|    118|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1      |         1|      1|   275|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |         0|    244|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |         0|      9|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |         1|      0|   253|
|0-24 months |PROBIT         |BELARUS                      |0      |         0|  15778| 16583|
|0-24 months |PROBIT         |BELARUS                      |0      |         1|    128| 16583|
|0-24 months |PROBIT         |BELARUS                      |1      |         0|    671| 16583|
|0-24 months |PROBIT         |BELARUS                      |1      |         1|      6| 16583|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |         0|   1896|  2148|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |         1|     53|  2148|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |         0|    194|  2148|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |         1|      5|  2148|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0      |         0|   8747|  9489|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0      |         1|    154|  9489|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1      |         0|    577|  9489|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1      |         1|     11|  9489|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/d10e09f8-3832-4379-8759-25e62f38751c/596b5fee-e60e-41b3-adaa-e0e30315b3a4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d10e09f8-3832-4379-8759-25e62f38751c/596b5fee-e60e-41b3-adaa-e0e30315b3a4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d10e09f8-3832-4379-8759-25e62f38751c/596b5fee-e60e-41b3-adaa-e0e30315b3a4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d10e09f8-3832-4379-8759-25e62f38751c/596b5fee-e60e-41b3-adaa-e0e30315b3a4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |COHORTS        |PHILIPPINES                  |0                  |NA             | 0.0502401|  0.0420098| 0.0584704|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             | 0.1126761|  0.0391140| 0.1862381|
|0-24 months |PROBIT         |BELARUS                      |0                  |NA             | 0.0080473|  0.0044323| 0.0116623|
|0-24 months |PROBIT         |BELARUS                      |1                  |NA             | 0.0088626| -0.0002706| 0.0179959|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.0271934|  0.0199709| 0.0344159|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.0251256|  0.0033758| 0.0468754|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             | 0.0172759|  0.0145687| 0.0199830|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.0200586|  0.0087210| 0.0313963|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.0518359| 0.0435904| 0.0600814|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0080806| 0.0045539| 0.0116073|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0270019| 0.0201456| 0.0338581|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0173886| 0.0147584| 0.0200187|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |COHORTS        |PHILIPPINES                  |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |0              | 2.2427506| 1.1440794| 4.396487|
|0-24 months |PROBIT         |BELARUS                      |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |1                  |0              | 1.1013202| 0.3743864| 3.239718|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |0              | 0.9239594| 0.3736040| 2.285042|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |0              | 1.1610787| 0.6459152| 2.087122|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |PHILIPPINES                  |0                  |NA             |  0.0015957| -0.0003313| 0.0035227|
|0-24 months |PROBIT         |BELARUS                      |0                  |NA             |  0.0000333| -0.0003523| 0.0004189|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | -0.0001916| -0.0023149| 0.0019318|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0001127| -0.0005852| 0.0008106|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |PHILIPPINES                  |0                  |NA             |  0.0307844| -0.0068119| 0.0669768|
|0-24 months |PROBIT         |BELARUS                      |0                  |NA             |  0.0041194| -0.0451270| 0.0510452|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | -0.0070947| -0.0888621| 0.0685324|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0064813| -0.0344644| 0.0458064|
