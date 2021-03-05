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

**Intervention Variable:** predfeed36

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid       |country                      |predfeed36 | ever_stunted| n_cell|    n|
|:--------------------------|:-------------|:----------------------------|:----------|------------:|------:|----:|
|0-24 months (no birth st.) |EE            |PAKISTAN                     |1          |            0|      0|    6|
|0-24 months (no birth st.) |EE            |PAKISTAN                     |1          |            1|      2|    6|
|0-24 months (no birth st.) |EE            |PAKISTAN                     |0          |            0|      2|    6|
|0-24 months (no birth st.) |EE            |PAKISTAN                     |0          |            1|      2|    6|
|0-24 months (no birth st.) |GMS-Nepal     |NEPAL                        |1          |            0|    132|  443|
|0-24 months (no birth st.) |GMS-Nepal     |NEPAL                        |1          |            1|    225|  443|
|0-24 months (no birth st.) |GMS-Nepal     |NEPAL                        |0          |            0|     22|  443|
|0-24 months (no birth st.) |GMS-Nepal     |NEPAL                        |0          |            1|     64|  443|
|0-24 months (no birth st.) |JiVitA-3      |BANGLADESH                   |1          |            0|   4980| 8764|
|0-24 months (no birth st.) |JiVitA-3      |BANGLADESH                   |1          |            1|   1855| 8764|
|0-24 months (no birth st.) |JiVitA-3      |BANGLADESH                   |0          |            0|   1431| 8764|
|0-24 months (no birth st.) |JiVitA-3      |BANGLADESH                   |0          |            1|    498| 8764|
|0-24 months (no birth st.) |JiVitA-4      |BANGLADESH                   |1          |            0|   1502| 3285|
|0-24 months (no birth st.) |JiVitA-4      |BANGLADESH                   |1          |            1|   1086| 3285|
|0-24 months (no birth st.) |JiVitA-4      |BANGLADESH                   |0          |            0|    389| 3285|
|0-24 months (no birth st.) |JiVitA-4      |BANGLADESH                   |0          |            1|    308| 3285|
|0-24 months (no birth st.) |LCNI-5        |MALAWI                       |1          |            0|     18|  175|
|0-24 months (no birth st.) |LCNI-5        |MALAWI                       |1          |            1|     12|  175|
|0-24 months (no birth st.) |LCNI-5        |MALAWI                       |0          |            0|     83|  175|
|0-24 months (no birth st.) |LCNI-5        |MALAWI                       |0          |            1|     62|  175|
|0-24 months (no birth st.) |MAL-ED        |BANGLADESH                   |1          |            0|     29|  209|
|0-24 months (no birth st.) |MAL-ED        |BANGLADESH                   |1          |            1|     45|  209|
|0-24 months (no birth st.) |MAL-ED        |BANGLADESH                   |0          |            0|     68|  209|
|0-24 months (no birth st.) |MAL-ED        |BANGLADESH                   |0          |            1|     67|  209|
|0-24 months (no birth st.) |MAL-ED        |BRAZIL                       |1          |            0|     18|  195|
|0-24 months (no birth st.) |MAL-ED        |BRAZIL                       |1          |            1|      3|  195|
|0-24 months (no birth st.) |MAL-ED        |BRAZIL                       |0          |            0|    146|  195|
|0-24 months (no birth st.) |MAL-ED        |BRAZIL                       |0          |            1|     28|  195|
|0-24 months (no birth st.) |MAL-ED        |INDIA                        |1          |            0|      5|  201|
|0-24 months (no birth st.) |MAL-ED        |INDIA                        |1          |            1|     10|  201|
|0-24 months (no birth st.) |MAL-ED        |INDIA                        |0          |            0|     87|  201|
|0-24 months (no birth st.) |MAL-ED        |INDIA                        |0          |            1|     99|  201|
|0-24 months (no birth st.) |MAL-ED        |NEPAL                        |1          |            0|      6|  208|
|0-24 months (no birth st.) |MAL-ED        |NEPAL                        |1          |            1|      2|  208|
|0-24 months (no birth st.) |MAL-ED        |NEPAL                        |0          |            0|    148|  208|
|0-24 months (no birth st.) |MAL-ED        |NEPAL                        |0          |            1|     52|  208|
|0-24 months (no birth st.) |MAL-ED        |PERU                         |1          |            0|     25|  251|
|0-24 months (no birth st.) |MAL-ED        |PERU                         |1          |            1|     45|  251|
|0-24 months (no birth st.) |MAL-ED        |PERU                         |0          |            0|     76|  251|
|0-24 months (no birth st.) |MAL-ED        |PERU                         |0          |            1|    105|  251|
|0-24 months (no birth st.) |MAL-ED        |SOUTH AFRICA                 |1          |            0|      3|  244|
|0-24 months (no birth st.) |MAL-ED        |SOUTH AFRICA                 |1          |            1|      1|  244|
|0-24 months (no birth st.) |MAL-ED        |SOUTH AFRICA                 |0          |            0|    108|  244|
|0-24 months (no birth st.) |MAL-ED        |SOUTH AFRICA                 |0          |            1|    132|  244|
|0-24 months (no birth st.) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1          |            0|      2|  210|
|0-24 months (no birth st.) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1          |            1|      2|  210|
|0-24 months (no birth st.) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0          |            0|     32|  210|
|0-24 months (no birth st.) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0          |            1|    174|  210|
|0-24 months (no birth st.) |SAS-FoodSuppl |INDIA                        |1          |            0|      0|   95|
|0-24 months (no birth st.) |SAS-FoodSuppl |INDIA                        |1          |            1|      0|   95|
|0-24 months (no birth st.) |SAS-FoodSuppl |INDIA                        |0          |            0|     25|   95|
|0-24 months (no birth st.) |SAS-FoodSuppl |INDIA                        |0          |            1|     70|   95|
|0-6 months (no birth st.)  |EE            |PAKISTAN                     |1          |            0|      0|    6|
|0-6 months (no birth st.)  |EE            |PAKISTAN                     |1          |            1|      2|    6|
|0-6 months (no birth st.)  |EE            |PAKISTAN                     |0          |            0|      3|    6|
|0-6 months (no birth st.)  |EE            |PAKISTAN                     |0          |            1|      1|    6|
|0-6 months (no birth st.)  |GMS-Nepal     |NEPAL                        |1          |            0|    294|  443|
|0-6 months (no birth st.)  |GMS-Nepal     |NEPAL                        |1          |            1|     63|  443|
|0-6 months (no birth st.)  |GMS-Nepal     |NEPAL                        |0          |            0|     60|  443|
|0-6 months (no birth st.)  |GMS-Nepal     |NEPAL                        |0          |            1|     26|  443|
|0-6 months (no birth st.)  |JiVitA-3      |BANGLADESH                   |1          |            0|   5885| 8761|
|0-6 months (no birth st.)  |JiVitA-3      |BANGLADESH                   |1          |            1|    948| 8761|
|0-6 months (no birth st.)  |JiVitA-3      |BANGLADESH                   |0          |            0|   1682| 8761|
|0-6 months (no birth st.)  |JiVitA-3      |BANGLADESH                   |0          |            1|    246| 8761|
|0-6 months (no birth st.)  |JiVitA-4      |BANGLADESH                   |1          |            0|   2348| 3257|
|0-6 months (no birth st.)  |JiVitA-4      |BANGLADESH                   |1          |            1|    229| 3257|
|0-6 months (no birth st.)  |JiVitA-4      |BANGLADESH                   |0          |            0|    608| 3257|
|0-6 months (no birth st.)  |JiVitA-4      |BANGLADESH                   |0          |            1|     72| 3257|
|0-6 months (no birth st.)  |LCNI-5        |MALAWI                       |1          |            0|     30|  175|
|0-6 months (no birth st.)  |LCNI-5        |MALAWI                       |1          |            1|      0|  175|
|0-6 months (no birth st.)  |LCNI-5        |MALAWI                       |0          |            0|    145|  175|
|0-6 months (no birth st.)  |LCNI-5        |MALAWI                       |0          |            1|      0|  175|
|0-6 months (no birth st.)  |MAL-ED        |BANGLADESH                   |1          |            0|     56|  209|
|0-6 months (no birth st.)  |MAL-ED        |BANGLADESH                   |1          |            1|     18|  209|
|0-6 months (no birth st.)  |MAL-ED        |BANGLADESH                   |0          |            0|    108|  209|
|0-6 months (no birth st.)  |MAL-ED        |BANGLADESH                   |0          |            1|     27|  209|
|0-6 months (no birth st.)  |MAL-ED        |BRAZIL                       |1          |            0|     20|  195|
|0-6 months (no birth st.)  |MAL-ED        |BRAZIL                       |1          |            1|      1|  195|
|0-6 months (no birth st.)  |MAL-ED        |BRAZIL                       |0          |            0|    155|  195|
|0-6 months (no birth st.)  |MAL-ED        |BRAZIL                       |0          |            1|     19|  195|
|0-6 months (no birth st.)  |MAL-ED        |INDIA                        |1          |            0|     14|  201|
|0-6 months (no birth st.)  |MAL-ED        |INDIA                        |1          |            1|      1|  201|
|0-6 months (no birth st.)  |MAL-ED        |INDIA                        |0          |            0|    142|  201|
|0-6 months (no birth st.)  |MAL-ED        |INDIA                        |0          |            1|     44|  201|
|0-6 months (no birth st.)  |MAL-ED        |NEPAL                        |1          |            0|      8|  208|
|0-6 months (no birth st.)  |MAL-ED        |NEPAL                        |1          |            1|      0|  208|
|0-6 months (no birth st.)  |MAL-ED        |NEPAL                        |0          |            0|    187|  208|
|0-6 months (no birth st.)  |MAL-ED        |NEPAL                        |0          |            1|     13|  208|
|0-6 months (no birth st.)  |MAL-ED        |PERU                         |1          |            0|     43|  251|
|0-6 months (no birth st.)  |MAL-ED        |PERU                         |1          |            1|     27|  251|
|0-6 months (no birth st.)  |MAL-ED        |PERU                         |0          |            0|    117|  251|
|0-6 months (no birth st.)  |MAL-ED        |PERU                         |0          |            1|     64|  251|
|0-6 months (no birth st.)  |MAL-ED        |SOUTH AFRICA                 |1          |            0|      3|  244|
|0-6 months (no birth st.)  |MAL-ED        |SOUTH AFRICA                 |1          |            1|      1|  244|
|0-6 months (no birth st.)  |MAL-ED        |SOUTH AFRICA                 |0          |            0|    167|  244|
|0-6 months (no birth st.)  |MAL-ED        |SOUTH AFRICA                 |0          |            1|     73|  244|
|0-6 months (no birth st.)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1          |            0|      3|  210|
|0-6 months (no birth st.)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1          |            1|      1|  210|
|0-6 months (no birth st.)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0          |            0|    143|  210|
|0-6 months (no birth st.)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0          |            1|     63|  210|
|0-6 months (no birth st.)  |SAS-FoodSuppl |INDIA                        |1          |            0|      0|   95|
|0-6 months (no birth st.)  |SAS-FoodSuppl |INDIA                        |1          |            1|      0|   95|
|0-6 months (no birth st.)  |SAS-FoodSuppl |INDIA                        |0          |            0|     95|   95|
|0-6 months (no birth st.)  |SAS-FoodSuppl |INDIA                        |0          |            1|      0|   95|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
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
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
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
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA

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
![](/tmp/f6afa420-2030-40c3-a31b-d991f5508c2c/0d6661d0-457f-4b44-8c32-15d6e5c86864/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f6afa420-2030-40c3-a31b-d991f5508c2c/0d6661d0-457f-4b44-8c32-15d6e5c86864/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f6afa420-2030-40c3-a31b-d991f5508c2c/0d6661d0-457f-4b44-8c32-15d6e5c86864/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f6afa420-2030-40c3-a31b-d991f5508c2c/0d6661d0-457f-4b44-8c32-15d6e5c86864/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                     |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL      |1                  |NA             | 0.6298770| 0.5796311| 0.6801228|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL      |0                  |NA             | 0.7467378| 0.6547004| 0.8387752|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH |1                  |NA             | 0.2712888| 0.2590000| 0.2835776|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH |0                  |NA             | 0.2585101| 0.2390403| 0.2779798|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH |1                  |NA             | 0.4196453| 0.3972235| 0.4420671|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH |0                  |NA             | 0.4472476| 0.4050400| 0.4894552|
|0-24 months (no birth st.) |LCNI-5    |MALAWI     |1                  |NA             | 0.4016468| 0.2160076| 0.5872860|
|0-24 months (no birth st.) |LCNI-5    |MALAWI     |0                  |NA             | 0.4277528| 0.3469073| 0.5085984|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH |1                  |NA             | 0.5874317| 0.4753968| 0.6994666|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH |0                  |NA             | 0.5100618| 0.4261729| 0.5939507|
|0-24 months (no birth st.) |MAL-ED    |INDIA      |1                  |NA             | 0.6666667| 0.4275118| 0.9058215|
|0-24 months (no birth st.) |MAL-ED    |INDIA      |0                  |NA             | 0.5322581| 0.4603730| 0.6041432|
|0-24 months (no birth st.) |MAL-ED    |PERU       |1                  |NA             | 0.6488730| 0.5346282| 0.7631178|
|0-24 months (no birth st.) |MAL-ED    |PERU       |0                  |NA             | 0.5775408| 0.5053833| 0.6496982|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL      |1                  |NA             | 0.1760989| 0.1363784| 0.2158194|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL      |0                  |NA             | 0.3188784| 0.2164452| 0.4213116|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH |1                  |NA             | 0.1374022| 0.1282878| 0.1465167|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH |0                  |NA             | 0.1320208| 0.1178133| 0.1462284|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0868420| 0.0731624| 0.1005217|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH |0                  |NA             | 0.1147565| 0.0896461| 0.1398668|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH |1                  |NA             | 0.2429577| 0.1422563| 0.3436590|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH |0                  |NA             | 0.1995634| 0.1317076| 0.2674192|
|0-6 months (no birth st.)  |MAL-ED    |PERU       |1                  |NA             | 0.3892299| 0.2729430| 0.5055168|
|0-6 months (no birth st.)  |MAL-ED    |PERU       |0                  |NA             | 0.3544815| 0.2844211| 0.4245420|


### Parameter: E(Y)


|agecat                     |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL      |NA                 |NA             | 0.6523702| 0.6079743| 0.6967661|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.2684847| 0.2575491| 0.2794203|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH |NA                 |NA             | 0.4243531| 0.4041458| 0.4445604|
|0-24 months (no birth st.) |LCNI-5    |MALAWI     |NA                 |NA             | 0.4228571| 0.3494545| 0.4962598|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH |NA                 |NA             | 0.5358852| 0.4681109| 0.6036595|
|0-24 months (no birth st.) |MAL-ED    |INDIA      |NA                 |NA             | 0.5422886| 0.4732417| 0.6113355|
|0-24 months (no birth st.) |MAL-ED    |PERU       |NA                 |NA             | 0.5976096| 0.5368226| 0.6583966|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL      |NA                 |NA             | 0.2009029| 0.1635496| 0.2382563|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.1362858| 0.1283472| 0.1442245|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH |NA                 |NA             | 0.0924163| 0.0803439| 0.1044888|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH |NA                 |NA             | 0.2153110| 0.1594513| 0.2711707|
|0-6 months (no birth st.)  |MAL-ED    |PERU       |NA                 |NA             | 0.3625498| 0.3029582| 0.4221414|


### Parameter: RR


|agecat                     |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:--------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL      |0                  |1              | 1.1855296| 1.0236535| 1.373004|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH |0                  |1              | 0.9528963| 0.8766196| 1.035810|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH |0                  |1              | 1.0657752| 0.9588073| 1.184677|
|0-24 months (no birth st.) |LCNI-5    |MALAWI     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |LCNI-5    |MALAWI     |0                  |1              | 1.0649974| 0.6467212| 1.753800|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH |0                  |1              | 0.8682912| 0.6773639| 1.113035|
|0-24 months (no birth st.) |MAL-ED    |INDIA      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED    |INDIA      |0                  |1              | 0.7983871| 0.5441800| 1.171344|
|0-24 months (no birth st.) |MAL-ED    |PERU       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED    |PERU       |0                  |1              | 0.8900675| 0.7170896| 1.104772|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL      |0                  |1              | 1.8107916| 1.2238651| 2.679189|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH |0                  |1              | 0.9608345| 0.8495924| 1.086642|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH |0                  |1              | 1.3214388| 1.0112521| 1.726771|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH |0                  |1              | 0.8213916| 0.4800067| 1.405572|
|0-6 months (no birth st.)  |MAL-ED    |PERU       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED    |PERU       |0                  |1              | 0.9107253| 0.6361574| 1.303798|


### Parameter: PAR


|agecat                     |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL      |1                  |NA             |  0.0224932|  0.0015798| 0.0434067|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH |1                  |NA             | -0.0028041| -0.0076055| 0.0019974|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0047078| -0.0051768| 0.0145925|
|0-24 months (no birth st.) |LCNI-5    |MALAWI     |1                  |NA             |  0.0212103| -0.1481665| 0.1905871|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH |1                  |NA             | -0.0515466| -0.1412031| 0.0381100|
|0-24 months (no birth st.) |MAL-ED    |INDIA      |1                  |NA             | -0.1243781| -0.3555187| 0.1067624|
|0-24 months (no birth st.) |MAL-ED    |PERU       |1                  |NA             | -0.0512634| -0.1493131| 0.0467862|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL      |1                  |NA             |  0.0248040|  0.0038512| 0.0457569|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH |1                  |NA             | -0.0011164| -0.0047271| 0.0024942|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0055743| -0.0000842| 0.0112328|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH |1                  |NA             | -0.0276467| -0.1073577| 0.0520644|
|0-6 months (no birth st.)  |MAL-ED    |PERU       |1                  |NA             | -0.0266801| -0.1251507| 0.0717905|


### Parameter: PAF


|agecat                     |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL      |1                  |NA             |  0.0344792|  0.0016437| 0.0662348|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH |1                  |NA             | -0.0104441| -0.0284574| 0.0072538|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0110941| -0.0124775| 0.0341169|
|0-24 months (no birth st.) |LCNI-5    |MALAWI     |1                  |NA             |  0.0501595| -0.4484388| 0.3771246|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH |1                  |NA             | -0.0961896| -0.2775452| 0.0594215|
|0-24 months (no birth st.) |MAL-ED    |INDIA      |1                  |NA             | -0.2293578| -0.7415161| 0.1321811|
|0-24 months (no birth st.) |MAL-ED    |PERU       |1                  |NA             | -0.0857808| -0.2633834| 0.0668549|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL      |1                  |NA             |  0.1234628|  0.0141111| 0.2206855|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH |1                  |NA             | -0.0081918| -0.0349806| 0.0179036|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0603171| -0.0040591| 0.1205659|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH |1                  |NA             | -0.1284034| -0.5651898| 0.1864921|
|0-6 months (no birth st.)  |MAL-ED    |PERU       |1                  |NA             | -0.0735903| -0.3826246| 0.1663709|
