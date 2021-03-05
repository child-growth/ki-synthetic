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

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |vagbrth | pers_wast| n_cell|     n|
|:-----------|:--------------|:----------------------------|:-------|---------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |0       |         0|     24|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |0       |         1|      1|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1       |         0|    326|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1       |         1|     22|   373|
|0-24 months |IRC            |INDIA                        |0       |         0|     62|   410|
|0-24 months |IRC            |INDIA                        |0       |         1|      8|   410|
|0-24 months |IRC            |INDIA                        |1       |         0|    300|   410|
|0-24 months |IRC            |INDIA                        |1       |         1|     40|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |0       |         0|    939| 15765|
|0-24 months |JiVitA-3       |BANGLADESH                   |0       |         1|     57| 15765|
|0-24 months |JiVitA-3       |BANGLADESH                   |1       |         0|  13931| 15765|
|0-24 months |JiVitA-3       |BANGLADESH                   |1       |         1|    838| 15765|
|0-24 months |JiVitA-4       |BANGLADESH                   |0       |         0|    341|  4443|
|0-24 months |JiVitA-4       |BANGLADESH                   |0       |         1|     19|  4443|
|0-24 months |JiVitA-4       |BANGLADESH                   |1       |         0|   3752|  4443|
|0-24 months |JiVitA-4       |BANGLADESH                   |1       |         1|    331|  4443|
|0-24 months |NIH-Crypto     |BANGLADESH                   |0       |         0|    191|   472|
|0-24 months |NIH-Crypto     |BANGLADESH                   |0       |         1|      3|   472|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1       |         0|    261|   472|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1       |         1|     17|   472|
|0-24 months |PROBIT         |BELARUS                      |0       |         0|   1904| 16583|
|0-24 months |PROBIT         |BELARUS                      |0       |         1|     14| 16583|
|0-24 months |PROBIT         |BELARUS                      |1       |         0|  14545| 16583|
|0-24 months |PROBIT         |BELARUS                      |1       |         1|    120| 16583|
|0-24 months |PROVIDE        |BANGLADESH                   |0       |         0|    146|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |0       |         1|      2|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |1       |         0|    480|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |1       |         1|     13|   641|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0       |         0|    192|  2140|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0       |         1|      6|  2140|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |         0|   1890|  2140|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |         1|     52|  2140|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0       |         0|    813|  9449|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0       |         1|      9|  9449|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1       |         0|   8472|  9449|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1       |         1|    155|  9449|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
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
![](/tmp/45e6e591-f673-4d63-bb99-f099f06a6287/f1672657-8d51-424c-bc70-945e5d61aac0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/45e6e591-f673-4d63-bb99-f099f06a6287/f1672657-8d51-424c-bc70-945e5d61aac0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/45e6e591-f673-4d63-bb99-f099f06a6287/f1672657-8d51-424c-bc70-945e5d61aac0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/45e6e591-f673-4d63-bb99-f099f06a6287/f1672657-8d51-424c-bc70-945e5d61aac0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |IRC            |INDIA                        |0                  |NA             | 0.1142857| 0.0396628| 0.1889086|
|0-24 months |IRC            |INDIA                        |1                  |NA             | 0.1176471| 0.0833584| 0.1519357|
|0-24 months |JiVitA-3       |BANGLADESH                   |0                  |NA             | 0.0583113| 0.0425796| 0.0740430|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.0566856| 0.0524978| 0.0608734|
|0-24 months |JiVitA-4       |BANGLADESH                   |0                  |NA             | 0.0517184| 0.0253342| 0.0781027|
|0-24 months |JiVitA-4       |BANGLADESH                   |1                  |NA             | 0.0811592| 0.0715712| 0.0907471|
|0-24 months |PROBIT         |BELARUS                      |0                  |NA             | 0.0071303| 0.0024741| 0.0117865|
|0-24 months |PROBIT         |BELARUS                      |1                  |NA             | 0.0082324| 0.0043556| 0.0121091|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.0303030| 0.0064206| 0.0541854|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.0267765| 0.0195951| 0.0339579|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             | 0.0109489| 0.0038346| 0.0180632|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.0179668| 0.0151637| 0.0207700|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.1170732| 0.0859146| 0.1482317|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0567713| 0.0526559| 0.0608868|
|0-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.0787756| 0.0696990| 0.0878522|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0080806| 0.0045539| 0.0116073|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0271028| 0.0202213| 0.0339843|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0173563| 0.0147230| 0.0199897|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |IRC            |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |IRC            |INDIA                        |1                  |0              | 1.0294118| 0.5035574| 2.104405|
|0-24 months |JiVitA-3       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |0              | 0.9721200| 0.7397471| 1.277487|
|0-24 months |JiVitA-4       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4       |BANGLADESH                   |1                  |0              | 1.5692498| 0.9286609| 2.651716|
|0-24 months |PROBIT         |BELARUS                      |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |1                  |0              | 1.1545636| 0.5550771| 2.401499|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |0              | 0.8836251| 0.3843408| 2.031513|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |0              | 1.6409721| 0.8411810| 3.201201|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |IRC            |INDIA                        |0                  |NA             |  0.0027875| -0.0653152| 0.0708901|
|0-24 months |JiVitA-3       |BANGLADESH                   |0                  |NA             | -0.0015400| -0.0165079| 0.0134280|
|0-24 months |JiVitA-4       |BANGLADESH                   |0                  |NA             |  0.0270572|  0.0012316| 0.0528827|
|0-24 months |PROBIT         |BELARUS                      |0                  |NA             |  0.0009503| -0.0038987| 0.0057993|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | -0.0032002| -0.0258316| 0.0194312|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0064074| -0.0005741| 0.0133889|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |IRC            |INDIA                        |0                  |NA             |  0.0238095| -0.7714072| 0.4620391|
|0-24 months |JiVitA-3       |BANGLADESH                   |0                  |NA             | -0.0271262| -0.3275845| 0.2053326|
|0-24 months |JiVitA-4       |BANGLADESH                   |0                  |NA             |  0.3434713| -0.0782574| 0.6002533|
|0-24 months |PROBIT         |BELARUS                      |0                  |NA             |  0.1176010| -0.7037072| 0.5429801|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | -0.1180773| -1.3584262| 0.4699445|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.3691695| -0.1863150| 0.6645519|
