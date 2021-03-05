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

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* W_nrooms
* impsan
* delta_W_mage
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |meducyrs | ever_sstunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:--------|-------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High     |             0|     65|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High     |             1|     93|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Low      |             0|     37|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Low      |             1|     69|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Medium   |             0|     34|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Medium   |             1|     75|   373|
|0-24 months |COHORTS        |GUATEMALA                    |High     |             0|    161|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |High     |             1|    124|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |Low      |             0|    326|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |Low      |             1|    310|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |Medium   |             0|    232|  1341|
|0-24 months |COHORTS        |GUATEMALA                    |Medium   |             1|    188|  1341|
|0-24 months |COHORTS        |INDIA                        |High     |             0|    761|  5852|
|0-24 months |COHORTS        |INDIA                        |High     |             1|     32|  5852|
|0-24 months |COHORTS        |INDIA                        |Low      |             0|   1530|  5852|
|0-24 months |COHORTS        |INDIA                        |Low      |             1|    426|  5852|
|0-24 months |COHORTS        |INDIA                        |Medium   |             0|   2788|  5852|
|0-24 months |COHORTS        |INDIA                        |Medium   |             1|    315|  5852|
|0-24 months |COHORTS        |PHILIPPINES                  |High     |             0|    885|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |High     |             1|    288|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |Low      |             0|    481|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |Low      |             1|    422|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium   |             0|    603|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium   |             1|    379|  3058|
|0-24 months |EE             |PAKISTAN                     |High     |             0|      8|   376|
|0-24 months |EE             |PAKISTAN                     |High     |             1|      7|   376|
|0-24 months |EE             |PAKISTAN                     |Low      |             0|    122|   376|
|0-24 months |EE             |PAKISTAN                     |Low      |             1|    206|   376|
|0-24 months |EE             |PAKISTAN                     |Medium   |             0|     20|   376|
|0-24 months |EE             |PAKISTAN                     |Medium   |             1|     13|   376|
|0-24 months |GMS-Nepal      |NEPAL                        |High     |             0|     71|   695|
|0-24 months |GMS-Nepal      |NEPAL                        |High     |             1|     14|   695|
|0-24 months |GMS-Nepal      |NEPAL                        |Low      |             0|    360|   695|
|0-24 months |GMS-Nepal      |NEPAL                        |Low      |             1|    126|   695|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium   |             0|     95|   695|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium   |             1|     29|   695|
|0-24 months |Guatemala BSC  |GUATEMALA                    |High     |             0|     96|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |High     |             1|     22|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Low      |             0|     57|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Low      |             1|     19|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Medium   |             0|     76|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Medium   |             1|     12|   282|
|0-24 months |IRC            |INDIA                        |High     |             0|    101|   410|
|0-24 months |IRC            |INDIA                        |High     |             1|     23|   410|
|0-24 months |IRC            |INDIA                        |Low      |             0|    111|   410|
|0-24 months |IRC            |INDIA                        |Low      |             1|     36|   410|
|0-24 months |IRC            |INDIA                        |Medium   |             0|     96|   410|
|0-24 months |IRC            |INDIA                        |Medium   |             1|     43|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |High     |             0|   7817| 27193|
|0-24 months |JiVitA-3       |BANGLADESH                   |High     |             1|   1210| 27193|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low      |             0|   7779| 27193|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low      |             1|   2088| 27193|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium   |             0|   6577| 27193|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium   |             1|   1722| 27193|
|0-24 months |JiVitA-4       |BANGLADESH                   |High     |             0|   1623|  5419|
|0-24 months |JiVitA-4       |BANGLADESH                   |High     |             1|    278|  5419|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low      |             0|   1328|  5419|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low      |             1|    457|  5419|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium   |             0|   1365|  5419|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium   |             1|    368|  5419|
|0-24 months |LCNI-5         |MALAWI                       |High     |             0|    251|   814|
|0-24 months |LCNI-5         |MALAWI                       |High     |             1|     47|   814|
|0-24 months |LCNI-5         |MALAWI                       |Low      |             0|    191|   814|
|0-24 months |LCNI-5         |MALAWI                       |Low      |             1|     70|   814|
|0-24 months |LCNI-5         |MALAWI                       |Medium   |             0|    203|   814|
|0-24 months |LCNI-5         |MALAWI                       |Medium   |             1|     52|   814|
|0-24 months |MAL-ED         |BANGLADESH                   |High     |             0|     64|   214|
|0-24 months |MAL-ED         |BANGLADESH                   |High     |             1|     14|   214|
|0-24 months |MAL-ED         |BANGLADESH                   |Low      |             0|     55|   214|
|0-24 months |MAL-ED         |BANGLADESH                   |Low      |             1|     15|   214|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium   |             0|     55|   214|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium   |             1|     11|   214|
|0-24 months |MAL-ED         |BRAZIL                       |High     |             0|     69|   232|
|0-24 months |MAL-ED         |BRAZIL                       |High     |             1|     10|   232|
|0-24 months |MAL-ED         |BRAZIL                       |Low      |             0|     60|   232|
|0-24 months |MAL-ED         |BRAZIL                       |Low      |             1|      3|   232|
|0-24 months |MAL-ED         |BRAZIL                       |Medium   |             0|     81|   232|
|0-24 months |MAL-ED         |BRAZIL                       |Medium   |             1|      9|   232|
|0-24 months |MAL-ED         |INDIA                        |High     |             0|     50|   220|
|0-24 months |MAL-ED         |INDIA                        |High     |             1|     13|   220|
|0-24 months |MAL-ED         |INDIA                        |Low      |             0|     59|   220|
|0-24 months |MAL-ED         |INDIA                        |Low      |             1|     17|   220|
|0-24 months |MAL-ED         |INDIA                        |Medium   |             0|     64|   220|
|0-24 months |MAL-ED         |INDIA                        |Medium   |             1|     17|   220|
|0-24 months |MAL-ED         |NEPAL                        |High     |             0|     48|   225|
|0-24 months |MAL-ED         |NEPAL                        |High     |             1|      5|   225|
|0-24 months |MAL-ED         |NEPAL                        |Low      |             0|     88|   225|
|0-24 months |MAL-ED         |NEPAL                        |Low      |             1|      8|   225|
|0-24 months |MAL-ED         |NEPAL                        |Medium   |             0|     70|   225|
|0-24 months |MAL-ED         |NEPAL                        |Medium   |             1|      6|   225|
|0-24 months |MAL-ED         |PERU                         |High     |             0|     71|   302|
|0-24 months |MAL-ED         |PERU                         |High     |             1|     20|   302|
|0-24 months |MAL-ED         |PERU                         |Low      |             0|     83|   302|
|0-24 months |MAL-ED         |PERU                         |Low      |             1|     21|   302|
|0-24 months |MAL-ED         |PERU                         |Medium   |             0|     84|   302|
|0-24 months |MAL-ED         |PERU                         |Medium   |             1|     23|   302|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High     |             0|     75|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High     |             1|     20|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |             0|    111|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |             1|     39|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |             0|     55|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |             1|     14|   314|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |             0|      6|   217|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |             1|      5|   217|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |             0|     27|   217|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |             1|     37|   217|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |             0|     77|   217|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |             1|     65|   217|
|0-24 months |NIH-Birth      |BANGLADESH                   |High     |             0|    138|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |High     |             1|     41|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |Low      |             0|    139|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |Low      |             1|     91|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |Medium   |             0|    156|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |Medium   |             1|     64|   629|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High     |             0|    234|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High     |             1|     20|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low      |             0|    202|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low      |             1|     40|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |             0|    223|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |             1|     39|   758|
|0-24 months |PROBIT         |BELARUS                      |High     |             0|   2797| 16897|
|0-24 months |PROBIT         |BELARUS                      |High     |             1|     43| 16897|
|0-24 months |PROBIT         |BELARUS                      |Low      |             0|   5863| 16897|
|0-24 months |PROBIT         |BELARUS                      |Low      |             1|    237| 16897|
|0-24 months |PROBIT         |BELARUS                      |Medium   |             0|   7770| 16897|
|0-24 months |PROBIT         |BELARUS                      |Medium   |             1|    187| 16897|
|0-24 months |PROVIDE        |BANGLADESH                   |High     |             0|    217|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |High     |             1|     18|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Low      |             0|    180|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Low      |             1|     34|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium   |             0|    208|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium   |             1|     43|   700|
|0-24 months |SAS-CompFeed   |INDIA                        |High     |             0|    265|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |High     |             1|     58|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |Low      |             0|    401|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |Low      |             1|    295|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium   |             0|    360|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium   |             1|    154|  1533|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High     |             0|     27|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High     |             1|     14|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low      |             0|    167|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low      |             1|    165|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |             0|     23|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |             1|     22|   418|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |             0|    568|  2386|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |             1|     53|  2386|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |             0|     71|  2386|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |             1|     11|  2386|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |             0|   1510|  2386|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |             1|    173|  2386|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High     |             0|   6498| 14054|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High     |             1|   1126| 14054|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |             0|   2367| 14054|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |             1|    592| 14054|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |             0|   2824| 14054|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |             1|    647| 14054|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: IRC, country: INDIA
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
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL

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

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/864e3ab3-bce4-4dea-beae-e90471bf4a7a/72dcd725-834e-46b2-844c-2cf84c271dd8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/864e3ab3-bce4-4dea-beae-e90471bf4a7a/72dcd725-834e-46b2-844c-2cf84c271dd8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/864e3ab3-bce4-4dea-beae-e90471bf4a7a/72dcd725-834e-46b2-844c-2cf84c271dd8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/864e3ab3-bce4-4dea-beae-e90471bf4a7a/72dcd725-834e-46b2-844c-2cf84c271dd8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High               |NA             | 0.5873213| 0.5098300| 0.6648125|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Low                |NA             | 0.6509278| 0.5592001| 0.7426555|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Medium             |NA             | 0.6887935| 0.6005241| 0.7770628|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             | 0.4808950| 0.4164922| 0.5452978|
|0-24 months |COHORTS        |GUATEMALA                    |Low                |NA             | 0.4674964| 0.4275732| 0.5074197|
|0-24 months |COHORTS        |GUATEMALA                    |Medium             |NA             | 0.4483259| 0.3919434| 0.5047085|
|0-24 months |COHORTS        |INDIA                        |High               |NA             | 0.0379202| 0.0248942| 0.0509462|
|0-24 months |COHORTS        |INDIA                        |Low                |NA             | 0.2114608| 0.1919864| 0.2309352|
|0-24 months |COHORTS        |INDIA                        |Medium             |NA             | 0.1020604| 0.0911028| 0.1130180|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             | 0.3217006| 0.2897575| 0.3536437|
|0-24 months |COHORTS        |PHILIPPINES                  |Low                |NA             | 0.3610741| 0.3249999| 0.3971483|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium             |NA             | 0.3879445| 0.3539450| 0.4219439|
|0-24 months |EE             |PAKISTAN                     |High               |NA             | 0.4666667| 0.2138629| 0.7194704|
|0-24 months |EE             |PAKISTAN                     |Low                |NA             | 0.6280488| 0.5756732| 0.6804244|
|0-24 months |EE             |PAKISTAN                     |Medium             |NA             | 0.3939394| 0.2270064| 0.5608724|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             | 0.1619798| 0.0792680| 0.2446915|
|0-24 months |GMS-Nepal      |NEPAL                        |Low                |NA             | 0.2576396| 0.2181913| 0.2970879|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium             |NA             | 0.2215779| 0.1422079| 0.3009479|
|0-24 months |Guatemala BSC  |GUATEMALA                    |High               |NA             | 0.1908045| 0.1201463| 0.2614627|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Low                |NA             | 0.2604067| 0.1615808| 0.3592326|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Medium             |NA             | 0.1432470| 0.0707067| 0.2157874|
|0-24 months |IRC            |INDIA                        |High               |NA             | 0.1839842| 0.1145570| 0.2534114|
|0-24 months |IRC            |INDIA                        |Low                |NA             | 0.2480717| 0.1801833| 0.3159601|
|0-24 months |IRC            |INDIA                        |Medium             |NA             | 0.3096332| 0.2367701| 0.3824963|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             | 0.1745543| 0.1654334| 0.1836753|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low                |NA             | 0.1896169| 0.1796940| 0.1995397|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium             |NA             | 0.1939451| 0.1840646| 0.2038256|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             | 0.1912223| 0.1669799| 0.2154646|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low                |NA             | 0.2235884| 0.2014201| 0.2457566|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium             |NA             | 0.2023638| 0.1798360| 0.2248916|
|0-24 months |LCNI-5         |MALAWI                       |High               |NA             | 0.1752406| 0.1334543| 0.2170269|
|0-24 months |LCNI-5         |MALAWI                       |Low                |NA             | 0.2458733| 0.1938791| 0.2978675|
|0-24 months |LCNI-5         |MALAWI                       |Medium             |NA             | 0.2077646| 0.1582963| 0.2572330|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |NA             | 0.1787266| 0.0916453| 0.2658078|
|0-24 months |MAL-ED         |BANGLADESH                   |Low                |NA             | 0.2096711| 0.1129238| 0.3064184|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium             |NA             | 0.1561978| 0.0674772| 0.2449184|
|0-24 months |MAL-ED         |INDIA                        |High               |NA             | 0.2243076| 0.1224645| 0.3261507|
|0-24 months |MAL-ED         |INDIA                        |Low                |NA             | 0.2413015| 0.1496462| 0.3329567|
|0-24 months |MAL-ED         |INDIA                        |Medium             |NA             | 0.2057318| 0.1192940| 0.2921697|
|0-24 months |MAL-ED         |NEPAL                        |High               |NA             | 0.0943396| 0.0154705| 0.1732088|
|0-24 months |MAL-ED         |NEPAL                        |Low                |NA             | 0.0833333| 0.0279225| 0.1387442|
|0-24 months |MAL-ED         |NEPAL                        |Medium             |NA             | 0.0789474| 0.0181871| 0.1397076|
|0-24 months |MAL-ED         |PERU                         |High               |NA             | 0.2312669| 0.1420964| 0.3204374|
|0-24 months |MAL-ED         |PERU                         |Low                |NA             | 0.1887394| 0.1136332| 0.2638456|
|0-24 months |MAL-ED         |PERU                         |Medium             |NA             | 0.2197816| 0.1408235| 0.2987397|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             | 0.2193291| 0.1347167| 0.3039415|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low                |NA             | 0.2551097| 0.1850537| 0.3251657|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium             |NA             | 0.2005445| 0.1040764| 0.2970126|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High               |NA             | 0.4545455| 0.1596129| 0.7494780|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low                |NA             | 0.5781250| 0.4568521| 0.6993979|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium             |NA             | 0.4577465| 0.3756129| 0.5398800|
|0-24 months |NIH-Birth      |BANGLADESH                   |High               |NA             | 0.2611389| 0.2003615| 0.3219164|
|0-24 months |NIH-Birth      |BANGLADESH                   |Low                |NA             | 0.3853510| 0.3259509| 0.4447511|
|0-24 months |NIH-Birth      |BANGLADESH                   |Medium             |NA             | 0.2856787| 0.2257602| 0.3455973|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             | 0.0845888| 0.0525258| 0.1166517|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low                |NA             | 0.1632933| 0.1173198| 0.2092667|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |NA             | 0.1372557| 0.0946776| 0.1798338|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             | 0.0162501| 0.0072971| 0.0252030|
|0-24 months |PROBIT         |BELARUS                      |Low                |NA             | 0.0351647| 0.0225599| 0.0477694|
|0-24 months |PROBIT         |BELARUS                      |Medium             |NA             | 0.0239419| 0.0171859| 0.0306979|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             | 0.0776046| 0.0434313| 0.1117779|
|0-24 months |PROVIDE        |BANGLADESH                   |Low                |NA             | 0.1639038| 0.1144523| 0.2133554|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium             |NA             | 0.1729584| 0.1265669| 0.2193500|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             | 0.2421185| 0.1825406| 0.3016965|
|0-24 months |SAS-CompFeed   |INDIA                        |Low                |NA             | 0.3824671| 0.3469110| 0.4180232|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium             |NA             | 0.3207259| 0.2911622| 0.3502896|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             | 0.3507191| 0.1850771| 0.5163612|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low                |NA             | 0.4942178| 0.4396910| 0.5487446|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |NA             | 0.4861269| 0.3215186| 0.6507352|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | 0.0904385| 0.0680375| 0.1128395|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |NA             | 0.1290694| 0.0545436| 0.2035951|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |NA             | 0.1012689| 0.0868211| 0.1157167|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             | 0.1553032| 0.1465301| 0.1640764|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |NA             | 0.1820546| 0.1671031| 0.1970060|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |NA             | 0.1786140| 0.1657239| 0.1915041|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.6353887| 0.5864772| 0.6843003|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.4638330| 0.4371320| 0.4905339|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.1320916| 0.1234158| 0.1407674|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.3561151| 0.3391405| 0.3730897|
|0-24 months |EE             |PAKISTAN                     |NA                 |NA             | 0.6010638| 0.5515023| 0.6506253|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.2431655| 0.2112486| 0.2750823|
|0-24 months |Guatemala BSC  |GUATEMALA                    |NA                 |NA             | 0.1879433| 0.1422658| 0.2336207|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.2487805| 0.2068840| 0.2906770|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1846063| 0.1789984| 0.1902143|
|0-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.2035431| 0.1916695| 0.2154167|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.2076167| 0.1797361| 0.2354973|
|0-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.1869159| 0.1345620| 0.2392698|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.2136364| 0.1593519| 0.2679208|
|0-24 months |MAL-ED         |NEPAL                        |NA                 |NA             | 0.0844444| 0.0480318| 0.1208571|
|0-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.2119205| 0.1657530| 0.2580880|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.2324841| 0.1856873| 0.2792809|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.4930876| 0.4264146| 0.5597605|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.3116057| 0.2753823| 0.3478292|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1306069| 0.1066024| 0.1546113|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0276380| 0.0201988| 0.0350773|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1357143| 0.1103250| 0.1611036|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.3307241| 0.3024794| 0.3589688|
|0-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.4808612| 0.4329065| 0.5288160|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0993294| 0.0873254| 0.1113334|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.1682795| 0.1620941| 0.1744649|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Low                |High           | 1.1082994| 0.9137639| 1.344251|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Medium             |High           | 1.1727712| 0.9758144| 1.409482|
|0-24 months |COHORTS        |GUATEMALA                    |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA                    |Low                |High           | 0.9721383| 0.8325588| 1.135118|
|0-24 months |COHORTS        |GUATEMALA                    |Medium             |High           | 0.9322741| 0.7787496| 1.116065|
|0-24 months |COHORTS        |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |INDIA                        |Low                |High           | 5.5764663| 3.9079072| 7.957450|
|0-24 months |COHORTS        |INDIA                        |Medium             |High           | 2.6914507| 1.8782743| 3.856682|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |Low                |High           | 1.1223918| 0.9774811| 1.288785|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium             |High           | 1.2059179| 1.0592141| 1.372941|
|0-24 months |EE             |PAKISTAN                     |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |EE             |PAKISTAN                     |Low                |High           | 1.3458188| 0.7779437| 2.328225|
|0-24 months |EE             |PAKISTAN                     |Medium             |High           | 0.8441558| 0.4243530| 1.679260|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal      |NEPAL                        |Low                |High           | 1.5905668| 0.9330599| 2.711404|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium             |High           | 1.3679358| 0.7332784| 2.551893|
|0-24 months |Guatemala BSC  |GUATEMALA                    |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Low                |High           | 1.3647825| 0.8037339| 2.317473|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Medium             |High           | 0.7507529| 0.3994280| 1.411093|
|0-24 months |IRC            |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |IRC            |INDIA                        |Low                |High           | 1.3483312| 0.8500770| 2.138626|
|0-24 months |IRC            |INDIA                        |Medium             |High           | 1.6829334| 1.0857391| 2.608605|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low                |High           | 1.0862914| 1.0182978| 1.158825|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium             |High           | 1.1110876| 1.0405780| 1.186375|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low                |High           | 1.1692591| 1.0028443| 1.363289|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium             |High           | 1.0582649| 0.8969156| 1.248640|
|0-24 months |LCNI-5         |MALAWI                       |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |LCNI-5         |MALAWI                       |Low                |High           | 1.4030615| 1.0232694| 1.923816|
|0-24 months |LCNI-5         |MALAWI                       |Medium             |High           | 1.1855967| 0.8502635| 1.653181|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |BANGLADESH                   |Low                |High           | 1.1731387| 0.6000661| 2.293505|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium             |High           | 0.8739483| 0.4158922| 1.836499|
|0-24 months |MAL-ED         |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |INDIA                        |Low                |High           | 1.0757616| 0.5988069| 1.932615|
|0-24 months |MAL-ED         |INDIA                        |Medium             |High           | 0.9171863| 0.4936983| 1.703937|
|0-24 months |MAL-ED         |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |NEPAL                        |Low                |High           | 0.8833333| 0.3035369| 2.570619|
|0-24 months |MAL-ED         |NEPAL                        |Medium             |High           | 0.8368421| 0.2686218| 2.607028|
|0-24 months |MAL-ED         |PERU                         |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |PERU                         |Low                |High           | 0.8161109| 0.4706438| 1.415162|
|0-24 months |MAL-ED         |PERU                         |Medium             |High           | 0.9503373| 0.5612127| 1.609267|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low                |High           | 1.1631367| 0.7250028| 1.866044|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium             |High           | 0.9143540| 0.4939901| 1.692429|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low                |High           | 1.2718750| 0.6431191| 2.515344|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium             |High           | 1.0070423| 0.5136638| 1.974315|
|0-24 months |NIH-Birth      |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |Low                |High           | 1.4756551| 1.1257806| 1.934265|
|0-24 months |NIH-Birth      |BANGLADESH                   |Medium             |High           | 1.0939721| 0.8073572| 1.482336|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low                |High           | 1.9304362| 1.2134940| 3.070954|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |High           | 1.6226227| 1.0007551| 2.630918|
|0-24 months |PROBIT         |BELARUS                      |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |Low                |High           | 2.1639708| 1.1999497| 3.902471|
|0-24 months |PROBIT         |BELARUS                      |Medium             |High           | 1.4733417| 0.9108064| 2.383312|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |Low                |High           | 2.1120378| 1.2379636| 3.603259|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium             |High           | 2.2287141| 1.3312675| 3.731156|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA                        |Low                |High           | 1.5796690| 1.2003639| 2.078831|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium             |High           | 1.3246649| 1.0316275| 1.700940|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low                |High           | 1.4091554| 0.8673481| 2.289414|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |High           | 1.3860859| 0.7748431| 2.479514|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |High           | 1.4271508| 0.7616348| 2.674194|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |High           | 1.1197540| 0.8417893| 1.489505|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |High           | 1.1722521| 1.0642737| 1.291186|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |High           | 1.1500983| 1.0528979| 1.256272|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High               |NA             |  0.0480675| -0.0100164| 0.1061514|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             | -0.0170620| -0.0759215| 0.0417974|
|0-24 months |COHORTS        |INDIA                        |High               |NA             |  0.0941714|  0.0800664| 0.1082763|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0344145|  0.0064178| 0.0624113|
|0-24 months |EE             |PAKISTAN                     |High               |NA             |  0.1343972| -0.1131243| 0.3819187|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             |  0.0811857|  0.0009984| 0.1613730|
|0-24 months |Guatemala BSC  |GUATEMALA                    |High               |NA             | -0.0028613| -0.0570784| 0.0513559|
|0-24 months |IRC            |INDIA                        |High               |NA             |  0.0647963|  0.0050791| 0.1245134|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.0100520|  0.0023078| 0.0177962|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0123208| -0.0093807| 0.0340223|
|0-24 months |LCNI-5         |MALAWI                       |High               |NA             |  0.0323761| -0.0025789| 0.0673311|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |NA             |  0.0081893| -0.0616092| 0.0779878|
|0-24 months |MAL-ED         |INDIA                        |High               |NA             | -0.0106712| -0.0960587| 0.0747163|
|0-24 months |MAL-ED         |NEPAL                        |High               |NA             | -0.0098952| -0.0778345| 0.0580441|
|0-24 months |MAL-ED         |PERU                         |High               |NA             | -0.0193464| -0.0930977| 0.0544050|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             |  0.0131550| -0.0585897| 0.0848996|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0385421| -0.2488804| 0.3259646|
|0-24 months |NIH-Birth      |BANGLADESH                   |High               |NA             |  0.0504668| -0.0017659| 0.1026994|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.0460181|  0.0165629| 0.0754733|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.0113880|  0.0027164| 0.0200595|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             |  0.0581097|  0.0260354| 0.0901840|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             |  0.0886055|  0.0320449| 0.1451662|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.1301421| -0.0302977| 0.2905819|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0088909| -0.0108364| 0.0286183|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0129762|  0.0063445| 0.0196080|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High               |NA             |  0.0756505| -0.0209113| 0.1630791|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             | -0.0367849| -0.1718181| 0.0826879|
|0-24 months |COHORTS        |INDIA                        |High               |NA             |  0.7129248|  0.5981444| 0.7949210|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0966388|  0.0146249| 0.1718266|
|0-24 months |EE             |PAKISTAN                     |High               |NA             |  0.2235988| -0.3205244| 0.5435156|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             |  0.3338702| -0.0890726| 0.5925626|
|0-24 months |Guatemala BSC  |GUATEMALA                    |High               |NA             | -0.0152241| -0.3489246| 0.2359247|
|0-24 months |IRC            |INDIA                        |High               |NA             |  0.2604556| -0.0225842| 0.4651531|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.0544510|  0.0116866| 0.0953651|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0605318| -0.0522517| 0.1612269|
|0-24 months |LCNI-5         |MALAWI                       |High               |NA             |  0.1559418| -0.0286519| 0.3074099|
|0-24 months |MAL-ED         |BANGLADESH                   |High               |NA             |  0.0438128| -0.4132469| 0.3530543|
|0-24 months |MAL-ED         |INDIA                        |High               |NA             | -0.0499504| -0.5363836| 0.2824736|
|0-24 months |MAL-ED         |NEPAL                        |High               |NA             | -0.1171797| -1.2929418| 0.4556815|
|0-24 months |MAL-ED         |PERU                         |High               |NA             | -0.0912906| -0.5004485| 0.2062939|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High               |NA             |  0.0565844| -0.3083463| 0.3197267|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0781648| -0.7350273| 0.5102209|
|0-24 months |NIH-Birth      |BANGLADESH                   |High               |NA             |  0.1619572| -0.0227913| 0.3133343|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.3523404|  0.0965707| 0.5356992|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.4120397|  0.0386709| 0.6403965|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             |  0.4281767|  0.1528355| 0.6140279|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             |  0.2679138|  0.0773876| 0.4190949|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.2706438| -0.1524757| 0.5384193|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0895094| -0.1318937| 0.2676052|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0771113|  0.0369322| 0.1156141|
