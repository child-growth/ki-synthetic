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

**Intervention Variable:** trth2o

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
* W_nhh
* W_nchldlt5
* brthmon
* cleanck
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_brthmon
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid        |country                      |trth2o | ever_stunted| n_cell|   n|
|:--------------------------|:--------------|:----------------------------|:------|------------:|------:|---:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |1      |            0|     12| 102|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |1      |            1|     90| 102|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |0      |            0|      0| 102|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |0      |            1|      0| 102|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |1      |            0|      0|   4|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |1      |            1|      1|   4|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |0      |            0|      0|   4|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |0      |            1|      3|   4|
|0-24 months (no birth st.) |IRC            |INDIA                        |1      |            0|     43| 104|
|0-24 months (no birth st.) |IRC            |INDIA                        |1      |            1|     61| 104|
|0-24 months (no birth st.) |IRC            |INDIA                        |0      |            0|      0| 104|
|0-24 months (no birth st.) |IRC            |INDIA                        |0      |            1|      0| 104|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |1      |            0|     53| 114|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |1      |            1|     59| 114|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |0      |            0|      1| 114|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |0      |            1|      1| 114|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |1      |            0|      8|  89|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |1      |            1|      3|  89|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |0      |            0|     68|  89|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |0      |            1|     10|  89|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |1      |            0|      1|   6|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |1      |            1|      2|   6|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |0      |            0|      2|   6|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |0      |            1|      1|   6|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |1      |            0|     46|  73|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |1      |            1|     16|  73|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |0      |            0|      7|  73|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |0      |            1|      4|  73|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |1      |            0|      7|  42|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |1      |            1|     26|  42|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |0      |            0|      2|  42|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |0      |            1|      7|  42|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |1      |            0|      1|  10|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |1      |            1|      0|  10|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |0      |            0|      5|  10|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |0      |            1|      4|  10|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |            0|      0|  37|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |            1|      6|  37|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |            0|      3|  37|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |            1|     28|  37|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |1      |            0|    218| 653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |1      |            1|    141| 653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |0      |            0|    178| 653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |0      |            1|    116| 653|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |1      |            0|      9| 633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |1      |            1|      6| 633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0      |            0|    386| 633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0      |            1|    232| 633|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |1      |            0|     61| 102|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |1      |            1|     41| 102|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |0      |            0|      0| 102|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |0      |            1|      0| 102|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |1      |            0|      1|   4|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |1      |            1|      0|   4|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |0      |            0|      3|   4|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |0      |            1|      0|   4|
|0-6 months (no birth st.)  |IRC            |INDIA                        |1      |            0|     65| 104|
|0-6 months (no birth st.)  |IRC            |INDIA                        |1      |            1|     39| 104|
|0-6 months (no birth st.)  |IRC            |INDIA                        |0      |            0|      0| 104|
|0-6 months (no birth st.)  |IRC            |INDIA                        |0      |            1|      0| 104|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |1      |            0|     90| 114|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |1      |            1|     22| 114|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |0      |            0|      2| 114|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |0      |            1|      0| 114|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |1      |            0|     10|  89|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |1      |            1|      1|  89|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |0      |            0|     72|  89|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |0      |            1|      6|  89|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |1      |            0|      3|   6|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |1      |            1|      0|   6|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |0      |            0|      2|   6|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |0      |            1|      1|   6|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |1      |            0|     57|  73|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |1      |            1|      5|  73|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |0      |            0|     11|  73|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |0      |            1|      0|  73|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |1      |            0|     20|  42|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |1      |            1|     13|  42|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |0      |            0|      6|  42|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |0      |            1|      3|  42|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |1      |            0|      1|  10|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |1      |            1|      0|  10|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |0      |            0|      9|  10|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |0      |            1|      0|  10|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |            0|      3|  37|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |            1|      3|  37|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |            0|     19|  37|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |            1|     12|  37|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |1      |            0|    289| 653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |1      |            1|     70| 653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |0      |            0|    240| 653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |0      |            1|     54| 653|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |1      |            0|     14| 633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |1      |            1|      1| 633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0      |            0|    518| 633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0      |            1|    100| 633|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
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
![](/tmp/939b49c1-d8e8-45ce-bd8d-02ee025878ec/004bf8a7-463b-4605-8257-7891709f68f2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/939b49c1-d8e8-45ce-bd8d-02ee025878ec/004bf8a7-463b-4605-8257-7891709f68f2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/939b49c1-d8e8-45ce-bd8d-02ee025878ec/004bf8a7-463b-4605-8257-7891709f68f2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/939b49c1-d8e8-45ce-bd8d-02ee025878ec/004bf8a7-463b-4605-8257-7891709f68f2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                     |studyid    |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:----------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH |1                  |NA             | 0.3957561| 0.3452264| 0.4462859|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH |0                  |NA             | 0.3896134| 0.3333236| 0.4459032|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH |1                  |NA             | 0.4000000| 0.1648208| 0.6351792|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH |0                  |NA             | 0.3754045| 0.3371462| 0.4136629|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH |1                  |NA             | 0.1952338| 0.1541642| 0.2363035|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH |0                  |NA             | 0.1834700| 0.1392600| 0.2276799|


### Parameter: E(Y)


|agecat                     |studyid    |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:----------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH |NA                 |NA             | 0.3935681| 0.3560687| 0.4310676|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH |NA                 |NA             | 0.3759874| 0.3382238| 0.4137509|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH |NA                 |NA             | 0.1898928| 0.1597870| 0.2199986|


### Parameter: RR


|agecat                     |studyid    |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:--------------------------|:----------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH |0                  |1              | 0.9844784| 0.8147136| 1.189618|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH |0                  |1              | 0.9385113| 0.5167606| 1.704471|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH |0                  |1              | 0.9397450| 0.6834526| 1.292146|


### Parameter: PAR


|agecat                     |studyid    |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:----------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH |1                  |NA             | -0.0021880| -0.0358998| 0.0315238|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH |1                  |NA             | -0.0240126| -0.2563268| 0.2083016|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH |1                  |NA             | -0.0053410| -0.0324101| 0.0217281|


### Parameter: PAF


|agecat                     |studyid    |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:----------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH |1                  |NA             | -0.0055594| -0.0949697| 0.0765501|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH |1                  |NA             | -0.0638655| -0.9017140| 0.4048475|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH |1                  |NA             | -0.0281265| -0.1809616| 0.1049294|
