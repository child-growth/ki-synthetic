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

|agecat      |studyid        |country      |cleanck | pers_wast| n_cell|   n|
|:-----------|:--------------|:------------|:-------|---------:|------:|---:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1       |         0|    157| 373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1       |         1|      6| 373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0       |         0|    193| 373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0       |         1|     17| 373|
|0-24 months |GMS-Nepal      |NEPAL        |1       |         0|      8| 534|
|0-24 months |GMS-Nepal      |NEPAL        |1       |         1|      1| 534|
|0-24 months |GMS-Nepal      |NEPAL        |0       |         0|    454| 534|
|0-24 months |GMS-Nepal      |NEPAL        |0       |         1|     71| 534|
|0-24 months |IRC            |INDIA        |1       |         0|    204| 400|
|0-24 months |IRC            |INDIA        |1       |         1|     27| 400|
|0-24 months |IRC            |INDIA        |0       |         0|    148| 400|
|0-24 months |IRC            |INDIA        |0       |         1|     21| 400|
|0-24 months |MAL-ED         |PERU         |1       |         0|      1|   1|
|0-24 months |MAL-ED         |PERU         |1       |         1|      0|   1|
|0-24 months |MAL-ED         |PERU         |0       |         0|      0|   1|
|0-24 months |MAL-ED         |PERU         |0       |         1|      0|   1|
|0-24 months |MAL-ED         |SOUTH AFRICA |1       |         0|      1|   2|
|0-24 months |MAL-ED         |SOUTH AFRICA |1       |         1|      0|   2|
|0-24 months |MAL-ED         |SOUTH AFRICA |0       |         0|      1|   2|
|0-24 months |MAL-ED         |SOUTH AFRICA |0       |         1|      0|   2|
|0-24 months |NIH-Crypto     |BANGLADESH   |1       |         0|    335| 559|
|0-24 months |NIH-Crypto     |BANGLADESH   |1       |         1|      8| 559|
|0-24 months |NIH-Crypto     |BANGLADESH   |0       |         0|    210| 559|
|0-24 months |NIH-Crypto     |BANGLADESH   |0       |         1|      6| 559|
|0-24 months |PROVIDE        |BANGLADESH   |1       |         0|    521| 641|
|0-24 months |PROVIDE        |BANGLADESH   |1       |         1|      9| 641|
|0-24 months |PROVIDE        |BANGLADESH   |0       |         0|    105| 641|
|0-24 months |PROVIDE        |BANGLADESH   |0       |         1|      6| 641|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA

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




# Results Detail

## Results Plots
![](/tmp/054a8b51-d011-4e8e-a21c-344211436acc/224af74d-283b-4a3e-a1c3-63740d4fe419/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/054a8b51-d011-4e8e-a21c-344211436acc/224af74d-283b-4a3e-a1c3-63740d4fe419/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/054a8b51-d011-4e8e-a21c-344211436acc/224af74d-283b-4a3e-a1c3-63740d4fe419/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/054a8b51-d011-4e8e-a21c-344211436acc/224af74d-283b-4a3e-a1c3-63740d4fe419/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA      |1                  |NA             | 0.0368098| 0.0078647| 0.0657549|
|0-24 months |CMC-V-BCS-2002 |INDIA      |0                  |NA             | 0.0809524| 0.0440117| 0.1178931|
|0-24 months |IRC            |INDIA      |1                  |NA             | 0.1142237| 0.0732237| 0.1552237|
|0-24 months |IRC            |INDIA      |0                  |NA             | 0.1265298| 0.0762155| 0.1768441|
|0-24 months |NIH-Crypto     |BANGLADESH |1                  |NA             | 0.0233236| 0.0073368| 0.0393105|
|0-24 months |NIH-Crypto     |BANGLADESH |0                  |NA             | 0.0277778| 0.0058426| 0.0497130|
|0-24 months |PROVIDE        |BANGLADESH |1                  |NA             | 0.0169811| 0.0059730| 0.0279893|
|0-24 months |PROVIDE        |BANGLADESH |0                  |NA             | 0.0540541| 0.0119549| 0.0961532|


### Parameter: E(Y)


|agecat      |studyid        |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA      |NA                 |NA             | 0.0616622| 0.0372186| 0.0861058|
|0-24 months |IRC            |INDIA      |NA                 |NA             | 0.1200000| 0.0881145| 0.1518855|
|0-24 months |NIH-Crypto     |BANGLADESH |NA                 |NA             | 0.0250447| 0.0120795| 0.0380100|
|0-24 months |PROVIDE        |BANGLADESH |NA                 |NA             | 0.0234009| 0.0116889| 0.0351130|


### Parameter: RR


|agecat      |studyid        |country    |intervention_level |baseline_level | estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------|:------------------|:--------------|--------:|---------:|--------:|
|0-24 months |CMC-V-BCS-2002 |INDIA      |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |CMC-V-BCS-2002 |INDIA      |0                  |1              | 2.199206| 0.8859799| 5.458937|
|0-24 months |IRC            |INDIA      |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |IRC            |INDIA      |0                  |1              | 1.107737| 0.6477890| 1.894260|
|0-24 months |NIH-Crypto     |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH |0                  |1              | 1.190972| 0.4185803| 3.388632|
|0-24 months |PROVIDE        |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH |0                  |1              | 3.183183| 1.1555326| 8.768818|


### Parameter: PAR


|agecat      |studyid        |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA      |1                  |NA             | 0.0248524| -0.0016629| 0.0513677|
|0-24 months |IRC            |INDIA      |1                  |NA             | 0.0057763| -0.0213857| 0.0329383|
|0-24 months |NIH-Crypto     |BANGLADESH |1                  |NA             | 0.0017211| -0.0087685| 0.0122108|
|0-24 months |PROVIDE        |BANGLADESH |1                  |NA             | 0.0064198| -0.0011934| 0.0140331|


### Parameter: PAF


|agecat      |studyid        |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA      |1                  |NA             | 0.4030408| -0.1700513| 0.6954319|
|0-24 months |IRC            |INDIA      |1                  |NA             | 0.0481359| -0.2071633| 0.2494426|
|0-24 months |NIH-Crypto     |BANGLADESH |1                  |NA             | 0.0687214| -0.4579033| 0.4051184|
|0-24 months |PROVIDE        |BANGLADESH |1                  |NA             | 0.2743396| -0.0912317| 0.5174416|
