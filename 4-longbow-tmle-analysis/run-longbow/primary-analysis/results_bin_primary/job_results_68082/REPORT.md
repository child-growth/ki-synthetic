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

|agecat      |studyid        |country                      |enstunt | pers_wast| n_cell|     n|
|:-----------|:--------------|:----------------------------|:-------|---------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |0       |         0|    281|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |0       |         1|     15|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1       |         0|     69|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1       |         1|      8|   373|
|0-24 months |CMIN           |BANGLADESH                   |0       |         0|    152|   257|
|0-24 months |CMIN           |BANGLADESH                   |0       |         1|      9|   257|
|0-24 months |CMIN           |BANGLADESH                   |1       |         0|     85|   257|
|0-24 months |CMIN           |BANGLADESH                   |1       |         1|     11|   257|
|0-24 months |COHORTS        |GUATEMALA                    |0       |         0|    826|  1056|
|0-24 months |COHORTS        |GUATEMALA                    |0       |         1|     22|  1056|
|0-24 months |COHORTS        |GUATEMALA                    |1       |         0|    194|  1056|
|0-24 months |COHORTS        |GUATEMALA                    |1       |         1|     14|  1056|
|0-24 months |COHORTS        |INDIA                        |0       |         0|   4663|  5705|
|0-24 months |COHORTS        |INDIA                        |0       |         1|    447|  5705|
|0-24 months |COHORTS        |INDIA                        |1       |         0|    492|  5705|
|0-24 months |COHORTS        |INDIA                        |1       |         1|    103|  5705|
|0-24 months |COHORTS        |PHILIPPINES                  |0       |         0|   2524|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |0       |         1|    127|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |1       |         0|    143|  2811|
|0-24 months |COHORTS        |PHILIPPINES                  |1       |         1|     17|  2811|
|0-24 months |CONTENT        |PERU                         |0       |         0|    195|   215|
|0-24 months |CONTENT        |PERU                         |0       |         1|      0|   215|
|0-24 months |CONTENT        |PERU                         |1       |         0|     20|   215|
|0-24 months |CONTENT        |PERU                         |1       |         1|      0|   215|
|0-24 months |EE             |PAKISTAN                     |0       |         0|    195|   377|
|0-24 months |EE             |PAKISTAN                     |0       |         1|     16|   377|
|0-24 months |EE             |PAKISTAN                     |1       |         0|    149|   377|
|0-24 months |EE             |PAKISTAN                     |1       |         1|     17|   377|
|0-24 months |GMS-Nepal      |NEPAL                        |0       |         0|    434|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |0       |         1|     66|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |1       |         0|     83|   597|
|0-24 months |GMS-Nepal      |NEPAL                        |1       |         1|     14|   597|
|0-24 months |Guatemala BSC  |GUATEMALA                    |0       |         0|    196|   256|
|0-24 months |Guatemala BSC  |GUATEMALA                    |0       |         1|      1|   256|
|0-24 months |Guatemala BSC  |GUATEMALA                    |1       |         0|     56|   256|
|0-24 months |Guatemala BSC  |GUATEMALA                    |1       |         1|      3|   256|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |0       |         0|   1185|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |0       |         1|    107|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1       |         0|    284|  1669|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1       |         1|     93|  1669|
|0-24 months |IRC            |INDIA                        |0       |         0|    317|   410|
|0-24 months |IRC            |INDIA                        |0       |         1|     41|   410|
|0-24 months |IRC            |INDIA                        |1       |         0|     45|   410|
|0-24 months |IRC            |INDIA                        |1       |         1|      7|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |0       |         0|  10928| 15803|
|0-24 months |JiVitA-3       |BANGLADESH                   |0       |         1|    551| 15803|
|0-24 months |JiVitA-3       |BANGLADESH                   |1       |         0|   3977| 15803|
|0-24 months |JiVitA-3       |BANGLADESH                   |1       |         1|    347| 15803|
|0-24 months |JiVitA-4       |BANGLADESH                   |0       |         0|   3553|  5281|
|0-24 months |JiVitA-4       |BANGLADESH                   |0       |         1|    223|  5281|
|0-24 months |JiVitA-4       |BANGLADESH                   |1       |         0|   1302|  5281|
|0-24 months |JiVitA-4       |BANGLADESH                   |1       |         1|    203|  5281|
|0-24 months |Keneba         |GAMBIA                       |0       |         0|   2080|  2444|
|0-24 months |Keneba         |GAMBIA                       |0       |         1|    118|  2444|
|0-24 months |Keneba         |GAMBIA                       |1       |         0|    219|  2444|
|0-24 months |Keneba         |GAMBIA                       |1       |         1|     27|  2444|
|0-24 months |LCNI-5         |MALAWI                       |0       |         0|    454|   719|
|0-24 months |LCNI-5         |MALAWI                       |0       |         1|      2|   719|
|0-24 months |LCNI-5         |MALAWI                       |1       |         0|    259|   719|
|0-24 months |LCNI-5         |MALAWI                       |1       |         1|      4|   719|
|0-24 months |MAL-ED         |BANGLADESH                   |0       |         0|    198|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |0       |         1|      9|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |1       |         0|     37|   248|
|0-24 months |MAL-ED         |BANGLADESH                   |1       |         1|      4|   248|
|0-24 months |MAL-ED         |BRAZIL                       |0       |         0|    190|   218|
|0-24 months |MAL-ED         |BRAZIL                       |0       |         1|      2|   218|
|0-24 months |MAL-ED         |BRAZIL                       |1       |         0|     26|   218|
|0-24 months |MAL-ED         |BRAZIL                       |1       |         1|      0|   218|
|0-24 months |MAL-ED         |INDIA                        |0       |         0|    184|   241|
|0-24 months |MAL-ED         |INDIA                        |0       |         1|     17|   241|
|0-24 months |MAL-ED         |INDIA                        |1       |         0|     36|   241|
|0-24 months |MAL-ED         |INDIA                        |1       |         1|      4|   241|
|0-24 months |MAL-ED         |NEPAL                        |0       |         0|    207|   238|
|0-24 months |MAL-ED         |NEPAL                        |0       |         1|      3|   238|
|0-24 months |MAL-ED         |NEPAL                        |1       |         0|     27|   238|
|0-24 months |MAL-ED         |NEPAL                        |1       |         1|      1|   238|
|0-24 months |MAL-ED         |PERU                         |0       |         0|    247|   284|
|0-24 months |MAL-ED         |PERU                         |0       |         1|      1|   284|
|0-24 months |MAL-ED         |PERU                         |1       |         0|     36|   284|
|0-24 months |MAL-ED         |PERU                         |1       |         1|      0|   284|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0       |         0|    242|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0       |         1|      2|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1       |         0|     31|   275|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1       |         1|      0|   275|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0       |         0|    214|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0       |         1|      0|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1       |         0|     39|   253|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1       |         1|      0|   253|
|0-24 months |NIH-Birth      |BANGLADESH                   |0       |         0|    416|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |0       |         1|     36|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |1       |         0|     71|   534|
|0-24 months |NIH-Birth      |BANGLADESH                   |1       |         1|     11|   534|
|0-24 months |NIH-Crypto     |BANGLADESH                   |0       |         0|    609|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |0       |         1|     18|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1       |         0|     95|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1       |         1|      8|   730|
|0-24 months |PROBIT         |BELARUS                      |0       |         0|  16329| 16583|
|0-24 months |PROBIT         |BELARUS                      |0       |         1|    134| 16583|
|0-24 months |PROBIT         |BELARUS                      |1       |         0|    120| 16583|
|0-24 months |PROBIT         |BELARUS                      |1       |         1|      0| 16583|
|0-24 months |PROVIDE        |BANGLADESH                   |0       |         0|    566|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |0       |         1|     12|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |1       |         0|     60|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |1       |         1|      3|   641|
|0-24 months |ResPak         |PAKISTAN                     |0       |         0|    165|   256|
|0-24 months |ResPak         |PAKISTAN                     |0       |         1|     22|   256|
|0-24 months |ResPak         |PAKISTAN                     |1       |         0|     57|   256|
|0-24 months |ResPak         |PAKISTAN                     |1       |         1|     12|   256|
|0-24 months |SAS-CompFeed   |INDIA                        |0       |         0|    938|  1366|
|0-24 months |SAS-CompFeed   |INDIA                        |0       |         1|     57|  1366|
|0-24 months |SAS-CompFeed   |INDIA                        |1       |         0|    314|  1366|
|0-24 months |SAS-CompFeed   |INDIA                        |1       |         1|     57|  1366|
|0-24 months |SAS-FoodSuppl  |INDIA                        |0       |         0|    192|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |0       |         1|     34|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1       |         0|    118|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1       |         1|     31|   375|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0       |         0|   1964|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0       |         1|     55|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |         0|    144|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |         1|      3|  2166|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0       |         0|   8451|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0       |         1|    148|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1       |         0|    908|  9527|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1       |         1|     20|  9527|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/80d53386-5b16-4d03-891b-7c016c998b9d/4325d06d-e302-46c6-a0e7-41fcd4611afd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/80d53386-5b16-4d03-891b-7c016c998b9d/4325d06d-e302-46c6-a0e7-41fcd4611afd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/80d53386-5b16-4d03-891b-7c016c998b9d/4325d06d-e302-46c6-a0e7-41fcd4611afd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/80d53386-5b16-4d03-891b-7c016c998b9d/4325d06d-e302-46c6-a0e7-41fcd4611afd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0                  |NA             | 0.0506757| 0.0256554| 0.0756960|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1                  |NA             | 0.1038961| 0.0356521| 0.1721401|
|0-24 months |CMIN           |BANGLADESH   |0                  |NA             | 0.0559006| 0.0203458| 0.0914555|
|0-24 months |CMIN           |BANGLADESH   |1                  |NA             | 0.1145833| 0.0507432| 0.1784234|
|0-24 months |COHORTS        |GUATEMALA    |0                  |NA             | 0.0258820| 0.0152010| 0.0365631|
|0-24 months |COHORTS        |GUATEMALA    |1                  |NA             | 0.0667411| 0.0325013| 0.1009809|
|0-24 months |COHORTS        |INDIA        |0                  |NA             | 0.0879370| 0.0801887| 0.0956853|
|0-24 months |COHORTS        |INDIA        |1                  |NA             | 0.1665438| 0.1363395| 0.1967481|
|0-24 months |COHORTS        |PHILIPPINES  |0                  |NA             | 0.0478678| 0.0397363| 0.0559993|
|0-24 months |COHORTS        |PHILIPPINES  |1                  |NA             | 0.1068247| 0.0572704| 0.1563790|
|0-24 months |EE             |PAKISTAN     |0                  |NA             | 0.0754945| 0.0395839| 0.1114051|
|0-24 months |EE             |PAKISTAN     |1                  |NA             | 0.1023595| 0.0558983| 0.1488207|
|0-24 months |GMS-Nepal      |NEPAL        |0                  |NA             | 0.1325896| 0.1028846| 0.1622946|
|0-24 months |GMS-Nepal      |NEPAL        |1                  |NA             | 0.1605303| 0.0916564| 0.2294043|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |0                  |NA             | 0.0839327| 0.0602019| 0.1076634|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |1                  |NA             | 0.2393804| 0.1486908| 0.3300700|
|0-24 months |IRC            |INDIA        |0                  |NA             | 0.1145251| 0.0814977| 0.1475526|
|0-24 months |IRC            |INDIA        |1                  |NA             | 0.1346154| 0.0417340| 0.2274968|
|0-24 months |JiVitA-3       |BANGLADESH   |0                  |NA             | 0.0483577| 0.0438401| 0.0528754|
|0-24 months |JiVitA-3       |BANGLADESH   |1                  |NA             | 0.0794873| 0.0706627| 0.0883119|
|0-24 months |JiVitA-4       |BANGLADESH   |0                  |NA             | 0.0598536| 0.0512150| 0.0684923|
|0-24 months |JiVitA-4       |BANGLADESH   |1                  |NA             | 0.1315992| 0.1119679| 0.1512305|
|0-24 months |Keneba         |GAMBIA       |0                  |NA             | 0.0535547| 0.0441350| 0.0629744|
|0-24 months |Keneba         |GAMBIA       |1                  |NA             | 0.1120558| 0.0725671| 0.1515446|
|0-24 months |NIH-Birth      |BANGLADESH   |0                  |NA             | 0.0793735| 0.0543852| 0.1043617|
|0-24 months |NIH-Birth      |BANGLADESH   |1                  |NA             | 0.1270232| 0.0519091| 0.2021373|
|0-24 months |NIH-Crypto     |BANGLADESH   |0                  |NA             | 0.0287081| 0.0156287| 0.0417876|
|0-24 months |NIH-Crypto     |BANGLADESH   |1                  |NA             | 0.0776699| 0.0259454| 0.1293945|
|0-24 months |ResPak         |PAKISTAN     |0                  |NA             | 0.1166997| 0.0707497| 0.1626497|
|0-24 months |ResPak         |PAKISTAN     |1                  |NA             | 0.1735115| 0.0787641| 0.2682590|
|0-24 months |SAS-CompFeed   |INDIA        |0                  |NA             | 0.0583306| 0.0365440| 0.0801172|
|0-24 months |SAS-CompFeed   |INDIA        |1                  |NA             | 0.1471322| 0.0956230| 0.1986413|
|0-24 months |SAS-FoodSuppl  |INDIA        |0                  |NA             | 0.1493231| 0.1027310| 0.1959153|
|0-24 months |SAS-FoodSuppl  |INDIA        |1                  |NA             | 0.2097520| 0.1436891| 0.2758149|
|0-24 months |ZVITAMBO       |ZIMBABWE     |0                  |NA             | 0.0172538| 0.0145000| 0.0200077|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1                  |NA             | 0.0213808| 0.0120766| 0.0306850|


