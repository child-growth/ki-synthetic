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

**Intervention Variable:** impsan

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
* W_nchldlt5
* W_parity
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid    |country                      |impsan | pers_wast| n_cell|     n|
|:-----------|:----------|:----------------------------|:------|---------:|------:|-----:|
|0-24 months |COHORTS    |GUATEMALA                    |1      |         0|     72|   768|
|0-24 months |COHORTS    |GUATEMALA                    |1      |         1|      1|   768|
|0-24 months |COHORTS    |GUATEMALA                    |0      |         0|    666|   768|
|0-24 months |COHORTS    |GUATEMALA                    |0      |         1|     29|   768|
|0-24 months |COHORTS    |INDIA                        |1      |         0|   1473|  4126|
|0-24 months |COHORTS    |INDIA                        |1      |         1|     99|  4126|
|0-24 months |COHORTS    |INDIA                        |0      |         0|   2240|  4126|
|0-24 months |COHORTS    |INDIA                        |0      |         1|    314|  4126|
|0-24 months |COHORTS    |PHILIPPINES                  |1      |         0|    146|  1118|
|0-24 months |COHORTS    |PHILIPPINES                  |1      |         1|      3|  1118|
|0-24 months |COHORTS    |PHILIPPINES                  |0      |         0|    919|  1118|
|0-24 months |COHORTS    |PHILIPPINES                  |0      |         1|     50|  1118|
|0-24 months |CONTENT    |PERU                         |1      |         0|    201|   215|
|0-24 months |CONTENT    |PERU                         |1      |         1|      0|   215|
|0-24 months |CONTENT    |PERU                         |0      |         0|     14|   215|
|0-24 months |CONTENT    |PERU                         |0      |         1|      0|   215|
|0-24 months |JiVitA-3   |BANGLADESH                   |1      |         0|  10746| 15793|
|0-24 months |JiVitA-3   |BANGLADESH                   |1      |         1|    580| 15793|
|0-24 months |JiVitA-3   |BANGLADESH                   |0      |         0|   4151| 15793|
|0-24 months |JiVitA-3   |BANGLADESH                   |0      |         1|    316| 15793|
|0-24 months |JiVitA-4   |BANGLADESH                   |1      |         0|   3770|  5279|
|0-24 months |JiVitA-4   |BANGLADESH                   |1      |         1|    302|  5279|
|0-24 months |JiVitA-4   |BANGLADESH                   |0      |         0|   1083|  5279|
|0-24 months |JiVitA-4   |BANGLADESH                   |0      |         1|    124|  5279|
|0-24 months |LCNI-5     |MALAWI                       |1      |         0|      3|   711|
|0-24 months |LCNI-5     |MALAWI                       |1      |         1|      0|   711|
|0-24 months |LCNI-5     |MALAWI                       |0      |         0|    702|   711|
|0-24 months |LCNI-5     |MALAWI                       |0      |         1|      6|   711|
|0-24 months |MAL-ED     |BANGLADESH                   |1      |         0|    192|   242|
|0-24 months |MAL-ED     |BANGLADESH                   |1      |         1|     12|   242|
|0-24 months |MAL-ED     |BANGLADESH                   |0      |         0|     37|   242|
|0-24 months |MAL-ED     |BANGLADESH                   |0      |         1|      1|   242|
|0-24 months |MAL-ED     |BRAZIL                       |1      |         0|    204|   210|
|0-24 months |MAL-ED     |BRAZIL                       |1      |         1|      2|   210|
|0-24 months |MAL-ED     |BRAZIL                       |0      |         0|      4|   210|
|0-24 months |MAL-ED     |BRAZIL                       |0      |         1|      0|   210|
|0-24 months |MAL-ED     |INDIA                        |1      |         0|    100|   233|
|0-24 months |MAL-ED     |INDIA                        |1      |         1|      8|   233|
|0-24 months |MAL-ED     |INDIA                        |0      |         0|    113|   233|
|0-24 months |MAL-ED     |INDIA                        |0      |         1|     12|   233|
|0-24 months |MAL-ED     |NEPAL                        |1      |         0|    232|   236|
|0-24 months |MAL-ED     |NEPAL                        |1      |         1|      3|   236|
|0-24 months |MAL-ED     |NEPAL                        |0      |         0|      1|   236|
|0-24 months |MAL-ED     |NEPAL                        |0      |         1|      0|   236|
|0-24 months |MAL-ED     |PERU                         |1      |         0|     65|   263|
|0-24 months |MAL-ED     |PERU                         |1      |         1|      0|   263|
|0-24 months |MAL-ED     |PERU                         |0      |         0|    197|   263|
|0-24 months |MAL-ED     |PERU                         |0      |         1|      1|   263|
|0-24 months |MAL-ED     |SOUTH AFRICA                 |1      |         0|      4|   250|
|0-24 months |MAL-ED     |SOUTH AFRICA                 |1      |         1|      0|   250|
|0-24 months |MAL-ED     |SOUTH AFRICA                 |0      |         0|    244|   250|
|0-24 months |MAL-ED     |SOUTH AFRICA                 |0      |         1|      2|   250|
|0-24 months |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |1      |         0|      0|   241|
|0-24 months |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |1      |         1|      0|   241|
|0-24 months |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0      |         0|    241|   241|
|0-24 months |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0      |         1|      0|   241|
|0-24 months |NIH-Birth  |BANGLADESH                   |1      |         0|    193|   534|
|0-24 months |NIH-Birth  |BANGLADESH                   |1      |         1|     14|   534|
|0-24 months |NIH-Birth  |BANGLADESH                   |0      |         0|    294|   534|
|0-24 months |NIH-Birth  |BANGLADESH                   |0      |         1|     33|   534|
|0-24 months |NIH-Crypto |BANGLADESH                   |1      |         0|    609|   719|
|0-24 months |NIH-Crypto |BANGLADESH                   |1      |         1|     21|   719|
|0-24 months |NIH-Crypto |BANGLADESH                   |0      |         0|     84|   719|
|0-24 months |NIH-Crypto |BANGLADESH                   |0      |         1|      5|   719|
|0-24 months |PROVIDE    |BANGLADESH                   |1      |         0|     13|    13|
|0-24 months |PROVIDE    |BANGLADESH                   |1      |         1|      0|    13|
|0-24 months |PROVIDE    |BANGLADESH                   |0      |         0|      0|    13|
|0-24 months |PROVIDE    |BANGLADESH                   |0      |         1|      0|    13|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
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
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/e71be268-7af3-4a0f-b126-b77acd4ef138/ae35b168-d678-4e1c-af13-851876aab095/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e71be268-7af3-4a0f-b126-b77acd4ef138/ae35b168-d678-4e1c-af13-851876aab095/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e71be268-7af3-4a0f-b126-b77acd4ef138/ae35b168-d678-4e1c-af13-851876aab095/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e71be268-7af3-4a0f-b126-b77acd4ef138/ae35b168-d678-4e1c-af13-851876aab095/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid    |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:----------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS    |INDIA      |1                  |NA             | 0.0759892| 0.0608571| 0.0911214|
|0-24 months |COHORTS    |INDIA      |0                  |NA             | 0.1109387| 0.0988913| 0.1229862|
|0-24 months |JiVitA-3   |BANGLADESH |1                  |NA             | 0.0542429| 0.0488432| 0.0596427|
|0-24 months |JiVitA-3   |BANGLADESH |0                  |NA             | 0.0599926| 0.0509789| 0.0690063|
|0-24 months |JiVitA-4   |BANGLADESH |1                  |NA             | 0.0775825| 0.0676620| 0.0875030|
|0-24 months |JiVitA-4   |BANGLADESH |0                  |NA             | 0.1068126| 0.0768879| 0.1367372|
|0-24 months |MAL-ED     |INDIA      |1                  |NA             | 0.0740741| 0.0245756| 0.1235725|
|0-24 months |MAL-ED     |INDIA      |0                  |NA             | 0.0960000| 0.0442456| 0.1477544|
|0-24 months |NIH-Birth  |BANGLADESH |1                  |NA             | 0.0687270| 0.0343026| 0.1031514|
|0-24 months |NIH-Birth  |BANGLADESH |0                  |NA             | 0.0988275| 0.0661776| 0.1314775|
|0-24 months |NIH-Crypto |BANGLADESH |1                  |NA             | 0.0333333| 0.0193066| 0.0473601|
|0-24 months |NIH-Crypto |BANGLADESH |0                  |NA             | 0.0561798| 0.0083069| 0.1040527|


