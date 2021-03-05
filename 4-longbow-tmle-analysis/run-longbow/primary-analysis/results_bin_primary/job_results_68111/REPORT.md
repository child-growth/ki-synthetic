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

|agecat      |studyid       |country                      |predfeed6 | pers_wast| n_cell|    n|
|:-----------|:-------------|:----------------------------|:---------|---------:|------:|----:|
|0-24 months |EE            |PAKISTAN                     |1         |         0|     42|   48|
|0-24 months |EE            |PAKISTAN                     |1         |         1|      1|   48|
|0-24 months |EE            |PAKISTAN                     |0         |         0|      5|   48|
|0-24 months |EE            |PAKISTAN                     |0         |         1|      0|   48|
|0-24 months |GMS-Nepal     |NEPAL                        |1         |         0|    366|  564|
|0-24 months |GMS-Nepal     |NEPAL                        |1         |         1|     54|  564|
|0-24 months |GMS-Nepal     |NEPAL                        |0         |         0|    121|  564|
|0-24 months |GMS-Nepal     |NEPAL                        |0         |         1|     23|  564|
|0-24 months |JiVitA-3      |BANGLADESH                   |1         |         0|   6861| 9436|
|0-24 months |JiVitA-3      |BANGLADESH                   |1         |         1|    410| 9436|
|0-24 months |JiVitA-3      |BANGLADESH                   |0         |         0|   2040| 9436|
|0-24 months |JiVitA-3      |BANGLADESH                   |0         |         1|    125| 9436|
|0-24 months |JiVitA-4      |BANGLADESH                   |1         |         0|   3378| 4657|
|0-24 months |JiVitA-4      |BANGLADESH                   |1         |         1|    262| 4657|
|0-24 months |JiVitA-4      |BANGLADESH                   |0         |         0|    912| 4657|
|0-24 months |JiVitA-4      |BANGLADESH                   |0         |         1|    105| 4657|
|0-24 months |LCNI-5        |MALAWI                       |1         |         0|     42|  240|
|0-24 months |LCNI-5        |MALAWI                       |1         |         1|      0|  240|
|0-24 months |LCNI-5        |MALAWI                       |0         |         0|    195|  240|
|0-24 months |LCNI-5        |MALAWI                       |0         |         1|      3|  240|
|0-24 months |MAL-ED        |BANGLADESH                   |1         |         0|     81|  233|
|0-24 months |MAL-ED        |BANGLADESH                   |1         |         1|      4|  233|
|0-24 months |MAL-ED        |BANGLADESH                   |0         |         0|    139|  233|
|0-24 months |MAL-ED        |BANGLADESH                   |0         |         1|      9|  233|
|0-24 months |MAL-ED        |BRAZIL                       |1         |         0|     29|  210|
|0-24 months |MAL-ED        |BRAZIL                       |1         |         1|      1|  210|
|0-24 months |MAL-ED        |BRAZIL                       |0         |         0|    179|  210|
|0-24 months |MAL-ED        |BRAZIL                       |0         |         1|      1|  210|
|0-24 months |MAL-ED        |INDIA                        |1         |         0|     11|  219|
|0-24 months |MAL-ED        |INDIA                        |1         |         1|      0|  219|
|0-24 months |MAL-ED        |INDIA                        |0         |         0|    190|  219|
|0-24 months |MAL-ED        |INDIA                        |0         |         1|     18|  219|
|0-24 months |MAL-ED        |NEPAL                        |1         |         0|     12|  225|
|0-24 months |MAL-ED        |NEPAL                        |1         |         1|      0|  225|
|0-24 months |MAL-ED        |NEPAL                        |0         |         0|    210|  225|
|0-24 months |MAL-ED        |NEPAL                        |0         |         1|      3|  225|
|0-24 months |MAL-ED        |PERU                         |1         |         0|     91|  271|
|0-24 months |MAL-ED        |PERU                         |1         |         1|      1|  271|
|0-24 months |MAL-ED        |PERU                         |0         |         0|    179|  271|
|0-24 months |MAL-ED        |PERU                         |0         |         1|      0|  271|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |1         |         0|      3|  237|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |1         |         1|      0|  237|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |0         |         0|    232|  237|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |0         |         1|      2|  237|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1         |         0|      1|  235|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1         |         1|      0|  235|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0         |         0|    234|  235|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0         |         1|      0|  235|
|0-24 months |SAS-FoodSuppl |INDIA                        |1         |         0|      0|  166|
|0-24 months |SAS-FoodSuppl |INDIA                        |1         |         1|      0|  166|
|0-24 months |SAS-FoodSuppl |INDIA                        |0         |         0|    136|  166|
|0-24 months |SAS-FoodSuppl |INDIA                        |0         |         1|     30|  166|


The following strata were considered:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/5f62a1e0-3859-401a-aeff-9d854455bf01/aeaddb3e-efe9-450e-b581-35b8d8bee2c5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5f62a1e0-3859-401a-aeff-9d854455bf01/aeaddb3e-efe9-450e-b581-35b8d8bee2c5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5f62a1e0-3859-401a-aeff-9d854455bf01/aeaddb3e-efe9-450e-b581-35b8d8bee2c5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5f62a1e0-3859-401a-aeff-9d854455bf01/aeaddb3e-efe9-450e-b581-35b8d8bee2c5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |NA             | 0.1285712| 0.0965274| 0.1606149|
|0-24 months |GMS-Nepal |NEPAL      |0                  |NA             | 0.1600378| 0.0999843| 0.2200913|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0564061| 0.0501211| 0.0626911|
|0-24 months |JiVitA-3  |BANGLADESH |0                  |NA             | 0.0572108| 0.0473550| 0.0670666|
|0-24 months |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0739965| 0.0637973| 0.0841958|
|0-24 months |JiVitA-4  |BANGLADESH |0                  |NA             | 0.0906654| 0.0721883| 0.1091424|


### Parameter: E(Y)


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |NA                 |NA             | 0.1365248| 0.1081636| 0.1648860|
|0-24 months |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.0566978| 0.0514863| 0.0619092|
|0-24 months |JiVitA-4  |BANGLADESH |NA                 |NA             | 0.0788061| 0.0697217| 0.0878905|


### Parameter: RR


|agecat      |studyid   |country    |intervention_level |baseline_level | estimate|  ci_lower| ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|--------:|---------:|--------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal |NEPAL      |0                  |1              | 1.244741| 0.7930649| 1.953662|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3  |BANGLADESH |0                  |1              | 1.014266| 0.8212216| 1.252690|
|0-24 months |JiVitA-4  |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4  |BANGLADESH |0                  |1              | 1.225265| 0.9628753| 1.559158|


### Parameter: PAR


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |NA             | 0.0079537| -0.0094576| 0.0253650|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0002917| -0.0024697| 0.0030530|
|0-24 months |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0048096|  0.0000806| 0.0095385|


### Parameter: PAF


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |NA             | 0.0582581| -0.0778370| 0.1771688|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0051442| -0.0448540| 0.0527499|
|0-24 months |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0610303| -0.0012988| 0.1194796|
