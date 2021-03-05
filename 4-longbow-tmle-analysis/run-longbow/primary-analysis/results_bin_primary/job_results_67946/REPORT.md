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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** impsan

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid    |country                      |impsan | ever_stunted| n_cell|     n|
|:--------------------------|:----------|:----------------------------|:------|------------:|------:|-----:|
|0-24 months (no birth st.) |COHORTS    |GUATEMALA                    |1      |            0|     16|   635|
|0-24 months (no birth st.) |COHORTS    |GUATEMALA                    |1      |            1|     49|   635|
|0-24 months (no birth st.) |COHORTS    |GUATEMALA                    |0      |            0|    104|   635|
|0-24 months (no birth st.) |COHORTS    |GUATEMALA                    |0      |            1|    466|   635|
|0-24 months (no birth st.) |COHORTS    |INDIA                        |1      |            0|   1423|  4715|
|0-24 months (no birth st.) |COHORTS    |INDIA                        |1      |            1|    389|  4715|
|0-24 months (no birth st.) |COHORTS    |INDIA                        |0      |            0|   1871|  4715|
|0-24 months (no birth st.) |COHORTS    |INDIA                        |0      |            1|   1032|  4715|
|0-24 months (no birth st.) |COHORTS    |PHILIPPINES                  |1      |            0|    102|  1115|
|0-24 months (no birth st.) |COHORTS    |PHILIPPINES                  |1      |            1|     75|  1115|
|0-24 months (no birth st.) |COHORTS    |PHILIPPINES                  |0      |            0|    207|  1115|
|0-24 months (no birth st.) |COHORTS    |PHILIPPINES                  |0      |            1|    731|  1115|
|0-24 months (no birth st.) |CONTENT    |PERU                         |1      |            0|    154|   195|
|0-24 months (no birth st.) |CONTENT    |PERU                         |1      |            1|     29|   195|
|0-24 months (no birth st.) |CONTENT    |PERU                         |0      |            0|      8|   195|
|0-24 months (no birth st.) |CONTENT    |PERU                         |0      |            1|      4|   195|
|0-24 months (no birth st.) |JiVitA-3   |BANGLADESH                   |1      |            0|  10052| 18353|
|0-24 months (no birth st.) |JiVitA-3   |BANGLADESH                   |1      |            1|   3074| 18353|
|0-24 months (no birth st.) |JiVitA-3   |BANGLADESH                   |0      |            0|   3669| 18353|
|0-24 months (no birth st.) |JiVitA-3   |BANGLADESH                   |0      |            1|   1558| 18353|
|0-24 months (no birth st.) |JiVitA-4   |BANGLADESH                   |1      |            0|   1830|  3875|
|0-24 months (no birth st.) |JiVitA-4   |BANGLADESH                   |1      |            1|   1217|  3875|
|0-24 months (no birth st.) |JiVitA-4   |BANGLADESH                   |0      |            0|    439|  3875|
|0-24 months (no birth st.) |JiVitA-4   |BANGLADESH                   |0      |            1|    389|  3875|
|0-24 months (no birth st.) |LCNI-5     |MALAWI                       |1      |            0|      2|   518|
|0-24 months (no birth st.) |LCNI-5     |MALAWI                       |1      |            1|      0|   518|
|0-24 months (no birth st.) |LCNI-5     |MALAWI                       |0      |            0|    293|   518|
|0-24 months (no birth st.) |LCNI-5     |MALAWI                       |0      |            1|    223|   518|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH                   |1      |            0|     82|   203|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH                   |1      |            1|     88|   203|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH                   |0      |            0|     11|   203|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH                   |0      |            1|     22|   203|
|0-24 months (no birth st.) |MAL-ED     |BRAZIL                       |1      |            0|    151|   185|
|0-24 months (no birth st.) |MAL-ED     |BRAZIL                       |1      |            1|     30|   185|
|0-24 months (no birth st.) |MAL-ED     |BRAZIL                       |0      |            0|      3|   185|
|0-24 months (no birth st.) |MAL-ED     |BRAZIL                       |0      |            1|      1|   185|
|0-24 months (no birth st.) |MAL-ED     |INDIA                        |1      |            0|     44|   196|
|0-24 months (no birth st.) |MAL-ED     |INDIA                        |1      |            1|     44|   196|
|0-24 months (no birth st.) |MAL-ED     |INDIA                        |0      |            0|     45|   196|
|0-24 months (no birth st.) |MAL-ED     |INDIA                        |0      |            1|     63|   196|
|0-24 months (no birth st.) |MAL-ED     |NEPAL                        |1      |            0|    153|   208|
|0-24 months (no birth st.) |MAL-ED     |NEPAL                        |1      |            1|     54|   208|
|0-24 months (no birth st.) |MAL-ED     |NEPAL                        |0      |            0|      1|   208|
|0-24 months (no birth st.) |MAL-ED     |NEPAL                        |0      |            1|      0|   208|
|0-24 months (no birth st.) |MAL-ED     |PERU                         |1      |            0|     26|   231|
|0-24 months (no birth st.) |MAL-ED     |PERU                         |1      |            1|     31|   231|
|0-24 months (no birth st.) |MAL-ED     |PERU                         |0      |            0|     63|   231|
|0-24 months (no birth st.) |MAL-ED     |PERU                         |0      |            1|    111|   231|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA                 |1      |            0|      3|   225|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA                 |1      |            1|      1|   225|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA                 |0      |            0|     93|   225|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA                 |0      |            1|    128|   225|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |1      |            0|      0|   202|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |1      |            1|      0|   202|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0      |            0|     30|   202|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0      |            1|    172|   202|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH                   |1      |            0|     92|   530|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH                   |1      |            1|    111|   530|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH                   |0      |            0|    119|   530|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH                   |0      |            1|    208|   530|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH                   |1      |            0|    341|   643|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH                   |1      |            1|    228|   643|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH                   |0      |            0|     50|   643|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH                   |0      |            1|     24|   643|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH                   |1      |            0|     48|    58|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH                   |1      |            1|      8|    58|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH                   |0      |            0|      2|    58|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH                   |0      |            1|      0|    58|
|0-6 months (no birth st.)  |COHORTS    |GUATEMALA                    |1      |            0|     48|   565|
|0-6 months (no birth st.)  |COHORTS    |GUATEMALA                    |1      |            1|     12|   565|
|0-6 months (no birth st.)  |COHORTS    |GUATEMALA                    |0      |            0|    379|   565|
|0-6 months (no birth st.)  |COHORTS    |GUATEMALA                    |0      |            1|    126|   565|
|0-6 months (no birth st.)  |COHORTS    |INDIA                        |1      |            0|   1641|  4569|
|0-6 months (no birth st.)  |COHORTS    |INDIA                        |1      |            1|     91|  4569|
|0-6 months (no birth st.)  |COHORTS    |INDIA                        |0      |            0|   2570|  4569|
|0-6 months (no birth st.)  |COHORTS    |INDIA                        |0      |            1|    267|  4569|
|0-6 months (no birth st.)  |COHORTS    |PHILIPPINES                  |1      |            0|    162|  1115|
|0-6 months (no birth st.)  |COHORTS    |PHILIPPINES                  |1      |            1|     15|  1115|
|0-6 months (no birth st.)  |COHORTS    |PHILIPPINES                  |0      |            0|    738|  1115|
|0-6 months (no birth st.)  |COHORTS    |PHILIPPINES                  |0      |            1|    200|  1115|
|0-6 months (no birth st.)  |CONTENT    |PERU                         |1      |            0|    176|   195|
|0-6 months (no birth st.)  |CONTENT    |PERU                         |1      |            1|      7|   195|
|0-6 months (no birth st.)  |CONTENT    |PERU                         |0      |            0|     12|   195|
|0-6 months (no birth st.)  |CONTENT    |PERU                         |0      |            1|      0|   195|
|0-6 months (no birth st.)  |JiVitA-3   |BANGLADESH                   |1      |            0|  11533| 18309|
|0-6 months (no birth st.)  |JiVitA-3   |BANGLADESH                   |1      |            1|   1559| 18309|
|0-6 months (no birth st.)  |JiVitA-3   |BANGLADESH                   |0      |            0|   4389| 18309|
|0-6 months (no birth st.)  |JiVitA-3   |BANGLADESH                   |0      |            1|    828| 18309|
|0-6 months (no birth st.)  |JiVitA-4   |BANGLADESH                   |1      |            0|   2632|  3651|
|0-6 months (no birth st.)  |JiVitA-4   |BANGLADESH                   |1      |            1|    243|  3651|
|0-6 months (no birth st.)  |JiVitA-4   |BANGLADESH                   |0      |            0|    707|  3651|
|0-6 months (no birth st.)  |JiVitA-4   |BANGLADESH                   |0      |            1|     69|  3651|
|0-6 months (no birth st.)  |LCNI-5     |MALAWI                       |1      |            0|      0|   174|
|0-6 months (no birth st.)  |LCNI-5     |MALAWI                       |1      |            1|      0|   174|
|0-6 months (no birth st.)  |LCNI-5     |MALAWI                       |0      |            0|    174|   174|
|0-6 months (no birth st.)  |LCNI-5     |MALAWI                       |0      |            1|      0|   174|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH                   |1      |            0|    133|   203|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH                   |1      |            1|     37|   203|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH                   |0      |            0|     27|   203|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH                   |0      |            1|      6|   203|
|0-6 months (no birth st.)  |MAL-ED     |BRAZIL                       |1      |            0|    161|   185|
|0-6 months (no birth st.)  |MAL-ED     |BRAZIL                       |1      |            1|     20|   185|
|0-6 months (no birth st.)  |MAL-ED     |BRAZIL                       |0      |            0|      4|   185|
|0-6 months (no birth st.)  |MAL-ED     |BRAZIL                       |0      |            1|      0|   185|
|0-6 months (no birth st.)  |MAL-ED     |INDIA                        |1      |            0|     76|   196|
|0-6 months (no birth st.)  |MAL-ED     |INDIA                        |1      |            1|     12|   196|
|0-6 months (no birth st.)  |MAL-ED     |INDIA                        |0      |            0|     78|   196|
|0-6 months (no birth st.)  |MAL-ED     |INDIA                        |0      |            1|     30|   196|
|0-6 months (no birth st.)  |MAL-ED     |NEPAL                        |1      |            0|    194|   208|
|0-6 months (no birth st.)  |MAL-ED     |NEPAL                        |1      |            1|     13|   208|
|0-6 months (no birth st.)  |MAL-ED     |NEPAL                        |0      |            0|      1|   208|
|0-6 months (no birth st.)  |MAL-ED     |NEPAL                        |0      |            1|      0|   208|
|0-6 months (no birth st.)  |MAL-ED     |PERU                         |1      |            0|     41|   231|
|0-6 months (no birth st.)  |MAL-ED     |PERU                         |1      |            1|     16|   231|
|0-6 months (no birth st.)  |MAL-ED     |PERU                         |0      |            0|    106|   231|
|0-6 months (no birth st.)  |MAL-ED     |PERU                         |0      |            1|     68|   231|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA                 |1      |            0|      3|   225|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA                 |1      |            1|      1|   225|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA                 |0      |            0|    150|   225|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA                 |0      |            1|     71|   225|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |1      |            0|      0|   202|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |1      |            1|      0|   202|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0      |            0|    139|   202|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0      |            1|     63|   202|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH                   |1      |            0|    161|   530|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH                   |1      |            1|     42|   530|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH                   |0      |            0|    248|   530|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH                   |0      |            1|     79|   530|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH                   |1      |            0|    460|   643|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH                   |1      |            1|    109|   643|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH                   |0      |            0|     63|   643|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH                   |0      |            1|     11|   643|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH                   |1      |            0|     51|    58|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH                   |1      |            1|      5|    58|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH                   |0      |            0|      2|    58|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH                   |0      |            1|      0|    58|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/8da1af6b-f023-4960-b760-0e8f5c609af6/db274611-af64-4e71-a1e1-97f1767c3e42/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8da1af6b-f023-4960-b760-0e8f5c609af6/db274611-af64-4e71-a1e1-97f1767c3e42/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8da1af6b-f023-4960-b760-0e8f5c609af6/db274611-af64-4e71-a1e1-97f1767c3e42/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8da1af6b-f023-4960-b760-0e8f5c609af6/db274611-af64-4e71-a1e1-97f1767c3e42/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                     |studyid    |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:----------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |COHORTS    |GUATEMALA   |1                  |NA             | 0.7461641| 0.6358549| 0.8564732|
|0-24 months (no birth st.) |COHORTS    |GUATEMALA   |0                  |NA             | 0.8139634| 0.7820739| 0.8458529|
|0-24 months (no birth st.) |COHORTS    |INDIA       |1                  |NA             | 0.2580435| 0.2352588| 0.2808282|
|0-24 months (no birth st.) |COHORTS    |INDIA       |0                  |NA             | 0.3258433| 0.3086242| 0.3430623|
|0-24 months (no birth st.) |COHORTS    |PHILIPPINES |1                  |NA             | 0.6443500| 0.5349989| 0.7537011|
|0-24 months (no birth st.) |COHORTS    |PHILIPPINES |0                  |NA             | 0.7671494| 0.7388346| 0.7954642|
|0-24 months (no birth st.) |JiVitA-3   |BANGLADESH  |1                  |NA             | 0.2469722| 0.2375385| 0.2564059|
|0-24 months (no birth st.) |JiVitA-3   |BANGLADESH  |0                  |NA             | 0.2824677| 0.2643934| 0.3005420|
|0-24 months (no birth st.) |JiVitA-4   |BANGLADESH  |1                  |NA             | 0.4112517| 0.3903139| 0.4321895|
|0-24 months (no birth st.) |JiVitA-4   |BANGLADESH  |0                  |NA             | 0.4272512| 0.3784294| 0.4760730|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH  |1                  |NA             | 0.5205144| 0.4455711| 0.5954577|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH  |0                  |NA             | 0.6509021| 0.4916203| 0.8101839|
|0-24 months (no birth st.) |MAL-ED     |INDIA       |1                  |NA             | 0.4971430| 0.3903572| 0.6039288|
|0-24 months (no birth st.) |MAL-ED     |INDIA       |0                  |NA             | 0.5774621| 0.4847972| 0.6701270|
|0-24 months (no birth st.) |MAL-ED     |PERU        |1                  |NA             | 0.5324094| 0.3972239| 0.6675948|
|0-24 months (no birth st.) |MAL-ED     |PERU        |0                  |NA             | 0.6454571| 0.5746413| 0.7162729|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH  |1                  |NA             | 0.5677671| 0.4991957| 0.6363385|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH  |0                  |NA             | 0.6195705| 0.5673112| 0.6718297|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH  |1                  |NA             | 0.4009885| 0.3608310| 0.4411460|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH  |0                  |NA             | 0.3250189| 0.2178666| 0.4321711|
|0-6 months (no birth st.)  |COHORTS    |GUATEMALA   |1                  |NA             | 0.2064631| 0.1063986| 0.3065276|
|0-6 months (no birth st.)  |COHORTS    |GUATEMALA   |0                  |NA             | 0.2507626| 0.2129706| 0.2885545|
|0-6 months (no birth st.)  |COHORTS    |INDIA       |1                  |NA             | 0.0661907| 0.0521011| 0.0802803|
|0-6 months (no birth st.)  |COHORTS    |INDIA       |0                  |NA             | 0.0863227| 0.0760502| 0.0965953|
|0-6 months (no birth st.)  |COHORTS    |PHILIPPINES |1                  |NA             | 0.0891794| 0.0478306| 0.1305281|
|0-6 months (no birth st.)  |COHORTS    |PHILIPPINES |0                  |NA             | 0.2132555| 0.1870417| 0.2394694|
|0-6 months (no birth st.)  |JiVitA-3   |BANGLADESH  |1                  |NA             | 0.1278455| 0.1205930| 0.1350981|
|0-6 months (no birth st.)  |JiVitA-3   |BANGLADESH  |0                  |NA             | 0.1439582| 0.1306493| 0.1572670|
|0-6 months (no birth st.)  |JiVitA-4   |BANGLADESH  |1                  |NA             | 0.0877545| 0.0745933| 0.1009157|
|0-6 months (no birth st.)  |JiVitA-4   |BANGLADESH  |0                  |NA             | 0.0722573| 0.0421203| 0.1023944|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH  |1                  |NA             | 0.2176471| 0.1554638| 0.2798304|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH  |0                  |NA             | 0.1818182| 0.0498993| 0.3137371|
|0-6 months (no birth st.)  |MAL-ED     |INDIA       |1                  |NA             | 0.1413087| 0.0697102| 0.2129073|
|0-6 months (no birth st.)  |MAL-ED     |INDIA       |0                  |NA             | 0.2823464| 0.1972964| 0.3673964|
|0-6 months (no birth st.)  |MAL-ED     |PERU        |1                  |NA             | 0.2879747| 0.1640281| 0.4119213|
|0-6 months (no birth st.)  |MAL-ED     |PERU        |0                  |NA             | 0.3902601| 0.3168671| 0.4636532|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH  |1                  |NA             | 0.2132936| 0.1562117| 0.2703755|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH  |0                  |NA             | 0.2359935| 0.1901857| 0.2818012|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH  |1                  |NA             | 0.1913756| 0.1590625| 0.2236888|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH  |0                  |NA             | 0.1501268| 0.0660791| 0.2341744|


