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

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* W_nrooms
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country                      |vagbrth | ever_wasted| n_cell|     n|
|:---------------------------|:--------------|:----------------------------|:-------|-----------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0       |           0|     17|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0       |           1|      8|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1       |           0|    185|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1       |           1|    158|   368|
|0-24 months (no birth wast) |IRC            |INDIA                        |0       |           0|     38|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |0       |           1|     32|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |1       |           0|    158|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |1       |           1|    181|   409|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0       |           0|   1301| 26404|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0       |           1|    189| 26404|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1       |           0|  20624| 26404|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1       |           1|   4290| 26404|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0       |           0|    291|  4499|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0       |           1|     79|  4499|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1       |           0|   3007|  4499|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1       |           1|   1122|  4499|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0       |           0|    181|   496|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0       |           1|     21|   496|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1       |           0|    245|   496|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1       |           1|     49|   496|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |0       |           0|   1805| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |0       |           1|    147| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |1       |           0|  13926| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |1       |           1|   1001| 16879|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0       |           0|    132|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0       |           1|     27|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1       |           0|    433|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1       |           1|     95|   687|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0       |           0|    174|  2355|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0       |           1|     38|  2355|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |           0|   1712|  2355|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |           1|    431|  2355|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0       |           0|   1042| 13522|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0       |           1|    100| 13522|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |1       |           0|  11104| 13522|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |1       |           1|   1276| 13522|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0       |           0|     15|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0       |           1|      8|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |1       |           0|    227|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |1       |           1|    100|   350|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0       |           0|     42|   390|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0       |           1|     25|   390|
|0-6 months (no birth wast)  |IRC            |INDIA                        |1       |           0|    215|   390|
|0-6 months (no birth wast)  |IRC            |INDIA                        |1       |           1|    108|   390|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0       |           0|   1387| 26154|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0       |           1|     71| 26154|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |1       |           0|  22889| 26154|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |1       |           1|   1807| 26154|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0       |           0|    347|  4380|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0       |           1|     11|  4380|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |1       |           0|   3907|  4380|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |1       |           1|    115|  4380|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |0       |           0|    199|   493|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |0       |           1|      3|   493|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |1       |           0|    282|   493|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |1       |           1|      9|   493|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |0       |           0|   1805| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |0       |           1|    131| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |1       |           0|  13866| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |1       |           1|    891| 16693|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0       |           0|    146|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0       |           1|     12|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |1       |           0|    500|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |1       |           1|     25|   683|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0       |           0|    198|  2347|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0       |           1|     13|  2347|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |           0|   1947|  2347|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |           1|    189|  2347|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |0       |           0|   1107| 13264|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |0       |           1|     22| 13264|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |1       |           0|  11731| 13264|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |1       |           1|    404| 13264|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH

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
![](/tmp/e7760646-bd6b-419b-9e0c-304bebfd880e/fd4330b7-158a-4fcd-ab0b-ed656beb3c08/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e7760646-bd6b-419b-9e0c-304bebfd880e/fd4330b7-158a-4fcd-ab0b-ed656beb3c08/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e7760646-bd6b-419b-9e0c-304bebfd880e/fd4330b7-158a-4fcd-ab0b-ed656beb3c08/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e7760646-bd6b-419b-9e0c-304bebfd880e/fd4330b7-158a-4fcd-ab0b-ed656beb3c08/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0                  |NA             | 0.3200000| 0.1368958| 0.5031042|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1                  |NA             | 0.4606414| 0.4078197| 0.5134631|
|0-24 months (no birth wast) |IRC            |INDIA                        |0                  |NA             | 0.4523560| 0.3323358| 0.5723762|
|0-24 months (no birth wast) |IRC            |INDIA                        |1                  |NA             | 0.5348730| 0.4817150| 0.5880310|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0                  |NA             | 0.1502003| 0.1281439| 0.1722567|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.1714691| 0.1659961| 0.1769421|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0                  |NA             | 0.2383597| 0.1513640| 0.3253554|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1                  |NA             | 0.2694758| 0.2539324| 0.2850192|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0                  |NA             | 0.1020332| 0.0595046| 0.1445617|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.1652042| 0.1224273| 0.2079810|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |0                  |NA             | 0.0759646| 0.0601311| 0.0917981|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |1                  |NA             | 0.0669999| 0.0550569| 0.0789430|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0                  |NA             | 0.1688080| 0.1093003| 0.2283158|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.1790357| 0.1462260| 0.2118453|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.1739019| 0.1228065| 0.2249973|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.2006383| 0.1836783| 0.2175982|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0                  |NA             | 0.0866158| 0.0696808| 0.1035509|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.1029654| 0.0976142| 0.1083165|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0                  |NA             | 0.3478261| 0.1529008| 0.5427514|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |1                  |NA             | 0.3058104| 0.2558000| 0.3558208|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0                  |NA             | 0.3624702| 0.2448412| 0.4800992|
|0-6 months (no birth wast)  |IRC            |INDIA                        |1                  |NA             | 0.3368702| 0.2852712| 0.3884692|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0                  |NA             | 0.0516184| 0.0374112| 0.0658256|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.0729764| 0.0691933| 0.0767596|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0                  |NA             | 0.0304514| 0.0015234| 0.0593794|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |1                  |NA             | 0.0286192| 0.0232835| 0.0339548|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |0                  |NA             | 0.0666567| 0.0532844| 0.0800290|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |1                  |NA             | 0.0603881| 0.0488772| 0.0718990|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0                  |NA             | 0.0746684| 0.0320604| 0.1172763|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.0479411| 0.0295714| 0.0663108|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.0598664| 0.0276937| 0.0920392|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.0885359| 0.0764804| 0.1005915|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |0                  |NA             | 0.0175228| 0.0100866| 0.0249591|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.0331598| 0.0299746| 0.0363449|


### Parameter: E(Y)


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.4510870| 0.4001777| 0.5019962|
|0-24 months (no birth wast) |IRC            |INDIA                        |NA                 |NA             | 0.5207824| 0.4723080| 0.5692568|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1696334| 0.1643208| 0.1749460|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.2669482| 0.2519234| 0.2819730|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1411290| 0.1104588| 0.1717993|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |NA                 |NA             | 0.0680135| 0.0562135| 0.0798135|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1775837| 0.1489858| 0.2061816|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1991507| 0.1830179| 0.2152836|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.1017601| 0.0966641| 0.1068561|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.3085714| 0.2601110| 0.3570318|
|0-6 months (no birth wast)  |IRC            |INDIA                        |NA                 |NA             | 0.3410256| 0.2939169| 0.3881343|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0718055| 0.0681632| 0.0754477|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.0287671| 0.0234680| 0.0340662|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |NA                 |NA             | 0.0612233| 0.0502388| 0.0722078|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.0541728| 0.0371844| 0.0711612|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0860673| 0.0747182| 0.0974164|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0321170| 0.0291164| 0.0351176|


### Parameter: RR


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1                  |0              | 1.4395044| 0.8030978| 2.580225|
|0-24 months (no birth wast) |IRC            |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |IRC            |INDIA                        |1                  |0              | 1.1824160| 0.8906894| 1.569692|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1                  |0              | 1.1416026| 0.9837470| 1.324788|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1                  |0              | 1.1305424| 0.7819161| 1.634608|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1                  |0              | 1.6191226| 0.9888624| 2.651085|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |1                  |0              | 0.8819889| 0.7431759| 1.046730|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1                  |0              | 1.0605872| 0.7127122| 1.578260|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |0              | 1.1537438| 0.8499510| 1.566119|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |1                  |0              | 1.1887589| 0.9711676| 1.455102|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |1                  |0              | 0.8792049| 0.4904064| 1.576246|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |IRC            |INDIA                        |1                  |0              | 0.9293735| 0.6491410| 1.330582|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |1                  |0              | 1.4137686| 1.0720576| 1.864398|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |1                  |0              | 0.9398315| 0.3541985| 2.493752|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |1                  |0              | 0.9059567| 0.7386590| 1.111145|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |1                  |0              | 0.6420537| 0.3226520| 1.277639|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |0              | 1.4788914| 0.8496470| 2.574151|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |1                  |0              | 1.8923742| 1.2247535| 2.923919|


### Parameter: PAR


|agecat                      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0                  |NA             |  0.1310870| -0.0465745| 0.3087484|
|0-24 months (no birth wast) |IRC            |INDIA                        |0                  |NA             |  0.0684264| -0.0411472| 0.1780000|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0                  |NA             |  0.0194331| -0.0021289| 0.0409950|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0                  |NA             |  0.0285885| -0.0551429| 0.1123199|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0                  |NA             |  0.0390959|  0.0030388| 0.0751530|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |0                  |NA             | -0.0079511| -0.0193096| 0.0034074|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0                  |NA             |  0.0087757| -0.0436766| 0.0612279|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0252488| -0.0238168| 0.0743144|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0151443| -0.0012055| 0.0314940|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0                  |NA             | -0.0392547| -0.2272721| 0.1487628|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0                  |NA             | -0.0214446| -0.1282220| 0.0853329|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0                  |NA             |  0.0201871|  0.0063292| 0.0340449|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0                  |NA             | -0.0016843| -0.0290261| 0.0256576|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |0                  |NA             | -0.0054334| -0.0170681| 0.0062012|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0                  |NA             | -0.0204956| -0.0565613| 0.0155701|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0262009| -0.0050820| 0.0574838|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0145942|  0.0072236| 0.0219648|


### Parameter: PAF


|agecat                      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0                  |NA             |  0.2906024| -0.2363609| 0.5929627|
|0-24 months (no birth wast) |IRC            |INDIA                        |0                  |NA             |  0.1313915| -0.1072055| 0.3185720|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0                  |NA             |  0.1145591| -0.0220642| 0.2329195|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0                  |NA             |  0.1070938| -0.2699290| 0.3721842|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0                  |NA             |  0.2770222| -0.0227467| 0.4889283|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |0                  |NA             | -0.1169047| -0.2999939| 0.0403984|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0                  |NA             |  0.0494170| -0.2970289| 0.3033246|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.1267824| -0.1576553| 0.3413333|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.1488231| -0.0278694| 0.2951419|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0                  |NA             | -0.1272142| -0.9353750| 0.3434803|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0                  |NA             | -0.0628825| -0.4269013| 0.2082709|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0                  |NA             |  0.2811358|  0.0597060| 0.4504210|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0                  |NA             | -0.0585485| -1.5926678| 0.5678101|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |0                  |NA             | -0.0887479| -0.3028235| 0.0901515|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0                  |NA             | -0.3783375| -1.2157853| 0.1426000|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.3044233| -0.1697984| 0.5864015|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.4544064|  0.1748936| 0.6392315|
