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

**Outcome Variable:** ever_wasted

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

|agecat                      |studyid    |country                      |impsan | ever_wasted| n_cell|     n|
|:---------------------------|:----------|:----------------------------|:------|-----------:|------:|-----:|
|0-24 months (no birth wast) |COHORTS    |GUATEMALA                    |1      |           0|     73|   870|
|0-24 months (no birth wast) |COHORTS    |GUATEMALA                    |1      |           1|      8|   870|
|0-24 months (no birth wast) |COHORTS    |GUATEMALA                    |0      |           0|    666|   870|
|0-24 months (no birth wast) |COHORTS    |GUATEMALA                    |0      |           1|    123|   870|
|0-24 months (no birth wast) |COHORTS    |INDIA                        |1      |           0|   1675|  5168|
|0-24 months (no birth wast) |COHORTS    |INDIA                        |1      |           1|    291|  5168|
|0-24 months (no birth wast) |COHORTS    |INDIA                        |0      |           0|   2500|  5168|
|0-24 months (no birth wast) |COHORTS    |INDIA                        |0      |           1|    702|  5168|
|0-24 months (no birth wast) |COHORTS    |PHILIPPINES                  |1      |           0|    142|  1185|
|0-24 months (no birth wast) |COHORTS    |PHILIPPINES                  |1      |           1|     37|  1185|
|0-24 months (no birth wast) |COHORTS    |PHILIPPINES                  |0      |           0|    661|  1185|
|0-24 months (no birth wast) |COHORTS    |PHILIPPINES                  |0      |           1|    345|  1185|
|0-24 months (no birth wast) |CONTENT    |PERU                         |1      |           0|    197|   215|
|0-24 months (no birth wast) |CONTENT    |PERU                         |1      |           1|      4|   215|
|0-24 months (no birth wast) |CONTENT    |PERU                         |0      |           0|     14|   215|
|0-24 months (no birth wast) |CONTENT    |PERU                         |0      |           1|      0|   215|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH                   |1      |           0|  15464| 26502|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH                   |1      |           1|   3047| 26502|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH                   |0      |           0|   6551| 26502|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH                   |0      |           1|   1440| 26502|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH                   |1      |           0|   3144|  5381|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH                   |1      |           1|   1017|  5381|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH                   |0      |           0|    850|  5381|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH                   |0      |           1|    370|  5381|
|0-24 months (no birth wast) |LCNI-5     |MALAWI                       |1      |           0|      3|   810|
|0-24 months (no birth wast) |LCNI-5     |MALAWI                       |1      |           1|      0|   810|
|0-24 months (no birth wast) |LCNI-5     |MALAWI                       |0      |           0|    753|   810|
|0-24 months (no birth wast) |LCNI-5     |MALAWI                       |0      |           1|     54|   810|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH                   |1      |           0|    157|   242|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH                   |1      |           1|     47|   242|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH                   |0      |           0|     28|   242|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH                   |0      |           1|     10|   242|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL                       |1      |           0|    193|   210|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL                       |1      |           1|     13|   210|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL                       |0      |           0|      4|   210|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL                       |0      |           1|      0|   210|
|0-24 months (no birth wast) |MAL-ED     |INDIA                        |1      |           0|     74|   229|
|0-24 months (no birth wast) |MAL-ED     |INDIA                        |1      |           1|     31|   229|
|0-24 months (no birth wast) |MAL-ED     |INDIA                        |0      |           0|     69|   229|
|0-24 months (no birth wast) |MAL-ED     |INDIA                        |0      |           1|     55|   229|
|0-24 months (no birth wast) |MAL-ED     |NEPAL                        |1      |           0|    189|   236|
|0-24 months (no birth wast) |MAL-ED     |NEPAL                        |1      |           1|     46|   236|
|0-24 months (no birth wast) |MAL-ED     |NEPAL                        |0      |           0|      1|   236|
|0-24 months (no birth wast) |MAL-ED     |NEPAL                        |0      |           1|      0|   236|
|0-24 months (no birth wast) |MAL-ED     |PERU                         |1      |           0|     59|   263|
|0-24 months (no birth wast) |MAL-ED     |PERU                         |1      |           1|      6|   263|
|0-24 months (no birth wast) |MAL-ED     |PERU                         |0      |           0|    183|   263|
|0-24 months (no birth wast) |MAL-ED     |PERU                         |0      |           1|     15|   263|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA                 |1      |           0|      3|   250|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA                 |1      |           1|      1|   250|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA                 |0      |           0|    203|   250|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA                 |0      |           1|     43|   250|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |1      |           0|      0|   241|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |1      |           1|      0|   241|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0      |           0|    208|   241|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0      |           1|     33|   241|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH                   |1      |           0|    180|   602|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH                   |1      |           1|     53|   602|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH                   |0      |           0|    244|   602|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH                   |0      |           1|    125|   602|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH                   |1      |           0|    560|   743|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH                   |1      |           1|     91|   743|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH                   |0      |           0|     77|   743|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH                   |0      |           1|     15|   743|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH                   |1      |           0|     47|    52|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH                   |1      |           1|      3|    52|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH                   |0      |           0|      2|    52|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH                   |0      |           1|      0|    52|
|0-6 months (no birth wast)  |COHORTS    |GUATEMALA                    |1      |           0|     67|   650|
|0-6 months (no birth wast)  |COHORTS    |GUATEMALA                    |1      |           1|      0|   650|
|0-6 months (no birth wast)  |COHORTS    |GUATEMALA                    |0      |           0|    571|   650|
|0-6 months (no birth wast)  |COHORTS    |GUATEMALA                    |0      |           1|     12|   650|
|0-6 months (no birth wast)  |COHORTS    |INDIA                        |1      |           0|   1651|  4723|
|0-6 months (no birth wast)  |COHORTS    |INDIA                        |1      |           1|    131|  4723|
|0-6 months (no birth wast)  |COHORTS    |INDIA                        |0      |           0|   2687|  4723|
|0-6 months (no birth wast)  |COHORTS    |INDIA                        |0      |           1|    254|  4723|
|0-6 months (no birth wast)  |COHORTS    |PHILIPPINES                  |1      |           0|    162|  1180|
|0-6 months (no birth wast)  |COHORTS    |PHILIPPINES                  |1      |           1|     17|  1180|
|0-6 months (no birth wast)  |COHORTS    |PHILIPPINES                  |0      |           0|    911|  1180|
|0-6 months (no birth wast)  |COHORTS    |PHILIPPINES                  |0      |           1|     90|  1180|
|0-6 months (no birth wast)  |CONTENT    |PERU                         |1      |           0|    198|   215|
|0-6 months (no birth wast)  |CONTENT    |PERU                         |1      |           1|      3|   215|
|0-6 months (no birth wast)  |CONTENT    |PERU                         |0      |           0|     14|   215|
|0-6 months (no birth wast)  |CONTENT    |PERU                         |0      |           1|      0|   215|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH                   |1      |           0|  17043| 26207|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH                   |1      |           1|   1264| 26207|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH                   |0      |           0|   7286| 26207|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH                   |0      |           1|    614| 26207|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH                   |1      |           0|   3742|  4945|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH                   |1      |           1|     96|  4945|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH                   |0      |           0|   1078|  4945|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH                   |0      |           1|     29|  4945|
|0-6 months (no birth wast)  |LCNI-5     |MALAWI                       |1      |           0|      0|   265|
|0-6 months (no birth wast)  |LCNI-5     |MALAWI                       |1      |           1|      0|   265|
|0-6 months (no birth wast)  |LCNI-5     |MALAWI                       |0      |           0|    265|   265|
|0-6 months (no birth wast)  |LCNI-5     |MALAWI                       |0      |           1|      0|   265|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH                   |1      |           0|    188|   241|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH                   |1      |           1|     15|   241|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH                   |0      |           0|     35|   241|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH                   |0      |           1|      3|   241|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL                       |1      |           0|    198|   210|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL                       |1      |           1|      8|   210|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL                       |0      |           0|      4|   210|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL                       |0      |           1|      0|   210|
|0-6 months (no birth wast)  |MAL-ED     |INDIA                        |1      |           0|     89|   227|
|0-6 months (no birth wast)  |MAL-ED     |INDIA                        |1      |           1|     15|   227|
|0-6 months (no birth wast)  |MAL-ED     |INDIA                        |0      |           0|    102|   227|
|0-6 months (no birth wast)  |MAL-ED     |INDIA                        |0      |           1|     21|   227|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL                        |1      |           0|    217|   234|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL                        |1      |           1|     16|   234|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL                        |0      |           0|      1|   234|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL                        |0      |           1|      0|   234|
|0-6 months (no birth wast)  |MAL-ED     |PERU                         |1      |           0|     64|   263|
|0-6 months (no birth wast)  |MAL-ED     |PERU                         |1      |           1|      1|   263|
|0-6 months (no birth wast)  |MAL-ED     |PERU                         |0      |           0|    194|   263|
|0-6 months (no birth wast)  |MAL-ED     |PERU                         |0      |           1|      4|   263|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA                 |1      |           0|      4|   249|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA                 |1      |           1|      0|   249|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA                 |0      |           0|    232|   249|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA                 |0      |           1|     13|   249|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |1      |           0|      0|   241|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |1      |           1|      0|   241|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0      |           0|    231|   241|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0      |           1|     10|   241|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH                   |1      |           0|    213|   584|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH                   |1      |           1|     14|   584|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH                   |0      |           0|    325|   584|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH                   |0      |           1|     32|   584|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH                   |1      |           0|    631|   738|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH                   |1      |           1|     16|   738|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH                   |0      |           0|     87|   738|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH                   |0      |           1|      4|   738|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH                   |1      |           0|     48|    52|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH                   |1      |           1|      2|    52|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH                   |0      |           0|      2|    52|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH                   |0      |           1|      0|    52|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH

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
![](/tmp/89b22f1c-d04d-4e25-b39e-0df5a74b916e/2cec82a9-809b-44ea-8828-acf955a0d744/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/89b22f1c-d04d-4e25-b39e-0df5a74b916e/2cec82a9-809b-44ea-8828-acf955a0d744/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/89b22f1c-d04d-4e25-b39e-0df5a74b916e/2cec82a9-809b-44ea-8828-acf955a0d744/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/89b22f1c-d04d-4e25-b39e-0df5a74b916e/2cec82a9-809b-44ea-8828-acf955a0d744/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid    |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:----------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |COHORTS    |GUATEMALA   |1                  |NA             | 0.0987654| 0.0337559| 0.1637749|
|0-24 months (no birth wast) |COHORTS    |GUATEMALA   |0                  |NA             | 0.1558935| 0.1305672| 0.1812199|
|0-24 months (no birth wast) |COHORTS    |INDIA       |1                  |NA             | 0.1631476| 0.1445632| 0.1817320|
|0-24 months (no birth wast) |COHORTS    |INDIA       |0                  |NA             | 0.2090983| 0.1946477| 0.2235490|
|0-24 months (no birth wast) |COHORTS    |PHILIPPINES |1                  |NA             | 0.2415003| 0.1722926| 0.3107079|
|0-24 months (no birth wast) |COHORTS    |PHILIPPINES |0                  |NA             | 0.3390829| 0.3096337| 0.3685322|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH  |1                  |NA             | 0.1686430| 0.1620658| 0.1752201|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH  |0                  |NA             | 0.1867349| 0.1734812| 0.1999887|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH  |1                  |NA             | 0.2514533| 0.2358632| 0.2670433|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH  |0                  |NA             | 0.2915990| 0.2536814| 0.3295166|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH  |1                  |NA             | 0.2319482| 0.1740400| 0.2898564|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH  |0                  |NA             | 0.2356458| 0.0903446| 0.3809470|
|0-24 months (no birth wast) |MAL-ED     |INDIA       |1                  |NA             | 0.3058687| 0.2183082| 0.3934291|
|0-24 months (no birth wast) |MAL-ED     |INDIA       |0                  |NA             | 0.4419695| 0.3551369| 0.5288020|
|0-24 months (no birth wast) |MAL-ED     |PERU        |1                  |NA             | 0.0923077| 0.0218048| 0.1628106|
|0-24 months (no birth wast) |MAL-ED     |PERU        |0                  |NA             | 0.0757576| 0.0388302| 0.1126850|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH  |1                  |NA             | 0.2349747| 0.1799764| 0.2899729|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH  |0                  |NA             | 0.3312817| 0.2829582| 0.3796052|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH  |1                  |NA             | 0.1400407| 0.1133378| 0.1667435|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH  |0                  |NA             | 0.1570743| 0.0800163| 0.2341324|
|0-6 months (no birth wast)  |COHORTS    |INDIA       |1                  |NA             | 0.0746248| 0.0612335| 0.0880162|
|0-6 months (no birth wast)  |COHORTS    |INDIA       |0                  |NA             | 0.0857436| 0.0752261| 0.0962611|
|0-6 months (no birth wast)  |COHORTS    |PHILIPPINES |1                  |NA             | 0.0920968| 0.0482672| 0.1359265|
|0-6 months (no birth wast)  |COHORTS    |PHILIPPINES |0                  |NA             | 0.0902630| 0.0724280| 0.1080979|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH  |1                  |NA             | 0.0712721| 0.0667124| 0.0758318|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH  |0                  |NA             | 0.0752701| 0.0666212| 0.0839191|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH  |1                  |NA             | 0.0254325| 0.0201356| 0.0307295|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH  |0                  |NA             | 0.0236397| 0.0138097| 0.0334697|
|0-6 months (no birth wast)  |MAL-ED     |INDIA       |1                  |NA             | 0.1469524| 0.0785349| 0.2153699|
|0-6 months (no birth wast)  |MAL-ED     |INDIA       |0                  |NA             | 0.1710257| 0.1042364| 0.2378151|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH  |1                  |NA             | 0.0602198| 0.0289519| 0.0914877|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH  |0                  |NA             | 0.0903835| 0.0604496| 0.1203174|


### Parameter: E(Y)


|agecat                      |studyid    |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:----------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |COHORTS    |GUATEMALA   |NA                 |NA             | 0.1505747| 0.1267966| 0.1743528|
|0-24 months (no birth wast) |COHORTS    |INDIA       |NA                 |NA             | 0.1921440| 0.1814014| 0.2028866|
|0-24 months (no birth wast) |COHORTS    |PHILIPPINES |NA                 |NA             | 0.3223629| 0.2957407| 0.3489850|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH  |NA                 |NA             | 0.1693080| 0.1640179| 0.1745980|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH  |NA                 |NA             | 0.2577588| 0.2441239| 0.2713937|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH  |NA                 |NA             | 0.2355372| 0.1819640| 0.2891104|
|0-24 months (no birth wast) |MAL-ED     |INDIA       |NA                 |NA             | 0.3755459| 0.3126876| 0.4384041|
|0-24 months (no birth wast) |MAL-ED     |PERU        |NA                 |NA             | 0.0798479| 0.0470264| 0.1126695|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH  |NA                 |NA             | 0.2956811| 0.2591967| 0.3321655|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH  |NA                 |NA             | 0.1426649| 0.1175009| 0.1678289|
|0-6 months (no birth wast)  |COHORTS    |INDIA       |NA                 |NA             | 0.0815160| 0.0737115| 0.0893204|
|0-6 months (no birth wast)  |COHORTS    |PHILIPPINES |NA                 |NA             | 0.0906780| 0.0742871| 0.1070688|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH  |NA                 |NA             | 0.0716602| 0.0680237| 0.0752968|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH  |NA                 |NA             | 0.0252781| 0.0205710| 0.0299851|
|0-6 months (no birth wast)  |MAL-ED     |INDIA       |NA                 |NA             | 0.1585903| 0.1109652| 0.2062154|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH  |NA                 |NA             | 0.0787671| 0.0569010| 0.1006332|


### Parameter: RR


|agecat                      |studyid    |country     |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:----------|:-----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |COHORTS    |GUATEMALA   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |COHORTS    |GUATEMALA   |0                  |1              | 1.5784221| 0.8012777| 3.109304|
|0-24 months (no birth wast) |COHORTS    |INDIA       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |COHORTS    |INDIA       |0                  |1              | 1.2816513| 1.1220898| 1.463902|
|0-24 months (no birth wast) |COHORTS    |PHILIPPINES |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |COHORTS    |PHILIPPINES |0                  |1              | 1.4040685| 1.0407782| 1.894168|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH  |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH  |0                  |1              | 1.1072797| 1.0250344| 1.196124|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH  |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH  |0                  |1              | 1.1596547| 1.0069519| 1.335515|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH  |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH  |0                  |1              | 1.0159417| 0.5233348| 1.972232|
|0-24 months (no birth wast) |MAL-ED     |INDIA       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED     |INDIA       |0                  |1              | 1.4449649| 1.0237307| 2.039524|
|0-24 months (no birth wast) |MAL-ED     |PERU        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED     |PERU        |0                  |1              | 0.8207071| 0.3316556| 2.030902|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH  |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH  |0                  |1              | 1.4098613| 1.0724152| 1.853488|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH  |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH  |0                  |1              | 1.1216338| 0.6620192| 1.900341|
|0-6 months (no birth wast)  |COHORTS    |INDIA       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |COHORTS    |INDIA       |0                  |1              | 1.1489953| 0.9245180| 1.427977|
|0-6 months (no birth wast)  |COHORTS    |PHILIPPINES |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |COHORTS    |PHILIPPINES |0                  |1              | 0.9800875| 0.5853702| 1.640964|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH  |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH  |0                  |1              | 1.0560957| 0.9275567| 1.202447|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH  |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH  |0                  |1              | 0.9295072| 0.5825911| 1.483002|
|0-6 months (no birth wast)  |MAL-ED     |INDIA       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |MAL-ED     |INDIA       |0                  |1              | 1.1638172| 0.6321132| 2.142766|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH  |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH  |0                  |1              | 1.5008937| 0.8107882| 2.778385|


### Parameter: PAR


|agecat                      |studyid    |country     |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:----------|:-----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |COHORTS    |GUATEMALA   |1                  |NA             |  0.0518093| -0.0114732| 0.1150918|
|0-24 months (no birth wast) |COHORTS    |INDIA       |1                  |NA             |  0.0289964|  0.0129799| 0.0450128|
|0-24 months (no birth wast) |COHORTS    |PHILIPPINES |1                  |NA             |  0.0808626|  0.0150248| 0.1467004|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH  |1                  |NA             |  0.0006650| -0.0031537| 0.0044837|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH  |1                  |NA             |  0.0063055| -0.0018863| 0.0144973|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH  |1                  |NA             |  0.0035890| -0.0201164| 0.0272944|
|0-24 months (no birth wast) |MAL-ED     |INDIA       |1                  |NA             |  0.0696772|  0.0026506| 0.1367038|
|0-24 months (no birth wast) |MAL-ED     |PERU        |1                  |NA             | -0.0124598| -0.0723842| 0.0474646|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH  |1                  |NA             |  0.0607064|  0.0149213| 0.1064914|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH  |1                  |NA             |  0.0026242| -0.0073615| 0.0126099|
|0-6 months (no birth wast)  |COHORTS    |INDIA       |1                  |NA             |  0.0068911| -0.0043838| 0.0181661|
|0-6 months (no birth wast)  |COHORTS    |PHILIPPINES |1                  |NA             | -0.0014189| -0.0418922| 0.0390544|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH  |1                  |NA             |  0.0003882| -0.0024229| 0.0031992|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH  |1                  |NA             | -0.0001545| -0.0030860| 0.0027771|
|0-6 months (no birth wast)  |MAL-ED     |INDIA       |1                  |NA             |  0.0116379| -0.0406712| 0.0639470|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH  |1                  |NA             |  0.0185473| -0.0078041| 0.0448988|


### Parameter: PAF


|agecat                      |studyid    |country     |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:----------|:-----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |COHORTS    |GUATEMALA   |1                  |NA             |  0.3440769| -0.2397390| 0.6529632|
|0-24 months (no birth wast) |COHORTS    |INDIA       |1                  |NA             |  0.1509095|  0.0635715| 0.2301017|
|0-24 months (no birth wast) |COHORTS    |PHILIPPINES |1                  |NA             |  0.2508434|  0.0166463| 0.4292637|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH  |1                  |NA             |  0.0039278| -0.0188867| 0.0262314|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH  |1                  |NA             |  0.0244629| -0.0078090| 0.0557013|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH  |1                  |NA             |  0.0152376| -0.0906765| 0.1108665|
|0-24 months (no birth wast) |MAL-ED     |INDIA       |1                  |NA             |  0.1855358| -0.0138065| 0.3456819|
|0-24 months (no birth wast) |MAL-ED     |PERU        |1                  |NA             | -0.1560440| -1.2084404| 0.3948500|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH  |1                  |NA             |  0.2053103|  0.0355431| 0.3451945|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH  |1                  |NA             |  0.0183943| -0.0540986| 0.0859016|
|0-6 months (no birth wast)  |COHORTS    |INDIA       |1                  |NA             |  0.0845372| -0.0645840| 0.2127704|
|0-6 months (no birth wast)  |COHORTS    |PHILIPPINES |1                  |NA             | -0.0156475| -0.5761259| 0.3455219|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH  |1                  |NA             |  0.0054166| -0.0345915| 0.0438776|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH  |1                  |NA             | -0.0061115| -0.1291633| 0.1035305|
|0-6 months (no birth wast)  |MAL-ED     |INDIA       |1                  |NA             |  0.0733834| -0.3217990| 0.3504169|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH  |1                  |NA             |  0.2354706| -0.1769739| 0.5033831|