### Parameter: E(Y)


|agecat                     |studyid    |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:----------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |COHORTS    |GUATEMALA   |NA                 |NA             | 0.8110236| 0.7805500| 0.8414972|
|0-24 months (no birth st.) |COHORTS    |INDIA       |NA                 |NA             | 0.3013786| 0.2882798| 0.3144773|
|0-24 months (no birth st.) |COHORTS    |PHILIPPINES |NA                 |NA             | 0.7228700| 0.6965868| 0.7491531|
|0-24 months (no birth st.) |JiVitA-3   |BANGLADESH  |NA                 |NA             | 0.2523838| 0.2446469| 0.2601207|
|0-24 months (no birth st.) |JiVitA-4   |BANGLADESH  |NA                 |NA             | 0.4144516| 0.3962595| 0.4326437|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH  |NA                 |NA             | 0.5418719| 0.4731628| 0.6105810|
|0-24 months (no birth st.) |MAL-ED     |INDIA       |NA                 |NA             | 0.5459184| 0.4760370| 0.6157998|
|0-24 months (no birth st.) |MAL-ED     |PERU        |NA                 |NA             | 0.6147186| 0.5518243| 0.6776129|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH  |NA                 |NA             | 0.6018868| 0.5601729| 0.6436007|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH  |NA                 |NA             | 0.3919129| 0.3541506| 0.4296752|
|0-6 months (no birth st.)  |COHORTS    |GUATEMALA   |NA                 |NA             | 0.2442478| 0.2087898| 0.2797057|
|0-6 months (no birth st.)  |COHORTS    |INDIA       |NA                 |NA             | 0.0783541| 0.0705612| 0.0861470|
|0-6 months (no birth st.)  |COHORTS    |PHILIPPINES |NA                 |NA             | 0.1928251| 0.1696580| 0.2159922|
|0-6 months (no birth st.)  |JiVitA-3   |BANGLADESH  |NA                 |NA             | 0.1303730| 0.1247937| 0.1359524|
|0-6 months (no birth st.)  |JiVitA-4   |BANGLADESH  |NA                 |NA             | 0.0854560| 0.0740923| 0.0968198|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH  |NA                 |NA             | 0.2118227| 0.1554757| 0.2681696|
|0-6 months (no birth st.)  |MAL-ED     |INDIA       |NA                 |NA             | 0.2142857| 0.1566940| 0.2718774|
|0-6 months (no birth st.)  |MAL-ED     |PERU        |NA                 |NA             | 0.3636364| 0.3014678| 0.4258049|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH  |NA                 |NA             | 0.2283019| 0.1925336| 0.2640702|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH  |NA                 |NA             | 0.1866252| 0.1564874| 0.2167630|


