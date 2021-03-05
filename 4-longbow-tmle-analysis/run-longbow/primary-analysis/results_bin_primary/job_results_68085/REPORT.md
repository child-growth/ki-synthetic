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

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |hdlvry | pers_wast| n_cell|    n|
|:-----------|:--------------|:----------------------------|:------|---------:|------:|----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |0      |         0|    339|  370|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |0      |         1|     23|  370|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1      |         0|      8|  370|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1      |         1|      0|  370|
|0-24 months |COHORTS        |INDIA                        |0      |         0|   2249| 3931|
|0-24 months |COHORTS        |INDIA                        |0      |         1|    197| 3931|
|0-24 months |COHORTS        |INDIA                        |1      |         0|   1292| 3931|
|0-24 months |COHORTS        |INDIA                        |1      |         1|    193| 3931|
|0-24 months |EE             |PAKISTAN                     |0      |         0|    232|  375|
|0-24 months |EE             |PAKISTAN                     |0      |         1|     20|  375|
|0-24 months |EE             |PAKISTAN                     |1      |         0|    111|  375|
|0-24 months |EE             |PAKISTAN                     |1      |         1|     12|  375|
|0-24 months |GMS-Nepal      |NEPAL                        |0      |         0|    121|  556|
|0-24 months |GMS-Nepal      |NEPAL                        |0      |         1|     18|  556|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |         0|    359|  556|
|0-24 months |GMS-Nepal      |NEPAL                        |1      |         1|     58|  556|
|0-24 months |IRC            |INDIA                        |0      |         0|    354|  410|
|0-24 months |IRC            |INDIA                        |0      |         1|     48|  410|
|0-24 months |IRC            |INDIA                        |1      |         0|      8|  410|
|0-24 months |IRC            |INDIA                        |1      |         1|      0|  410|
|0-24 months |JiVitA-3       |BANGLADESH                   |0      |         0|     36|  323|
|0-24 months |JiVitA-3       |BANGLADESH                   |0      |         1|      1|  323|
|0-24 months |JiVitA-3       |BANGLADESH                   |1      |         0|    273|  323|
|0-24 months |JiVitA-3       |BANGLADESH                   |1      |         1|     13|  323|
|0-24 months |JiVitA-4       |BANGLADESH                   |0      |         0|   1077| 4426|
|0-24 months |JiVitA-4       |BANGLADESH                   |0      |         1|     72| 4426|
|0-24 months |JiVitA-4       |BANGLADESH                   |1      |         0|   2998| 4426|
|0-24 months |JiVitA-4       |BANGLADESH                   |1      |         1|    279| 4426|
|0-24 months |NIH-Crypto     |BANGLADESH                   |0      |         0|    551|  730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |0      |         1|     16|  730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1      |         0|    153|  730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1      |         1|     10|  730|
|0-24 months |PROVIDE        |BANGLADESH                   |0      |         0|    469|  641|
|0-24 months |PROVIDE        |BANGLADESH                   |0      |         1|     10|  641|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |         0|    157|  641|
|0-24 months |PROVIDE        |BANGLADESH                   |1      |         1|      5|  641|
|0-24 months |SAS-CompFeed   |INDIA                        |0      |         0|    142| 1116|
|0-24 months |SAS-CompFeed   |INDIA                        |0      |         1|      9| 1116|
|0-24 months |SAS-CompFeed   |INDIA                        |1      |         0|    872| 1116|
|0-24 months |SAS-CompFeed   |INDIA                        |1      |         1|     93| 1116|
|0-24 months |SAS-FoodSuppl  |INDIA                        |0      |         0|     64|  375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |0      |         1|     10|  375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1      |         0|    246|  375|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1      |         1|     55|  375|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |         0|   1966| 2056|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |         1|     56| 2056|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |         0|     33| 2056|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |         1|      1| 2056|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/852f0e71-3d33-475a-a6aa-49a9e61e5161/a9c343ea-b49f-4790-9a2f-eb3fd756b13a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/852f0e71-3d33-475a-a6aa-49a9e61e5161/a9c343ea-b49f-4790-9a2f-eb3fd756b13a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/852f0e71-3d33-475a-a6aa-49a9e61e5161/a9c343ea-b49f-4790-9a2f-eb3fd756b13a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/852f0e71-3d33-475a-a6aa-49a9e61e5161/a9c343ea-b49f-4790-9a2f-eb3fd756b13a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid       |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS       |INDIA      |0                  |NA             | 0.0930280| 0.0802434| 0.1058126|
|0-24 months |COHORTS       |INDIA      |1                  |NA             | 0.1037511| 0.0877346| 0.1197677|
|0-24 months |EE            |PAKISTAN   |0                  |NA             | 0.0827371| 0.0481440| 0.1173302|
|0-24 months |EE            |PAKISTAN   |1                  |NA             | 0.1002846| 0.0414267| 0.1591424|
|0-24 months |GMS-Nepal     |NEPAL      |0                  |NA             | 0.1289803| 0.0729026| 0.1850580|
|0-24 months |GMS-Nepal     |NEPAL      |1                  |NA             | 0.1390742| 0.1058013| 0.1723471|
|0-24 months |JiVitA-4      |BANGLADESH |0                  |NA             | 0.0666649| 0.0492848| 0.0840450|
|0-24 months |JiVitA-4      |BANGLADESH |1                  |NA             | 0.0835773| 0.0725585| 0.0945960|
|0-24 months |NIH-Crypto    |BANGLADESH |0                  |NA             | 0.0285962| 0.0148126| 0.0423798|
|0-24 months |NIH-Crypto    |BANGLADESH |1                  |NA             | 0.0511086| 0.0199351| 0.0822822|
|0-24 months |PROVIDE       |BANGLADESH |0                  |NA             | 0.0208768| 0.0080633| 0.0336904|
|0-24 months |PROVIDE       |BANGLADESH |1                  |NA             | 0.0308642| 0.0042110| 0.0575174|
|0-24 months |SAS-CompFeed  |INDIA      |0                  |NA             | 0.0596026| 0.0268592| 0.0923461|
|0-24 months |SAS-CompFeed  |INDIA      |1                  |NA             | 0.0963731| 0.0619791| 0.1307670|
|0-24 months |SAS-FoodSuppl |INDIA      |0                  |NA             | 0.1302979| 0.0511154| 0.2094805|
|0-24 months |SAS-FoodSuppl |INDIA      |1                  |NA             | 0.1819422| 0.1381986| 0.2256858|


