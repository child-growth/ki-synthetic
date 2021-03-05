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

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* W_nrooms
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country                      |vagbrth | ever_swasted| n_cell|     n|
|:---------------------------|:--------------|:----------------------------|:-------|------------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0       |            0|     20|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0       |            1|      5|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1       |            0|    293|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1       |            1|     50|   368|
|0-24 months (no birth wast) |IRC            |INDIA                        |0       |            0|     55|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |0       |            1|     15|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |1       |            0|    277|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |1       |            1|     62|   409|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0       |            0|   1454| 26404|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0       |            1|     36| 26404|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1       |            0|  24005| 26404|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1       |            1|    909| 26404|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0       |            0|    358|  4499|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0       |            1|     12|  4499|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1       |            0|   3933|  4499|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1       |            1|    196|  4499|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0       |            0|    198|   496|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0       |            1|      4|   496|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1       |            0|    284|   496|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1       |            1|     10|   496|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |0       |            0|   1926| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |0       |            1|     26| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |1       |            0|  14749| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |1       |            1|    178| 16879|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0       |            0|    158|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0       |            1|      1|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1       |            0|    510|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1       |            1|     18|   687|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0       |            0|    195|  2355|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0       |            1|     17|  2355|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |            0|   2039|  2355|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |            1|    104|  2355|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0       |            0|   1110| 13522|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0       |            1|     32| 13522|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |1       |            0|  11940| 13522|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |1       |            1|    440| 13522|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH

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
![](/tmp/a6dbc971-6551-4f8c-a336-824fe739878c/881450a0-119d-4538-acc1-693a53c67a66/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a6dbc971-6551-4f8c-a336-824fe739878c/881450a0-119d-4538-acc1-693a53c67a66/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a6dbc971-6551-4f8c-a336-824fe739878c/881450a0-119d-4538-acc1-693a53c67a66/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a6dbc971-6551-4f8c-a336-824fe739878c/881450a0-119d-4538-acc1-693a53c67a66/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0                  |NA             | 0.2000000| 0.0429894| 0.3570106|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1                  |NA             | 0.1457726| 0.1083773| 0.1831679|
|0-24 months (no birth wast) |IRC            |INDIA                        |0                  |NA             | 0.2374133| 0.1410337| 0.3337929|
|0-24 months (no birth wast) |IRC            |INDIA                        |1                  |NA             | 0.1836835| 0.1424754| 0.2248915|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0                  |NA             | 0.0243059| 0.0154874| 0.0331244|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.0364773| 0.0337950| 0.0391597|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0                  |NA             | 0.0322743| 0.0105535| 0.0539950|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1                  |NA             | 0.0474827| 0.0405010| 0.0544644|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |0                  |NA             | 0.0132112| 0.0069930| 0.0194294|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |1                  |NA             | 0.0119270| 0.0079908| 0.0158632|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.0815092| 0.0441071| 0.1189112|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.0484202| 0.0393269| 0.0575135|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0                  |NA             | 0.0247732| 0.0158043| 0.0337421|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.0356820| 0.0324079| 0.0389561|


### Parameter: E(Y)


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.1494565| 0.1129794| 0.1859337|
|0-24 months (no birth wast) |IRC            |INDIA                        |NA                 |NA             | 0.1882641| 0.1503318| 0.2261964|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0357900| 0.0332085| 0.0383715|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.0462325| 0.0396215| 0.0528435|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |NA                 |NA             | 0.0120860| 0.0083142| 0.0158578|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0513800| 0.0424616| 0.0602985|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0349061| 0.0318124| 0.0379998|


### Parameter: RR


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1                  |0              | 0.7288630| 0.3191248| 1.6646817|
|0-24 months (no birth wast) |IRC            |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |IRC            |INDIA                        |1                  |0              | 0.7736864| 0.4861956| 1.2311724|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1                  |0              | 1.5007586| 1.0371630| 2.1715742|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1                  |0              | 1.4712259| 0.7357700| 2.9418236|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |1                  |0              | 0.9027900| 0.5564445| 1.4647098|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |0              | 0.5940461| 0.3618988| 0.9751089|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |1                  |0              | 1.4403463| 0.9914966| 2.0923899|


### Parameter: PAR


|agecat                      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0                  |NA             | -0.0505435| -0.2009875| 0.0999006|
|0-24 months (no birth wast) |IRC            |INDIA                        |0                  |NA             | -0.0491493| -0.1363925| 0.0380939|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0                  |NA             |  0.0114841|  0.0028032| 0.0201649|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0                  |NA             |  0.0139582| -0.0071521| 0.0350686|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |0                  |NA             | -0.0011252| -0.0066310| 0.0043806|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | -0.0301291| -0.0652434| 0.0049851|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0101329|  0.0014123| 0.0188535|


### Parameter: PAF


|agecat                      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0                  |NA             | -0.3381818| -1.8354235|  0.3684433|
|0-24 months (no birth wast) |IRC            |INDIA                        |0                  |NA             | -0.2610656| -0.8226514|  0.1274873|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0                  |NA             |  0.3208742|  0.0309246|  0.5240702|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0                  |NA             |  0.3019140| -0.3413960|  0.6367038|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |0                  |NA             | -0.0931002| -0.6658804|  0.2827408|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | -0.5863977| -1.4306992| -0.0353637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.2902896| -0.0075310|  0.5000760|