### Parameter: RR


|agecat                     |studyid    |country     |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:--------------------------|:----------|:-----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth st.) |COHORTS    |GUATEMALA   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |COHORTS    |GUATEMALA   |0                  |1              | 1.0908638| 0.9367494| 1.270333|
|0-24 months (no birth st.) |COHORTS    |INDIA       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |COHORTS    |INDIA       |0                  |1              | 1.2627455| 1.1407231| 1.397820|
|0-24 months (no birth st.) |COHORTS    |PHILIPPINES |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |COHORTS    |PHILIPPINES |0                  |1              | 1.1905788| 1.0014962| 1.415360|
|0-24 months (no birth st.) |JiVitA-3   |BANGLADESH  |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-3   |BANGLADESH  |0                  |1              | 1.1437227| 1.0661422| 1.226948|
|0-24 months (no birth st.) |JiVitA-4   |BANGLADESH  |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-4   |BANGLADESH  |0                  |1              | 1.0389045| 0.9172763| 1.176660|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH  |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH  |0                  |1              | 1.2504977| 0.9468287| 1.651560|
|0-24 months (no birth st.) |MAL-ED     |INDIA       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED     |INDIA       |0                  |1              | 1.1615613| 0.8901309| 1.515760|
|0-24 months (no birth st.) |MAL-ED     |PERU        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED     |PERU        |0                  |1              | 1.2123323| 0.9183620| 1.600403|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH  |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH  |0                  |1              | 1.0912404| 0.9439839| 1.261468|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH  |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH  |0                  |1              | 0.8105441| 0.5754470| 1.141689|
|0-6 months (no birth st.)  |COHORTS    |GUATEMALA   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |COHORTS    |GUATEMALA   |0                  |1              | 1.2145636| 0.7317183| 2.016028|
|0-6 months (no birth st.)  |COHORTS    |INDIA       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |COHORTS    |INDIA       |0                  |1              | 1.3041512| 1.0226194| 1.663190|
|0-6 months (no birth st.)  |COHORTS    |PHILIPPINES |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |COHORTS    |PHILIPPINES |0                  |1              | 2.3913108| 1.4803171| 3.862934|
|0-6 months (no birth st.)  |JiVitA-3   |BANGLADESH  |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |JiVitA-3   |BANGLADESH  |0                  |1              | 1.1260321| 1.0147943| 1.249463|
|0-6 months (no birth st.)  |JiVitA-4   |BANGLADESH  |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |JiVitA-4   |BANGLADESH  |0                  |1              | 0.8234032| 0.5326587| 1.272847|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH  |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH  |0                  |1              | 0.8353808| 0.3830278| 1.821959|
|0-6 months (no birth st.)  |MAL-ED     |INDIA       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED     |INDIA       |0                  |1              | 1.9980815| 1.1050183| 3.612908|
|0-6 months (no birth st.)  |MAL-ED     |PERU        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED     |PERU        |0                  |1              | 1.3551891| 0.8466848| 2.169092|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH  |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH  |0                  |1              | 1.1064254| 0.7973557| 1.535296|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH  |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH  |0                  |1              | 0.7844612| 0.4371784| 1.407616|