### Parameter: E(Y)


|agecat      |studyid       |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS       |INDIA      |NA                 |NA             | 0.0992114| 0.0898650| 0.1085578|
|0-24 months |EE            |PAKISTAN   |NA                 |NA             | 0.0853333| 0.0570192| 0.1136475|
|0-24 months |GMS-Nepal     |NEPAL      |NA                 |NA             | 0.1366906| 0.1081112| 0.1652701|
|0-24 months |JiVitA-4      |BANGLADESH |NA                 |NA             | 0.0793041| 0.0701363| 0.0884719|
|0-24 months |NIH-Crypto    |BANGLADESH |NA                 |NA             | 0.0356164| 0.0221630| 0.0490699|
|0-24 months |PROVIDE       |BANGLADESH |NA                 |NA             | 0.0234009| 0.0116889| 0.0351130|
|0-24 months |SAS-CompFeed  |INDIA      |NA                 |NA             | 0.0913978| 0.0593363| 0.1234594|
|0-24 months |SAS-FoodSuppl |INDIA      |NA                 |NA             | 0.1733333| 0.1349698| 0.2116969|


### Parameter: RR


|agecat      |studyid       |country    |intervention_level |baseline_level | estimate|  ci_lower| ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|--------:|---------:|--------:|
|0-24 months |COHORTS       |INDIA      |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |COHORTS       |INDIA      |1                  |0              | 1.115268| 0.9078560| 1.370067|
|0-24 months |EE            |PAKISTAN   |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |EE            |PAKISTAN   |1                  |0              | 1.212087| 0.5883827| 2.496938|
|0-24 months |GMS-Nepal     |NEPAL      |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal     |NEPAL      |1                  |0              | 1.078259| 0.6563050| 1.771497|
|0-24 months |JiVitA-4      |BANGLADESH |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4      |BANGLADESH |1                  |0              | 1.253692| 0.9380121| 1.675612|
|0-24 months |NIH-Crypto    |BANGLADESH |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto    |BANGLADESH |1                  |0              | 1.787254| 0.8225412| 3.883427|
|0-24 months |PROVIDE       |BANGLADESH |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE       |BANGLADESH |1                  |0              | 1.478395| 0.5124750| 4.264895|
|0-24 months |SAS-CompFeed  |INDIA      |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed  |INDIA      |1                  |0              | 1.616926| 0.8882404| 2.943402|
|0-24 months |SAS-FoodSuppl |INDIA      |0                  |0              | 1.000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl |INDIA      |1                  |0              | 1.396355| 0.7258698| 2.686167|


### Parameter: PAR


|agecat      |studyid       |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |COHORTS       |INDIA      |0                  |NA             | 0.0061834| -0.0032133| 0.0155801|
|0-24 months |EE            |PAKISTAN   |0                  |NA             | 0.0025962| -0.0186031| 0.0237956|
|0-24 months |GMS-Nepal     |NEPAL      |0                  |NA             | 0.0077103| -0.0413508| 0.0567715|
|0-24 months |JiVitA-4      |BANGLADESH |0                  |NA             | 0.0126392| -0.0028622| 0.0281407|
|0-24 months |NIH-Crypto    |BANGLADESH |0                  |NA             | 0.0070203| -0.0018826| 0.0159231|
|0-24 months |PROVIDE       |BANGLADESH |0                  |NA             | 0.0025241| -0.0049575| 0.0100057|
|0-24 months |SAS-CompFeed  |INDIA      |0                  |NA             | 0.0317952| -0.0051651| 0.0687555|
|0-24 months |SAS-FoodSuppl |INDIA      |0                  |NA             | 0.0430354| -0.0307752| 0.1168460|


### Parameter: PAF


|agecat      |studyid       |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:-------------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |COHORTS       |INDIA      |0                  |NA             | 0.0623258| -0.0370866| 0.1522088|
|0-24 months |EE            |PAKISTAN   |0                  |NA             | 0.0304247| -0.2524074| 0.2493846|
|0-24 months |GMS-Nepal     |NEPAL      |0                  |NA             | 0.0564073| -0.3801187| 0.3548618|
|0-24 months |JiVitA-4      |BANGLADESH |0                  |NA             | 0.1593765| -0.0599596| 0.3333257|
|0-24 months |NIH-Crypto    |BANGLADESH |0                  |NA             | 0.1971073| -0.0812335| 0.4037951|
|0-24 months |PROVIDE       |BANGLADESH |0                  |NA             | 0.1078636| -0.2703716| 0.3734846|
|0-24 months |SAS-CompFeed  |INDIA      |0                  |NA             | 0.3478769| -0.1175046| 0.6194516|
|0-24 months |SAS-FoodSuppl |INDIA      |0                  |NA             | 0.2482812| -0.3196921| 0.5718083|
