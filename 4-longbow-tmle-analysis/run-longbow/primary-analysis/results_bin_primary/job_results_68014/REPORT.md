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
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |meducyrs | ever_swasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:--------|------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High     |            0|    122|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High     |            1|     36|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Low      |            0|     78|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Low      |            1|     28|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Medium   |            0|     81|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Medium   |            1|     28|   373|
|0-24 months |COHORTS        |GUATEMALA                    |High     |            0|    259|  1322|
|0-24 months |COHORTS        |GUATEMALA                    |High     |            1|     21|  1322|
|0-24 months |COHORTS        |GUATEMALA                    |Low      |            0|    589|  1322|
|0-24 months |COHORTS        |GUATEMALA                    |Low      |            1|     38|  1322|
|0-24 months |COHORTS        |GUATEMALA                    |Medium   |            0|    380|  1322|
|0-24 months |COHORTS        |GUATEMALA                    |Medium   |            1|     35|  1322|
|0-24 months |COHORTS        |INDIA                        |High     |            0|    749|  5844|
|0-24 months |COHORTS        |INDIA                        |High     |            1|     44|  5844|
|0-24 months |COHORTS        |INDIA                        |Low      |            0|   1679|  5844|
|0-24 months |COHORTS        |INDIA                        |Low      |            1|    272|  5844|
|0-24 months |COHORTS        |INDIA                        |Medium   |            0|   2814|  5844|
|0-24 months |COHORTS        |INDIA                        |Medium   |            1|    286|  5844|
|0-24 months |COHORTS        |PHILIPPINES                  |High     |            0|   1034|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |High     |            1|    134|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |Low      |            0|    783|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |Low      |            1|    118|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium   |            0|    846|  3045|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium   |            1|    130|  3045|
|0-24 months |EE             |PAKISTAN                     |High     |            0|     14|   377|
|0-24 months |EE             |PAKISTAN                     |High     |            1|      1|   377|
|0-24 months |EE             |PAKISTAN                     |Low      |            0|    256|   377|
|0-24 months |EE             |PAKISTAN                     |Low      |            1|     73|   377|
|0-24 months |EE             |PAKISTAN                     |Medium   |            0|     28|   377|
|0-24 months |EE             |PAKISTAN                     |Medium   |            1|      5|   377|
|0-24 months |GMS-Nepal      |NEPAL                        |High     |            0|     68|   683|
|0-24 months |GMS-Nepal      |NEPAL                        |High     |            1|     16|   683|
|0-24 months |GMS-Nepal      |NEPAL                        |Low      |            0|    348|   683|
|0-24 months |GMS-Nepal      |NEPAL                        |Low      |            1|    132|   683|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium   |            0|     90|   683|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium   |            1|     29|   683|
|0-24 months |Guatemala BSC  |GUATEMALA                    |High     |            0|    118|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |High     |            1|      0|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Low      |            0|     74|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Low      |            1|      2|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Medium   |            0|     87|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |Medium   |            1|      1|   282|
|0-24 months |IRC            |INDIA                        |High     |            0|     84|   410|
|0-24 months |IRC            |INDIA                        |High     |            1|     40|   410|
|0-24 months |IRC            |INDIA                        |Low      |            0|     93|   410|
|0-24 months |IRC            |INDIA                        |Low      |            1|     54|   410|
|0-24 months |IRC            |INDIA                        |Medium   |            0|     93|   410|
|0-24 months |IRC            |INDIA                        |Medium   |            1|     46|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |High     |            0|   8485| 26922|
|0-24 months |JiVitA-3       |BANGLADESH                   |High     |            1|    499| 26922|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low      |            0|   9072| 26922|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low      |            1|    662| 26922|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium   |            0|   7721| 26922|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium   |            1|    483| 26922|
|0-24 months |JiVitA-4       |BANGLADESH                   |High     |            0|   1819|  5420|
|0-24 months |JiVitA-4       |BANGLADESH                   |High     |            1|     82|  5420|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low      |            0|   1648|  5420|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low      |            1|    138|  5420|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium   |            0|   1611|  5420|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium   |            1|    122|  5420|
|0-24 months |LCNI-5         |MALAWI                       |High     |            0|    297|   814|
|0-24 months |LCNI-5         |MALAWI                       |High     |            1|      1|   814|
|0-24 months |LCNI-5         |MALAWI                       |Low      |            0|    258|   814|
|0-24 months |LCNI-5         |MALAWI                       |Low      |            1|      3|   814|
|0-24 months |LCNI-5         |MALAWI                       |Medium   |            0|    251|   814|
|0-24 months |LCNI-5         |MALAWI                       |Medium   |            1|      4|   814|
|0-24 months |MAL-ED         |BANGLADESH                   |High     |            0|     74|   213|
|0-24 months |MAL-ED         |BANGLADESH                   |High     |            1|      4|   213|
|0-24 months |MAL-ED         |BANGLADESH                   |Low      |            0|     63|   213|
|0-24 months |MAL-ED         |BANGLADESH                   |Low      |            1|      7|   213|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium   |            0|     61|   213|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium   |            1|      4|   213|
|0-24 months |MAL-ED         |BRAZIL                       |High     |            0|     77|   232|
|0-24 months |MAL-ED         |BRAZIL                       |High     |            1|      2|   232|
|0-24 months |MAL-ED         |BRAZIL                       |Low      |            0|     62|   232|
|0-24 months |MAL-ED         |BRAZIL                       |Low      |            1|      1|   232|
|0-24 months |MAL-ED         |BRAZIL                       |Medium   |            0|     89|   232|
|0-24 months |MAL-ED         |BRAZIL                       |Medium   |            1|      1|   232|
|0-24 months |MAL-ED         |INDIA                        |High     |            0|     57|   220|
|0-24 months |MAL-ED         |INDIA                        |High     |            1|      6|   220|
|0-24 months |MAL-ED         |INDIA                        |Low      |            0|     68|   220|
|0-24 months |MAL-ED         |INDIA                        |Low      |            1|      8|   220|
|0-24 months |MAL-ED         |INDIA                        |Medium   |            0|     73|   220|
|0-24 months |MAL-ED         |INDIA                        |Medium   |            1|      8|   220|
|0-24 months |MAL-ED         |NEPAL                        |High     |            0|     52|   225|
|0-24 months |MAL-ED         |NEPAL                        |High     |            1|      1|   225|
|0-24 months |MAL-ED         |NEPAL                        |Low      |            0|     93|   225|
|0-24 months |MAL-ED         |NEPAL                        |Low      |            1|      3|   225|
|0-24 months |MAL-ED         |NEPAL                        |Medium   |            0|     73|   225|
|0-24 months |MAL-ED         |NEPAL                        |Medium   |            1|      3|   225|
|0-24 months |MAL-ED         |PERU                         |High     |            0|     90|   301|
|0-24 months |MAL-ED         |PERU                         |High     |            1|      0|   301|
|0-24 months |MAL-ED         |PERU                         |Low      |            0|    101|   301|
|0-24 months |MAL-ED         |PERU                         |Low      |            1|      3|   301|
|0-24 months |MAL-ED         |PERU                         |Medium   |            0|    106|   301|
|0-24 months |MAL-ED         |PERU                         |Medium   |            1|      1|   301|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High     |            0|     92|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High     |            1|      3|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |            0|    138|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |            1|     10|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |            0|     66|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |            1|      3|   312|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |            0|     10|   216|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |            1|      1|   216|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |            0|     62|   216|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |            1|      2|   216|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |            0|    136|   216|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |            1|      5|   216|
|0-24 months |NIH-Birth      |BANGLADESH                   |High     |            0|    159|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |High     |            1|     19|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |Low      |            0|    180|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |Low      |            1|     48|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |Medium   |            0|    186|   624|
|0-24 months |NIH-Birth      |BANGLADESH                   |Medium   |            1|     32|   624|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High     |            0|    239|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High     |            1|     15|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low      |            0|    217|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low      |            1|     25|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |            0|    236|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |            1|     26|   758|
|0-24 months |PROBIT         |BELARUS                      |High     |            0|   2643| 16898|
|0-24 months |PROBIT         |BELARUS                      |High     |            1|    198| 16898|
|0-24 months |PROBIT         |BELARUS                      |Low      |            0|   5593| 16898|
|0-24 months |PROBIT         |BELARUS                      |Low      |            1|    507| 16898|
|0-24 months |PROBIT         |BELARUS                      |Medium   |            0|   7337| 16898|
|0-24 months |PROBIT         |BELARUS                      |Medium   |            1|    620| 16898|
|0-24 months |PROVIDE        |BANGLADESH                   |High     |            0|    225|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |High     |            1|     10|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Low      |            0|    198|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Low      |            1|     16|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium   |            0|    235|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium   |            1|     16|   700|
|0-24 months |SAS-CompFeed   |INDIA                        |High     |            0|    297|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |High     |            1|     25|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |Low      |            0|    549|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |Low      |            1|    133|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium   |            0|    444|  1513|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium   |            1|     65|  1513|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High     |            0|     40|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High     |            1|      1|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low      |            0|    270|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low      |            1|     62|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |            0|     37|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |            1|      8|   418|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |            0|    580|  2386|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |            1|     41|  2386|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |            0|     75|  2386|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |            1|      7|  2386|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |            0|   1573|  2386|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |            1|    110|  2386|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High     |            0|   6865| 13926|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High     |            1|    690| 13926|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |            0|   2645| 13926|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |            1|    281| 13926|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |            0|   3131| 13926|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |            1|    314| 13926|


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

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/66529886-796d-4b6e-8ab6-825ea62f9649/580d9112-f561-4dac-9aff-55a23d186506/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/66529886-796d-4b6e-8ab6-825ea62f9649/580d9112-f561-4dac-9aff-55a23d186506/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/66529886-796d-4b6e-8ab6-825ea62f9649/580d9112-f561-4dac-9aff-55a23d186506/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/66529886-796d-4b6e-8ab6-825ea62f9649/580d9112-f561-4dac-9aff-55a23d186506/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High               |NA             | 0.2406642| 0.1743612| 0.3069671|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Low                |NA             | 0.2463874| 0.1647644| 0.3280104|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Medium             |NA             | 0.2542556| 0.1720308| 0.3364803|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             | 0.0802013| 0.0479978| 0.1124049|
|0-24 months |COHORTS        |GUATEMALA                    |Low                |NA             | 0.0617142| 0.0423130| 0.0811154|
|0-24 months |COHORTS        |GUATEMALA                    |Medium             |NA             | 0.0812173| 0.0542993| 0.1081353|
|0-24 months |COHORTS        |INDIA                        |High               |NA             | 0.0518622| 0.0355043| 0.0682202|
|0-24 months |COHORTS        |INDIA                        |Low                |NA             | 0.1304605| 0.1150264| 0.1458947|
|0-24 months |COHORTS        |INDIA                        |Medium             |NA             | 0.0923411| 0.0818808| 0.1028014|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             | 0.1252906| 0.1016484| 0.1489329|
|0-24 months |COHORTS        |PHILIPPINES                  |Low                |NA             | 0.1395893| 0.1120735| 0.1671052|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium             |NA             | 0.1231863| 0.1014146| 0.1449579|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             | 0.1859114| 0.1004839| 0.2713390|
|0-24 months |GMS-Nepal      |NEPAL                        |Low                |NA             | 0.2706850| 0.2307067| 0.3106632|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium             |NA             | 0.2359626| 0.1532074| 0.3187177|
|0-24 months |IRC            |INDIA                        |High               |NA             | 0.3393356| 0.2633455| 0.4153257|
|0-24 months |IRC            |INDIA                        |Low                |NA             | 0.3634498| 0.2909587| 0.4359409|
|0-24 months |IRC            |INDIA                        |Medium             |NA             | 0.3281652| 0.2521326| 0.4041977|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             | 0.0577722| 0.0504490| 0.0650954|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low                |NA             | 0.0537205| 0.0483643| 0.0590767|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium             |NA             | 0.0571937| 0.0509586| 0.0634288|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             | 0.0414902| 0.0267546| 0.0562259|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low                |NA             | 0.0749186| 0.0588733| 0.0909640|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium             |NA             | 0.0717694| 0.0562926| 0.0872461|
|0-24 months |MAL-ED         |INDIA                        |High               |NA             | 0.0952381| 0.0225874| 0.1678888|
|0-24 months |MAL-ED         |INDIA                        |Low                |NA             | 0.1052632| 0.0361093| 0.1744170|
|0-24 months |MAL-ED         |INDIA                        |Medium             |NA             | 0.0987654| 0.0336452| 0.1638857|
|0-24 months |NIH-Birth      |BANGLADESH                   |High               |NA             | 0.1122813| 0.0665572| 0.1580055|
|0-24 months |NIH-Birth      |BANGLADESH                   |Low                |NA             | 0.2140907| 0.1610521| 0.2671293|
|0-24 months |NIH-Birth      |BANGLADESH                   |Medium             |NA             | 0.1478535| 0.1007865| 0.1949205|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             | 0.0563007| 0.0280334| 0.0845680|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low                |NA             | 0.1081944| 0.0687624| 0.1476264|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |NA             | 0.0986559| 0.0624385| 0.1348733|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             | 0.0790664| 0.0465911| 0.1115417|
|0-24 months |PROBIT         |BELARUS                      |Low                |NA             | 0.0789420| 0.0466473| 0.1112367|
|0-24 months |PROBIT         |BELARUS                      |Medium             |NA             | 0.0765151| 0.0435330| 0.1094973|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             | 0.0386423| 0.0147140| 0.0625707|
|0-24 months |PROVIDE        |BANGLADESH                   |Low                |NA             | 0.0723629| 0.0376599| 0.1070660|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium             |NA             | 0.0708127| 0.0363628| 0.1052626|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             | 0.0926022| 0.0574760| 0.1277284|
|0-24 months |SAS-CompFeed   |INDIA                        |Low                |NA             | 0.1740260| 0.1377939| 0.2102581|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium             |NA             | 0.1285982| 0.0807221| 0.1764743|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | 0.0660225| 0.0464878| 0.0855573|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |NA             | 0.0853659| 0.0248738| 0.1458579|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |NA             | 0.0653595| 0.0535488| 0.0771701|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             | 0.0860896| 0.0802667| 0.0919126|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |NA             | 0.0968046| 0.0876113| 0.1059979|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |NA             | 0.0985842| 0.0895735| 0.1075948|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.2466488| 0.2028447| 0.2904529|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.0711044| 0.0572455| 0.0849633|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.1030116| 0.0952175| 0.1108057|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.1254516| 0.1136848| 0.1372183|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.2591508| 0.2262659| 0.2920358|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.3414634| 0.2955068| 0.3874201|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0610653| 0.0575838| 0.0645468|
|0-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.0630996| 0.0561390| 0.0700602|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.1000000| 0.0602674| 0.1397326|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.1586538| 0.1299648| 0.1873429|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.0870712| 0.0669870| 0.1071555|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0784116| 0.0458146| 0.1110087|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.0600000| 0.0423945| 0.0776055|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.1473893| 0.1184132| 0.1763654|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0662196| 0.0562399| 0.0761994|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0922734| 0.0874665| 0.0970804|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Low                |High           | 1.0237809| 0.6653392| 1.575328|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |Medium             |High           | 1.0564746| 0.6933891| 1.609686|
|0-24 months |COHORTS        |GUATEMALA                    |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA                    |Low                |High           | 0.7694907| 0.4625401| 1.280140|
|0-24 months |COHORTS        |GUATEMALA                    |Medium             |High           | 1.0126675| 0.6020928| 1.703218|
|0-24 months |COHORTS        |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |INDIA                        |Low                |High           | 2.5155210| 1.7957413| 3.523807|
|0-24 months |COHORTS        |INDIA                        |Medium             |High           | 1.7805083| 1.2734134| 2.489537|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |Low                |High           | 1.1141244| 0.8523794| 1.456245|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium             |High           | 0.9832042| 0.7643285| 1.264758|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal      |NEPAL                        |Low                |High           | 1.4559886| 0.8983016| 2.359901|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium             |High           | 1.2692202| 0.7121590| 2.262023|
|0-24 months |IRC            |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |IRC            |INDIA                        |Low                |High           | 1.0710629| 0.8033627| 1.427968|
|0-24 months |IRC            |INDIA                        |Medium             |High           | 0.9670814| 0.7076643| 1.321596|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low                |High           | 0.9298680| 0.7947175| 1.088002|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium             |High           | 0.9899863| 0.8418557| 1.164181|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low                |High           | 1.8056940| 1.2086421| 2.697681|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium             |High           | 1.7297906| 1.1370242| 2.631585|
|0-24 months |MAL-ED         |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |INDIA                        |Low                |High           | 1.1052632| 0.4038751| 3.024714|
|0-24 months |MAL-ED         |INDIA                        |Medium             |High           | 1.0370370| 0.3783556| 2.842421|
|0-24 months |NIH-Birth      |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |Low                |High           | 1.9067341| 1.1831868| 3.072748|
|0-24 months |NIH-Birth      |BANGLADESH                   |Medium             |High           | 1.3168123| 0.7844379| 2.210493|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low                |High           | 1.9217234| 1.0334549| 3.573471|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |High           | 1.7523036| 0.9405264| 3.264733|
|0-24 months |PROBIT         |BELARUS                      |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |Low                |High           | 0.9984261| 0.8560484| 1.164484|
|0-24 months |PROBIT         |BELARUS                      |Medium             |High           | 0.9677325| 0.7881291| 1.188265|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |Low                |High           | 1.8726337| 0.8553686| 4.099703|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium             |High           | 1.8325156| 0.8333826| 4.029498|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA                        |Low                |High           | 1.8792853| 1.4688455| 2.404414|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium             |High           | 1.3887163| 0.8954710| 2.153652|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |High           | 1.2929804| 0.5999184| 2.786709|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |High           | 0.9899570| 0.6999193| 1.400183|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |High           | 1.1244627| 1.0143801| 1.246492|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |High           | 1.1451338| 1.0358128| 1.265993|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High               |NA             |  0.0059846| -0.0454540| 0.0574233|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             | -0.0090970| -0.0377449| 0.0195510|
|0-24 months |COHORTS        |INDIA                        |High               |NA             |  0.0511494|  0.0348512| 0.0674476|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0001609| -0.0207076| 0.0210295|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             |  0.0732394| -0.0089250| 0.1554037|
|0-24 months |IRC            |INDIA                        |High               |NA             |  0.0021278| -0.0599003| 0.0641559|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.0032931| -0.0034716| 0.0100577|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0216094|  0.0080715| 0.0351473|
|0-24 months |MAL-ED         |INDIA                        |High               |NA             |  0.0047619| -0.0571564| 0.0666802|
|0-24 months |NIH-Birth      |BANGLADESH                   |High               |NA             |  0.0463725|  0.0047061| 0.0880389|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.0307705|  0.0052064| 0.0563347|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             | -0.0006548| -0.0142559| 0.0129464|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             |  0.0213577| -0.0003084| 0.0430238|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             |  0.0547871|  0.0224632| 0.0871109|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0001971| -0.0166125| 0.0170066|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0061838|  0.0024934| 0.0098742|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |High               |NA             |  0.0242638| -0.2081057| 0.2119389|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             | -0.1279381| -0.6121997| 0.2108643|
|0-24 months |COHORTS        |INDIA                        |High               |NA             |  0.4965401|  0.3164920| 0.6291603|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0012828| -0.1797160| 0.1545118|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             |  0.2826129| -0.1137046| 0.5378988|
|0-24 months |IRC            |INDIA                        |High               |NA             |  0.0062314| -0.1930541| 0.1722287|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.0539271| -0.0633322| 0.1582555|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.3424649|  0.0882180| 0.5258161|
|0-24 months |MAL-ED         |INDIA                        |High               |NA             |  0.0476190| -0.8241477| 0.5027653|
|0-24 months |NIH-Birth      |BANGLADESH                   |High               |NA             |  0.2922873| -0.0183504| 0.5081681|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.3533951| -0.0036669| 0.5834296|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             | -0.0083504| -0.1985582| 0.1516719|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             |  0.3559611| -0.1049371| 0.6246066|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             |  0.3717168|  0.1283742| 0.5471224|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0029760| -0.2861107| 0.2270830|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0670160|  0.0262829| 0.1060451|