### Parameter: PAR


|agecat                     |studyid    |country     |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:----------|:-----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |COHORTS    |GUATEMALA   |1                  |NA             |  0.0648595| -0.0392130| 0.1689320|
|0-24 months (no birth st.) |COHORTS    |INDIA       |1                  |NA             |  0.0433351|  0.0238592| 0.0628110|
|0-24 months (no birth st.) |COHORTS    |PHILIPPINES |1                  |NA             |  0.0785200| -0.0259882| 0.1830281|
|0-24 months (no birth st.) |JiVitA-3   |BANGLADESH  |1                  |NA             |  0.0054116|  0.0002303| 0.0105929|
|0-24 months (no birth st.) |JiVitA-4   |BANGLADESH  |1                  |NA             |  0.0031999| -0.0070793| 0.0134792|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH  |1                  |NA             |  0.0213575| -0.0066731| 0.0493881|
|0-24 months (no birth st.) |MAL-ED     |INDIA       |1                  |NA             |  0.0487753| -0.0291103| 0.1266610|
|0-24 months (no birth st.) |MAL-ED     |PERU        |1                  |NA             |  0.0823093| -0.0353492| 0.1999677|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH  |1                  |NA             |  0.0341197| -0.0191834| 0.0874228|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH  |1                  |NA             | -0.0090756| -0.0219012| 0.0037501|
|0-6 months (no birth st.)  |COHORTS    |GUATEMALA   |1                  |NA             |  0.0377847| -0.0577029| 0.1332723|
|0-6 months (no birth st.)  |COHORTS    |INDIA       |1                  |NA             |  0.0121634| -0.0003475| 0.0246743|
|0-6 months (no birth st.)  |COHORTS    |PHILIPPINES |1                  |NA             |  0.1036458|  0.0623111| 0.1449804|
|0-6 months (no birth st.)  |JiVitA-3   |BANGLADESH  |1                  |NA             |  0.0025275| -0.0019811| 0.0070361|
|0-6 months (no birth st.)  |JiVitA-4   |BANGLADESH  |1                  |NA             | -0.0022984| -0.0084905| 0.0038936|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH  |1                  |NA             | -0.0058244| -0.0296024| 0.0179536|
|0-6 months (no birth st.)  |MAL-ED     |INDIA       |1                  |NA             |  0.0729770|  0.0109714| 0.1349826|
|0-6 months (no birth st.)  |MAL-ED     |PERU        |1                  |NA             |  0.0756617| -0.0350148| 0.1863382|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH  |1                  |NA             |  0.0150083| -0.0307286| 0.0607452|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH  |1                  |NA             | -0.0047504| -0.0149301| 0.0054292|