### Parameter: E(Y)


|agecat      |studyid    |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:----------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS    |INDIA      |NA                 |NA             | 0.1000969| 0.0909380| 0.1092559|
|0-24 months |JiVitA-3   |BANGLADESH |NA                 |NA             | 0.0567340| 0.0526185| 0.0608495|
|0-24 months |JiVitA-4   |BANGLADESH |NA                 |NA             | 0.0806971| 0.0720842| 0.0893100|
|0-24 months |MAL-ED     |INDIA      |NA                 |NA             | 0.0858369| 0.0497913| 0.1218826|
|0-24 months |NIH-Birth  |BANGLADESH |NA                 |NA             | 0.0880150| 0.0639627| 0.1120673|
|0-24 months |NIH-Crypto |BANGLADESH |NA                 |NA             | 0.0361613| 0.0225058| 0.0498169|


### Parameter: RR


|agecat      |studyid    |country    |intervention_level |baseline_level | estimate|  ci_lower| ci_upper|
|:-----------|:----------|:----------|:------------------|:--------------|--------:|---------:|--------:|
|0-24 months |COHORTS    |INDIA      |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |COHORTS    |INDIA      |0                  |1              | 1.459927| 1.1642462| 1.830701|
|0-24 months |JiVitA-3   |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3   |BANGLADESH |0                  |1              | 1.105999| 0.9268637| 1.319755|
|0-24 months |JiVitA-4   |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4   |BANGLADESH |0                  |1              | 1.376761| 1.0186246| 1.860815|
|0-24 months |MAL-ED     |INDIA      |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED     |INDIA      |0                  |1              | 1.296000| 0.5491950| 3.058324|
|0-24 months |NIH-Birth  |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth  |BANGLADESH |0                  |1              | 1.437972| 0.7882443| 2.623253|
|0-24 months |NIH-Crypto |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto |BANGLADESH |0                  |1              | 1.685393| 0.6515657| 4.359577|


