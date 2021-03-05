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

**Intervention Variable:** fage

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_fhtcm
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_fhtcm
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid       |country                      |fage    | ever_sstunted| n_cell|     n|
|:-----------|:-------------|:----------------------------|:-------|-------------:|------:|-----:|
|0-24 months |COHORTS       |GUATEMALA                    |>=38    |             0|    217|  1301|
|0-24 months |COHORTS       |GUATEMALA                    |>=38    |             1|    169|  1301|
|0-24 months |COHORTS       |GUATEMALA                    |<32     |             0|    329|  1301|
|0-24 months |COHORTS       |GUATEMALA                    |<32     |             1|    280|  1301|
|0-24 months |COHORTS       |GUATEMALA                    |[32-38) |             0|    150|  1301|
|0-24 months |COHORTS       |GUATEMALA                    |[32-38) |             1|    156|  1301|
|0-24 months |COHORTS       |PHILIPPINES                  |>=38    |             0|    177|  2951|
|0-24 months |COHORTS       |PHILIPPINES                  |>=38    |             1|    153|  2951|
|0-24 months |COHORTS       |PHILIPPINES                  |<32     |             0|   1365|  2951|
|0-24 months |COHORTS       |PHILIPPINES                  |<32     |             1|    718|  2951|
|0-24 months |COHORTS       |PHILIPPINES                  |[32-38) |             0|    346|  2951|
|0-24 months |COHORTS       |PHILIPPINES                  |[32-38) |             1|    192|  2951|
|0-24 months |LCNI-5        |MALAWI                       |>=38    |             0|     23|   106|
|0-24 months |LCNI-5        |MALAWI                       |>=38    |             1|      3|   106|
|0-24 months |LCNI-5        |MALAWI                       |<32     |             0|     42|   106|
|0-24 months |LCNI-5        |MALAWI                       |<32     |             1|     14|   106|
|0-24 months |LCNI-5        |MALAWI                       |[32-38) |             0|     15|   106|
|0-24 months |LCNI-5        |MALAWI                       |[32-38) |             1|      9|   106|
|0-24 months |MAL-ED        |BANGLADESH                   |>=38    |             0|     53|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |>=38    |             1|     16|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |<32     |             0|     21|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |<32     |             1|      9|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |[32-38) |             0|     41|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |[32-38) |             1|     11|   151|
|0-24 months |MAL-ED        |BRAZIL                       |>=38    |             0|     27|    79|
|0-24 months |MAL-ED        |BRAZIL                       |>=38    |             1|      3|    79|
|0-24 months |MAL-ED        |BRAZIL                       |<32     |             0|     14|    79|
|0-24 months |MAL-ED        |BRAZIL                       |<32     |             1|      4|    79|
|0-24 months |MAL-ED        |BRAZIL                       |[32-38) |             0|     29|    79|
|0-24 months |MAL-ED        |BRAZIL                       |[32-38) |             1|      2|    79|
|0-24 months |MAL-ED        |INDIA                        |>=38    |             0|     30|   161|
|0-24 months |MAL-ED        |INDIA                        |>=38    |             1|      6|   161|
|0-24 months |MAL-ED        |INDIA                        |<32     |             0|     38|   161|
|0-24 months |MAL-ED        |INDIA                        |<32     |             1|     15|   161|
|0-24 months |MAL-ED        |INDIA                        |[32-38) |             0|     57|   161|
|0-24 months |MAL-ED        |INDIA                        |[32-38) |             1|     15|   161|
|0-24 months |MAL-ED        |NEPAL                        |>=38    |             0|     16|    79|
|0-24 months |MAL-ED        |NEPAL                        |>=38    |             1|      1|    79|
|0-24 months |MAL-ED        |NEPAL                        |<32     |             0|     13|    79|
|0-24 months |MAL-ED        |NEPAL                        |<32     |             1|      2|    79|
|0-24 months |MAL-ED        |NEPAL                        |[32-38) |             0|     41|    79|
|0-24 months |MAL-ED        |NEPAL                        |[32-38) |             1|      6|    79|
|0-24 months |MAL-ED        |PERU                         |>=38    |             0|     24|    85|
|0-24 months |MAL-ED        |PERU                         |>=38    |             1|      3|    85|
|0-24 months |MAL-ED        |PERU                         |<32     |             0|     21|    85|
|0-24 months |MAL-ED        |PERU                         |<32     |             1|      8|    85|
|0-24 months |MAL-ED        |PERU                         |[32-38) |             0|     18|    85|
|0-24 months |MAL-ED        |PERU                         |[32-38) |             1|     11|    85|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |>=38    |             0|     53|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |>=38    |             1|     12|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |<32     |             0|      9|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |<32     |             1|      0|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |[32-38) |             0|     11|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |[32-38) |             1|      5|    90|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>=38    |             0|     20|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>=38    |             1|     28|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |<32     |             0|      4|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |<32     |             1|     11|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |[32-38) |             0|     14|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |[32-38) |             1|     23|   100|
|0-24 months |PROBIT        |BELARUS                      |>=38    |             0|    726| 16277|
|0-24 months |PROBIT        |BELARUS                      |>=38    |             1|     18| 16277|
|0-24 months |PROBIT        |BELARUS                      |<32     |             0|  12696| 16277|
|0-24 months |PROBIT        |BELARUS                      |<32     |             1|    362| 16277|
|0-24 months |PROBIT        |BELARUS                      |[32-38) |             0|   2416| 16277|
|0-24 months |PROBIT        |BELARUS                      |[32-38) |             1|     59| 16277|
|0-24 months |SAS-CompFeed  |INDIA                        |>=38    |             0|     28|  1530|
|0-24 months |SAS-CompFeed  |INDIA                        |>=38    |             1|     23|  1530|
|0-24 months |SAS-CompFeed  |INDIA                        |<32     |             0|    870|  1530|
|0-24 months |SAS-CompFeed  |INDIA                        |<32     |             1|    409|  1530|
|0-24 months |SAS-CompFeed  |INDIA                        |[32-38) |             0|    127|  1530|
|0-24 months |SAS-CompFeed  |INDIA                        |[32-38) |             1|     73|  1530|
|0-24 months |SAS-FoodSuppl |INDIA                        |>=38    |             0|     18|   418|
|0-24 months |SAS-FoodSuppl |INDIA                        |>=38    |             1|     26|   418|
|0-24 months |SAS-FoodSuppl |INDIA                        |<32     |             0|    151|   418|
|0-24 months |SAS-FoodSuppl |INDIA                        |<32     |             1|    138|   418|
|0-24 months |SAS-FoodSuppl |INDIA                        |[32-38) |             0|     48|   418|
|0-24 months |SAS-FoodSuppl |INDIA                        |[32-38) |             1|     37|   418|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/4b40baa9-55e3-4df7-ba3f-ab66192b4e29/96a37921-df0c-4759-beed-ab7fe18ee212/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4b40baa9-55e3-4df7-ba3f-ab66192b4e29/96a37921-df0c-4759-beed-ab7fe18ee212/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4b40baa9-55e3-4df7-ba3f-ab66192b4e29/96a37921-df0c-4759-beed-ab7fe18ee212/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4b40baa9-55e3-4df7-ba3f-ab66192b4e29/96a37921-df0c-4759-beed-ab7fe18ee212/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid       |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS       |GUATEMALA   |>=38               |NA             | 0.4112378| 0.3344078| 0.4880677|
|0-24 months |COHORTS       |GUATEMALA   |<32                |NA             | 0.4265924| 0.3810852| 0.4720995|
|0-24 months |COHORTS       |GUATEMALA   |[32-38)            |NA             | 0.5004998| 0.3994251| 0.6015745|
|0-24 months |COHORTS       |PHILIPPINES |>=38               |NA             | 0.3673045| 0.2945371| 0.4400719|
|0-24 months |COHORTS       |PHILIPPINES |<32                |NA             | 0.3450410| 0.3208266| 0.3692554|
|0-24 months |COHORTS       |PHILIPPINES |[32-38)            |NA             | 0.3371465| 0.2800695| 0.3942234|
|0-24 months |MAL-ED        |BANGLADESH  |>=38               |NA             | 0.2318841| 0.1319726| 0.3317955|
|0-24 months |MAL-ED        |BANGLADESH  |<32                |NA             | 0.3000000| 0.1354719| 0.4645281|
|0-24 months |MAL-ED        |BANGLADESH  |[32-38)            |NA             | 0.2115385| 0.1001669| 0.3229100|
|0-24 months |MAL-ED        |INDIA       |>=38               |NA             | 0.1666667| 0.0445476| 0.2887858|
|0-24 months |MAL-ED        |INDIA       |<32                |NA             | 0.2830189| 0.1613654| 0.4046724|
|0-24 months |MAL-ED        |INDIA       |[32-38)            |NA             | 0.2083333| 0.1142343| 0.3024324|
|0-24 months |PROBIT        |BELARUS     |>=38               |NA             | 0.0232972| 0.0099319| 0.0366626|
|0-24 months |PROBIT        |BELARUS     |<32                |NA             | 0.0274620| 0.0203354| 0.0345887|
|0-24 months |PROBIT        |BELARUS     |[32-38)            |NA             | 0.0247732| 0.0147994| 0.0347470|
|0-24 months |SAS-CompFeed  |INDIA       |>=38               |NA             | 0.3856990| 0.3371788| 0.4342192|
|0-24 months |SAS-CompFeed  |INDIA       |<32                |NA             | 0.3313506| 0.2747603| 0.3879408|
|0-24 months |SAS-CompFeed  |INDIA       |[32-38)            |NA             | 0.3925485| 0.3055494| 0.4795476|
|0-24 months |SAS-FoodSuppl |INDIA       |>=38               |NA             | 0.6200151| 0.4751068| 0.7649235|
|0-24 months |SAS-FoodSuppl |INDIA       |<32                |NA             | 0.4760679| 0.4181588| 0.5339771|
|0-24 months |SAS-FoodSuppl |INDIA       |[32-38)            |NA             | 0.4300212| 0.3226293| 0.5374131|