### Parameter: E(Y)


|agecat      |studyid        |country      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |NA                 |NA             | 0.0616622| 0.0372186| 0.0861058|
|0-24 months |CMIN           |BANGLADESH   |NA                 |NA             | 0.0778210| 0.0450051| 0.1106369|
|0-24 months |COHORTS        |GUATEMALA    |NA                 |NA             | 0.0340909| 0.0231410| 0.0450408|
|0-24 months |COHORTS        |INDIA        |NA                 |NA             | 0.0964067| 0.0887472| 0.1040661|
|0-24 months |COHORTS        |PHILIPPINES  |NA                 |NA             | 0.0512273| 0.0430760| 0.0593786|
|0-24 months |EE             |PAKISTAN     |NA                 |NA             | 0.0875332| 0.0589672| 0.1160991|
|0-24 months |GMS-Nepal      |NEPAL        |NA                 |NA             | 0.1340034| 0.1066544| 0.1613523|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |NA                 |NA             | 0.1198322| 0.0943748| 0.1452897|
|0-24 months |IRC            |INDIA        |NA                 |NA             | 0.1170732| 0.0859146| 0.1482317|
|0-24 months |JiVitA-3       |BANGLADESH   |NA                 |NA             | 0.0568247| 0.0527145| 0.0609348|
|0-24 months |JiVitA-4       |BANGLADESH   |NA                 |NA             | 0.0806665| 0.0720540| 0.0892791|
|0-24 months |Keneba         |GAMBIA       |NA                 |NA             | 0.0593290| 0.0499611| 0.0686968|
|0-24 months |NIH-Birth      |BANGLADESH   |NA                 |NA             | 0.0880150| 0.0639627| 0.1120673|
|0-24 months |NIH-Crypto     |BANGLADESH   |NA                 |NA             | 0.0356164| 0.0221630| 0.0490699|
|0-24 months |ResPak         |PAKISTAN     |NA                 |NA             | 0.1328125| 0.0911588| 0.1744662|
|0-24 months |SAS-CompFeed   |INDIA        |NA                 |NA             | 0.0834553| 0.0601989| 0.1067118|
|0-24 months |SAS-FoodSuppl  |INDIA        |NA                 |NA             | 0.1733333| 0.1349698| 0.2116969|
|0-24 months |ZVITAMBO       |ZIMBABWE     |NA                 |NA             | 0.0176341| 0.0149910| 0.0202771|


