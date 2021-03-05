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

|agecat      |studyid        |country                      |single | ever_swasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:------|------------:|------:|-----:|
|0-24 months |COHORTS        |GUATEMALA                    |0      |            0|   1017|  1197|
|0-24 months |COHORTS        |GUATEMALA                    |0      |            1|     82|  1197|
|0-24 months |COHORTS        |GUATEMALA                    |1      |            0|     90|  1197|
|0-24 months |COHORTS        |GUATEMALA                    |1      |            1|      8|  1197|
|0-24 months |COHORTS        |INDIA                        |0      |            0|   4814|  5376|
|0-24 months |COHORTS        |INDIA                        |0      |            1|    553|  5376|
|0-24 months |COHORTS        |INDIA                        |1      |            0|      7|  5376|
|0-24 months |COHORTS        |INDIA                        |1      |            1|      2|  5376|
|0-24 months |COHORTS        |PHILIPPINES                  |0      |            0|   2571|  3005|
|0-24 months |COHORTS        |PHILIPPINES                  |0      |            1|    360|  3005|
|0-24 months |COHORTS        |PHILIPPINES                  |1      |            0|     54|  3005|
|0-24 months |COHORTS        |PHILIPPINES                  |1      |            1|     20|  3005|
|0-24 months |Guatemala BSC  |GUATEMALA                    |0      |            0|    250|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |0      |            1|      2|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |1      |            0|     29|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |1      |            1|      1|   282|
|0-24 months |JiVitA-4       |BANGLADESH                   |0      |            0|   5074|  5424|
|0-24 months |JiVitA-4       |BANGLADESH                   |0      |            1|    342|  5424|
|0-24 months |JiVitA-4       |BANGLADESH                   |1      |            0|      8|  5424|
|0-24 months |JiVitA-4       |BANGLADESH                   |1      |            1|      0|  5424|
|0-24 months |MAL-ED         |BANGLADESH                   |0      |            0|    242|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |0      |            1|     21|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |1      |            0|      0|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |1      |            1|      0|   263|
|0-24 months |MAL-ED         |BRAZIL                       |0      |            0|    194|   233|
|0-24 months |MAL-ED         |BRAZIL                       |0      |            1|      3|   233|
|0-24 months |MAL-ED         |BRAZIL                       |1      |            0|     35|   233|
|0-24 months |MAL-ED         |BRAZIL                       |1      |            1|      1|   233|
|0-24 months |MAL-ED         |INDIA                        |0      |            0|    223|   249|
|0-24 months |MAL-ED         |INDIA                        |0      |            1|     26|   249|
|0-24 months |MAL-ED         |INDIA                        |1      |            0|      0|   249|
|0-24 months |MAL-ED         |INDIA                        |1      |            1|      0|   249|
|0-24 months |MAL-ED         |NEPAL                        |0      |            0|    231|   240|
|0-24 months |MAL-ED         |NEPAL                        |0      |            1|      9|   240|
|0-24 months |MAL-ED         |NEPAL                        |1      |            0|      0|   240|
|0-24 months |MAL-ED         |NEPAL                        |1      |            1|      0|   240|
|0-24 months |MAL-ED         |PERU                         |0      |            0|    264|   302|
|0-24 months |MAL-ED         |PERU                         |0      |            1|      4|   302|
|0-24 months |MAL-ED         |PERU                         |1      |            0|     34|   302|
|0-24 months |MAL-ED         |PERU                         |1      |            1|      0|   302|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0      |            0|    169|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0      |            1|      7|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1      |            0|    127|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1      |            1|      9|   312|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |            0|    244|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |            1|      7|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |            0|      8|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |            1|      2|   261|
|0-24 months |PROBIT         |BELARUS                      |0      |            0|  14939| 16898|
|0-24 months |PROBIT         |BELARUS                      |0      |            1|   1266| 16898|
|0-24 months |PROBIT         |BELARUS                      |1      |            0|    634| 16898|
|0-24 months |PROBIT         |BELARUS                      |1      |            1|     59| 16898|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |            0|   2008|  2375|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |            1|    143|  2375|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |            0|    209|  2375|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |            1|     15|  2375|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0      |            0|  11829| 13890|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0      |            1|   1183| 13890|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1      |            0|    781| 13890|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1      |            1|     97| 13890|


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
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
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
![](/tmp/6a8a2b9c-3e5c-41fb-80b4-1e4b2c71cc28/e75f9635-edd3-4ce8-8724-9030d4aaa866/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6a8a2b9c-3e5c-41fb-80b4-1e4b2c71cc28/e75f9635-edd3-4ce8-8724-9030d4aaa866/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6a8a2b9c-3e5c-41fb-80b4-1e4b2c71cc28/e75f9635-edd3-4ce8-8724-9030d4aaa866/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6a8a2b9c-3e5c-41fb-80b4-1e4b2c71cc28/e75f9635-edd3-4ce8-8724-9030d4aaa866/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |0                  |NA             | 0.0746133| 0.0590715| 0.0901551|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |NA             | 0.0816327| 0.0274005| 0.1358648|
|0-24 months |COHORTS        |PHILIPPINES                  |0                  |NA             | 0.1229024| 0.1109378| 0.1348671|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             | 0.2372574| 0.1553727| 0.3191420|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |NA             | 0.0397727| 0.0108547| 0.0686907|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1                  |NA             | 0.0661765| 0.0243299| 0.1080230|
|0-24 months |PROBIT         |BELARUS                      |0                  |NA             | 0.0779449| 0.0447820| 0.1111078|
|0-24 months |PROBIT         |BELARUS                      |1                  |NA             | 0.0844377| 0.0568281| 0.1120473|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.0662697| 0.0557373| 0.0768022|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.0608251| 0.0254377| 0.0962124|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             | 0.0910690| 0.0861191| 0.0960188|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.1120385| 0.0905195| 0.1335576|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.0751880| 0.0602434| 0.0901325|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.1264559| 0.1145706| 0.1383412|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.0512821| 0.0267678| 0.0757963|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0784116| 0.0458146| 0.1110087|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0665263| 0.0565020| 0.0765506|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0921526| 0.0873423| 0.0969629|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |COHORTS        |GUATEMALA                    |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |0              | 1.0940767| 0.5453529| 2.194916|
|0-24 months |COHORTS        |PHILIPPINES                  |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |0              | 1.9304528| 1.3487361| 2.763067|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1                  |0              | 1.6638655| 0.6347971| 4.361155|
|0-24 months |PROBIT         |BELARUS                      |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |1                  |0              | 1.0833003| 0.7807988| 1.502999|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |0              | 0.9178406| 0.5021383| 1.677688|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |0              | 1.2302598| 1.0076854| 1.501996|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |0                  |NA             | 0.0005747| -0.0040454| 0.0051948|
|0-24 months |COHORTS        |PHILIPPINES                  |0                  |NA             | 0.0035535|  0.0009032| 0.0062038|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |NA             | 0.0115093| -0.0107109| 0.0337295|
|0-24 months |PROBIT         |BELARUS                      |0                  |NA             | 0.0004668| -0.0006274| 0.0015610|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.0002566| -0.0030322| 0.0035454|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             | 0.0010836| -0.0002719| 0.0024392|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |0                  |NA             | 0.0076433| -0.0557292| 0.0672117|
|0-24 months |COHORTS        |PHILIPPINES                  |0                  |NA             | 0.0281005|  0.0069644| 0.0487867|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |NA             | 0.2244318| -0.3345633| 0.5492863|
|0-24 months |PROBIT         |BELARUS                      |0                  |NA             | 0.0059528| -0.0095194| 0.0211879|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.0038568| -0.0468264| 0.0520861|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             | 0.0117593| -0.0030513| 0.0263512|