### Parameter: E(Y)


|agecat      |studyid       |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS       |GUATEMALA   |NA                 |NA             | 0.4650269| 0.4379137| 0.4921401|
|0-24 months |COHORTS       |PHILIPPINES |NA                 |NA             | 0.3602169| 0.3428934| 0.3775404|
|0-24 months |MAL-ED        |BANGLADESH  |NA                 |NA             | 0.2384106| 0.1702198| 0.3066014|
|0-24 months |MAL-ED        |INDIA       |NA                 |NA             | 0.2236025| 0.1590417| 0.2881632|
|0-24 months |PROBIT        |BELARUS     |NA                 |NA             | 0.0269706| 0.0196621| 0.0342790|
|0-24 months |SAS-CompFeed  |INDIA       |NA                 |NA             | 0.3300654| 0.3020915| 0.3580392|
|0-24 months |SAS-FoodSuppl |INDIA       |NA                 |NA             | 0.4808612| 0.4329065| 0.5288160|


### Parameter: RR


|agecat      |studyid       |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS       |GUATEMALA   |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS       |GUATEMALA   |<32                |>=38           | 1.0373376| 0.8376944| 1.2845607|
|0-24 months |COHORTS       |GUATEMALA   |[32-38)            |>=38           | 1.2170570| 0.9257127| 1.6000943|
|0-24 months |COHORTS       |PHILIPPINES |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS       |PHILIPPINES |<32                |>=38           | 0.9393869| 0.7618788| 1.1582522|
|0-24 months |COHORTS       |PHILIPPINES |[32-38)            |>=38           | 0.9178937| 0.7078729| 1.1902262|
|0-24 months |MAL-ED        |BANGLADESH  |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED        |BANGLADESH  |<32                |>=38           | 1.2937500| 0.6441055| 2.5986255|
|0-24 months |MAL-ED        |BANGLADESH  |[32-38)            |>=38           | 0.9122596| 0.4620194| 1.8012613|
|0-24 months |MAL-ED        |INDIA       |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED        |INDIA       |<32                |>=38           | 1.6981132| 0.7261684| 3.9709637|
|0-24 months |MAL-ED        |INDIA       |[32-38)            |>=38           | 1.2500000| 0.5285589| 2.9561513|
|0-24 months |PROBIT        |BELARUS     |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROBIT        |BELARUS     |<32                |>=38           | 1.1787692| 0.7157849| 1.9412212|
|0-24 months |PROBIT        |BELARUS     |[32-38)            |>=38           | 1.0633543| 0.6160905| 1.8353187|
|0-24 months |SAS-CompFeed  |INDIA       |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-CompFeed  |INDIA       |<32                |>=38           | 0.8590911| 0.7026747| 1.0503259|
|0-24 months |SAS-CompFeed  |INDIA       |[32-38)            |>=38           | 1.0177586| 0.8120723| 1.2755423|
|0-24 months |SAS-FoodSuppl |INDIA       |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-FoodSuppl |INDIA       |<32                |>=38           | 0.7678327| 0.5901786| 0.9989639|
|0-24 months |SAS-FoodSuppl |INDIA       |[32-38)            |>=38           | 0.6935657| 0.4928571| 0.9760097|