### Parameter: RR


|agecat      |studyid        |country      |intervention_level |baseline_level | estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:------------|:------------------|:--------------|--------:|---------:|--------:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1                  |0              | 2.050216| 0.9014289| 4.663027|
|0-24 months |CMIN           |BANGLADESH   |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |CMIN           |BANGLADESH   |1                  |0              | 2.049768| 0.8800068| 4.774453|
|0-24 months |COHORTS        |GUATEMALA    |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA    |1                  |0              | 2.578666| 1.3348830| 4.981348|
|0-24 months |COHORTS        |INDIA        |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |INDIA        |1                  |0              | 1.893899| 1.5485120| 2.316323|
|0-24 months |COHORTS        |PHILIPPINES  |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES  |1                  |0              | 2.231661| 1.3617120| 3.657389|
|0-24 months |EE             |PAKISTAN     |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |EE             |PAKISTAN     |1                  |0              | 1.355854| 0.7022855| 2.617654|
|0-24 months |GMS-Nepal      |NEPAL        |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal      |NEPAL        |1                  |0              | 1.210731| 0.7454455| 1.966434|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |1                  |0              | 2.852053| 1.7449651| 4.661530|
|0-24 months |IRC            |INDIA        |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |IRC            |INDIA        |1                  |0              | 1.175422| 0.5564423| 2.482948|
|0-24 months |JiVitA-3       |BANGLADESH   |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH   |1                  |0              | 1.643736| 1.4266896| 1.893802|
|0-24 months |JiVitA-4       |BANGLADESH   |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4       |BANGLADESH   |1                  |0              | 2.198684| 1.7983370| 2.688156|
|0-24 months |Keneba         |GAMBIA       |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |Keneba         |GAMBIA       |1                  |0              | 2.092363| 1.4113961| 3.101880|
|0-24 months |NIH-Birth      |BANGLADESH   |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth      |BANGLADESH   |1                  |0              | 1.600323| 0.8188272| 3.127684|
|0-24 months |NIH-Crypto     |BANGLADESH   |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH   |1                  |0              | 2.705502| 1.2073171| 6.062814|
|0-24 months |ResPak         |PAKISTAN     |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |ResPak         |PAKISTAN     |1                  |0              | 1.486821| 0.7569871| 2.920310|
|0-24 months |SAS-CompFeed   |INDIA        |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA        |1                  |0              | 2.522383| 1.6889474| 3.767089|
|0-24 months |SAS-FoodSuppl  |INDIA        |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl  |INDIA        |1                  |0              | 1.404685| 0.9017577| 2.188105|
|0-24 months |ZVITAMBO       |ZIMBABWE     |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1                  |0              | 1.239194| 0.7795730| 1.969798|


