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

|agecat                     |studyid       |country                      |predfeed6 | ever_stunted| n_cell|     n|
|:--------------------------|:-------------|:----------------------------|:---------|------------:|------:|-----:|
|0-24 months (no birth st.) |EE            |PAKISTAN                     |1         |            0|      4|    27|
|0-24 months (no birth st.) |EE            |PAKISTAN                     |1         |            1|     19|    27|
|0-24 months (no birth st.) |EE            |PAKISTAN                     |0         |            0|      2|    27|
|0-24 months (no birth st.) |EE            |PAKISTAN                     |0         |            1|      2|    27|
|0-24 months (no birth st.) |GMS-Nepal     |NEPAL                        |1         |            0|    130|   471|
|0-24 months (no birth st.) |GMS-Nepal     |NEPAL                        |1         |            1|    222|   471|
|0-24 months (no birth st.) |GMS-Nepal     |NEPAL                        |0         |            0|     34|   471|
|0-24 months (no birth st.) |GMS-Nepal     |NEPAL                        |0         |            1|     85|   471|
|0-24 months (no birth st.) |JiVitA-3      |BANGLADESH                   |1         |            0|   6247| 10809|
|0-24 months (no birth st.) |JiVitA-3      |BANGLADESH                   |1         |            1|   2191| 10809|
|0-24 months (no birth st.) |JiVitA-3      |BANGLADESH                   |0         |            0|   1776| 10809|
|0-24 months (no birth st.) |JiVitA-3      |BANGLADESH                   |0         |            1|    595| 10809|
|0-24 months (no birth st.) |JiVitA-4      |BANGLADESH                   |1         |            0|   1565|  3397|
|0-24 months (no birth st.) |JiVitA-4      |BANGLADESH                   |1         |            1|   1125|  3397|
|0-24 months (no birth st.) |JiVitA-4      |BANGLADESH                   |0         |            0|    393|  3397|
|0-24 months (no birth st.) |JiVitA-4      |BANGLADESH                   |0         |            1|    314|  3397|
|0-24 months (no birth st.) |LCNI-5        |MALAWI                       |1         |            0|     18|   175|
|0-24 months (no birth st.) |LCNI-5        |MALAWI                       |1         |            1|     12|   175|
|0-24 months (no birth st.) |LCNI-5        |MALAWI                       |0         |            0|     83|   175|
|0-24 months (no birth st.) |LCNI-5        |MALAWI                       |0         |            1|     62|   175|
|0-24 months (no birth st.) |MAL-ED        |BANGLADESH                   |1         |            0|     32|   195|
|0-24 months (no birth st.) |MAL-ED        |BANGLADESH                   |1         |            1|     40|   195|
|0-24 months (no birth st.) |MAL-ED        |BANGLADESH                   |0         |            0|     58|   195|
|0-24 months (no birth st.) |MAL-ED        |BANGLADESH                   |0         |            1|     65|   195|
|0-24 months (no birth st.) |MAL-ED        |BRAZIL                       |1         |            0|     20|   185|
|0-24 months (no birth st.) |MAL-ED        |BRAZIL                       |1         |            1|      4|   185|
|0-24 months (no birth st.) |MAL-ED        |BRAZIL                       |0         |            0|    134|   185|
|0-24 months (no birth st.) |MAL-ED        |BRAZIL                       |0         |            1|     27|   185|
|0-24 months (no birth st.) |MAL-ED        |INDIA                        |1         |            0|      1|   185|
|0-24 months (no birth st.) |MAL-ED        |INDIA                        |1         |            1|      7|   185|
|0-24 months (no birth st.) |MAL-ED        |INDIA                        |0         |            0|     82|   185|
|0-24 months (no birth st.) |MAL-ED        |INDIA                        |0         |            1|     95|   185|
|0-24 months (no birth st.) |MAL-ED        |NEPAL                        |1         |            0|      6|   199|
|0-24 months (no birth st.) |MAL-ED        |NEPAL                        |1         |            1|      5|   199|
|0-24 months (no birth st.) |MAL-ED        |NEPAL                        |0         |            0|    140|   199|
|0-24 months (no birth st.) |MAL-ED        |NEPAL                        |0         |            1|     48|   199|
|0-24 months (no birth st.) |MAL-ED        |PERU                         |1         |            0|     29|   237|
|0-24 months (no birth st.) |MAL-ED        |PERU                         |1         |            1|     53|   237|
|0-24 months (no birth st.) |MAL-ED        |PERU                         |0         |            0|     61|   237|
|0-24 months (no birth st.) |MAL-ED        |PERU                         |0         |            1|     94|   237|
|0-24 months (no birth st.) |MAL-ED        |SOUTH AFRICA                 |1         |            0|      0|   212|
|0-24 months (no birth st.) |MAL-ED        |SOUTH AFRICA                 |1         |            1|      1|   212|
|0-24 months (no birth st.) |MAL-ED        |SOUTH AFRICA                 |0         |            0|     91|   212|
|0-24 months (no birth st.) |MAL-ED        |SOUTH AFRICA                 |0         |            1|    120|   212|
|0-24 months (no birth st.) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1         |            0|      0|   197|
|0-24 months (no birth st.) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1         |            1|      1|   197|
|0-24 months (no birth st.) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0         |            0|     28|   197|
|0-24 months (no birth st.) |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0         |            1|    168|   197|
|0-24 months (no birth st.) |SAS-FoodSuppl |INDIA                        |1         |            0|      0|    95|
|0-24 months (no birth st.) |SAS-FoodSuppl |INDIA                        |1         |            1|      0|    95|
|0-24 months (no birth st.) |SAS-FoodSuppl |INDIA                        |0         |            0|     25|    95|
|0-24 months (no birth st.) |SAS-FoodSuppl |INDIA                        |0         |            1|     70|    95|
|0-6 months (no birth st.)  |EE            |PAKISTAN                     |1         |            0|      8|    27|
|0-6 months (no birth st.)  |EE            |PAKISTAN                     |1         |            1|     15|    27|
|0-6 months (no birth st.)  |EE            |PAKISTAN                     |0         |            0|      3|    27|
|0-6 months (no birth st.)  |EE            |PAKISTAN                     |0         |            1|      1|    27|
|0-6 months (no birth st.)  |GMS-Nepal     |NEPAL                        |1         |            0|    286|   471|
|0-6 months (no birth st.)  |GMS-Nepal     |NEPAL                        |1         |            1|     66|   471|
|0-6 months (no birth st.)  |GMS-Nepal     |NEPAL                        |0         |            0|     88|   471|
|0-6 months (no birth st.)  |GMS-Nepal     |NEPAL                        |0         |            1|     31|   471|
|0-6 months (no birth st.)  |JiVitA-3      |BANGLADESH                   |1         |            0|   7290| 10806|
|0-6 months (no birth st.)  |JiVitA-3      |BANGLADESH                   |1         |            1|   1146| 10806|
|0-6 months (no birth st.)  |JiVitA-3      |BANGLADESH                   |0         |            0|   2061| 10806|
|0-6 months (no birth st.)  |JiVitA-3      |BANGLADESH                   |0         |            1|    309| 10806|
|0-6 months (no birth st.)  |JiVitA-4      |BANGLADESH                   |1         |            0|   2442|  3369|
|0-6 months (no birth st.)  |JiVitA-4      |BANGLADESH                   |1         |            1|    237|  3369|
|0-6 months (no birth st.)  |JiVitA-4      |BANGLADESH                   |0         |            0|    615|  3369|
|0-6 months (no birth st.)  |JiVitA-4      |BANGLADESH                   |0         |            1|     75|  3369|
|0-6 months (no birth st.)  |LCNI-5        |MALAWI                       |1         |            0|     30|   175|
|0-6 months (no birth st.)  |LCNI-5        |MALAWI                       |1         |            1|      0|   175|
|0-6 months (no birth st.)  |LCNI-5        |MALAWI                       |0         |            0|    145|   175|
|0-6 months (no birth st.)  |LCNI-5        |MALAWI                       |0         |            1|      0|   175|
|0-6 months (no birth st.)  |MAL-ED        |BANGLADESH                   |1         |            0|     60|   195|
|0-6 months (no birth st.)  |MAL-ED        |BANGLADESH                   |1         |            1|     12|   195|
|0-6 months (no birth st.)  |MAL-ED        |BANGLADESH                   |0         |            0|     95|   195|
|0-6 months (no birth st.)  |MAL-ED        |BANGLADESH                   |0         |            1|     28|   195|
|0-6 months (no birth st.)  |MAL-ED        |BRAZIL                       |1         |            0|     22|   185|
|0-6 months (no birth st.)  |MAL-ED        |BRAZIL                       |1         |            1|      2|   185|
|0-6 months (no birth st.)  |MAL-ED        |BRAZIL                       |0         |            0|    143|   185|
|0-6 months (no birth st.)  |MAL-ED        |BRAZIL                       |0         |            1|     18|   185|
|0-6 months (no birth st.)  |MAL-ED        |INDIA                        |1         |            0|      7|   185|
|0-6 months (no birth st.)  |MAL-ED        |INDIA                        |1         |            1|      1|   185|
|0-6 months (no birth st.)  |MAL-ED        |INDIA                        |0         |            0|    134|   185|
|0-6 months (no birth st.)  |MAL-ED        |INDIA                        |0         |            1|     43|   185|
|0-6 months (no birth st.)  |MAL-ED        |NEPAL                        |1         |            0|     11|   199|
|0-6 months (no birth st.)  |MAL-ED        |NEPAL                        |1         |            1|      0|   199|
|0-6 months (no birth st.)  |MAL-ED        |NEPAL                        |0         |            0|    176|   199|
|0-6 months (no birth st.)  |MAL-ED        |NEPAL                        |0         |            1|     12|   199|
|0-6 months (no birth st.)  |MAL-ED        |PERU                         |1         |            0|     54|   237|
|0-6 months (no birth st.)  |MAL-ED        |PERU                         |1         |            1|     28|   237|
|0-6 months (no birth st.)  |MAL-ED        |PERU                         |0         |            0|     95|   237|
|0-6 months (no birth st.)  |MAL-ED        |PERU                         |0         |            1|     60|   237|
|0-6 months (no birth st.)  |MAL-ED        |SOUTH AFRICA                 |1         |            0|      0|   212|
|0-6 months (no birth st.)  |MAL-ED        |SOUTH AFRICA                 |1         |            1|      1|   212|
|0-6 months (no birth st.)  |MAL-ED        |SOUTH AFRICA                 |0         |            0|    146|   212|
|0-6 months (no birth st.)  |MAL-ED        |SOUTH AFRICA                 |0         |            1|     65|   212|
|0-6 months (no birth st.)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1         |            0|      1|   197|
|0-6 months (no birth st.)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1         |            1|      0|   197|
|0-6 months (no birth st.)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0         |            0|    136|   197|
|0-6 months (no birth st.)  |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0         |            1|     60|   197|
|0-6 months (no birth st.)  |SAS-FoodSuppl |INDIA                        |1         |            0|      0|    95|
|0-6 months (no birth st.)  |SAS-FoodSuppl |INDIA                        |1         |            1|      0|    95|
|0-6 months (no birth st.)  |SAS-FoodSuppl |INDIA                        |0         |            0|     95|    95|
|0-6 months (no birth st.)  |SAS-FoodSuppl |INDIA                        |0         |            1|      0|    95|


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
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
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
![](/tmp/d3a1e7bc-677c-491e-97b8-a1fdcbfd31c6/b9f76894-6f9f-4b03-b58c-dc4ba006a8c1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d3a1e7bc-677c-491e-97b8-a1fdcbfd31c6/b9f76894-6f9f-4b03-b58c-dc4ba006a8c1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d3a1e7bc-677c-491e-97b8-a1fdcbfd31c6/b9f76894-6f9f-4b03-b58c-dc4ba006a8c1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d3a1e7bc-677c-491e-97b8-a1fdcbfd31c6/b9f76894-6f9f-4b03-b58c-dc4ba006a8c1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                     |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL      |1                  |NA             | 0.6279581| 0.5777145| 0.6782018|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL      |0                  |NA             | 0.7131016| 0.6356520| 0.7905512|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH |1                  |NA             | 0.2589604| 0.2479192| 0.2700017|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH |0                  |NA             | 0.2534253| 0.2364818| 0.2703689|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH |1                  |NA             | 0.4184076| 0.3965046| 0.4403106|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH |0                  |NA             | 0.4506911| 0.4094530| 0.4919291|
|0-24 months (no birth st.) |LCNI-5    |MALAWI     |1                  |NA             | 0.3601963| 0.1823677| 0.5380248|
|0-24 months (no birth st.) |LCNI-5    |MALAWI     |0                  |NA             | 0.4262308| 0.3453702| 0.5070913|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH |1                  |NA             | 0.5389554| 0.4254262| 0.6524846|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH |0                  |NA             | 0.5318780| 0.4448411| 0.6189150|
|0-24 months (no birth st.) |MAL-ED    |NEPAL      |1                  |NA             | 0.4545455| 0.1595511| 0.7495398|
|0-24 months (no birth st.) |MAL-ED    |NEPAL      |0                  |NA             | 0.2553191| 0.1928321| 0.3178062|
|0-24 months (no birth st.) |MAL-ED    |PERU       |1                  |NA             | 0.6550519| 0.5505807| 0.7595230|
|0-24 months (no birth st.) |MAL-ED    |PERU       |0                  |NA             | 0.6027607| 0.5251629| 0.6803586|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL      |1                  |NA             | 0.1865689| 0.1456611| 0.2274768|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL      |0                  |NA             | 0.2633462| 0.1822613| 0.3444312|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH |1                  |NA             | 0.1342225| 0.1259907| 0.1424543|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH |0                  |NA             | 0.1367615| 0.1237805| 0.1497425|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0869604| 0.0733774| 0.1005433|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH |0                  |NA             | 0.1142080| 0.0890237| 0.1393922|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH |1                  |NA             | 0.1751234| 0.0870066| 0.2632402|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH |0                  |NA             | 0.2200312| 0.1480578| 0.2920047|
|0-6 months (no birth st.)  |MAL-ED    |PERU       |1                  |NA             | 0.3493420| 0.2417805| 0.4569036|
|0-6 months (no birth st.)  |MAL-ED    |PERU       |0                  |NA             | 0.3804704| 0.3034523| 0.4574885|


### Parameter: E(Y)


|agecat                     |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL      |NA                 |NA             | 0.6518047| 0.6087352| 0.6948741|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.2577482| 0.2478575| 0.2676389|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH |NA                 |NA             | 0.4236091| 0.4038600| 0.4433581|
|0-24 months (no birth st.) |LCNI-5    |MALAWI     |NA                 |NA             | 0.4228571| 0.3494545| 0.4962598|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH |NA                 |NA             | 0.5384615| 0.4683114| 0.6086117|
|0-24 months (no birth st.) |MAL-ED    |NEPAL      |NA                 |NA             | 0.2663317| 0.2047606| 0.3279027|
|0-24 months (no birth st.) |MAL-ED    |PERU       |NA                 |NA             | 0.6202532| 0.5583342| 0.6821721|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL      |NA                 |NA             | 0.2059448| 0.1693853| 0.2425043|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.1346474| 0.1274032| 0.1418916|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH |NA                 |NA             | 0.0926091| 0.0806150| 0.1046031|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH |NA                 |NA             | 0.2051282| 0.1483073| 0.2619492|
|0-6 months (no birth st.)  |MAL-ED    |PERU       |NA                 |NA             | 0.3713080| 0.3096658| 0.4329502|


### Parameter: RR


|agecat                     |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:--------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL      |0                  |1              | 1.1355878| 0.9948636| 1.296218|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH |0                  |1              | 0.9786257| 0.9091030| 1.053465|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH |0                  |1              | 1.0771579| 0.9724557| 1.193133|
|0-24 months (no birth st.) |LCNI-5    |MALAWI     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |LCNI-5    |MALAWI     |0                  |1              | 1.1833292| 0.6970172| 2.008943|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH |0                  |1              | 0.9868683| 0.7583316| 1.284279|
|0-24 months (no birth st.) |MAL-ED    |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED    |NEPAL      |0                  |1              | 0.5617021| 0.2807235| 1.123915|
|0-24 months (no birth st.) |MAL-ED    |PERU       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED    |PERU       |0                  |1              | 0.9201725| 0.7496238| 1.129523|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL      |0                  |1              | 1.4115224| 0.9672808| 2.059790|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH |0                  |1              | 1.0189165| 0.9140984| 1.135754|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH |0                  |1              | 1.3133334| 1.0048510| 1.716518|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH |0                  |1              | 1.2564357| 0.6953176| 2.270373|
|0-6 months (no birth st.)  |MAL-ED    |PERU       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED    |PERU       |0                  |1              | 1.0891056| 0.7529357| 1.575368|


### Parameter: PAR


|agecat                     |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL      |1                  |NA             |  0.0238465|  0.0005669| 0.0471262|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH |1                  |NA             | -0.0012123| -0.0053297| 0.0029052|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0052014| -0.0045489| 0.0149517|
|0-24 months (no birth st.) |LCNI-5    |MALAWI     |1                  |NA             |  0.0626609| -0.1001172| 0.2254389|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH |1                  |NA             | -0.0004939| -0.0902125| 0.0892247|
|0-24 months (no birth st.) |MAL-ED    |NEPAL      |1                  |NA             | -0.1882138| -0.4731562| 0.0967286|
|0-24 months (no birth st.) |MAL-ED    |PERU       |1                  |NA             | -0.0347987| -0.1201485| 0.0505511|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL      |1                  |NA             |  0.0193759| -0.0033531| 0.0421048|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH |1                  |NA             |  0.0004249| -0.0028225| 0.0036723|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0056487| -0.0000593| 0.0113568|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH |1                  |NA             |  0.0300048| -0.0419779| 0.1019875|
|0-6 months (no birth st.)  |MAL-ED    |PERU       |1                  |NA             |  0.0219660| -0.0670161| 0.1109480|


### Parameter: PAF


|agecat                     |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal |NEPAL      |1                  |NA             |  0.0365854| -0.0000442| 0.0718733|
|0-24 months (no birth st.) |JiVitA-3  |BANGLADESH |1                  |NA             | -0.0047032| -0.0207905| 0.0111305|
|0-24 months (no birth st.) |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0122789| -0.0110078| 0.0350292|
|0-24 months (no birth st.) |LCNI-5    |MALAWI     |1                  |NA             |  0.1481845| -0.3393807| 0.4582648|
|0-24 months (no birth st.) |MAL-ED    |BANGLADESH |1                  |NA             | -0.0009172| -0.1822096| 0.1525739|
|0-24 months (no birth st.) |MAL-ED    |NEPAL      |1                  |NA             | -0.7066895| -2.2000739| 0.0897744|
|0-24 months (no birth st.) |MAL-ED    |PERU       |1                  |NA             | -0.0561040| -0.2033288| 0.0731082|
|0-6 months (no birth st.)  |GMS-Nepal |NEPAL      |1                  |NA             |  0.0940828| -0.0226714| 0.1975076|
|0-6 months (no birth st.)  |JiVitA-3  |BANGLADESH |1                  |NA             |  0.0031558| -0.0212744| 0.0270016|
|0-6 months (no birth st.)  |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0609952| -0.0037380| 0.1215537|
|0-6 months (no birth st.)  |MAL-ED    |BANGLADESH |1                  |NA             |  0.1462736| -0.2864529| 0.4334431|
|0-6 months (no birth st.)  |MAL-ED    |PERU       |1                  |NA             |  0.0591584| -0.2138605| 0.2707704|