### Parameter: PAR


|agecat      |studyid       |country     |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:-------------|:-----------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |COHORTS       |GUATEMALA   |>=38               |NA             |  0.0537891| -0.0182702|  0.1258485|
|0-24 months |COHORTS       |PHILIPPINES |>=38               |NA             | -0.0070876| -0.0780135|  0.0638383|
|0-24 months |MAL-ED        |BANGLADESH  |>=38               |NA             |  0.0065265| -0.0676987|  0.0807518|
|0-24 months |MAL-ED        |INDIA       |>=38               |NA             |  0.0569358| -0.0544732|  0.1683448|
|0-24 months |PROBIT        |BELARUS     |>=38               |NA             |  0.0036734| -0.0073462|  0.0146929|
|0-24 months |SAS-CompFeed  |INDIA       |>=38               |NA             | -0.0556337| -0.1111385| -0.0001289|
|0-24 months |SAS-FoodSuppl |INDIA       |>=38               |NA             | -0.1391539| -0.2769785| -0.0013293|


### Parameter: PAF


|agecat      |studyid       |country     |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:-------------|:-----------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |COHORTS       |GUATEMALA   |>=38               |NA             |  0.1156689| -0.0538174|  0.2578966|
|0-24 months |COHORTS       |PHILIPPINES |>=38               |NA             | -0.0196759| -0.2368885|  0.1593915|
|0-24 months |MAL-ED        |BANGLADESH  |>=38               |NA             |  0.0273752| -0.3395046|  0.2937695|
|0-24 months |MAL-ED        |INDIA       |>=38               |NA             |  0.2546296| -0.4483342|  0.6164028|
|0-24 months |PROBIT        |BELARUS     |>=38               |NA             |  0.1361985| -0.3902891|  0.4633109|
|0-24 months |SAS-CompFeed  |INDIA       |>=38               |NA             | -0.1685535| -0.3579754| -0.0055537|
|0-24 months |SAS-FoodSuppl |INDIA       |>=38               |NA             | -0.2893847| -0.6129760| -0.0307115|
