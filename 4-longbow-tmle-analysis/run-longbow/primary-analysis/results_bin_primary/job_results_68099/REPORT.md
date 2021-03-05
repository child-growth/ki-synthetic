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

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
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

|agecat      |studyid        |country                      |feducyrs | pers_wast| n_cell|     n|
|:-----------|:--------------|:----------------------------|:--------|---------:|------:|-----:|
|0-24 months |COHORTS        |GUATEMALA                    |High     |         0|    182|   999|
|0-24 months |COHORTS        |GUATEMALA                    |High     |         1|      6|   999|
|0-24 months |COHORTS        |GUATEMALA                    |Low      |         0|    431|   999|
|0-24 months |COHORTS        |GUATEMALA                    |Low      |         1|     14|   999|
|0-24 months |COHORTS        |GUATEMALA                    |Medium   |         0|    351|   999|
|0-24 months |COHORTS        |GUATEMALA                    |Medium   |         1|     15|   999|
|0-24 months |COHORTS        |INDIA                        |High     |         0|    454|  1242|
|0-24 months |COHORTS        |INDIA                        |High     |         1|     33|  1242|
|0-24 months |COHORTS        |INDIA                        |Low      |         0|    366|  1242|
|0-24 months |COHORTS        |INDIA                        |Low      |         1|     38|  1242|
|0-24 months |COHORTS        |INDIA                        |Medium   |         0|    324|  1242|
|0-24 months |COHORTS        |INDIA                        |Medium   |         1|     27|  1242|
|0-24 months |COHORTS        |PHILIPPINES                  |High     |         0|    892|  2659|
|0-24 months |COHORTS        |PHILIPPINES                  |High     |         1|     31|  2659|
|0-24 months |COHORTS        |PHILIPPINES                  |Low      |         0|    736|  2659|
|0-24 months |COHORTS        |PHILIPPINES                  |Low      |         1|     44|  2659|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium   |         0|    897|  2659|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium   |         1|     59|  2659|
|0-24 months |GMS-Nepal      |NEPAL                        |High     |         0|    126|   596|
|0-24 months |GMS-Nepal      |NEPAL                        |High     |         1|     20|   596|
|0-24 months |GMS-Nepal      |NEPAL                        |Low      |         0|    221|   596|
|0-24 months |GMS-Nepal      |NEPAL                        |Low      |         1|     36|   596|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium   |         0|    169|   596|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium   |         1|     24|   596|
|0-24 months |JiVitA-3       |BANGLADESH                   |High     |         0|   3853| 15189|
|0-24 months |JiVitA-3       |BANGLADESH                   |High     |         1|    178| 15189|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low      |         0|   5568| 15189|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low      |         1|    367| 15189|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium   |         0|   4914| 15189|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium   |         1|    309| 15189|
|0-24 months |JiVitA-4       |BANGLADESH                   |High     |         0|   1133|  5132|
|0-24 months |JiVitA-4       |BANGLADESH                   |High     |         1|     77|  5132|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low      |         0|   1729|  5132|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low      |         1|    167|  5132|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium   |         0|   1854|  5132|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium   |         1|    172|  5132|
|0-24 months |LCNI-5         |MALAWI                       |High     |         0|    214|   712|
|0-24 months |LCNI-5         |MALAWI                       |High     |         1|      2|   712|
|0-24 months |LCNI-5         |MALAWI                       |Low      |         0|    258|   712|
|0-24 months |LCNI-5         |MALAWI                       |Low      |         1|      1|   712|
|0-24 months |LCNI-5         |MALAWI                       |Medium   |         0|    234|   712|
|0-24 months |LCNI-5         |MALAWI                       |Medium   |         1|      3|   712|
|0-24 months |MAL-ED         |BANGLADESH                   |High     |         0|     48|   138|
|0-24 months |MAL-ED         |BANGLADESH                   |High     |         1|      3|   138|
|0-24 months |MAL-ED         |BANGLADESH                   |Low      |         0|     38|   138|
|0-24 months |MAL-ED         |BANGLADESH                   |Low      |         1|      0|   138|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium   |         0|     45|   138|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium   |         1|      4|   138|
|0-24 months |MAL-ED         |INDIA                        |High     |         0|     43|   139|
|0-24 months |MAL-ED         |INDIA                        |High     |         1|      0|   139|
|0-24 months |MAL-ED         |INDIA                        |Low      |         0|     51|   139|
|0-24 months |MAL-ED         |INDIA                        |Low      |         1|      4|   139|
|0-24 months |MAL-ED         |INDIA                        |Medium   |         0|     32|   139|
|0-24 months |MAL-ED         |INDIA                        |Medium   |         1|      9|   139|
|0-24 months |MAL-ED         |NEPAL                        |High     |         0|     40|    96|
|0-24 months |MAL-ED         |NEPAL                        |High     |         1|      1|    96|
|0-24 months |MAL-ED         |NEPAL                        |Low      |         0|     27|    96|
|0-24 months |MAL-ED         |NEPAL                        |Low      |         1|      0|    96|
|0-24 months |MAL-ED         |NEPAL                        |Medium   |         0|     27|    96|
|0-24 months |MAL-ED         |NEPAL                        |Medium   |         1|      1|    96|
|0-24 months |MAL-ED         |PERU                         |High     |         0|    110|   234|
|0-24 months |MAL-ED         |PERU                         |High     |         1|      1|   234|
|0-24 months |MAL-ED         |PERU                         |Low      |         0|     63|   234|
|0-24 months |MAL-ED         |PERU                         |Low      |         1|      0|   234|
|0-24 months |MAL-ED         |PERU                         |Medium   |         0|     60|   234|
|0-24 months |MAL-ED         |PERU                         |Medium   |         1|      0|   234|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High     |         0|     38|    99|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High     |         1|      0|    99|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |         0|     35|    99|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |         1|      1|    99|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |         0|     25|    99|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |         1|      0|    99|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |         0|    129|   206|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |         1|      0|   206|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |         0|     58|   206|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |         1|      0|   206|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |         0|     19|   206|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |         1|      0|   206|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High     |         0|    282|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High     |         1|      4|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low      |         0|    215|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low      |         1|     14|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |         0|    207|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |         1|      8|   730|
|0-24 months |PROBIT         |BELARUS                      |High     |         0|   2617| 16012|
|0-24 months |PROBIT         |BELARUS                      |High     |         1|     17| 16012|
|0-24 months |PROBIT         |BELARUS                      |Low      |         0|   6258| 16012|
|0-24 months |PROBIT         |BELARUS                      |Low      |         1|     56| 16012|
|0-24 months |PROBIT         |BELARUS                      |Medium   |         0|   7006| 16012|
|0-24 months |PROBIT         |BELARUS                      |Medium   |         1|     58| 16012|
|0-24 months |PROVIDE        |BANGLADESH                   |High     |         0|    216|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |High     |         1|      4|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |Low      |         0|    208|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |Low      |         1|      8|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium   |         0|    202|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium   |         1|      3|   641|
|0-24 months |SAS-CompFeed   |INDIA                        |High     |         0|    345|  1363|
|0-24 months |SAS-CompFeed   |INDIA                        |High     |         1|     17|  1363|
|0-24 months |SAS-CompFeed   |INDIA                        |Low      |         0|    501|  1363|
|0-24 months |SAS-CompFeed   |INDIA                        |Low      |         1|     62|  1363|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium   |         0|    403|  1363|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium   |         1|     35|  1363|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High     |         0|     86|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High     |         1|     13|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low      |         0|    107|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low      |         1|     24|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |         0|    117|   375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |         1|     28|   375|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |         0|    393|  2155|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |         1|      9|  2155|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |         0|   1123|  2155|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |         1|     29|  2155|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |         0|    581|  2155|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |         1|     20|  2155|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High     |         0|    611|  9246|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High     |         1|      9|  9246|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |         0|   1568|  9246|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |         1|     45|  9246|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |         0|   6904|  9246|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |         1|    109|  9246|


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

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH

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
![](/tmp/7517531b-78e2-4de5-aa89-1f1d4471781d/c2e86d3a-fc35-499e-899a-83835c64a9cb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7517531b-78e2-4de5-aa89-1f1d4471781d/c2e86d3a-fc35-499e-899a-83835c64a9cb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7517531b-78e2-4de5-aa89-1f1d4471781d/c2e86d3a-fc35-499e-899a-83835c64a9cb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7517531b-78e2-4de5-aa89-1f1d4471781d/c2e86d3a-fc35-499e-899a-83835c64a9cb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             | 0.0319149| 0.0067764| 0.0570534|
|0-24 months |COHORTS        |GUATEMALA                    |Low                |NA             | 0.0314607| 0.0152340| 0.0476873|
|0-24 months |COHORTS        |GUATEMALA                    |Medium             |NA             | 0.0409836| 0.0206627| 0.0613045|
|0-24 months |COHORTS        |INDIA                        |High               |NA             | 0.0666771| 0.0445453| 0.0888089|
|0-24 months |COHORTS        |INDIA                        |Low                |NA             | 0.0944448| 0.0657783| 0.1231113|
|0-24 months |COHORTS        |INDIA                        |Medium             |NA             | 0.0773238| 0.0491137| 0.1055339|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             | 0.0348668| 0.0231471| 0.0465865|
|0-24 months |COHORTS        |PHILIPPINES                  |Low                |NA             | 0.0550639| 0.0388577| 0.0712701|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium             |NA             | 0.0609315| 0.0456383| 0.0762247|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             | 0.1424297| 0.0858724| 0.1989869|
|0-24 months |GMS-Nepal      |NEPAL                        |Low                |NA             | 0.1371428| 0.0949093| 0.1793762|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium             |NA             | 0.1255385| 0.0779897| 0.1730874|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             | 0.0457074| 0.0341215| 0.0572934|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low                |NA             | 0.0566220| 0.0484443| 0.0647997|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium             |NA             | 0.0623832| 0.0532784| 0.0714880|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             | 0.0858486| 0.0601460| 0.1115512|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low                |NA             | 0.0777633| 0.0609173| 0.0946094|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium             |NA             | 0.0849865| 0.0710250| 0.0989480|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             | 0.0064316| 0.0014647| 0.0113985|
|0-24 months |PROBIT         |BELARUS                      |Low                |NA             | 0.0090873| 0.0046878| 0.0134868|
|0-24 months |PROBIT         |BELARUS                      |Medium             |NA             | 0.0081903| 0.0031104| 0.0132702|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             | 0.0634408| 0.0026712| 0.1242103|
|0-24 months |SAS-CompFeed   |INDIA                        |Low                |NA             | 0.0900586| 0.0713513| 0.1087659|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium             |NA             | 0.0810126| 0.0564133| 0.1056119|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             | 0.1362158| 0.0672897| 0.2051419|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low                |NA             | 0.1802951| 0.1130987| 0.2474916|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |NA             | 0.2000799| 0.1335644| 0.2665954|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | 0.0223881| 0.0079228| 0.0368534|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |NA             | 0.0251736| 0.0161255| 0.0342217|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |NA             | 0.0332779| 0.0189349| 0.0476209|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             | 0.0145161| 0.0051010| 0.0239312|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |NA             | 0.0278983| 0.0198612| 0.0359354|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |NA             | 0.0155426| 0.0126474| 0.0184378|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.0350350| 0.0236276| 0.0464425|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.0789050| 0.0639058| 0.0939041|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.0503949| 0.0420785| 0.0587113|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.1342282| 0.1068369| 0.1616195|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0562249| 0.0520204| 0.0604294|
|0-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.0810600| 0.0722782| 0.0898418|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0081814| 0.0045192| 0.0118436|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.0836390| 0.0602327| 0.1070453|
|0-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.1733333| 0.1349698| 0.2116969|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0269142| 0.0200799| 0.0337484|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0176292| 0.0149467| 0.0203118|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |COHORTS        |GUATEMALA                    |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA                    |Low                |High           | 0.9857678| 0.3844846| 2.527379|
|0-24 months |COHORTS        |GUATEMALA                    |Medium             |High           | 1.2841530| 0.5062921| 3.257110|
|0-24 months |COHORTS        |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |INDIA                        |Low                |High           | 1.4164492| 0.9031441| 2.221493|
|0-24 months |COHORTS        |INDIA                        |Medium             |High           | 1.1596749| 0.7083645| 1.898522|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |Low                |High           | 1.5792635| 1.0102723| 2.468714|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium             |High           | 1.7475513| 1.1489004| 2.658138|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal      |NEPAL                        |Low                |High           | 0.9628806| 0.5833890| 1.589229|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium             |High           | 0.8814072| 0.5092225| 1.525617|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low                |High           | 1.2387909| 0.9264963| 1.656351|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium             |High           | 1.3648372| 1.0244772| 1.818275|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low                |High           | 0.9058198| 0.6325915| 1.297061|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium             |High           | 0.9899581| 0.7012580| 1.397513|
|0-24 months |PROBIT         |BELARUS                      |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |Low                |High           | 1.4129065| 0.5931083| 3.365835|
|0-24 months |PROBIT         |BELARUS                      |Medium             |High           | 1.2734435| 0.4737046| 3.423353|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA                        |Low                |High           | 1.4195700| 0.5777883| 3.487746|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium             |High           | 1.2769796| 0.5149392| 3.166737|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low                |High           | 1.3235993| 0.7082396| 2.473619|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |High           | 1.4688451| 0.8013843| 2.692224|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |High           | 1.1244213| 0.5368195| 2.355211|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |High           | 1.4864115| 0.6836450| 3.231823|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |High           | 1.9218847| 0.9451687| 3.907917|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |High           | 1.0707100| 0.5452590| 2.102524|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             |  0.0031201| -0.0197759| 0.0260162|
|0-24 months |COHORTS        |INDIA                        |High               |NA             |  0.0122279| -0.0058825| 0.0303382|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0155281|  0.0049526| 0.0261036|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             | -0.0082015| -0.0572007| 0.0407978|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.0105175| -0.0004832| 0.0215181|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             | -0.0047886| -0.0285925| 0.0190154|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.0017498| -0.0035461| 0.0070456|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             |  0.0201982| -0.0262224| 0.0666189|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.0371175| -0.0249092| 0.0991443|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0045261| -0.0088113| 0.0178635|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0031131| -0.0060494| 0.0122757|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             |  0.0890578| -0.8653949| 0.5551528|
|0-24 months |COHORTS        |INDIA                        |High               |NA             |  0.1549694| -0.1067299| 0.3547869|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.3081283|  0.0718172| 0.4842756|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             | -0.0611010| -0.4967917| 0.2477676|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.1870606| -0.0339247| 0.3608137|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             | -0.0590743| -0.3972347| 0.1972441|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.2138711| -0.7123295| 0.6390890|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             |  0.2414930| -0.6486777| 0.6510338|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.2141397| -0.2351118| 0.4999834|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.1681678| -0.5060612| 0.5405599|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.1765882| -0.5466324| 0.5616237|
