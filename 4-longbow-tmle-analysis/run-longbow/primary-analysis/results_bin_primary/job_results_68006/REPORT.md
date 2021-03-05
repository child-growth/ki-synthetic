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

|agecat      |studyid       |country                      |fage    | ever_swasted| n_cell|     n|
|:-----------|:-------------|:----------------------------|:-------|------------:|------:|-----:|
|0-24 months |COHORTS       |GUATEMALA                    |>=38    |            0|    357|  1285|
|0-24 months |COHORTS       |GUATEMALA                    |>=38    |            1|     25|  1285|
|0-24 months |COHORTS       |GUATEMALA                    |<32     |            0|    554|  1285|
|0-24 months |COHORTS       |GUATEMALA                    |<32     |            1|     47|  1285|
|0-24 months |COHORTS       |GUATEMALA                    |[32-38) |            0|    280|  1285|
|0-24 months |COHORTS       |GUATEMALA                    |[32-38) |            1|     22|  1285|
|0-24 months |COHORTS       |PHILIPPINES                  |>=38    |            0|    285|  2939|
|0-24 months |COHORTS       |PHILIPPINES                  |>=38    |            1|     43|  2939|
|0-24 months |COHORTS       |PHILIPPINES                  |<32     |            0|   1823|  2939|
|0-24 months |COHORTS       |PHILIPPINES                  |<32     |            1|    251|  2939|
|0-24 months |COHORTS       |PHILIPPINES                  |[32-38) |            0|    466|  2939|
|0-24 months |COHORTS       |PHILIPPINES                  |[32-38) |            1|     71|  2939|
|0-24 months |LCNI-5        |MALAWI                       |>=38    |            0|     26|   106|
|0-24 months |LCNI-5        |MALAWI                       |>=38    |            1|      0|   106|
|0-24 months |LCNI-5        |MALAWI                       |<32     |            0|     56|   106|
|0-24 months |LCNI-5        |MALAWI                       |<32     |            1|      0|   106|
|0-24 months |LCNI-5        |MALAWI                       |[32-38) |            0|     24|   106|
|0-24 months |LCNI-5        |MALAWI                       |[32-38) |            1|      0|   106|
|0-24 months |MAL-ED        |BANGLADESH                   |>=38    |            0|     63|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |>=38    |            1|      6|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |<32     |            0|     28|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |<32     |            1|      2|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |[32-38) |            0|     46|   151|
|0-24 months |MAL-ED        |BANGLADESH                   |[32-38) |            1|      6|   151|
|0-24 months |MAL-ED        |BRAZIL                       |>=38    |            0|     30|    79|
|0-24 months |MAL-ED        |BRAZIL                       |>=38    |            1|      0|    79|
|0-24 months |MAL-ED        |BRAZIL                       |<32     |            0|     18|    79|
|0-24 months |MAL-ED        |BRAZIL                       |<32     |            1|      0|    79|
|0-24 months |MAL-ED        |BRAZIL                       |[32-38) |            0|     31|    79|
|0-24 months |MAL-ED        |BRAZIL                       |[32-38) |            1|      0|    79|
|0-24 months |MAL-ED        |INDIA                        |>=38    |            0|     34|   161|
|0-24 months |MAL-ED        |INDIA                        |>=38    |            1|      2|   161|
|0-24 months |MAL-ED        |INDIA                        |<32     |            0|     45|   161|
|0-24 months |MAL-ED        |INDIA                        |<32     |            1|      8|   161|
|0-24 months |MAL-ED        |INDIA                        |[32-38) |            0|     63|   161|
|0-24 months |MAL-ED        |INDIA                        |[32-38) |            1|      9|   161|
|0-24 months |MAL-ED        |NEPAL                        |>=38    |            0|     17|    79|
|0-24 months |MAL-ED        |NEPAL                        |>=38    |            1|      0|    79|
|0-24 months |MAL-ED        |NEPAL                        |<32     |            0|     13|    79|
|0-24 months |MAL-ED        |NEPAL                        |<32     |            1|      2|    79|
|0-24 months |MAL-ED        |NEPAL                        |[32-38) |            0|     46|    79|
|0-24 months |MAL-ED        |NEPAL                        |[32-38) |            1|      1|    79|
|0-24 months |MAL-ED        |PERU                         |>=38    |            0|     26|    85|
|0-24 months |MAL-ED        |PERU                         |>=38    |            1|      1|    85|
|0-24 months |MAL-ED        |PERU                         |<32     |            0|     28|    85|
|0-24 months |MAL-ED        |PERU                         |<32     |            1|      1|    85|
|0-24 months |MAL-ED        |PERU                         |[32-38) |            0|     29|    85|
|0-24 months |MAL-ED        |PERU                         |[32-38) |            1|      0|    85|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |>=38    |            0|     62|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |>=38    |            1|      3|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |<32     |            0|      8|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |<32     |            1|      1|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |[32-38) |            0|     14|    90|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |[32-38) |            1|      2|    90|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>=38    |            0|     48|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>=38    |            1|      0|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |<32     |            0|     14|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |<32     |            1|      1|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |[32-38) |            0|     34|   100|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |[32-38) |            1|      3|   100|
|0-24 months |PROBIT        |BELARUS                      |>=38    |            0|    692| 16278|
|0-24 months |PROBIT        |BELARUS                      |>=38    |            1|     52| 16278|
|0-24 months |PROBIT        |BELARUS                      |<32     |            0|  12012| 16278|
|0-24 months |PROBIT        |BELARUS                      |<32     |            1|   1047| 16278|
|0-24 months |PROBIT        |BELARUS                      |[32-38) |            0|   2304| 16278|
|0-24 months |PROBIT        |BELARUS                      |[32-38) |            1|    171| 16278|
|0-24 months |SAS-CompFeed  |INDIA                        |>=38    |            0|     32|  1510|
|0-24 months |SAS-CompFeed  |INDIA                        |>=38    |            1|     17|  1510|
|0-24 months |SAS-CompFeed  |INDIA                        |<32     |            0|   1086|  1510|
|0-24 months |SAS-CompFeed  |INDIA                        |<32     |            1|    178|  1510|
|0-24 months |SAS-CompFeed  |INDIA                        |[32-38) |            0|    169|  1510|
|0-24 months |SAS-CompFeed  |INDIA                        |[32-38) |            1|     28|  1510|
|0-24 months |SAS-FoodSuppl |INDIA                        |>=38    |            0|     31|   418|
|0-24 months |SAS-FoodSuppl |INDIA                        |>=38    |            1|     13|   418|
|0-24 months |SAS-FoodSuppl |INDIA                        |<32     |            0|    247|   418|
|0-24 months |SAS-FoodSuppl |INDIA                        |<32     |            1|     42|   418|
|0-24 months |SAS-FoodSuppl |INDIA                        |[32-38) |            0|     69|   418|
|0-24 months |SAS-FoodSuppl |INDIA                        |[32-38) |            1|     16|   418|


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
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/5f816093-99bd-44b1-9817-7d20cd5b374a/c84d29a7-2ea0-4aa9-85f2-ec77f8a607c6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5f816093-99bd-44b1-9817-7d20cd5b374a/c84d29a7-2ea0-4aa9-85f2-ec77f8a607c6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5f816093-99bd-44b1-9817-7d20cd5b374a/c84d29a7-2ea0-4aa9-85f2-ec77f8a607c6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5f816093-99bd-44b1-9817-7d20cd5b374a/c84d29a7-2ea0-4aa9-85f2-ec77f8a607c6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid       |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS       |GUATEMALA   |>=38               |NA             | 0.0719209| 0.0447209| 0.0991209|
|0-24 months |COHORTS       |GUATEMALA   |<32                |NA             | 0.0735482| 0.0529680| 0.0941285|
|0-24 months |COHORTS       |GUATEMALA   |[32-38)            |NA             | 0.0711642| 0.0409999| 0.1013286|
|0-24 months |COHORTS       |PHILIPPINES |>=38               |NA             | 0.1663139| 0.1087580| 0.2238699|
|0-24 months |COHORTS       |PHILIPPINES |<32                |NA             | 0.1120496| 0.0954591| 0.1286400|
|0-24 months |COHORTS       |PHILIPPINES |[32-38)            |NA             | 0.1043791| 0.0663492| 0.1424090|
|0-24 months |PROBIT        |BELARUS     |>=38               |NA             | 0.0519175| 0.0366731| 0.0671619|
|0-24 months |PROBIT        |BELARUS     |<32                |NA             | 0.0809512| 0.0474207| 0.1144817|
|0-24 months |PROBIT        |BELARUS     |[32-38)            |NA             | 0.0719395| 0.0415280| 0.1023509|
|0-24 months |SAS-CompFeed  |INDIA       |>=38               |NA             | 0.3200684| 0.2333236| 0.4068131|
|0-24 months |SAS-CompFeed  |INDIA       |<32                |NA             | 0.1453282| 0.1158332| 0.1748233|
|0-24 months |SAS-CompFeed  |INDIA       |[32-38)            |NA             | 0.1297975| 0.0734113| 0.1861836|
|0-24 months |SAS-FoodSuppl |INDIA       |>=38               |NA             | 0.2742582| 0.1431920| 0.4053245|
|0-24 months |SAS-FoodSuppl |INDIA       |<32                |NA             | 0.1462855| 0.1053009| 0.1872701|
|0-24 months |SAS-FoodSuppl |INDIA       |[32-38)            |NA             | 0.1949559| 0.1074875| 0.2824243|


