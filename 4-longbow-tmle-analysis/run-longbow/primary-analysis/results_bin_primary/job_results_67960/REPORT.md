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

**Intervention Variable:** mage

**Adjustment Set:**

* arm
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |mage    | ever_sstunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:-------|-------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30) |             0|    106|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30) |             1|    190|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |<20     |             0|     13|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |<20     |             1|     21|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |>=30    |             0|     17|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |>=30    |             1|     26|   373|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30) |             0|    354|  1360|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30) |             1|    307|  1360|
|0-24 months |COHORTS        |GUATEMALA                    |<20     |             0|    111|  1360|
|0-24 months |COHORTS        |GUATEMALA                    |<20     |             1|     91|  1360|
|0-24 months |COHORTS        |GUATEMALA                    |>=30    |             0|    264|  1360|
|0-24 months |COHORTS        |GUATEMALA                    |>=30    |             1|    233|  1360|
|0-24 months |COHORTS        |INDIA                        |[20-30) |             0|   3140|  5313|
|0-24 months |COHORTS        |INDIA                        |[20-30) |             1|    462|  5313|
|0-24 months |COHORTS        |INDIA                        |<20     |             0|    368|  5313|
|0-24 months |COHORTS        |INDIA                        |<20     |             1|     59|  5313|
|0-24 months |COHORTS        |INDIA                        |>=30    |             0|   1077|  5313|
|0-24 months |COHORTS        |INDIA                        |>=30    |             1|    207|  5313|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30) |             0|   1230|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30) |             1|    597|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |<20     |             0|    231|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |<20     |             1|    147|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |>=30    |             0|    508|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |>=30    |             1|    345|  3058|
|0-24 months |EE             |PAKISTAN                     |[20-30) |             0|     65|   377|
|0-24 months |EE             |PAKISTAN                     |[20-30) |             1|     97|   377|
|0-24 months |EE             |PAKISTAN                     |<20     |             0|      0|   377|
|0-24 months |EE             |PAKISTAN                     |<20     |             1|      1|   377|
|0-24 months |EE             |PAKISTAN                     |>=30    |             0|     85|   377|
|0-24 months |EE             |PAKISTAN                     |>=30    |             1|    129|   377|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30) |             0|    349|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30) |             1|     98|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |<20     |             0|    107|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |<20     |             1|     42|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |>=30    |             0|     73|   698|
|0-24 months |GMS-Nepal      |NEPAL                        |>=30    |             1|     29|   698|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[20-30) |             0|    144|   281|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[20-30) |             1|     31|   281|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<20     |             0|     38|   281|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<20     |             1|      9|   281|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=30    |             0|     46|   281|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=30    |             1|     13|   281|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30) |             0|   1585|  3178|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30) |             1|    158|  3178|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20     |             0|    345|  3178|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20     |             1|     58|  3178|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30    |             0|    920|  3178|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30    |             1|    112|  3178|
|0-24 months |IRC            |INDIA                        |[20-30) |             0|    260|   410|
|0-24 months |IRC            |INDIA                        |[20-30) |             1|     84|   410|
|0-24 months |IRC            |INDIA                        |<20     |             0|     25|   410|
|0-24 months |IRC            |INDIA                        |<20     |             1|     12|   410|
|0-24 months |IRC            |INDIA                        |>=30    |             0|     23|   410|
|0-24 months |IRC            |INDIA                        |>=30    |             1|      6|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30) |             0|  10693| 27216|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30) |             1|   2008| 27216|
|0-24 months |JiVitA-3       |BANGLADESH                   |<20     |             0|   9578| 27216|
|0-24 months |JiVitA-3       |BANGLADESH                   |<20     |             1|   2607| 27216|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=30    |             0|   1927| 27216|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=30    |             1|    403| 27216|
|0-24 months |Keneba         |GAMBIA                       |[20-30) |             0|   1170|  2859|
|0-24 months |Keneba         |GAMBIA                       |[20-30) |             1|    267|  2859|
|0-24 months |Keneba         |GAMBIA                       |<20     |             0|    319|  2859|
|0-24 months |Keneba         |GAMBIA                       |<20     |             1|     76|  2859|
|0-24 months |Keneba         |GAMBIA                       |>=30    |             0|    755|  2859|
|0-24 months |Keneba         |GAMBIA                       |>=30    |             1|    272|  2859|
|0-24 months |LCNI-5         |MALAWI                       |[20-30) |             0|    292|   670|
|0-24 months |LCNI-5         |MALAWI                       |[20-30) |             1|     72|   670|
|0-24 months |LCNI-5         |MALAWI                       |<20     |             0|     92|   670|
|0-24 months |LCNI-5         |MALAWI                       |<20     |             1|     16|   670|
|0-24 months |LCNI-5         |MALAWI                       |>=30    |             0|    151|   670|
|0-24 months |LCNI-5         |MALAWI                       |>=30    |             1|     47|   670|
|0-24 months |MAL-ED         |BANGLADESH                   |[20-30) |             0|    147|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |[20-30) |             1|     35|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |<20     |             0|     29|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |<20     |             1|      8|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |>=30    |             0|     31|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |>=30    |             1|     15|   265|
|0-24 months |MAL-ED         |BRAZIL                       |[20-30) |             0|    124|   233|
|0-24 months |MAL-ED         |BRAZIL                       |[20-30) |             1|     15|   233|
|0-24 months |MAL-ED         |BRAZIL                       |<20     |             0|     39|   233|
|0-24 months |MAL-ED         |BRAZIL                       |<20     |             1|      4|   233|
|0-24 months |MAL-ED         |BRAZIL                       |>=30    |             0|     48|   233|
|0-24 months |MAL-ED         |BRAZIL                       |>=30    |             1|      3|   233|
|0-24 months |MAL-ED         |INDIA                        |[20-30) |             0|    148|   249|
|0-24 months |MAL-ED         |INDIA                        |[20-30) |             1|     46|   249|
|0-24 months |MAL-ED         |INDIA                        |<20     |             0|     25|   249|
|0-24 months |MAL-ED         |INDIA                        |<20     |             1|      9|   249|
|0-24 months |MAL-ED         |INDIA                        |>=30    |             0|     19|   249|
|0-24 months |MAL-ED         |INDIA                        |>=30    |             1|      2|   249|
|0-24 months |MAL-ED         |NEPAL                        |[20-30) |             0|    173|   240|
|0-24 months |MAL-ED         |NEPAL                        |[20-30) |             1|     16|   240|
|0-24 months |MAL-ED         |NEPAL                        |<20     |             0|      3|   240|
|0-24 months |MAL-ED         |NEPAL                        |<20     |             1|      2|   240|
|0-24 months |MAL-ED         |NEPAL                        |>=30    |             0|     43|   240|
|0-24 months |MAL-ED         |NEPAL                        |>=30    |             1|      3|   240|
|0-24 months |MAL-ED         |PERU                         |[20-30) |             0|    121|   303|
|0-24 months |MAL-ED         |PERU                         |[20-30) |             1|     32|   303|
|0-24 months |MAL-ED         |PERU                         |<20     |             0|     62|   303|
|0-24 months |MAL-ED         |PERU                         |<20     |             1|     21|   303|
|0-24 months |MAL-ED         |PERU                         |>=30    |             0|     56|   303|
|0-24 months |MAL-ED         |PERU                         |>=30    |             1|     11|   303|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30) |             0|    121|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30) |             1|     40|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<20     |             0|     39|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<20     |             1|      9|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=30    |             0|     81|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=30    |             1|     24|   314|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30) |             0|     66|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30) |             1|     74|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<20     |             0|      7|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<20     |             1|      9|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=30    |             0|     52|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=30    |             1|     54|   262|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30) |             0|    284|   627|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30) |             1|    138|   627|
|0-24 months |NIH-Birth      |BANGLADESH                   |<20     |             0|     55|   627|
|0-24 months |NIH-Birth      |BANGLADESH                   |<20     |             1|     18|   627|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=30    |             0|     92|   627|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=30    |             1|     40|   627|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30) |             0|    434|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30) |             1|     60|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<20     |             0|    113|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<20     |             1|     23|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=30    |             0|    112|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=30    |             1|     16|   758|
|0-24 months |PROBIT         |BELARUS                      |[20-30) |             0|  11797| 16897|
|0-24 months |PROBIT         |BELARUS                      |[20-30) |             1|    332| 16897|
|0-24 months |PROBIT         |BELARUS                      |<20     |             0|   1678| 16897|
|0-24 months |PROBIT         |BELARUS                      |<20     |             1|     67| 16897|
|0-24 months |PROBIT         |BELARUS                      |>=30    |             0|   2955| 16897|
|0-24 months |PROBIT         |BELARUS                      |>=30    |             1|     68| 16897|
|0-24 months |PROVIDE        |BANGLADESH                   |[20-30) |             0|    428|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |[20-30) |             1|     65|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |<20     |             0|     71|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |<20     |             1|     14|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |>=30    |             0|    106|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |>=30    |             1|     16|   700|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30) |             0|    784|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30) |             1|    383|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |<20     |             0|    134|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |<20     |             1|     59|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |>=30    |             0|    108|  1533|
|0-24 months |SAS-CompFeed   |INDIA                        |>=30    |             1|     65|  1533|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30) |             0|    153|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30) |             1|    137|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<20     |             0|     19|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<20     |             1|     17|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=30    |             0|     45|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=30    |             1|     47|   418|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30) |             0|   1411|  2376|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30) |             1|    160|  2376|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20     |             0|    147|  2376|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20     |             1|     20|  2376|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30    |             0|    582|  2376|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30    |             1|     56|  2376|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30) |             0|   7915| 14034|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30) |             1|   1519| 14034|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<20     |             0|   1815| 14034|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<20     |             1|    428| 14034|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=30    |             0|   1946| 14034|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=30    |             1|    411| 14034|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL

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
![](/tmp/563e3236-a80f-43f8-bbe5-3454589e7279/bdbbfada-82ed-458a-9cc5-9d23ae86c4c7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/563e3236-a80f-43f8-bbe5-3454589e7279/bdbbfada-82ed-458a-9cc5-9d23ae86c4c7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/563e3236-a80f-43f8-bbe5-3454589e7279/bdbbfada-82ed-458a-9cc5-9d23ae86c4c7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/563e3236-a80f-43f8-bbe5-3454589e7279/bdbbfada-82ed-458a-9cc5-9d23ae86c4c7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30)            |NA             | 0.6428925| 0.5879861| 0.6977990|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |<20                |NA             | 0.6321503| 0.4676496| 0.7966510|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |>=30               |NA             | 0.6211941| 0.4735875| 0.7688008|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30)            |NA             | 0.4645216| 0.4253035| 0.5037396|
|0-24 months |COHORTS        |GUATEMALA                    |<20                |NA             | 0.4803428| 0.4025670| 0.5581186|
|0-24 months |COHORTS        |GUATEMALA                    |>=30               |NA             | 0.4494051| 0.4036412| 0.4951689|
|0-24 months |COHORTS        |INDIA                        |[20-30)            |NA             | 0.1359253| 0.1245702| 0.1472804|
|0-24 months |COHORTS        |INDIA                        |<20                |NA             | 0.1309070| 0.0973244| 0.1644895|
|0-24 months |COHORTS        |INDIA                        |>=30               |NA             | 0.1395982| 0.1209149| 0.1582814|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |NA             | 0.3346576| 0.3131384| 0.3561769|
|0-24 months |COHORTS        |PHILIPPINES                  |<20                |NA             | 0.3652794| 0.3173355| 0.4132234|
|0-24 months |COHORTS        |PHILIPPINES                  |>=30               |NA             | 0.3932865| 0.3621479| 0.4244252|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |NA             | 0.2213195| 0.1823660| 0.2602730|
|0-24 months |GMS-Nepal      |NEPAL                        |<20                |NA             | 0.2973463| 0.2191234| 0.3755691|
|0-24 months |GMS-Nepal      |NEPAL                        |>=30               |NA             | 0.2596031| 0.1756570| 0.3435492|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[20-30)            |NA             | 0.1771429| 0.1204762| 0.2338095|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<20                |NA             | 0.1914894| 0.0787986| 0.3041802|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=30               |NA             | 0.2203390| 0.1143905| 0.3262875|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |NA             | 0.0889006| 0.0675800| 0.1102213|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20                |NA             | 0.1355572| 0.0939481| 0.1771664|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30               |NA             | 0.1153603| 0.0839127| 0.1468080|
|0-24 months |IRC            |INDIA                        |[20-30)            |NA             | 0.2441860| 0.1987326| 0.2896395|
|0-24 months |IRC            |INDIA                        |<20                |NA             | 0.3243243| 0.1733036| 0.4753450|
|0-24 months |IRC            |INDIA                        |>=30               |NA             | 0.2068966| 0.0592848| 0.3545083|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             | 0.1622289| 0.1546116| 0.1698462|
|0-24 months |JiVitA-3       |BANGLADESH                   |<20                |NA             | 0.2106152| 0.2019401| 0.2192903|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=30               |NA             | 0.1712807| 0.1536346| 0.1889269|
|0-24 months |Keneba         |GAMBIA                       |[20-30)            |NA             | 0.1911843| 0.1703865| 0.2119822|
|0-24 months |Keneba         |GAMBIA                       |<20                |NA             | 0.1940022| 0.1528895| 0.2351149|
|0-24 months |Keneba         |GAMBIA                       |>=30               |NA             | 0.2520038| 0.2255210| 0.2784866|
|0-24 months |LCNI-5         |MALAWI                       |[20-30)            |NA             | 0.1991187| 0.1584452| 0.2397922|
|0-24 months |LCNI-5         |MALAWI                       |<20                |NA             | 0.1491876| 0.0840023| 0.2143730|
|0-24 months |LCNI-5         |MALAWI                       |>=30               |NA             | 0.2313208| 0.1731338| 0.2895078|
|0-24 months |MAL-ED         |BANGLADESH                   |[20-30)            |NA             | 0.1923077| 0.1349417| 0.2496737|
|0-24 months |MAL-ED         |BANGLADESH                   |<20                |NA             | 0.2162162| 0.0833207| 0.3491118|
|0-24 months |MAL-ED         |BANGLADESH                   |>=30               |NA             | 0.3260870| 0.1903623| 0.4618116|
|0-24 months |MAL-ED         |PERU                         |[20-30)            |NA             | 0.1994632| 0.1348436| 0.2640827|
|0-24 months |MAL-ED         |PERU                         |<20                |NA             | 0.2430437| 0.1491466| 0.3369409|
|0-24 months |MAL-ED         |PERU                         |>=30               |NA             | 0.1604559| 0.0726295| 0.2482823|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30)            |NA             | 0.2484472| 0.1815936| 0.3153008|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<20                |NA             | 0.1875000| 0.0769058| 0.2980942|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=30               |NA             | 0.2285714| 0.1481253| 0.3090175|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             | 0.5285714| 0.4457249| 0.6114179|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<20                |NA             | 0.5625000| 0.3189609| 0.8060391|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=30               |NA             | 0.5094340| 0.4140845| 0.6047834|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             | 0.3283298| 0.2838130| 0.3728466|
|0-24 months |NIH-Birth      |BANGLADESH                   |<20                |NA             | 0.2578322| 0.1568573| 0.3588070|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=30               |NA             | 0.3063657| 0.2314347| 0.3812967|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             | 0.1214263| 0.0927147| 0.1501378|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<20                |NA             | 0.1711743| 0.1079192| 0.2344293|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=30               |NA             | 0.1224197| 0.0645364| 0.1803029|
|0-24 months |PROBIT         |BELARUS                      |[20-30)            |NA             | 0.0280430| 0.0210146| 0.0350713|
|0-24 months |PROBIT         |BELARUS                      |<20                |NA             | 0.0367138| 0.0212935| 0.0521341|
|0-24 months |PROBIT         |BELARUS                      |>=30               |NA             | 0.0237185| 0.0145970| 0.0328400|
|0-24 months |PROVIDE        |BANGLADESH                   |[20-30)            |NA             | 0.1331668| 0.1028897| 0.1634440|
|0-24 months |PROVIDE        |BANGLADESH                   |<20                |NA             | 0.1831335| 0.0932380| 0.2730289|
|0-24 months |PROVIDE        |BANGLADESH                   |>=30               |NA             | 0.1465855| 0.0784309| 0.2147401|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |NA             | 0.3349476| 0.2969125| 0.3729826|
|0-24 months |SAS-CompFeed   |INDIA                        |<20                |NA             | 0.3129982| 0.2618923| 0.3641041|
|0-24 months |SAS-CompFeed   |INDIA                        |>=30               |NA             | 0.3269459| 0.2698980| 0.3839939|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             | 0.4670753| 0.4099614| 0.5241892|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<20                |NA             | 0.4449842| 0.2988925| 0.5910759|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=30               |NA             | 0.5027511| 0.3984830| 0.6070193|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             | 0.1018813| 0.0868926| 0.1168701|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20                |NA             | 0.1247460| 0.0738566| 0.1756353|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30               |NA             | 0.0891150| 0.0668799| 0.1113501|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             | 0.1633969| 0.1555925| 0.1712014|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<20                |NA             | 0.1850547| 0.1673076| 0.2028018|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=30               |NA             | 0.1650963| 0.1482473| 0.1819453|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.6353887| 0.5864772| 0.6843003|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.4639706| 0.4374564| 0.4904847|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.1370224| 0.1277751| 0.1462697|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.3561151| 0.3391405| 0.3730897|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.2421203| 0.2103189| 0.2739218|
|0-24 months |Guatemala BSC  |GUATEMALA                    |NA                 |NA             | 0.1886121| 0.1427907| 0.2344335|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.1032096| 0.0833330| 0.1230861|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.2487805| 0.2068840| 0.2906770|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1843768| 0.1787788| 0.1899748|
|0-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.2151102| 0.2000458| 0.2301746|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.2014925| 0.1710974| 0.2318877|
|0-24 months |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.2188679| 0.1689910| 0.2687448|
|0-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.2112211| 0.1651858| 0.2572564|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.2324841| 0.1856873| 0.2792809|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.5229008| 0.4623051| 0.5834965|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.3125997| 0.2762869| 0.3489125|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1306069| 0.1066024| 0.1546113|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0276380| 0.0201988| 0.0350773|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1357143| 0.1103250| 0.1611036|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.3307241| 0.3024794| 0.3589688|
|0-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.4808612| 0.4329065| 0.5288160|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0993266| 0.0872975| 0.1113557|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.1680205| 0.1618345| 0.1742065|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |<20                |[20-30)        | 0.9832908| 0.7474155| 1.293606|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |>=30               |[20-30)        | 0.9662488| 0.7505436| 1.243947|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA                    |<20                |[20-30)        | 1.0340592| 0.8620923| 1.240329|
|0-24 months |COHORTS        |GUATEMALA                    |>=30               |[20-30)        | 0.9674578| 0.8489355| 1.102527|
|0-24 months |COHORTS        |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |INDIA                        |<20                |[20-30)        | 0.9630800| 0.7356362| 1.260845|
|0-24 months |COHORTS        |INDIA                        |>=30               |[20-30)        | 1.0270210| 0.8782125| 1.201044|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |<20                |[20-30)        | 1.0915019| 0.9445285| 1.261345|
|0-24 months |COHORTS        |PHILIPPINES                  |>=30               |[20-30)        | 1.1751907| 1.0636418| 1.298438|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal      |NEPAL                        |<20                |[20-30)        | 1.3435158| 0.9790093| 1.843736|
|0-24 months |GMS-Nepal      |NEPAL                        |>=30               |[20-30)        | 1.1729789| 0.8115970| 1.695274|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<20                |[20-30)        | 1.0809883| 0.5532505| 2.112128|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=30               |[20-30)        | 1.2438491| 0.6981512| 2.216082|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<20                |[20-30)        | 1.5248175| 1.0637290| 2.185771|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=30               |[20-30)        | 1.2976320| 0.9670492| 1.741223|
|0-24 months |IRC            |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |IRC            |INDIA                        |<20                |[20-30)        | 1.3281853| 0.8043984| 2.193038|
|0-24 months |IRC            |INDIA                        |>=30               |[20-30)        | 0.8472906| 0.4053311| 1.771148|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |<20                |[20-30)        | 1.2982595| 1.2242802| 1.376709|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=30               |[20-30)        | 1.0557968| 0.9453532| 1.179143|
|0-24 months |Keneba         |GAMBIA                       |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |Keneba         |GAMBIA                       |<20                |[20-30)        | 1.0147389| 0.7998560| 1.287351|
|0-24 months |Keneba         |GAMBIA                       |>=30               |[20-30)        | 1.3181194| 1.1342564| 1.531787|
|0-24 months |LCNI-5         |MALAWI                       |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |LCNI-5         |MALAWI                       |<20                |[20-30)        | 0.7492396| 0.4646225| 1.208207|
|0-24 months |LCNI-5         |MALAWI                       |>=30               |[20-30)        | 1.1617231| 0.8435080| 1.599986|
|0-24 months |MAL-ED         |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |BANGLADESH                   |<20                |[20-30)        | 1.1243243| 0.5677789| 2.226404|
|0-24 months |MAL-ED         |BANGLADESH                   |>=30               |[20-30)        | 1.6956522| 1.0161160| 2.829634|
|0-24 months |MAL-ED         |PERU                         |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |PERU                         |<20                |[20-30)        | 1.2184893| 0.7377077| 2.012608|
|0-24 months |MAL-ED         |PERU                         |>=30               |[20-30)        | 0.8044385| 0.4269949| 1.515525|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<20                |[20-30)        | 0.7546875| 0.3946455| 1.443202|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=30               |[20-30)        | 0.9200000| 0.5907199| 1.432828|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<20                |[20-30)        | 1.0641892| 0.6714992| 1.686523|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=30               |[20-30)        | 0.9637940| 0.7550247| 1.230289|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |<20                |[20-30)        | 0.7852842| 0.5196805| 1.186635|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=30               |[20-30)        | 0.9331035| 0.7076677| 1.230354|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<20                |[20-30)        | 1.4096973| 0.9104954| 2.182599|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=30               |[20-30)        | 1.0081811| 0.5951319| 1.707906|
|0-24 months |PROBIT         |BELARUS                      |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |<20                |[20-30)        | 1.3091980| 0.9486721| 1.806735|
|0-24 months |PROBIT         |BELARUS                      |>=30               |[20-30)        | 0.8457924| 0.6129034| 1.167174|
|0-24 months |PROVIDE        |BANGLADESH                   |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |<20                |[20-30)        | 1.3752183| 0.8013693| 2.359992|
|0-24 months |PROVIDE        |BANGLADESH                   |>=30               |[20-30)        | 1.1007659| 0.6558913| 1.847388|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA                        |<20                |[20-30)        | 0.9344692| 0.7267591| 1.201544|
|0-24 months |SAS-CompFeed   |INDIA                        |>=30               |[20-30)        | 0.9761108| 0.8146353| 1.169594|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<20                |[20-30)        | 0.9527034| 0.6733969| 1.347859|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=30               |[20-30)        | 1.0763814| 0.8469574| 1.367952|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<20                |[20-30)        | 1.2244243| 0.7937748| 1.888715|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=30               |[20-30)        | 0.8746942| 0.6549760| 1.168119|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |[20-30)        | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<20                |[20-30)        | 1.1325469| 1.0177198| 1.260330|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=30               |[20-30)        | 1.0104004| 0.9030357| 1.130530|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30)            |NA             | -0.0075038| -0.0331956| 0.0181881|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30)            |NA             | -0.0005510| -0.0290461| 0.0279441|
|0-24 months |COHORTS        |INDIA                        |[20-30)            |NA             |  0.0010971| -0.0057129| 0.0079070|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |NA             |  0.0214575|  0.0078321| 0.0350829|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |NA             |  0.0208008| -0.0039841| 0.0455858|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[20-30)            |NA             |  0.0114692| -0.0247400| 0.0476784|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |NA             |  0.0143089|  0.0017764| 0.0268415|
|0-24 months |IRC            |INDIA                        |[20-30)            |NA             |  0.0045944| -0.0142326| 0.0234215|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             |  0.0221479|  0.0166042| 0.0276917|
|0-24 months |Keneba         |GAMBIA                       |[20-30)            |NA             |  0.0239258|  0.0084642| 0.0393874|
|0-24 months |LCNI-5         |MALAWI                       |[20-30)            |NA             |  0.0023738| -0.0246801| 0.0294278|
|0-24 months |MAL-ED         |BANGLADESH                   |[20-30)            |NA             |  0.0265602| -0.0089121| 0.0620326|
|0-24 months |MAL-ED         |PERU                         |[20-30)            |NA             |  0.0117580| -0.0335214| 0.0570373|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30)            |NA             | -0.0159631| -0.0615271| 0.0296008|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             | -0.0056707| -0.0622418| 0.0509005|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             | -0.0157301| -0.0398596| 0.0083994|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             |  0.0091806| -0.0086509| 0.0270121|
|0-24 months |PROBIT         |BELARUS                      |[20-30)            |NA             | -0.0004049| -0.0023527| 0.0015429|
|0-24 months |PROVIDE        |BANGLADESH                   |[20-30)            |NA             |  0.0025474| -0.0144542| 0.0195491|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |NA             | -0.0042235| -0.0175705| 0.0091235|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             |  0.0137859| -0.0175648| 0.0451367|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             | -0.0025547| -0.0110777| 0.0059683|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             |  0.0046236| -0.0002629| 0.0095102|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |[20-30)            |NA             | -0.0118098| -0.0530882| 0.0278507|
|0-24 months |COHORTS        |GUATEMALA                    |[20-30)            |NA             | -0.0011876| -0.0645250| 0.0583814|
|0-24 months |COHORTS        |INDIA                        |[20-30)            |NA             |  0.0080065| -0.0429490| 0.0564725|
|0-24 months |COHORTS        |PHILIPPINES                  |[20-30)            |NA             |  0.0602543|  0.0211606| 0.0977867|
|0-24 months |GMS-Nepal      |NEPAL                        |[20-30)            |NA             |  0.0859111| -0.0222359| 0.1826168|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[20-30)            |NA             |  0.0608086| -0.1518042| 0.2341750|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[20-30)            |NA             |  0.1386395|  0.0108984| 0.2498831|
|0-24 months |IRC            |INDIA                        |[20-30)            |NA             |  0.0184679| -0.0601792| 0.0912807|
|0-24 months |JiVitA-3       |BANGLADESH                   |[20-30)            |NA             |  0.1201232|  0.0895534| 0.1496666|
|0-24 months |Keneba         |GAMBIA                       |[20-30)            |NA             |  0.1112260|  0.0365109| 0.1801472|
|0-24 months |LCNI-5         |MALAWI                       |[20-30)            |NA             |  0.0117812| -0.1320469| 0.1373358|
|0-24 months |MAL-ED         |BANGLADESH                   |[20-30)            |NA             |  0.1213528| -0.0551853| 0.2683551|
|0-24 months |MAL-ED         |PERU                         |[20-30)            |NA             |  0.0556666| -0.1854384| 0.2477334|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[20-30)            |NA             | -0.0686633| -0.2835665| 0.1102594|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             | -0.0108446| -0.1250434| 0.0917622|
|0-24 months |NIH-Birth      |BANGLADESH                   |[20-30)            |NA             | -0.0503203| -0.1303652| 0.0240563|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[20-30)            |NA             |  0.0702918| -0.0762571| 0.1968858|
|0-24 months |PROBIT         |BELARUS                      |[20-30)            |NA             | -0.0146506| -0.0891560| 0.0547582|
|0-24 months |PROVIDE        |BANGLADESH                   |[20-30)            |NA             |  0.0187706| -0.1148310| 0.1363614|
|0-24 months |SAS-CompFeed   |INDIA                        |[20-30)            |NA             | -0.0127704| -0.0532433| 0.0261472|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[20-30)            |NA             |  0.0286693| -0.0388118| 0.0917668|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[20-30)            |NA             | -0.0257204| -0.1151603| 0.0565460|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[20-30)            |NA             |  0.0275181| -0.0020010| 0.0561676|
