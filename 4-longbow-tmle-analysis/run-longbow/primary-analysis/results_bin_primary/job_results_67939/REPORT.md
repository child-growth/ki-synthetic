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

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid        |country                      |hdlvry | ever_stunted| n_cell|    n|
|:--------------------------|:--------------|:----------------------------|:------|------------:|------:|----:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |0      |            0|     27|  293|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |0      |            1|    260|  293|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |1      |            0|      1|  293|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |1      |            1|      5|  293|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |0      |            0|   2102| 4479|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |0      |            1|    686| 4479|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |1      |            0|   1017| 4479|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |1      |            1|    674| 4479|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |0      |            0|     29|  212|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |0      |            1|    112|  212|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |1      |            0|     12|  212|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |1      |            1|     59|  212|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |0      |            0|     66|  535|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |0      |            1|     61|  535|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |1      |            0|    168|  535|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |1      |            1|    240|  535|
|0-24 months (no birth st.) |IRC            |INDIA                        |0      |            0|    145|  360|
|0-24 months (no birth st.) |IRC            |INDIA                        |0      |            1|    208|  360|
|0-24 months (no birth st.) |IRC            |INDIA                        |1      |            0|      2|  360|
|0-24 months (no birth st.) |IRC            |INDIA                        |1      |            1|      5|  360|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |0      |            0|     25|  259|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |0      |            1|      9|  259|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |1      |            0|    137|  259|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |1      |            1|     88|  259|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |0      |            0|    541| 3194|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |0      |            1|    339| 3194|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |1      |            0|   1288| 3194|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |1      |            1|   1026| 3194|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |0      |            0|    320|  653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |0      |            1|    194|  653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |1      |            0|     76|  653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |1      |            1|     63|  653|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0      |            0|    299|  633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0      |            1|    169|  633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |1      |            0|     96|  633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |1      |            1|     69|  633|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |0      |            0|     57|  887|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |0      |            1|     56|  887|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |1      |            0|    296|  887|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |1      |            1|    478|  887|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA                        |0      |            0|     18|  257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA                        |0      |            1|     40|  257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA                        |1      |            0|     54|  257|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA                        |1      |            1|    145|  257|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |            0|   1465| 2129|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |            1|    626| 2129|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |            0|     23| 2129|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |            1|     15| 2129|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |0      |            0|    173|  289|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |0      |            1|    111|  289|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |1      |            0|      5|  289|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |1      |            1|      0|  289|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |0      |            0|   2530| 4368|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |0      |            1|    183| 4368|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |1      |            0|   1483| 4368|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |1      |            1|    172| 4368|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |0      |            0|     69|  212|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |0      |            1|     72|  212|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |1      |            0|     26|  212|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |1      |            1|     45|  212|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |0      |            0|    107|  535|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |0      |            1|     20|  535|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |1      |            0|    337|  535|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |1      |            1|     71|  535|
|0-6 months (no birth st.)  |IRC            |INDIA                        |0      |            0|    232|  360|
|0-6 months (no birth st.)  |IRC            |INDIA                        |0      |            1|    121|  360|
|0-6 months (no birth st.)  |IRC            |INDIA                        |1      |            0|      4|  360|
|0-6 months (no birth st.)  |IRC            |INDIA                        |1      |            1|      3|  360|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |0      |            0|     32|  258|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |0      |            1|      1|  258|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |1      |            0|    192|  258|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |1      |            1|     33|  258|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |0      |            0|    793| 3186|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |0      |            1|     85| 3186|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |1      |            0|   2081| 3186|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |1      |            1|    227| 3186|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |0      |            0|    416|  653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |0      |            1|     98|  653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |1      |            0|    113|  653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |1      |            1|     26|  653|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0      |            0|    396|  633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0      |            1|     72|  633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |1      |            0|    136|  633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |1      |            1|     29|  633|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |0      |            0|     92|  887|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |0      |            1|     21|  887|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |1      |            0|    615|  887|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |1      |            1|    159|  887|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA                        |0      |            0|     58|  257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA                        |0      |            1|      0|  257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA                        |1      |            0|    196|  257|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA                        |1      |            1|      3|  257|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |            0|   1807| 2129|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |            1|    284| 2129|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |            0|     29| 2129|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |            1|      9| 2129|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
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

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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
![](/tmp/1df07c92-d5af-4fc8-b891-8ceed833f4c7/07a6fd6e-d30c-46b5-91b9-5f8d4a700f47/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1df07c92-d5af-4fc8-b891-8ceed833f4c7/07a6fd6e-d30c-46b5-91b9-5f8d4a700f47/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1df07c92-d5af-4fc8-b891-8ceed833f4c7/07a6fd6e-d30c-46b5-91b9-5f8d4a700f47/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1df07c92-d5af-4fc8-b891-8ceed833f4c7/07a6fd6e-d30c-46b5-91b9-5f8d4a700f47/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                     |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |0                  |NA             | 0.2869584| 0.2678858| 0.3060310|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |1                  |NA             | 0.3424258| 0.3167555| 0.3680961|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |0                  |NA             | 0.7939519| 0.7268514| 0.8610524|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |1                  |NA             | 0.8256059| 0.7365523| 0.9146595|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |0                  |NA             | 0.5004292| 0.4055468| 0.5953115|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |1                  |NA             | 0.5807091| 0.5325487| 0.6288694|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |0                  |NA             | 0.2647059| 0.1432986| 0.3861132|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.3911111| 0.3201765| 0.4620457|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |0                  |NA             | 0.4062638| 0.3659144| 0.4466131|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |1                  |NA             | 0.4341709| 0.4095297| 0.4588121|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |0                  |NA             | 0.3788027| 0.3370173| 0.4205882|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.4487711| 0.3645048| 0.5330374|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0                  |NA             | 0.3616133| 0.3181324| 0.4050943|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.4112583| 0.3360678| 0.4864488|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |0                  |NA             | 0.4877764| 0.4242394| 0.5513133|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |1                  |NA             | 0.6144750| 0.5582987| 0.6706514|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA                        |0                  |NA             | 0.6831672| 0.5572790| 0.8090554|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA                        |1                  |NA             | 0.7279644| 0.6656893| 0.7902395|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.2993609| 0.2795816| 0.3191401|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.4007246| 0.2864612| 0.5149880|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |0                  |NA             | 0.0803771| 0.0682105| 0.0925437|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |1                  |NA             | 0.0904426| 0.0754511| 0.1054340|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |0                  |NA             | 0.5068821| 0.4233084| 0.5904557|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |1                  |NA             | 0.6405186| 0.5263280| 0.7547092|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |0                  |NA             | 0.1767123| 0.0944696| 0.2589551|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |1                  |NA             | 0.1692722| 0.1327494| 0.2057950|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |0                  |NA             | 0.1061818| 0.0807317| 0.1316320|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |1                  |NA             | 0.0947585| 0.0805520| 0.1089650|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |0                  |NA             | 0.1925524| 0.1583637| 0.2267412|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.1828763| 0.1176357| 0.2481170|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0                  |NA             | 0.1547103| 0.1220433| 0.1873774|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.1709790| 0.1145172| 0.2274407|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |0                  |NA             | 0.1860444| 0.1491863| 0.2229025|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |1                  |NA             | 0.2030385| 0.1718456| 0.2342315|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.1358202| 0.1210246| 0.1506157|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.2368421| 0.1403120| 0.3333722|


### Parameter: E(Y)


|agecat                     |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |NA                 |NA             | 0.3036392| 0.2901712| 0.3171072|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |NA                 |NA             | 0.8066038| 0.7533119| 0.8598956|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.5626168| 0.5205427| 0.6046909|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.3745174| 0.3090067| 0.4400281|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.4273638| 0.4069167| 0.4478110|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.3935681| 0.3560687| 0.4310676|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.3759874| 0.3382238| 0.4137509|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.6020293| 0.5512634| 0.6527952|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.7198444| 0.6648337| 0.7748550|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.3010803| 0.2815901| 0.3205706|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |NA                 |NA             | 0.0812729| 0.0731685| 0.0893773|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |NA                 |NA             | 0.5518868| 0.4847863| 0.6189873|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.1700935| 0.1382268| 0.2019601|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.0979284| 0.0852731| 0.1105838|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1898928| 0.1597870| 0.2199986|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1595577| 0.1310079| 0.1881074|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.2029312| 0.1748514| 0.2310111|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1376233| 0.1229861| 0.1522605|


### Parameter: RR


|agecat                     |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:--------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |1                  |0              | 1.1932942| 1.0806739| 1.317651|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |1                  |0              | 1.0398689| 0.9064423| 1.192936|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |1                  |0              | 1.1604222| 0.9431492| 1.427748|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |1                  |0              | 1.4775309| 0.9188173| 2.375986|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |1                  |0              | 1.0686922| 0.9521979| 1.199439|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |1                  |0              | 1.1847093| 0.9542237| 1.470867|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |1                  |0              | 1.1372874| 0.9157159| 1.412472|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |1                  |0              | 1.2597474| 1.0435404| 1.520749|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA                        |1                  |0              | 1.0655728| 0.8692979| 1.306164|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |0              | 1.3386004| 0.9988985| 1.793827|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |1                  |0              | 1.1252284| 0.8995704| 1.407493|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |1                  |0              | 1.2636442| 0.9900056| 1.612917|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |1                  |0              | 0.9578969| 0.5732257| 1.600707|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |1                  |0              | 0.8924172| 0.6768971| 1.176558|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |1                  |0              | 0.9497483| 0.6375750| 1.414770|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |1                  |0              | 1.1051555| 0.7492852| 1.630045|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |1                  |0              | 1.0913447| 0.8933411| 1.333235|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |0              | 1.7437917| 1.1436025| 2.658974|


### Parameter: PAR


|agecat                     |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |0                  |NA             |  0.0166808|  0.0028745| 0.0304871|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |0                  |NA             |  0.0126518| -0.0245405| 0.0498442|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |0                  |NA             |  0.0621877| -0.0217353| 0.1461106|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |0                  |NA             |  0.1098115| -0.0067521| 0.2263750|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |0                  |NA             |  0.0211000| -0.0143103| 0.0565103|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |0                  |NA             |  0.0147654| -0.0051350| 0.0346658|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0                  |NA             |  0.0143740| -0.0079946| 0.0367426|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |0                  |NA             |  0.1142529|  0.0252582| 0.2032477|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA                        |0                  |NA             |  0.0366771| -0.0744891| 0.1478434|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0017194| -0.0011550| 0.0045938|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |0                  |NA             |  0.0008958| -0.0081846| 0.0099763|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |0                  |NA             |  0.0450047| -0.0035391| 0.0935486|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |0                  |NA             | -0.0066189| -0.0820519| 0.0688141|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |0                  |NA             | -0.0082534| -0.0296612| 0.0131544|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |0                  |NA             | -0.0026596| -0.0184404| 0.0131212|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0                  |NA             |  0.0048473| -0.0122422| 0.0219369|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |0                  |NA             |  0.0168869| -0.0163893| 0.0501630|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0018031| -0.0007036| 0.0043098|


### Parameter: PAF


|agecat                     |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |0                  |NA             |  0.0549362|  0.0083433| 0.0993399|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |0                  |NA             |  0.0156853| -0.0316101| 0.0608125|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |0                  |NA             |  0.1105329| -0.0524019| 0.2482419|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |0                  |NA             |  0.2932080| -0.0879598| 0.5408333|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |0                  |NA             |  0.0493725| -0.0371617| 0.1286869|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |0                  |NA             |  0.0375168| -0.0143903| 0.0867677|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0                  |NA             |  0.0382300| -0.0231867| 0.0959602|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |0                  |NA             |  0.1897797|  0.0407038| 0.3156890|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA                        |0                  |NA             |  0.0509515| -0.1169857| 0.1936396|
|0-24 months (no birth st.) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0057109| -0.0038995| 0.0152293|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |0                  |NA             |  0.0110224| -0.1072666| 0.1166746|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |0                  |NA             |  0.0815470| -0.0115846| 0.1661045|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |0                  |NA             | -0.0389132| -0.5920407| 0.3220396|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |0                  |NA             | -0.0842800| -0.3260945| 0.1134394|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |0                  |NA             | -0.0140058| -0.1006078| 0.0657818|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0                  |NA             |  0.0303798| -0.0827706| 0.1317058|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |0                  |NA             |  0.0832147| -0.0928412| 0.2309081|
|0-6 months (no birth st.)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0131018| -0.0053045| 0.0311711|