### Parameter: E(Y)


|agecat      |studyid       |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS       |GUATEMALA   |NA                 |NA             | 0.0731518| 0.0589094| 0.0873941|
|0-24 months |COHORTS       |PHILIPPINES |NA                 |NA             | 0.1241919| 0.1122665| 0.1361173|
|0-24 months |PROBIT        |BELARUS     |NA                 |NA             | 0.0780194| 0.0455878| 0.1104510|
|0-24 months |SAS-CompFeed  |INDIA       |NA                 |NA             | 0.1476821| 0.1188009| 0.1765633|
|0-24 months |SAS-FoodSuppl |INDIA       |NA                 |NA             | 0.1698565| 0.1338154| 0.2058975|


### Parameter: RR


|agecat      |studyid       |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS       |GUATEMALA   |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS       |GUATEMALA   |<32                |>=38           | 1.0226266| 0.6387513| 1.6372025|
|0-24 months |COHORTS       |GUATEMALA   |[32-38)            |>=38           | 0.9894790| 0.5606410| 1.7463382|
|0-24 months |COHORTS       |PHILIPPINES |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS       |PHILIPPINES |<32                |>=38           | 0.6737232| 0.4624117| 0.9815993|
|0-24 months |COHORTS       |PHILIPPINES |[32-38)            |>=38           | 0.6276026| 0.3796506| 1.0374937|
|0-24 months |PROBIT        |BELARUS     |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROBIT        |BELARUS     |<32                |>=38           | 1.5592267| 1.1340166| 2.1438734|
|0-24 months |PROBIT        |BELARUS     |[32-38)            |>=38           | 1.3856487| 0.9673197| 1.9848889|
|0-24 months |SAS-CompFeed  |INDIA       |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-CompFeed  |INDIA       |<32                |>=38           | 0.4540537| 0.3373090| 0.6112044|
|0-24 months |SAS-CompFeed  |INDIA       |[32-38)            |>=38           | 0.4055304| 0.2515152| 0.6538567|
|0-24 months |SAS-FoodSuppl |INDIA       |>=38               |>=38           | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-FoodSuppl |INDIA       |<32                |>=38           | 0.5333860| 0.3061436| 0.9293046|
|0-24 months |SAS-FoodSuppl |INDIA       |[32-38)            |>=38           | 0.7108480| 0.3690588| 1.3691717|


