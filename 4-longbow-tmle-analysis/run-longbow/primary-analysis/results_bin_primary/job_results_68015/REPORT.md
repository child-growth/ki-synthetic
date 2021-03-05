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

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |feducyrs | ever_swasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:--------|------------:|------:|-----:|
|0-24 months |COHORTS        |GUATEMALA                    |High     |            0|    214|  1234|
|0-24 months |COHORTS        |GUATEMALA                    |High     |            1|     17|  1234|
|0-24 months |COHORTS        |GUATEMALA                    |Low      |            0|    521|  1234|
|0-24 months |COHORTS        |GUATEMALA                    |Low      |            1|     37|  1234|
|0-24 months |COHORTS        |GUATEMALA                    |Medium   |            0|    411|  1234|
|0-24 months |COHORTS        |GUATEMALA                    |Medium   |            1|     34|  1234|
|0-24 months |COHORTS        |INDIA                        |High     |            0|    508|  1447|
|0-24 months |COHORTS        |INDIA                        |High     |            1|     59|  1447|
|0-24 months |COHORTS        |INDIA                        |Low      |            0|    434|  1447|
|0-24 months |COHORTS        |INDIA                        |Low      |            1|     38|  1447|
|0-24 months |COHORTS        |INDIA                        |Medium   |            0|    365|  1447|
|0-24 months |COHORTS        |INDIA                        |Medium   |            1|     43|  1447|
|0-24 months |COHORTS        |PHILIPPINES                  |High     |            0|    911|  2868|
|0-24 months |COHORTS        |PHILIPPINES                  |High     |            1|    117|  2868|
|0-24 months |COHORTS        |PHILIPPINES                  |Low      |            0|    726|  2868|
|0-24 months |COHORTS        |PHILIPPINES                  |Low      |            1|    100|  2868|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium   |            0|    879|  2868|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium   |            1|    135|  2868|
|0-24 months |GMS-Nepal      |NEPAL                        |High     |            0|    125|   684|
|0-24 months |GMS-Nepal      |NEPAL                        |High     |            1|     44|   684|
|0-24 months |GMS-Nepal      |NEPAL                        |Low      |            0|    210|   684|
|0-24 months |GMS-Nepal      |NEPAL                        |Low      |            1|     82|   684|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium   |            0|    172|   684|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium   |            1|     51|   684|
|0-24 months |JiVitA-3       |BANGLADESH                   |High     |            0|   6118| 25970|
|0-24 months |JiVitA-3       |BANGLADESH                   |High     |            1|    359| 25970|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low      |            0|   9936| 25970|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low      |            1|    701| 25970|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium   |            0|   8344| 25970|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium   |            1|    512| 25970|
|0-24 months |JiVitA-4       |BANGLADESH                   |High     |            0|   1184|  5277|
|0-24 months |JiVitA-4       |BANGLADESH                   |High     |            1|     63|  5277|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low      |            0|   1819|  5277|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low      |            1|    135|  5277|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium   |            0|   1947|  5277|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium   |            1|    129|  5277|
|0-24 months |LCNI-5         |MALAWI                       |High     |            0|    247|   813|
|0-24 months |LCNI-5         |MALAWI                       |High     |            1|      4|   813|
|0-24 months |LCNI-5         |MALAWI                       |Low      |            0|    289|   813|
|0-24 months |LCNI-5         |MALAWI                       |Low      |            1|      2|   813|
|0-24 months |LCNI-5         |MALAWI                       |Medium   |            0|    269|   813|
|0-24 months |LCNI-5         |MALAWI                       |Medium   |            1|      2|   813|
|0-24 months |MAL-ED         |BANGLADESH                   |High     |            0|     50|   147|
|0-24 months |MAL-ED         |BANGLADESH                   |High     |            1|      4|   147|
|0-24 months |MAL-ED         |BANGLADESH                   |Low      |            0|     33|   147|
|0-24 months |MAL-ED         |BANGLADESH                   |Low      |            1|      6|   147|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium   |            0|     49|   147|
|0-24 months |MAL-ED         |BANGLADESH                   |Medium   |            1|      5|   147|
|0-24 months |MAL-ED         |INDIA                        |High     |            0|     43|   147|
|0-24 months |MAL-ED         |INDIA                        |High     |            1|      1|   147|
|0-24 months |MAL-ED         |INDIA                        |Low      |            0|     51|   147|
|0-24 months |MAL-ED         |INDIA                        |Low      |            1|      8|   147|
|0-24 months |MAL-ED         |INDIA                        |Medium   |            0|     37|   147|
|0-24 months |MAL-ED         |INDIA                        |Medium   |            1|      7|   147|
|0-24 months |MAL-ED         |NEPAL                        |High     |            0|     40|    98|
|0-24 months |MAL-ED         |NEPAL                        |High     |            1|      2|    98|
|0-24 months |MAL-ED         |NEPAL                        |Low      |            0|     28|    98|
|0-24 months |MAL-ED         |NEPAL                        |Low      |            1|      0|    98|
|0-24 months |MAL-ED         |NEPAL                        |Medium   |            0|     26|    98|
|0-24 months |MAL-ED         |NEPAL                        |Medium   |            1|      2|    98|
|0-24 months |MAL-ED         |PERU                         |High     |            0|    116|   250|
|0-24 months |MAL-ED         |PERU                         |High     |            1|      4|   250|
|0-24 months |MAL-ED         |PERU                         |Low      |            0|     69|   250|
|0-24 months |MAL-ED         |PERU                         |Low      |            1|      0|   250|
|0-24 months |MAL-ED         |PERU                         |Medium   |            0|     61|   250|
|0-24 months |MAL-ED         |PERU                         |Medium   |            1|      0|   250|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High     |            0|     43|   110|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |High     |            1|      0|   110|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |            0|     32|   110|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Low      |            1|      5|   110|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |            0|     30|   110|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |Medium   |            1|      0|   110|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |            0|    125|   211|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |High     |            1|      5|   211|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |            0|     58|   211|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low      |            1|      3|   211|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |            0|     20|   211|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Medium   |            1|      0|   211|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High     |            0|    274|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High     |            1|     22|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low      |            0|    213|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low      |            1|     29|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |            0|    205|   758|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium   |            1|     15|   758|
|0-24 months |PROBIT         |BELARUS                      |High     |            0|   2521| 16315|
|0-24 months |PROBIT         |BELARUS                      |High     |            1|    187| 16315|
|0-24 months |PROBIT         |BELARUS                      |Low      |            0|   5913| 16315|
|0-24 months |PROBIT         |BELARUS                      |Low      |            1|    505| 16315|
|0-24 months |PROBIT         |BELARUS                      |Medium   |            0|   6607| 16315|
|0-24 months |PROBIT         |BELARUS                      |Medium   |            1|    582| 16315|
|0-24 months |PROVIDE        |BANGLADESH                   |High     |            0|    219|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |High     |            1|     13|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Low      |            0|    218|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Low      |            1|     20|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium   |            0|    221|   700|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium   |            1|      9|   700|
|0-24 months |SAS-CompFeed   |INDIA                        |High     |            0|    352|  1510|
|0-24 months |SAS-CompFeed   |INDIA                        |High     |            1|     34|  1510|
|0-24 months |SAS-CompFeed   |INDIA                        |Low      |            0|    520|  1510|
|0-24 months |SAS-CompFeed   |INDIA                        |Low      |            1|    123|  1510|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium   |            0|    415|  1510|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium   |            1|     66|  1510|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High     |            0|     93|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High     |            1|     17|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low      |            0|    123|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low      |            1|     24|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |            0|    131|   418|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium   |            1|     30|   418|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |            0|    429|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High     |            1|     20|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |            0|   1182|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low      |            1|     88|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |            0|    615|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium   |            1|     49|  2383|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High     |            0|    920| 13568|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High     |            1|     72| 13568|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |            0|   2060| 13568|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low      |            1|    224| 13568|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |            0|   9350| 13568|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium   |            1|    942| 13568|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/d2a8e20f-ff3a-4c5a-89a7-c92621e76ada/c3f6c504-2d95-4c9d-b312-7df6f3ec2a77/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d2a8e20f-ff3a-4c5a-89a7-c92621e76ada/c3f6c504-2d95-4c9d-b312-7df6f3ec2a77/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d2a8e20f-ff3a-4c5a-89a7-c92621e76ada/c3f6c504-2d95-4c9d-b312-7df6f3ec2a77/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d2a8e20f-ff3a-4c5a-89a7-c92621e76ada/c3f6c504-2d95-4c9d-b312-7df6f3ec2a77/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             | 0.0751545| 0.0414155| 0.1088936|
|0-24 months |COHORTS        |GUATEMALA                    |Low                |NA             | 0.0666940| 0.0460700| 0.0873179|
|0-24 months |COHORTS        |GUATEMALA                    |Medium             |NA             | 0.0742101| 0.0495514| 0.0988689|
|0-24 months |COHORTS        |INDIA                        |High               |NA             | 0.1022390| 0.0775206| 0.1269574|
|0-24 months |COHORTS        |INDIA                        |Low                |NA             | 0.0774354| 0.0532714| 0.1015994|
|0-24 months |COHORTS        |INDIA                        |Medium             |NA             | 0.1066570| 0.0763785| 0.1369355|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             | 0.1092238| 0.0872251| 0.1312225|
|0-24 months |COHORTS        |PHILIPPINES                  |Low                |NA             | 0.1254683| 0.1002785| 0.1506581|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium             |NA             | 0.1351840| 0.1128541| 0.1575139|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             | 0.2578969| 0.1859443| 0.3298496|
|0-24 months |GMS-Nepal      |NEPAL                        |Low                |NA             | 0.2632271| 0.2112968| 0.3151573|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium             |NA             | 0.2358642| 0.1710780| 0.3006504|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             | 0.0583959| 0.0477857| 0.0690062|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low                |NA             | 0.0605073| 0.0543464| 0.0666681|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium             |NA             | 0.0587969| 0.0520826| 0.0655112|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             | 0.0597702| 0.0343026| 0.0852379|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low                |NA             | 0.0597848| 0.0452738| 0.0742957|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium             |NA             | 0.0649883| 0.0519089| 0.0780677|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             | 0.0737129| 0.0438498| 0.1035759|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low                |NA             | 0.1212806| 0.0800574| 0.1625038|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |NA             | 0.0678379| 0.0341962| 0.1014797|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             | 0.0748077| 0.0393914| 0.1102240|
|0-24 months |PROBIT         |BELARUS                      |Low                |NA             | 0.0766521| 0.0460285| 0.1072756|
|0-24 months |PROBIT         |BELARUS                      |Medium             |NA             | 0.0787560| 0.0448993| 0.1126127|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             | 0.0560345| 0.0264189| 0.0856501|
|0-24 months |PROVIDE        |BANGLADESH                   |Low                |NA             | 0.0840336| 0.0487611| 0.1193061|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium             |NA             | 0.0391304| 0.0140529| 0.0642079|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             | 0.1021586| 0.0588882| 0.1454291|
|0-24 months |SAS-CompFeed   |INDIA                        |Low                |NA             | 0.1705240| 0.1281060| 0.2129421|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium             |NA             | 0.1385471| 0.0940926| 0.1830015|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             | 0.1603000| 0.0913183| 0.2292816|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low                |NA             | 0.1611622| 0.1003972| 0.2219272|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |NA             | 0.1840241| 0.1228372| 0.2452110|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             | 0.0454248| 0.0260743| 0.0647754|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |NA             | 0.0678614| 0.0540311| 0.0816917|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |NA             | 0.0745748| 0.0543936| 0.0947559|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             | 0.0848438| 0.0698630| 0.0998245|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |NA             | 0.0982162| 0.0875660| 0.1088663|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |NA             | 0.0901362| 0.0849258| 0.0953465|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.0713128| 0.0569485| 0.0856771|
|0-24 months |COHORTS        |INDIA                        |NA                 |NA             | 0.0967519| 0.0815150| 0.1119888|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.1227336| 0.1107225| 0.1347447|
|0-24 months |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.2587719| 0.2259267| 0.2916172|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0605314| 0.0569870| 0.0640758|
|0-24 months |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.0619670| 0.0548012| 0.0691329|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.0870712| 0.0669870| 0.1071555|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0780876| 0.0455813| 0.1105940|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.0600000| 0.0423945| 0.0776055|
|0-24 months |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.1476821| 0.1188009| 0.1765633|
|0-24 months |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.1698565| 0.1338154| 0.2058975|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0658833| 0.0559209| 0.0758458|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0912441| 0.0863987| 0.0960895|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |COHORTS        |GUATEMALA                    |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA                    |Low                |High           | 0.8874243| 0.5149179| 1.529412|
|0-24 months |COHORTS        |GUATEMALA                    |Medium             |High           | 0.9874339| 0.5650566| 1.725536|
|0-24 months |COHORTS        |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |INDIA                        |Low                |High           | 0.7573956| 0.5102339| 1.124284|
|0-24 months |COHORTS        |INDIA                        |Medium             |High           | 1.0432122| 0.7183359| 1.515018|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |Low                |High           | 1.1487268| 0.8686568| 1.519096|
|0-24 months |COHORTS        |PHILIPPINES                  |Medium             |High           | 1.2376786| 0.9606766| 1.594552|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal      |NEPAL                        |Low                |High           | 1.0206677| 0.7251681| 1.436581|
|0-24 months |GMS-Nepal      |NEPAL                        |Medium             |High           | 0.9145676| 0.6183354| 1.352719|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |Low                |High           | 1.0361551| 0.8488165| 1.264840|
|0-24 months |JiVitA-3       |BANGLADESH                   |Medium             |High           | 1.0068666| 0.8235101| 1.231048|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4       |BANGLADESH                   |Low                |High           | 1.0002429| 0.6206731| 1.611937|
|0-24 months |JiVitA-4       |BANGLADESH                   |Medium             |High           | 1.0873026| 0.6779784| 1.743753|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Low                |High           | 1.6453108| 0.9693720| 2.792579|
|0-24 months |NIH-Crypto     |BANGLADESH                   |Medium             |High           | 0.9202996| 0.4850711| 1.746036|
|0-24 months |PROBIT         |BELARUS                      |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |Low                |High           | 1.0246546| 0.8919435| 1.177112|
|0-24 months |PROBIT         |BELARUS                      |Medium             |High           | 1.0527789| 0.9409625| 1.177883|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |Low                |High           | 1.4996768| 0.7636284| 2.945190|
|0-24 months |PROVIDE        |BANGLADESH                   |Medium             |High           | 0.6983278| 0.3042943| 1.602599|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed   |INDIA                        |Low                |High           | 1.6692079| 0.9867781| 2.823588|
|0-24 months |SAS-CompFeed   |INDIA                        |Medium             |High           | 1.3561954| 0.7495255| 2.453907|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Low                |High           | 1.0053788| 0.5686648| 1.777473|
|0-24 months |SAS-FoodSuppl  |INDIA                        |Medium             |High           | 1.1479984| 0.6669938| 1.975881|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low                |High           | 1.4939267| 0.9315433| 2.395827|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Medium             |High           | 1.6417177| 0.9909525| 2.719845|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |High           | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Low                |High           | 1.1576118| 0.9471775| 1.414798|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |Medium             |High           | 1.0623780| 0.8896038| 1.268708|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             | -0.0038417| -0.0341373| 0.0264538|
|0-24 months |COHORTS        |INDIA                        |High               |NA             | -0.0054871| -0.0244636| 0.0134894|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.0135098| -0.0057535| 0.0327731|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             |  0.0008750| -0.0639821| 0.0657321|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.0021354| -0.0078045| 0.0120754|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0021968| -0.0217661| 0.0261597|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.0133584| -0.0111179| 0.0378346|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.0032799| -0.0038758| 0.0104357|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             |  0.0039655| -0.0206446| 0.0285756|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             |  0.0455235| -0.0002380| 0.0912849|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.0095565| -0.0505734| 0.0696863|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.0204585|  0.0021169| 0.0388001|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0064003| -0.0078066| 0.0206072|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |High               |NA             | -0.0538718| -0.5770330| 0.2957372|
|0-24 months |COHORTS        |INDIA                        |High               |NA             | -0.0567132| -0.2721285| 0.1222247|
|0-24 months |COHORTS        |PHILIPPINES                  |High               |NA             |  0.1100742| -0.0611383| 0.2536619|
|0-24 months |GMS-Nepal      |NEPAL                        |High               |NA             |  0.0033813| -0.2815714| 0.2249759|
|0-24 months |JiVitA-3       |BANGLADESH                   |High               |NA             |  0.0352781| -0.1437950| 0.1863154|
|0-24 months |JiVitA-4       |BANGLADESH                   |High               |NA             |  0.0354510| -0.4407003| 0.3542343|
|0-24 months |NIH-Crypto     |BANGLADESH                   |High               |NA             |  0.1534187| -0.1775300| 0.3913532|
|0-24 months |PROBIT         |BELARUS                      |High               |NA             |  0.0420034| -0.0617923| 0.1356526|
|0-24 months |PROVIDE        |BANGLADESH                   |High               |NA             |  0.0660920| -0.4482931| 0.3977847|
|0-24 months |SAS-CompFeed   |INDIA                        |High               |NA             |  0.3082532| -0.0536407| 0.5458474|
|0-24 months |SAS-FoodSuppl  |INDIA                        |High               |NA             |  0.0562622| -0.3729464| 0.3512921|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |High               |NA             |  0.3105261| -0.0265946| 0.5369406|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |High               |NA             |  0.0701452| -0.0993762| 0.2135267|