### Parameter: PAR


|agecat      |studyid        |country      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0                  |NA             | 0.0109865| -0.0041772| 0.0261502|
|0-24 months |CMIN           |BANGLADESH   |0                  |NA             | 0.0219204| -0.0055961| 0.0494369|
|0-24 months |COHORTS        |GUATEMALA    |0                  |NA             | 0.0082089|  0.0011049| 0.0153129|
|0-24 months |COHORTS        |INDIA        |0                  |NA             | 0.0084697|  0.0051502| 0.0117891|
|0-24 months |COHORTS        |PHILIPPINES  |0                  |NA             | 0.0033595|  0.0005526| 0.0061665|
|0-24 months |EE             |PAKISTAN     |0                  |NA             | 0.0120387| -0.0138232| 0.0379005|
|0-24 months |GMS-Nepal      |NEPAL        |0                  |NA             | 0.0014137| -0.0110403| 0.0138677|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |0                  |NA             | 0.0358996|  0.0143412| 0.0574580|
|0-24 months |IRC            |INDIA        |0                  |NA             | 0.0025480| -0.0099714| 0.0150675|
|0-24 months |JiVitA-3       |BANGLADESH   |0                  |NA             | 0.0084669|  0.0057431| 0.0111908|
|0-24 months |JiVitA-4       |BANGLADESH   |0                  |NA             | 0.0208129|  0.0147339| 0.0268919|
|0-24 months |Keneba         |GAMBIA       |0                  |NA             | 0.0057743|  0.0016778| 0.0098707|
|0-24 months |NIH-Birth      |BANGLADESH   |0                  |NA             | 0.0086415| -0.0034842| 0.0207672|
|0-24 months |NIH-Crypto     |BANGLADESH   |0                  |NA             | 0.0069083| -0.0007205| 0.0145371|
|0-24 months |ResPak         |PAKISTAN     |0                  |NA             | 0.0161128| -0.0113951| 0.0436208|
|0-24 months |SAS-CompFeed   |INDIA        |0                  |NA             | 0.0251247|  0.0141754| 0.0360740|
|0-24 months |SAS-FoodSuppl  |INDIA        |0                  |NA             | 0.0240102| -0.0079825| 0.0560029|
|0-24 months |ZVITAMBO       |ZIMBABWE     |0                  |NA             | 0.0003803| -0.0005697| 0.0013302|


