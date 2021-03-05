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

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |gagebrth          | pers_wast| n_cell|     n|
|:-----------|:--------------|:----------------------------|:-----------------|---------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Full or late term |         0|    201|   351|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Full or late term |         1|     14|   351|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Preterm           |         0|     49|   351|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Preterm           |         1|      3|   351|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Early term        |         0|     81|   351|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Early term        |         1|      3|   351|
|0-24 months |COHORTS        |GUATEMALA                    |Full or late term |         0|    401|   732|
|0-24 months |COHORTS        |GUATEMALA                    |Full or late term |         1|      8|   732|
|0-24 months |COHORTS        |GUATEMALA                    |Preterm           |         0|    113|   732|
|0-24 months |COHORTS        |GUATEMALA                    |Preterm           |         1|      6|   732|
|0-24 months |COHORTS        |GUATEMALA                    |Early term        |         0|    198|   732|
|0-24 months |COHORTS        |GUATEMALA                    |Early term        |         1|      6|   732|
|0-24 months |COHORTS        |INDIA                        |Full or late term |         0|    470|  1186|
|0-24 months |COHORTS        |INDIA                        |Full or late term |         1|     42|  1186|
|0-24 months |COHORTS        |INDIA                        |Preterm           |         0|    248|  1186|
|0-24 months |COHORTS        |INDIA                        |Preterm           |         1|     18|  1186|
|0-24 months |COHORTS        |INDIA                        |Early term        |         0|    367|  1186|
|0-24 months |COHORTS        |INDIA                        |Early term        |         1|     41|  1186|
|0-24 months |COHORTS        |PHILIPPINES                  |Full or late term |         0|   1034|  2789|
|0-24 months |COHORTS        |PHILIPPINES                  |Full or late term |         1|     47|  2789|
|0-24 months |COHORTS        |PHILIPPINES                  |Preterm           |         0|    550|  2789|
|0-24 months |COHORTS        |PHILIPPINES                  |Preterm           |         1|     34|  2789|
|0-24 months |COHORTS        |PHILIPPINES                  |Early term        |         0|   1062|  2789|
|0-24 months |COHORTS        |PHILIPPINES                  |Early term        |         1|     62|  2789|
|0-24 months |IRC            |INDIA                        |Full or late term |         0|    225|   390|
|0-24 months |IRC            |INDIA                        |Full or late term |         1|     25|   390|
|0-24 months |IRC            |INDIA                        |Preterm           |         0|     34|   390|
|0-24 months |IRC            |INDIA                        |Preterm           |         1|      8|   390|
|0-24 months |IRC            |INDIA                        |Early term        |         0|     85|   390|
|0-24 months |IRC            |INDIA                        |Early term        |         1|     13|   390|
|0-24 months |JiVitA-3       |BANGLADESH                   |Full or late term |         0|   7749| 15049|
|0-24 months |JiVitA-3       |BANGLADESH                   |Full or late term |         1|    434| 15049|
|0-24 months |JiVitA-3       |BANGLADESH                   |Preterm           |         0|   2534| 15049|
|0-24 months |JiVitA-3       |BANGLADESH                   |Preterm           |         1|    172| 15049|
|0-24 months |JiVitA-3       |BANGLADESH                   |Early term        |         0|   3908| 15049|
|0-24 months |JiVitA-3       |BANGLADESH                   |Early term        |         1|    252| 15049|
|0-24 months |Keneba         |GAMBIA                       |Full or late term |         0|    733|  1579|
|0-24 months |Keneba         |GAMBIA                       |Full or late term |         1|     45|  1579|
|0-24 months |Keneba         |GAMBIA                       |Preterm           |         0|    226|  1579|
|0-24 months |Keneba         |GAMBIA                       |Preterm           |         1|     13|  1579|
|0-24 months |Keneba         |GAMBIA                       |Early term        |         0|    533|  1579|
|0-24 months |Keneba         |GAMBIA                       |Early term        |         1|     29|  1579|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Full or late term |         0|    156|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Full or late term |         1|      2|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Preterm           |         0|    241|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Preterm           |         1|     14|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Early term        |         0|    307|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Early term        |         1|     10|   730|
|0-24 months |PROBIT         |BELARUS                      |Full or late term |         0|   8401| 16583|
|0-24 months |PROBIT         |BELARUS                      |Full or late term |         1|     72| 16583|
|0-24 months |PROBIT         |BELARUS                      |Preterm           |         0|    574| 16583|
|0-24 months |PROBIT         |BELARUS                      |Preterm           |         1|      6| 16583|
|0-24 months |PROBIT         |BELARUS                      |Early term        |         0|   7474| 16583|
|0-24 months |PROBIT         |BELARUS                      |Early term        |         1|     56| 16583|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term |         0|   1212|  2035|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term |         1|     33|  2035|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm           |         0|    306|  2035|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm           |         1|     11|  2035|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term        |         0|    462|  2035|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term        |         1|     11|  2035|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH

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
![](/tmp/375f73e5-b207-4517-92a9-1381c21a036f/851ba13e-cc05-464e-ab7a-b3fed82b22c7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/375f73e5-b207-4517-92a9-1381c21a036f/851ba13e-cc05-464e-ab7a-b3fed82b22c7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/375f73e5-b207-4517-92a9-1381c21a036f/851ba13e-cc05-464e-ab7a-b3fed82b22c7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/375f73e5-b207-4517-92a9-1381c21a036f/851ba13e-cc05-464e-ab7a-b3fed82b22c7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |Full or late term  |NA             | 0.0195599| 0.0061299| 0.0329899|
|0-24 months |COHORTS        |GUATEMALA                    |Preterm            |NA             | 0.0504202| 0.0110797| 0.0897606|
|0-24 months |COHORTS        |GUATEMALA                    |Early term         |NA             | 0.0294118| 0.0062107| 0.0526128|
|0-24 months |COHORTS        |INDIA                        |Full or late term  |NA             | 0.0823895| 0.0585420| 0.1062369|
|0-24 months |COHORTS        |INDIA                        |Preterm            |NA             | 0.0688340| 0.0386828| 0.0989852|
|0-24 months |COHORTS        |INDIA                        |Early term         |NA             | 0.1016804| 0.0725235| 0.1308374|
|0-24 months |COHORTS        |PHILIPPINES                  |Full or late term  |NA             | 0.0429229| 0.0308063| 0.0550396|
|0-24 months |COHORTS        |PHILIPPINES                  |Preterm            |NA             | 0.0586401| 0.0396818| 0.0775983|
|0-24 months |COHORTS        |PHILIPPINES                  |Early term         |NA             | 0.0556643| 0.0423249| 0.0690037|
|0-24 months |IRC            |INDIA                        |Full or late term  |NA             | 0.1000000| 0.0627645| 0.1372355|
|0-24 months |IRC            |INDIA                        |Preterm            |NA             | 0.1904762| 0.0715668| 0.3093856|
|0-24 months |IRC            |INDIA                        |Early term         |NA             | 0.1326531| 0.0654100| 0.1998961|
|0-24 months |JiVitA-3       |BANGLADESH                   |Full or late term  |NA             | 0.0536817| 0.0481834| 0.0591800|
|0-24 months |JiVitA-3       |BANGLADESH                   |Preterm            |NA             | 0.0611685| 0.0517558| 0.0705813|
|0-24 months |JiVitA-3       |BANGLADESH                   |Early term         |NA             | 0.0606086| 0.0528590| 0.0683583|
|0-24 months |Keneba         |GAMBIA                       |Full or late term  |NA             | 0.0571938| 0.0409202| 0.0734674|
|0-24 months |Keneba         |GAMBIA                       |Preterm            |NA             | 0.0561472| 0.0266725| 0.0856219|
|0-24 months |Keneba         |GAMBIA                       |Early term         |NA             | 0.0515458| 0.0333044| 0.0697872|
|0-24 months |PROBIT         |BELARUS                      |Full or late term  |NA             | 0.0084976| 0.0040221| 0.0129731|
|0-24 months |PROBIT         |BELARUS                      |Preterm            |NA             | 0.0103448| 0.0029413| 0.0177483|
|0-24 months |PROBIT         |BELARUS                      |Early term         |NA             | 0.0074369| 0.0037707| 0.0111031|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |NA             | 0.0263407| 0.0174320| 0.0352494|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm            |NA             | 0.0340482| 0.0138947| 0.0542016|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term         |NA             | 0.0236723| 0.0097769| 0.0375676|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.0273224| 0.0155047| 0.0391401|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.0851602| 0.0692682| 0.1010522|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.0512729| 0.0430860| 0.0594597|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.1179487| 0.0858959| 0.1500016|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0570138| 0.0528460| 0.0611815|
|0-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.0550982| 0.0438403| 0.0663560|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0080806| 0.0045539| 0.0116073|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0270270| 0.0199797| 0.0340743|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level    |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:-----------------|---------:|---------:|--------:|
|0-24 months |COHORTS        |GUATEMALA                    |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA                    |Preterm            |Full or late term | 2.5777311| 0.9117126| 7.288149|
|0-24 months |COHORTS        |GUATEMALA                    |Early term         |Full or late term | 1.5036765| 0.5284081| 4.278971|
|0-24 months |COHORTS        |INDIA                        |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |INDIA                        |Preterm            |Full or late term | 0.8354707| 0.4941776| 1.412470|
|0-24 months |COHORTS        |INDIA                        |Early term         |Full or late term | 1.2341434| 0.8213223| 1.854461|
|0-24 months |COHORTS        |PHILIPPINES                  |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |Preterm            |Full or late term | 1.3661704| 0.8900877| 2.096896|
|0-24 months |COHORTS        |PHILIPPINES                  |Early term         |Full or late term | 1.2968426| 0.8962744| 1.876435|
|0-24 months |IRC            |INDIA                        |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-24 months |IRC            |INDIA                        |Preterm            |Full or late term | 1.9047619| 0.9207828| 3.940254|
|0-24 months |IRC            |INDIA                        |Early term         |Full or late term | 1.3265306| 0.7072263| 2.488148|
|0-24 months |JiVitA-3       |BANGLADESH                   |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |Preterm            |Full or late term | 1.1394667| 0.9481293| 1.369417|
|0-24 months |JiVitA-3       |BANGLADESH                   |Early term         |Full or late term | 1.1290369| 0.9656256| 1.320102|
|0-24 months |Keneba         |GAMBIA                       |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-24 months |Keneba         |GAMBIA                       |Preterm            |Full or late term | 0.9817015| 0.5402973| 1.783717|
|0-24 months |Keneba         |GAMBIA                       |Early term         |Full or late term | 0.9012486| 0.5722386| 1.419424|
|0-24 months |PROBIT         |BELARUS                      |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |Preterm            |Full or late term | 1.2173851| 0.5398571| 2.745220|
|0-24 months |PROBIT         |BELARUS                      |Early term         |Full or late term | 0.8751808| 0.5286513| 1.448859|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |Full or late term | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Preterm            |Full or late term | 1.2926068| 0.6537326| 2.555835|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Early term         |Full or late term | 0.8986953| 0.4565512| 1.769031|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |Full or late term  |NA             |  0.0077625| -0.0031218| 0.0186468|
|0-24 months |COHORTS        |INDIA                        |Full or late term  |NA             |  0.0027707| -0.0154167| 0.0209581|
|0-24 months |COHORTS        |PHILIPPINES                  |Full or late term  |NA             |  0.0083499| -0.0016092| 0.0183090|
|0-24 months |IRC            |INDIA                        |Full or late term  |NA             |  0.0179487| -0.0072768| 0.0431742|
|0-24 months |JiVitA-3       |BANGLADESH                   |Full or late term  |NA             |  0.0033320| -0.0002508| 0.0069149|
|0-24 months |Keneba         |GAMBIA                       |Full or late term  |NA             | -0.0020956| -0.0134374| 0.0092461|
|0-24 months |PROBIT         |BELARUS                      |Full or late term  |NA             | -0.0004170| -0.0023921| 0.0015581|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |NA             |  0.0006863| -0.0049481| 0.0063208|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |Full or late term  |NA             |  0.2841076| -0.2167890| 0.5788079|
|0-24 months |COHORTS        |INDIA                        |Full or late term  |NA             |  0.0325353| -0.2063548| 0.2241189|
|0-24 months |COHORTS        |PHILIPPINES                  |Full or late term  |NA             |  0.1628525| -0.0540576| 0.3351256|
|0-24 months |IRC            |INDIA                        |Full or late term  |NA             |  0.1521739| -0.0870878| 0.3387755|
|0-24 months |JiVitA-3       |BANGLADESH                   |Full or late term  |NA             |  0.0584429| -0.0067027| 0.1193728|
|0-24 months |Keneba         |GAMBIA                       |Full or late term  |NA             | -0.0380345| -0.2655382| 0.1485712|
|0-24 months |PROBIT         |BELARUS                      |Full or late term  |NA             | -0.0516073| -0.3205094| 0.1625369|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Full or late term  |NA             |  0.0253946| -0.2069749| 0.2130278|
