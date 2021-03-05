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

**Outcome Variable:** ever_sstunted

## Predictor Variables

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |single | ever_sstunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:------|-------------:|------:|-----:|
|0-24 months |COHORTS        |GUATEMALA                    |0      |             0|    582|  1207|
|0-24 months |COHORTS        |GUATEMALA                    |0      |             1|    527|  1207|
|0-24 months |COHORTS        |GUATEMALA                    |1      |             0|     43|  1207|
|0-24 months |COHORTS        |GUATEMALA                    |1      |             1|     55|  1207|
|0-24 months |COHORTS        |INDIA                        |0      |             0|   4639|  5384|
|0-24 months |COHORTS        |INDIA                        |0      |             1|    736|  5384|
|0-24 months |COHORTS        |INDIA                        |1      |             0|      7|  5384|
|0-24 months |COHORTS        |INDIA                        |1      |             1|      2|  5384|
|0-24 months |COHORTS        |PHILIPPINES                  |0      |             0|   1889|  3018|
|0-24 months |COHORTS        |PHILIPPINES                  |0      |             1|   1054|  3018|
|0-24 months |COHORTS        |PHILIPPINES                  |1      |             0|     50|  3018|
|0-24 months |COHORTS        |PHILIPPINES                  |1      |             1|     25|  3018|
|0-24 months |Guatemala BSC  |GUATEMALA                    |0      |             0|    207|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |0      |             1|     45|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |1      |             0|     22|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |1      |             1|      8|   282|
|0-24 months |JiVitA-4       |BANGLADESH                   |0      |             0|   4312|  5423|
|0-24 months |JiVitA-4       |BANGLADESH                   |0      |             1|   1103|  5423|
|0-24 months |JiVitA-4       |BANGLADESH                   |1      |             0|      8|  5423|
|0-24 months |JiVitA-4       |BANGLADESH                   |1      |             1|      0|  5423|
|0-24 months |MAL-ED         |BANGLADESH                   |0      |             0|    207|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |0      |             1|     58|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |1      |             0|      0|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |1      |             1|      0|   265|
|0-24 months |MAL-ED         |BRAZIL                       |0      |             0|    183|   233|
|0-24 months |MAL-ED         |BRAZIL                       |0      |             1|     14|   233|
|0-24 months |MAL-ED         |BRAZIL                       |1      |             0|     28|   233|
|0-24 months |MAL-ED         |BRAZIL                       |1      |             1|      8|   233|
|0-24 months |MAL-ED         |INDIA                        |0      |             0|    192|   249|
|0-24 months |MAL-ED         |INDIA                        |0      |             1|     57|   249|
|0-24 months |MAL-ED         |INDIA                        |1      |             0|      0|   249|
|0-24 months |MAL-ED         |INDIA                        |1      |             1|      0|   249|
|0-24 months |MAL-ED         |NEPAL                        |0      |             0|    219|   240|
|0-24 months |MAL-ED         |NEPAL                        |0      |             1|     21|   240|
|0-24 months |MAL-ED         |NEPAL                        |1      |             0|      0|   240|
|0-24 months |MAL-ED         |NEPAL                        |1      |             1|      0|   240|
|0-24 months |MAL-ED         |PERU                         |0      |             0|    214|   303|
|0-24 months |MAL-ED         |PERU                         |0      |             1|     54|   303|
|0-24 months |MAL-ED         |PERU                         |1      |             0|     25|   303|
|0-24 months |MAL-ED         |PERU                         |1      |             1|     10|   303|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0      |             0|    138|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0      |             1|     38|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1      |             0|    103|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1      |             1|     35|   314|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |             0|    119|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |             1|    133|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |             0|      6|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |             1|      4|   262|
|0-24 months |PROBIT         |BELARUS                      |0      |             0|  15765| 16897|
|0-24 months |PROBIT         |BELARUS                      |0      |             1|    439| 16897|
|0-24 months |PROBIT         |BELARUS                      |1      |             0|    665| 16897|
|0-24 months |PROBIT         |BELARUS                      |1      |             1|     28| 16897|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |             0|   1933|  2375|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |             1|    218|  2375|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |             0|    205|  2375|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |             1|     19|  2375|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0      |             0|  10952| 14016|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0      |             1|   2175| 14016|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1      |             0|    709| 14016|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1      |             1|    180| 14016|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/4836ddd8-9905-417e-9435-65518c57b72a/ef2cb243-c339-4e1e-95c0-8818ddfd5195/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4836ddd8-9905-417e-9435-65518c57b72a/ef2cb243-c339-4e1e-95c0-8818ddfd5195/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4836ddd8-9905-417e-9435-65518c57b72a/ef2cb243-c339-4e1e-95c0-8818ddfd5195/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4836ddd8-9905-417e-9435-65518c57b72a/ef2cb243-c339-4e1e-95c0-8818ddfd5195/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |0                  |NA             | 0.4771408| 0.4476296| 0.5066521|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |NA             | 0.6071899| 0.5019994| 0.7123804|
|0-24 months |COHORTS        |PHILIPPINES                  |0                  |NA             | 0.3583057| 0.3408978| 0.3757136|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             | 0.3025537| 0.2107005| 0.3944069|
|0-24 months |Guatemala BSC  |GUATEMALA                    |0                  |NA             | 0.1785714| 0.1312007| 0.2259422|
|0-24 months |Guatemala BSC  |GUATEMALA                    |1                  |NA             | 0.2666667| 0.1081431| 0.4251903|
|0-24 months |MAL-ED         |BRAZIL                       |0                  |NA             | 0.0710660| 0.0351099| 0.1070221|
|0-24 months |MAL-ED         |BRAZIL                       |1                  |NA             | 0.2222222| 0.0861240| 0.3583204|
|0-24 months |MAL-ED         |PERU                         |0                  |NA             | 0.2047269| 0.1564684| 0.2529854|
|0-24 months |MAL-ED         |PERU                         |1                  |NA             | 0.2495813| 0.1022785| 0.3968841|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |NA             | 0.2312548| 0.1543676| 0.3081419|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1                  |NA             | 0.2477663| 0.1722010| 0.3233316|
|0-24 months |PROBIT         |BELARUS                      |0                  |NA             | 0.0273400| 0.0196344| 0.0350455|
|0-24 months |PROBIT         |BELARUS                      |1                  |NA             | 0.0362611| 0.0215537| 0.0509685|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.1013959| 0.0886416| 0.1141501|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.0830875| 0.0471203| 0.1190547|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             | 0.1665236| 0.1601187| 0.1729284|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.2039038| 0.1745095| 0.2332982|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.4821872| 0.4539860| 0.5103885|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.3575215| 0.3404198| 0.3746233|
|0-24 months |Guatemala BSC  |GUATEMALA                    |NA                 |NA             | 0.1879433| 0.1422658| 0.2336207|
|0-24 months |MAL-ED         |BRAZIL                       |NA                 |NA             | 0.0944206| 0.0567935| 0.1320477|
|0-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.2112211| 0.1651858| 0.2572564|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.2324841| 0.1856873| 0.2792809|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0276380| 0.0201988| 0.0350773|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0997895| 0.0877330| 0.1118460|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.1680223| 0.1618323| 0.1742123|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |COHORTS        |GUATEMALA                    |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |0              | 1.2725590| 1.0595361| 1.528411|
|0-24 months |COHORTS        |PHILIPPINES                  |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |0              | 0.8444010| 0.6208885| 1.148375|
|0-24 months |Guatemala BSC  |GUATEMALA                    |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |Guatemala BSC  |GUATEMALA                    |1                  |0              | 1.4933333| 0.7788347| 2.863309|
|0-24 months |MAL-ED         |BRAZIL                       |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |BRAZIL                       |1                  |0              | 3.1269841| 1.4129327| 6.920379|
|0-24 months |MAL-ED         |PERU                         |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |PERU                         |1                  |0              | 1.2190938| 0.6478072| 2.294185|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1                  |0              | 1.0714000| 0.6854690| 1.674617|
|0-24 months |PROBIT         |BELARUS                      |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |1                  |0              | 1.3263033| 0.8888415| 1.979071|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |0              | 0.8194367| 0.5224985| 1.285126|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |0              | 1.2244743| 1.0549876| 1.421190|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |0                  |NA             |  0.0050464| -0.0036829| 0.0137757|
|0-24 months |COHORTS        |PHILIPPINES                  |0                  |NA             | -0.0007842| -0.0035695| 0.0020012|
|0-24 months |Guatemala BSC  |GUATEMALA                    |0                  |NA             |  0.0093718| -0.0085135| 0.0272571|
|0-24 months |MAL-ED         |BRAZIL                       |0                  |NA             |  0.0233546|  0.0004972| 0.0462121|
|0-24 months |MAL-ED         |PERU                         |0                  |NA             |  0.0064942| -0.0115198| 0.0245083|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |NA             |  0.0012293| -0.0576386| 0.0600972|
|0-24 months |PROBIT         |BELARUS                      |0                  |NA             |  0.0002981| -0.0004053| 0.0010014|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | -0.0016064| -0.0051943| 0.0019815|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0014987| -0.0002863| 0.0032837|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |0                  |NA             |  0.0104656| -0.0078144| 0.0284141|
|0-24 months |COHORTS        |PHILIPPINES                  |0                  |NA             | -0.0021933| -0.0100121| 0.0055649|
|0-24 months |Guatemala BSC  |GUATEMALA                    |0                  |NA             |  0.0498652| -0.0497480| 0.1400259|
|0-24 months |MAL-ED         |BRAZIL                       |0                  |NA             |  0.2473466| -0.0142644| 0.4414798|
|0-24 months |MAL-ED         |PERU                         |0                  |NA             |  0.0307462| -0.0581841| 0.1122028|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |NA             |  0.0052878| -0.2831382| 0.2288809|
|0-24 months |PROBIT         |BELARUS                      |0                  |NA             |  0.0107851| -0.0161461| 0.0370026|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | -0.0160977| -0.0526470| 0.0191825|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0089196| -0.0017588| 0.0194842|
