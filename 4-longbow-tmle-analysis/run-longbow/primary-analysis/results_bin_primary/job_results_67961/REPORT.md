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

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |mhtcm        | ever_sstunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:------------|-------------:|------:|-----:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm     |             0|    115|  1292|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm     |             1|     51|  1292|
|0-24 months |COHORTS        |GUATEMALA                    |<151 cm      |             0|    412|  1292|
|0-24 months |COHORTS        |GUATEMALA                    |<151 cm      |             1|    433|  1292|
|0-24 months |COHORTS        |GUATEMALA                    |[151-155) cm |             0|    160|  1292|
|0-24 months |COHORTS        |GUATEMALA                    |[151-155) cm |             1|    121|  1292|
|0-24 months |COHORTS        |INDIA                        |>=155 cm     |             0|    540|  1906|
|0-24 months |COHORTS        |INDIA                        |>=155 cm     |             1|     31|  1906|
|0-24 months |COHORTS        |INDIA                        |<151 cm      |             0|    687|  1906|
|0-24 months |COHORTS        |INDIA                        |<151 cm      |             1|    137|  1906|
|0-24 months |COHORTS        |INDIA                        |[151-155) cm |             0|    458|  1906|
|0-24 months |COHORTS        |INDIA                        |[151-155) cm |             1|     53|  1906|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm     |             0|    490|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm     |             1|    142|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |<151 cm      |             0|    855|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |<151 cm      |             1|    694|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm |             0|    624|  3058|
|0-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm |             1|    253|  3058|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=155 cm     |             0|     32|   235|
|0-24 months |Guatemala BSC  |GUATEMALA                    |>=155 cm     |             1|      4|   235|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<151 cm      |             0|    108|   235|
|0-24 months |Guatemala BSC  |GUATEMALA                    |<151 cm      |             1|     35|   235|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[151-155) cm |             0|     47|   235|
|0-24 months |Guatemala BSC  |GUATEMALA                    |[151-155) cm |             1|      9|   235|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm     |             0|   2628|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm     |             1|    271|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm      |             0|     69|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm      |             1|     22|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm |             0|    181|  3216|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm |             1|     45|  3216|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm     |             0|   3819| 27106|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm     |             1|    336| 27106|
|0-24 months |JiVitA-3       |BANGLADESH                   |<151 cm      |             0|  12348| 27106|
|0-24 months |JiVitA-3       |BANGLADESH                   |<151 cm      |             1|   3747| 27106|
|0-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm |             0|   5940| 27106|
|0-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm |             1|    916| 27106|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm     |             0|   1602|  2430|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm     |             1|    409|  2430|
|0-24 months |Keneba         |GAMBIA                       |<151 cm      |             0|     53|  2430|
|0-24 months |Keneba         |GAMBIA                       |<151 cm      |             1|     40|  2430|
|0-24 months |Keneba         |GAMBIA                       |[151-155) cm |             0|    226|  2430|
|0-24 months |Keneba         |GAMBIA                       |[151-155) cm |             1|    100|  2430|
|0-24 months |LCNI-5         |MALAWI                       |>=155 cm     |             0|    443|   837|
|0-24 months |LCNI-5         |MALAWI                       |>=155 cm     |             1|     71|   837|
|0-24 months |LCNI-5         |MALAWI                       |<151 cm      |             0|     76|   837|
|0-24 months |LCNI-5         |MALAWI                       |<151 cm      |             1|     55|   837|
|0-24 months |LCNI-5         |MALAWI                       |[151-155) cm |             0|    141|   837|
|0-24 months |LCNI-5         |MALAWI                       |[151-155) cm |             1|     51|   837|
|0-24 months |MAL-ED         |BANGLADESH                   |>=155 cm     |             0|     22|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |>=155 cm     |             1|      3|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |<151 cm      |             0|    114|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |<151 cm      |             1|     49|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |[151-155) cm |             0|     62|   254|
|0-24 months |MAL-ED         |BANGLADESH                   |[151-155) cm |             1|      4|   254|
|0-24 months |MAL-ED         |BRAZIL                       |>=155 cm     |             0|    119|   222|
|0-24 months |MAL-ED         |BRAZIL                       |>=155 cm     |             1|     11|   222|
|0-24 months |MAL-ED         |BRAZIL                       |<151 cm      |             0|     47|   222|
|0-24 months |MAL-ED         |BRAZIL                       |<151 cm      |             1|      6|   222|
|0-24 months |MAL-ED         |BRAZIL                       |[151-155) cm |             0|     34|   222|
|0-24 months |MAL-ED         |BRAZIL                       |[151-155) cm |             1|      5|   222|
|0-24 months |MAL-ED         |INDIA                        |>=155 cm     |             0|     46|   242|
|0-24 months |MAL-ED         |INDIA                        |>=155 cm     |             1|      9|   242|
|0-24 months |MAL-ED         |INDIA                        |<151 cm      |             0|     79|   242|
|0-24 months |MAL-ED         |INDIA                        |<151 cm      |             1|     36|   242|
|0-24 months |MAL-ED         |INDIA                        |[151-155) cm |             0|     59|   242|
|0-24 months |MAL-ED         |INDIA                        |[151-155) cm |             1|     13|   242|
|0-24 months |MAL-ED         |NEPAL                        |>=155 cm     |             0|     41|   238|
|0-24 months |MAL-ED         |NEPAL                        |>=155 cm     |             1|      0|   238|
|0-24 months |MAL-ED         |NEPAL                        |<151 cm      |             0|    117|   238|
|0-24 months |MAL-ED         |NEPAL                        |<151 cm      |             1|     16|   238|
|0-24 months |MAL-ED         |NEPAL                        |[151-155) cm |             0|     59|   238|
|0-24 months |MAL-ED         |NEPAL                        |[151-155) cm |             1|      5|   238|
|0-24 months |MAL-ED         |PERU                         |>=155 cm     |             0|     49|   290|
|0-24 months |MAL-ED         |PERU                         |>=155 cm     |             1|     11|   290|
|0-24 months |MAL-ED         |PERU                         |<151 cm      |             0|    124|   290|
|0-24 months |MAL-ED         |PERU                         |<151 cm      |             1|     45|   290|
|0-24 months |MAL-ED         |PERU                         |[151-155) cm |             0|     54|   290|
|0-24 months |MAL-ED         |PERU                         |[151-155) cm |             1|      7|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm     |             0|    159|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm     |             1|     45|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<151 cm      |             0|     19|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<151 cm      |             1|     14|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[151-155) cm |             0|     22|   270|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[151-155) cm |             1|     11|   270|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |             0|     88|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |             1|     65|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm      |             0|     15|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm      |             1|     36|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |             0|     17|   256|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |             1|     35|   256|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm     |             0|     99|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm     |             1|     18|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |<151 cm      |             0|    224|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |<151 cm      |             1|    142|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm |             0|    110|   629|
|0-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm |             1|     36|   629|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm     |             0|    132|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm     |             1|      8|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm      |             0|    362|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm      |             1|     73|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm |             0|    162|   755|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm |             1|     18|   755|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm     |             0|  12874| 13734|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm     |             1|    337| 13734|
|0-24 months |PROBIT         |BELARUS                      |<151 cm      |             0|    113| 13734|
|0-24 months |PROBIT         |BELARUS                      |<151 cm      |             1|     12| 13734|
|0-24 months |PROBIT         |BELARUS                      |[151-155) cm |             0|    375| 13734|
|0-24 months |PROBIT         |BELARUS                      |[151-155) cm |             1|     23| 13734|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm     |             0|    129|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm     |             1|      9|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |<151 cm      |             0|    306|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |<151 cm      |             1|     67|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm |             0|    140|   669|
|0-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm |             1|     18|   669|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm     |             0|    449|  1407|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm     |             1|    123|  1407|
|0-24 months |SAS-CompFeed   |INDIA                        |<151 cm      |             0|    275|  1407|
|0-24 months |SAS-CompFeed   |INDIA                        |<151 cm      |             1|    219|  1407|
|0-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm |             0|    219|  1407|
|0-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm |             1|    122|  1407|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm     |             0|     50|   409|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm     |             1|     28|   409|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm      |             0|    102|   409|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm      |             1|    118|   409|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm |             0|     57|   409|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm |             1|     54|   409|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |             0|   1371|  2359|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm     |             1|    119|  2359|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm      |             0|    301|  2359|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm      |             1|     57|  2359|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |             0|    451|  2359|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm |             1|     60|  2359|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm     |             0|   6539|  9852|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm     |             1|   1300|  9852|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm      |             0|    394|  9852|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm      |             1|    180|  9852|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm |             0|   1119|  9852|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm |             1|    320|  9852|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
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

* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
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
![](/tmp/9904ed4c-2422-4810-be18-daad1150514c/e78d64f9-aff5-4a7d-ba7d-a692c0e3beeb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9904ed4c-2422-4810-be18-daad1150514c/e78d64f9-aff5-4a7d-ba7d-a692c0e3beeb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9904ed4c-2422-4810-be18-daad1150514c/e78d64f9-aff5-4a7d-ba7d-a692c0e3beeb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9904ed4c-2422-4810-be18-daad1150514c/e78d64f9-aff5-4a7d-ba7d-a692c0e3beeb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | 0.2856704| 0.2193617| 0.3519791|
|0-24 months |COHORTS        |GUATEMALA                    |<151 cm            |NA             | 0.5107757| 0.4767787| 0.5447727|
|0-24 months |COHORTS        |GUATEMALA                    |[151-155) cm       |NA             | 0.4198667| 0.3581742| 0.4815591|
|0-24 months |COHORTS        |INDIA                        |>=155 cm           |NA             | 0.0601245| 0.0414918| 0.0787572|
|0-24 months |COHORTS        |INDIA                        |<151 cm            |NA             | 0.1600634| 0.1347772| 0.1853496|
|0-24 months |COHORTS        |INDIA                        |[151-155) cm       |NA             | 0.1013990| 0.0749991| 0.1277990|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             | 0.2429785| 0.2102463| 0.2757108|
|0-24 months |COHORTS        |PHILIPPINES                  |<151 cm            |NA             | 0.4308760| 0.4064225| 0.4553295|
|0-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm       |NA             | 0.2991439| 0.2690145| 0.3292734|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |NA             | 0.0935009| 0.0742108| 0.1127909|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm            |NA             | 0.2478764| 0.1226902| 0.3730626|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm       |NA             | 0.2052077| 0.1256806| 0.2847349|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             | 0.0889796| 0.0793910| 0.0985683|
|0-24 months |JiVitA-3       |BANGLADESH                   |<151 cm            |NA             | 0.2258698| 0.2181211| 0.2336185|
|0-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm       |NA             | 0.1391975| 0.1298006| 0.1485945|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm           |NA             | 0.2037127| 0.1861148| 0.2213106|
|0-24 months |Keneba         |GAMBIA                       |<151 cm            |NA             | 0.4185875| 0.3128342| 0.5243408|
|0-24 months |Keneba         |GAMBIA                       |[151-155) cm       |NA             | 0.3018344| 0.2515185| 0.3521504|
|0-24 months |LCNI-5         |MALAWI                       |>=155 cm           |NA             | 0.1387689| 0.1089089| 0.1686288|
|0-24 months |LCNI-5         |MALAWI                       |<151 cm            |NA             | 0.4237285| 0.3367536| 0.5107035|
|0-24 months |LCNI-5         |MALAWI                       |[151-155) cm       |NA             | 0.2657779| 0.2029373| 0.3286185|
|0-24 months |MAL-ED         |BRAZIL                       |>=155 cm           |NA             | 0.0846154| 0.0366660| 0.1325648|
|0-24 months |MAL-ED         |BRAZIL                       |<151 cm            |NA             | 0.1132075| 0.0277128| 0.1987022|
|0-24 months |MAL-ED         |BRAZIL                       |[151-155) cm       |NA             | 0.1282051| 0.0230438| 0.2333664|
|0-24 months |MAL-ED         |INDIA                        |>=155 cm           |NA             | 0.1636364| 0.0656640| 0.2616087|
|0-24 months |MAL-ED         |INDIA                        |<151 cm            |NA             | 0.3130435| 0.2281127| 0.3979743|
|0-24 months |MAL-ED         |INDIA                        |[151-155) cm       |NA             | 0.1805556| 0.0915235| 0.2695876|
|0-24 months |MAL-ED         |PERU                         |>=155 cm           |NA             | 0.1833333| 0.0852567| 0.2814100|
|0-24 months |MAL-ED         |PERU                         |<151 cm            |NA             | 0.2662722| 0.1995170| 0.3330274|
|0-24 months |MAL-ED         |PERU                         |[151-155) cm       |NA             | 0.1147541| 0.0346326| 0.1948756|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm           |NA             | 0.2203389| 0.1632008| 0.2774771|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<151 cm            |NA             | 0.4181418| 0.2436561| 0.5926275|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[151-155) cm       |NA             | 0.3306349| 0.1607412| 0.5005286|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.4248295| 0.3454726| 0.5041864|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm            |NA             | 0.6942774| 0.5622984| 0.8262565|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |NA             | 0.6834714| 0.5609062| 0.8060366|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             | 0.1509595| 0.0848813| 0.2170376|
|0-24 months |NIH-Birth      |BANGLADESH                   |<151 cm            |NA             | 0.3888140| 0.3386343| 0.4389938|
|0-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm       |NA             | 0.2435177| 0.1722929| 0.3147424|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             | 0.0571429| 0.0186681| 0.0956176|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm            |NA             | 0.1678161| 0.1326748| 0.2029574|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm       |NA             | 0.1000000| 0.0561448| 0.1438552|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm           |NA             | 0.0255523| 0.0187747| 0.0323299|
|0-24 months |PROBIT         |BELARUS                      |<151 cm            |NA             | 0.0875749| 0.0645481| 0.1106016|
|0-24 months |PROBIT         |BELARUS                      |[151-155) cm       |NA             | 0.0570015| 0.0317838| 0.0822192|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             | 0.0652174| 0.0239915| 0.1064433|
|0-24 months |PROVIDE        |BANGLADESH                   |<151 cm            |NA             | 0.1796247| 0.1406387| 0.2186106|
|0-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm       |NA             | 0.1139241| 0.0643462| 0.1635019|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             | 0.2206983| 0.1899006| 0.2514959|
|0-24 months |SAS-CompFeed   |INDIA                        |<151 cm            |NA             | 0.4318490| 0.3744587| 0.4892393|
|0-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm       |NA             | 0.3581503| 0.3231671| 0.3931334|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             | 0.3371510| 0.2283703| 0.4459318|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm            |NA             | 0.5340575| 0.4679199| 0.6001951|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm       |NA             | 0.4708789| 0.3760525| 0.5657053|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.0808393| 0.0669884| 0.0946901|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm            |NA             | 0.1572455| 0.1196630| 0.1948281|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |NA             | 0.1164612| 0.0881451| 0.1447772|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             | 0.1663708| 0.1581322| 0.1746094|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm            |NA             | 0.3173946| 0.2796524| 0.3551369|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm       |NA             | 0.2205747| 0.1989871| 0.2421624|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.4682663| 0.4410469| 0.4954857|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.1159496| 0.1015724| 0.1303268|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.3561151| 0.3391405| 0.3730897|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.1050995| 0.0855497| 0.1246493|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1844241| 0.1788262| 0.1900221|
|0-24 months |Keneba         |GAMBIA                       |NA                 |NA             | 0.2259259| 0.2092953| 0.2425566|
|0-24 months |LCNI-5         |MALAWI                       |NA                 |NA             | 0.2114695| 0.1837888| 0.2391503|
|0-24 months |MAL-ED         |BRAZIL                       |NA                 |NA             | 0.0990991| 0.0597055| 0.1384927|
|0-24 months |MAL-ED         |INDIA                        |NA                 |NA             | 0.2396694| 0.1857746| 0.2935643|
|0-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.2172414| 0.1696986| 0.2647841|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.2592593| 0.2068905| 0.3116280|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.5312500| 0.4700011| 0.5924989|
|0-24 months |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.3116057| 0.2753823| 0.3478292|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1311258| 0.1070332| 0.1552185|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0270861| 0.0199367| 0.0342354|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1405082| 0.1141551| 0.1668613|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.3297797| 0.2987556| 0.3608038|
|0-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.4889976| 0.4404930| 0.5375021|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1000424| 0.0879314| 0.1121534|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.1827040| 0.1750732| 0.1903348|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA                    |<151 cm            |>=155 cm       | 1.7879894| 1.4051002| 2.275216|
|0-24 months |COHORTS        |GUATEMALA                    |[151-155) cm       |>=155 cm       | 1.4697590| 1.1173186| 1.933371|
|0-24 months |COHORTS        |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |INDIA                        |<151 cm            |>=155 cm       | 2.6621997| 1.8831443| 3.763550|
|0-24 months |COHORTS        |INDIA                        |[151-155) cm       |>=155 cm       | 1.6864849| 1.1269758| 2.523773|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |<151 cm            |>=155 cm       | 1.7733089| 1.5333487| 2.050822|
|0-24 months |COHORTS        |PHILIPPINES                  |[151-155) cm       |>=155 cm       | 1.2311538| 1.0413964| 1.455488|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |<151 cm            |>=155 cm       | 2.6510600| 1.5363053| 4.574689|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |[151-155) cm       |>=155 cm       | 2.1947150| 1.5047072| 3.201137|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |<151 cm            |>=155 cm       | 2.5384437| 2.2738110| 2.833875|
|0-24 months |JiVitA-3       |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.5643752| 1.3767606| 1.777556|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |Keneba         |GAMBIA                       |<151 cm            |>=155 cm       | 2.0547934| 1.5733129| 2.683621|
|0-24 months |Keneba         |GAMBIA                       |[151-155) cm       |>=155 cm       | 1.4816671| 1.2282009| 1.787442|
|0-24 months |LCNI-5         |MALAWI                       |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |LCNI-5         |MALAWI                       |<151 cm            |>=155 cm       | 3.0534841| 2.2679889| 4.111028|
|0-24 months |LCNI-5         |MALAWI                       |[151-155) cm       |>=155 cm       | 1.9152561| 1.3920049| 2.635196|
|0-24 months |MAL-ED         |BRAZIL                       |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |BRAZIL                       |<151 cm            |>=155 cm       | 1.3379074| 0.5204504| 3.439321|
|0-24 months |MAL-ED         |BRAZIL                       |[151-155) cm       |>=155 cm       | 1.5151515| 0.5590860| 4.106137|
|0-24 months |MAL-ED         |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |INDIA                        |<151 cm            |>=155 cm       | 1.9130435| 0.9914102| 3.691444|
|0-24 months |MAL-ED         |INDIA                        |[151-155) cm       |>=155 cm       | 1.1033951| 0.5080144| 2.396548|
|0-24 months |MAL-ED         |PERU                         |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |PERU                         |<151 cm            |>=155 cm       | 1.4523938| 0.8044622| 2.622184|
|0-24 months |MAL-ED         |PERU                         |[151-155) cm       |>=155 cm       | 0.6259314| 0.2597331| 1.508434|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |<151 cm            |>=155 cm       | 1.8977208| 1.1619709| 3.099341|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |[151-155) cm       |>=155 cm       | 1.5005742| 0.8435201| 2.669436|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<151 cm            |>=155 cm       | 1.6342495| 1.2515942| 2.133896|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |>=155 cm       | 1.6088134| 1.2420347| 2.083904|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth      |BANGLADESH                   |<151 cm            |>=155 cm       | 2.5756186| 1.6320413| 4.064732|
|0-24 months |NIH-Birth      |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.6131327| 0.9521709| 2.732910|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |<151 cm            |>=155 cm       | 2.9367816| 1.4509154| 5.944307|
|0-24 months |NIH-Crypto     |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.7500000| 0.7835495| 3.908496|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |<151 cm            |>=155 cm       | 3.4272792| 2.5905885| 4.534198|
|0-24 months |PROBIT         |BELARUS                      |[151-155) cm       |>=155 cm       | 2.2307780| 1.4818505| 3.358214|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |<151 cm            |>=155 cm       | 2.7542449| 1.4116934| 5.373592|
|0-24 months |PROVIDE        |BANGLADESH                   |[151-155) cm       |>=155 cm       | 1.7468354| 0.8108757| 3.763134|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA                        |<151 cm            |>=155 cm       | 1.9567394| 1.7557521| 2.180734|
|0-24 months |SAS-CompFeed   |INDIA                        |[151-155) cm       |>=155 cm       | 1.6228049| 1.3175281| 1.998816|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl  |INDIA                        |<151 cm            |>=155 cm       | 1.5840304| 1.1203598| 2.239595|
|0-24 months |SAS-FoodSuppl  |INDIA                        |[151-155) cm       |>=155 cm       | 1.3966409| 0.9548692| 2.042799|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |<151 cm            |>=155 cm       | 1.9451622| 1.4496513| 2.610046|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |[151-155) cm       |>=155 cm       | 1.4406506| 1.0699920| 1.939710|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |>=155 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |<151 cm            |>=155 cm       | 1.9077539| 1.6771358| 2.170084|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |[151-155) cm       |>=155 cm       | 1.3258014| 1.1881026| 1.479459|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | 0.1825958|  0.1194375| 0.2457542|
|0-24 months |COHORTS        |INDIA                        |>=155 cm           |NA             | 0.0558251|  0.0372826| 0.0743676|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             | 0.1131366|  0.0829921| 0.1432810|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |NA             | 0.0115986|  0.0059675| 0.0172298|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             | 0.0954445|  0.0859761| 0.1049129|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm           |NA             | 0.0222132|  0.0136601| 0.0307663|
|0-24 months |LCNI-5         |MALAWI                       |>=155 cm           |NA             | 0.0727007|  0.0490300| 0.0963713|
|0-24 months |MAL-ED         |BRAZIL                       |>=155 cm           |NA             | 0.0144837| -0.0195502| 0.0485176|
|0-24 months |MAL-ED         |INDIA                        |>=155 cm           |NA             | 0.0760331| -0.0141902| 0.1662563|
|0-24 months |MAL-ED         |PERU                         |>=155 cm           |NA             | 0.0339080| -0.0549686| 0.1227847|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm           |NA             | 0.0389203|  0.0059944| 0.0718463|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.1064205|  0.0552825| 0.1575584|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             | 0.1606462|  0.0967316| 0.2245609|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             | 0.0739830|  0.0351014| 0.1128645|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm           |NA             | 0.0015338|  0.0006407| 0.0024268|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             | 0.0752908|  0.0341461| 0.1164356|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             | 0.1090814|  0.0942410| 0.1239218|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             | 0.1518465|  0.0525961| 0.2510969|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.0192031|  0.0093193| 0.0290869|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             | 0.0163332|  0.0120756| 0.0205908|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |>=155 cm           |NA             | 0.3899402|  0.2393542| 0.5107145|
|0-24 months |COHORTS        |INDIA                        |>=155 cm           |NA             | 0.4814603|  0.3103957| 0.6100902|
|0-24 months |COHORTS        |PHILIPPINES                  |>=155 cm           |NA             | 0.3176967|  0.2281429| 0.3968601|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |>=155 cm           |NA             | 0.1103586|  0.0550951| 0.1623900|
|0-24 months |JiVitA-3       |BANGLADESH                   |>=155 cm           |NA             | 0.5175271|  0.4655063| 0.5644849|
|0-24 months |Keneba         |GAMBIA                       |>=155 cm           |NA             | 0.0983207|  0.0599992| 0.1350800|
|0-24 months |LCNI-5         |MALAWI                       |>=155 cm           |NA             | 0.3437879|  0.2288857| 0.4415687|
|0-24 months |MAL-ED         |BRAZIL                       |>=155 cm           |NA             | 0.1461538| -0.2706298| 0.4262268|
|0-24 months |MAL-ED         |INDIA                        |>=155 cm           |NA             | 0.3172414| -0.1783116| 0.6043837|
|0-24 months |MAL-ED         |PERU                         |>=155 cm           |NA             | 0.1560847| -0.3691355| 0.4798228|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |>=155 cm           |NA             | 0.1501213|  0.0146809| 0.2669442|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.2003209|  0.0952218| 0.2932117|
|0-24 months |NIH-Birth      |BANGLADESH                   |>=155 cm           |NA             | 0.5155433|  0.2672240| 0.6797134|
|0-24 months |NIH-Crypto     |BANGLADESH                   |>=155 cm           |NA             | 0.5642136|  0.1708072| 0.7709703|
|0-24 months |PROBIT         |BELARUS                      |>=155 cm           |NA             | 0.0566257|  0.0270266| 0.0853243|
|0-24 months |PROVIDE        |BANGLADESH                   |>=155 cm           |NA             | 0.5358464|  0.1554915| 0.7448948|
|0-24 months |SAS-CompFeed   |INDIA                        |>=155 cm           |NA             | 0.3307705|  0.2812657| 0.3768655|
|0-24 months |SAS-FoodSuppl  |INDIA                        |>=155 cm           |NA             | 0.3105261|  0.0729789| 0.4872024|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |>=155 cm           |NA             | 0.1919497|  0.0895609| 0.2828238|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |>=155 cm           |NA             | 0.0893969|  0.0659868| 0.1122203|
