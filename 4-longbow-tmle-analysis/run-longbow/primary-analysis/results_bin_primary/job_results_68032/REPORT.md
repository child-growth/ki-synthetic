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

**Intervention Variable:** predfeed6

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

|agecat                      |studyid       |country                      |predfeed6 | ever_swasted| n_cell|     n|
|:---------------------------|:-------------|:----------------------------|:---------|------------:|------:|-----:|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |1         |            0|     38|    48|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |1         |            1|      5|    48|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |0         |            0|      4|    48|
|0-24 months (no birth wast) |EE            |PAKISTAN                     |0         |            1|      1|    48|
|0-24 months (no birth wast) |GMS-Nepal     |NEPAL                        |1         |            0|    330|   560|
|0-24 months (no birth wast) |GMS-Nepal     |NEPAL                        |1         |            1|     87|   560|
|0-24 months (no birth wast) |GMS-Nepal     |NEPAL                        |0         |            0|    104|   560|
|0-24 months (no birth wast) |GMS-Nepal     |NEPAL                        |0         |            1|     39|   560|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |1         |            0|  11773| 15666|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |1         |            1|    433| 15666|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |0         |            0|   3337| 15666|
|0-24 months (no birth wast) |JiVitA-3      |BANGLADESH                   |0         |            1|    123| 15666|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |1         |            0|   3533|  4722|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |1         |            1|    147|  4722|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |0         |            0|    991|  4722|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH                   |0         |            1|     51|  4722|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |1         |            0|     47|   271|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |1         |            1|      0|   271|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |0         |            0|    222|   271|
|0-24 months (no birth wast) |LCNI-5        |MALAWI                       |0         |            1|      2|   271|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |1         |            0|     80|   233|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |1         |            1|      5|   233|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |0         |            0|    141|   233|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH                   |0         |            1|      7|   233|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |1         |            0|     29|   210|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |1         |            1|      1|   210|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |0         |            0|    177|   210|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL                       |0         |            1|      3|   210|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |1         |            0|     11|   216|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |1         |            1|      0|   216|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |0         |            0|    193|   216|
|0-24 months (no birth wast) |MAL-ED        |INDIA                        |0         |            1|     12|   216|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |1         |            0|     12|   225|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |1         |            1|      0|   225|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |0         |            0|    210|   225|
|0-24 months (no birth wast) |MAL-ED        |NEPAL                        |0         |            1|      3|   225|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |1         |            0|     90|   271|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |1         |            1|      2|   271|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |0         |            0|    177|   271|
|0-24 months (no birth wast) |MAL-ED        |PERU                         |0         |            1|      2|   271|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |1         |            0|      3|   237|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |1         |            1|      0|   237|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |0         |            0|    223|   237|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA                 |0         |            1|     11|   237|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1         |            0|      1|   235|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1         |            1|      0|   235|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0         |            0|    226|   235|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0         |            1|      8|   235|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |1         |            0|      0|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |1         |            1|      0|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |0         |            0|    159|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA                        |0         |            1|     14|   173|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA

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
![](/tmp/941684a6-6edc-4e89-bd33-43924c51781c/1777d2ca-d6e8-4922-8381-7e26259a22a5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/941684a6-6edc-4e89-bd33-43924c51781c/1777d2ca-d6e8-4922-8381-7e26259a22a5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/941684a6-6edc-4e89-bd33-43924c51781c/1777d2ca-d6e8-4922-8381-7e26259a22a5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/941684a6-6edc-4e89-bd33-43924c51781c/1777d2ca-d6e8-4922-8381-7e26259a22a5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | 0.2090408| 0.1698981| 0.2481836|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |0                  |NA             | 0.2713895| 0.1975455| 0.3452335|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0354492| 0.0318156| 0.0390828|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |0                  |NA             | 0.0359710| 0.0286005| 0.0433414|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0403859| 0.0333998| 0.0473719|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |0                  |NA             | 0.0467696| 0.0330741| 0.0604651|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |NA             | 0.0588235| 0.0086951| 0.1089519|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |0                  |NA             | 0.0472973| 0.0130246| 0.0815700|


### Parameter: E(Y)


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |NA                 |NA             | 0.2250000| 0.1903834| 0.2596166|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.0354909| 0.0322227| 0.0387591|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |NA                 |NA             | 0.0419314| 0.0358274| 0.0480353|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |NA                 |NA             | 0.0515021| 0.0230618| 0.0799425|


### Parameter: RR


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |0                  |1              | 1.2982607| 0.9326826| 1.807132|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |0                  |1              | 1.0147181| 0.8069664| 1.275955|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |0                  |1              | 1.1580682| 0.8210268| 1.633469|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |0                  |1              | 0.8040541| 0.2627110| 2.460890|


### Parameter: PAR


|agecat                      |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             |  0.0159592| -0.0054357| 0.0373540|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             |  0.0000417| -0.0017743| 0.0018576|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0015455| -0.0018431| 0.0049341|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |NA             | -0.0073214| -0.0458998| 0.0312570|


### Parameter: PAF


|agecat                      |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             |  0.0709296| -0.0288772| 0.1610546|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             |  0.0011739| -0.0513187| 0.0510455|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0368582| -0.0476443| 0.1145447|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |NA             | -0.1421569| -1.1936993| 0.4053322|