### Parameter: PAF


|agecat      |studyid        |country      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0                  |NA             | 0.1781727| -0.0961308| 0.3838326|
|0-24 months |CMIN           |BANGLADESH   |0                  |NA             | 0.2816770| -0.1460941| 0.5497857|
|0-24 months |COHORTS        |GUATEMALA    |0                  |NA             | 0.2407938|  0.0193934| 0.4122066|
|0-24 months |COHORTS        |INDIA        |0                  |NA             | 0.0878535|  0.0534102| 0.1210435|
|0-24 months |COHORTS        |PHILIPPINES  |0                  |NA             | 0.0655807|  0.0100848| 0.1179655|
|0-24 months |EE             |PAKISTAN     |0                  |NA             | 0.1375326| -0.2112715| 0.3858933|
|0-24 months |GMS-Nepal      |NEPAL        |0                  |NA             | 0.0105501| -0.0868482| 0.0992199|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |0                  |NA             | 0.2995819|  0.1224047| 0.4409889|
|0-24 months |IRC            |INDIA        |0                  |NA             | 0.0217644| -0.0911067| 0.1229595|
|0-24 months |JiVitA-3       |BANGLADESH   |0                  |NA             | 0.1490010|  0.1004021| 0.1949744|
|0-24 months |JiVitA-4       |BANGLADESH   |0                  |NA             | 0.2580116|  0.1838956| 0.3253967|
|0-24 months |Keneba         |GAMBIA       |0                  |NA             | 0.0973265|  0.0271568| 0.1624349|
|0-24 months |NIH-Birth      |BANGLADESH   |0                  |NA             | 0.0981823| -0.0482756| 0.2241781|
|0-24 months |NIH-Crypto     |BANGLADESH   |0                  |NA             | 0.1939639| -0.0356867| 0.3726924|
|0-24 months |ResPak         |PAKISTAN     |0                  |NA             | 0.1213201| -0.1086579| 0.3035918|
|0-24 months |SAS-CompFeed   |INDIA        |0                  |NA             | 0.3010559|  0.1614149| 0.4174439|
|0-24 months |SAS-FoodSuppl  |INDIA        |0                  |NA             | 0.1385204| -0.0654446| 0.3034391|
|0-24 months |ZVITAMBO       |ZIMBABWE     |0                  |NA             | 0.0215640| -0.0337132| 0.0738852|
