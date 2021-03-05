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

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country      |cleanck | ever_swasted| n_cell|   n|
|:---------------------------|:--------------|:------------|:-------|------------:|------:|---:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1       |            0|    141| 368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1       |            1|     22| 368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0       |            0|    172| 368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0       |            1|     33| 368|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1       |            0|      8| 589|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1       |            1|      1| 589|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0       |            0|    460| 589|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0       |            1|    120| 589|
|0-24 months (no birth wast) |IRC            |INDIA        |1       |            0|    179| 399|
|0-24 months (no birth wast) |IRC            |INDIA        |1       |            1|     51| 399|
|0-24 months (no birth wast) |IRC            |INDIA        |0       |            0|    144| 399|
|0-24 months (no birth wast) |IRC            |INDIA        |0       |            1|     25| 399|
|0-24 months (no birth wast) |MAL-ED         |PERU         |1       |            0|      1|   2|
|0-24 months (no birth wast) |MAL-ED         |PERU         |1       |            1|      0|   2|
|0-24 months (no birth wast) |MAL-ED         |PERU         |0       |            0|      1|   2|
|0-24 months (no birth wast) |MAL-ED         |PERU         |0       |            1|      0|   2|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1       |            0|      2|   3|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1       |            1|      0|   3|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0       |            0|      1|   3|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0       |            1|      0|   3|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |1       |            0|    352| 575|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |1       |            1|      6| 575|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |0       |            0|    212| 575|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |0       |            1|      5| 575|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1       |            0|    548| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1       |            1|     13| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0       |            0|    120| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0       |            1|      6| 687|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA

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




# Results Detail

## Results Plots
![](/tmp/204f57e5-9c05-498e-8406-db90fe46a665/4fde8aef-2455-405d-9c6c-7009b2df60ae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/204f57e5-9c05-498e-8406-db90fe46a665/4fde8aef-2455-405d-9c6c-7009b2df60ae/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/204f57e5-9c05-498e-8406-db90fe46a665/4fde8aef-2455-405d-9c6c-7009b2df60ae/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/204f57e5-9c05-498e-8406-db90fe46a665/4fde8aef-2455-405d-9c6c-7009b2df60ae/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid        |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |1                  |NA             | 0.1330785| 0.0807089| 0.1854481|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |0                  |NA             | 0.1640634| 0.1135512| 0.2145756|
|0-24 months (no birth wast) |IRC            |INDIA      |1                  |NA             | 0.2201760| 0.1658181| 0.2745339|
|0-24 months (no birth wast) |IRC            |INDIA      |0                  |NA             | 0.1528805| 0.0983338| 0.2074272|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |1                  |NA             | 0.0167598| 0.0034507| 0.0300689|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |0                  |NA             | 0.0230415| 0.0030618| 0.0430212|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |1                  |NA             | 0.0231729| 0.0107139| 0.0356319|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |0                  |NA             | 0.0476190| 0.0104077| 0.0848303|


### Parameter: E(Y)


|agecat                      |studyid        |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |NA                 |NA             | 0.1494565| 0.1129794| 0.1859337|
|0-24 months (no birth wast) |IRC            |INDIA      |NA                 |NA             | 0.1904762| 0.1518980| 0.2290544|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |NA                 |NA             | 0.0191304| 0.0079242| 0.0303367|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |NA                 |NA             | 0.0276565| 0.0153851| 0.0399279|


### Parameter: RR


|agecat                      |studyid        |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:--------------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |0                  |1              | 1.2328318| 0.7482559| 2.031222|
|0-24 months (no birth wast) |IRC            |INDIA      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |IRC            |INDIA      |0                  |1              | 0.6943558| 0.4491916| 1.073328|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |0                  |1              | 1.3748080| 0.4242272| 4.455389|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |0                  |1              | 2.0549451| 0.7958985| 5.305701|


### Parameter: PAR


|agecat                      |studyid        |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |1                  |NA             |  0.0163780| -0.0241777| 0.0569338|
|0-24 months (no birth wast) |IRC            |INDIA      |1                  |NA             | -0.0296998| -0.0628895| 0.0034899|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |1                  |NA             |  0.0023707| -0.0066927| 0.0114340|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |1                  |NA             |  0.0044836| -0.0027483| 0.0117155|


### Parameter: PAF


|agecat                      |studyid        |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA      |1                  |NA             |  0.1095839| -0.2065921| 0.3429090|
|0-24 months (no birth wast) |IRC            |INDIA      |1                  |NA             | -0.1559240| -0.3420756| 0.0044076|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH |1                  |NA             |  0.1239208| -0.4952816| 0.4867088|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH |1                  |NA             |  0.1621165| -0.1317354| 0.3796706|