### Parameter: PAF


|agecat                     |studyid    |country     |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:----------|:-----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |COHORTS    |GUATEMALA   |1                  |NA             |  0.0799724| -0.0579926| 0.1999464|
|0-24 months (no birth st.) |COHORTS    |INDIA       |1                  |NA             |  0.1437895|  0.0767591| 0.2059534|
|0-24 months (no birth st.) |COHORTS    |PHILIPPINES |1                  |NA             |  0.1086225| -0.0486910| 0.2423375|
|0-24 months (no birth st.) |JiVitA-3   |BANGLADESH  |1                  |NA             |  0.0214419|  0.0006656| 0.0417862|
|0-24 months (no birth st.) |JiVitA-4   |BANGLADESH  |1                  |NA             |  0.0077209| -0.0173978| 0.0322194|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH  |1                  |NA             |  0.0394143| -0.0141368| 0.0901377|
|0-24 months (no birth st.) |MAL-ED     |INDIA       |1                  |NA             |  0.0893455| -0.0661970| 0.2221966|
|0-24 months (no birth st.) |MAL-ED     |PERU        |1                  |NA             |  0.1338975| -0.0814607| 0.3063699|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH  |1                  |NA             |  0.0566878| -0.0363752| 0.1413941|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH  |1                  |NA             | -0.0231571| -0.0564377| 0.0090750|
|0-6 months (no birth st.)  |COHORTS    |GUATEMALA   |1                  |NA             |  0.1546981| -0.3414782| 0.4673523|
|0-6 months (no birth st.)  |COHORTS    |INDIA       |1                  |NA             |  0.1552364| -0.0196300| 0.3001131|
|0-6 months (no birth st.)  |COHORTS    |PHILIPPINES |1                  |NA             |  0.5375117|  0.2782029| 0.7036627|
|0-6 months (no birth st.)  |JiVitA-3   |BANGLADESH  |1                  |NA             |  0.0193868| -0.0158424| 0.0533943|
|0-6 months (no birth st.)  |JiVitA-4   |BANGLADESH  |1                  |NA             | -0.0268962| -0.1019107| 0.0430116|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH  |1                  |NA             | -0.0274966| -0.1459932| 0.0787474|
|0-6 months (no birth st.)  |MAL-ED     |INDIA       |1                  |NA             |  0.3405592| -0.0044752| 0.5670753|
|0-6 months (no birth st.)  |MAL-ED     |PERU        |1                  |NA             |  0.2080696| -0.1632496| 0.4608606|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH  |1                  |NA             |  0.0657388| -0.1575845| 0.2459782|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH  |1                  |NA             | -0.0254544| -0.0814128| 0.0276083|