### Parameter: PAR


|agecat      |studyid    |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:----------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |COHORTS    |INDIA      |1                  |NA             | 0.0241077|  0.0105599| 0.0376555|
|0-24 months |JiVitA-3   |BANGLADESH |1                  |NA             | 0.0024911| -0.0009430| 0.0059251|
|0-24 months |JiVitA-4   |BANGLADESH |1                  |NA             | 0.0031146| -0.0022159| 0.0084451|
|0-24 months |MAL-ED     |INDIA      |1                  |NA             | 0.0117628| -0.0266826| 0.0502083|
|0-24 months |NIH-Birth  |BANGLADESH |1                  |NA             | 0.0192880| -0.0098951| 0.0484711|
|0-24 months |NIH-Crypto |BANGLADESH |1                  |NA             | 0.0028280| -0.0033715| 0.0090275|


### Parameter: PAF


|agecat      |studyid    |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:----------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |COHORTS    |INDIA      |1                  |NA             | 0.2408436|  0.0946273| 0.3634462|
|0-24 months |JiVitA-3   |BANGLADESH |1                  |NA             | 0.0439076| -0.0187190| 0.1026842|
|0-24 months |JiVitA-4   |BANGLADESH |1                  |NA             | 0.0385963| -0.0297184| 0.1023788|
|0-24 months |MAL-ED     |INDIA      |1                  |NA             | 0.1370370| -0.4448822| 0.4845911|
|0-24 months |NIH-Birth  |BANGLADESH |1                  |NA             | 0.2191441| -0.1861858| 0.4859693|
|0-24 months |NIH-Crypto |BANGLADESH |1                  |NA             | 0.0782051| -0.1073443| 0.2326634|