### Parameter: PAR


|agecat      |studyid       |country     |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:-------------|:-----------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |COHORTS       |GUATEMALA   |>=38               |NA             |  0.0012308| -0.0222163|  0.0246780|
|0-24 months |COHORTS       |PHILIPPINES |>=38               |NA             | -0.0421220| -0.0983231|  0.0140790|
|0-24 months |PROBIT        |BELARUS     |>=38               |NA             |  0.0261019|  0.0010407|  0.0511631|
|0-24 months |SAS-CompFeed  |INDIA       |>=38               |NA             | -0.1723863| -0.2539270| -0.0908455|
|0-24 months |SAS-FoodSuppl |INDIA       |>=38               |NA             | -0.1044018| -0.2261971|  0.0173935|


### Parameter: PAF


|agecat      |studyid       |country     |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:-------------|:-----------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |COHORTS       |GUATEMALA   |>=38               |NA             |  0.0168257| -0.3620590|  0.2903159|
|0-24 months |COHORTS       |PHILIPPINES |>=38               |NA             | -0.3391688| -0.8787922|  0.0454649|
|0-24 months |PROBIT        |BELARUS     |>=38               |NA             |  0.3345563|  0.0913645|  0.5126590|
|0-24 months |SAS-CompFeed  |INDIA       |>=38               |NA             | -1.1672792| -1.8527583| -0.6465114|
|0-24 months |SAS-FoodSuppl |INDIA       |>=38               |NA             | -0.6146471| -1.5116218| -0.0380087|
