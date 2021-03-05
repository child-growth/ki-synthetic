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

**Intervention Variable:** fhtcm

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_W_mage
* delta_W_fage
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

|agecat      |studyid       |country   |fhtcm        | ever_swasted| n_cell|     n|
|:-----------|:-------------|:---------|:------------|------------:|------:|-----:|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm     |            0|     61|   495|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm     |            1|      2|   495|
|0-24 months |COHORTS       |GUATEMALA |<162 cm      |            0|    273|   495|
|0-24 months |COHORTS       |GUATEMALA |<162 cm      |            1|     20|   495|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm |            0|    130|   495|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm |            1|      9|   495|
|0-24 months |Keneba        |GAMBIA    |>=167 cm     |            0|   1012|  1933|
|0-24 months |Keneba        |GAMBIA    |>=167 cm     |            1|    236|  1933|
|0-24 months |Keneba        |GAMBIA    |<162 cm      |            0|     99|  1933|
|0-24 months |Keneba        |GAMBIA    |<162 cm      |            1|     33|  1933|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm |            0|    454|  1933|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm |            1|     99|  1933|
|0-24 months |PROBIT        |BELARUS   |>=167 cm     |            0|  10716| 12537|
|0-24 months |PROBIT        |BELARUS   |>=167 cm     |            1|   1028| 12537|
|0-24 months |PROBIT        |BELARUS   |<162 cm      |            0|    153| 12537|
|0-24 months |PROBIT        |BELARUS   |<162 cm      |            1|     15| 12537|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm |            0|    573| 12537|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm |            1|     52| 12537|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |            0|    357|   895|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |            1|     50|   895|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm      |            0|    195|   895|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm      |            1|     31|   895|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |            0|    221|   895|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |            1|     41|   895|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |            0|     91|   399|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |            1|     15|   399|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |            0|    131|   399|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |            1|     32|   399|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |            0|    110|   399|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |            1|     20|   399|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA

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
![](/tmp/ebf3776c-fdf4-4aea-91f4-58d771d10c00/b16a5b51-77f6-44ab-9023-e3c02ef69c20/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ebf3776c-fdf4-4aea-91f4-58d771d10c00/b16a5b51-77f6-44ab-9023-e3c02ef69c20/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ebf3776c-fdf4-4aea-91f4-58d771d10c00/b16a5b51-77f6-44ab-9023-e3c02ef69c20/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ebf3776c-fdf4-4aea-91f4-58d771d10c00/b16a5b51-77f6-44ab-9023-e3c02ef69c20/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid       |country |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:-------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |Keneba        |GAMBIA  |>=167 cm           |NA             | 0.1898962| 0.1675199| 0.2122726|
|0-24 months |Keneba        |GAMBIA  |<162 cm            |NA             | 0.2841507| 0.2069847| 0.3613166|
|0-24 months |Keneba        |GAMBIA  |[162-167) cm       |NA             | 0.1782980| 0.1446475| 0.2119486|
|0-24 months |PROBIT        |BELARUS |>=167 cm           |NA             | 0.0871415| 0.0525157| 0.1217674|
|0-24 months |PROBIT        |BELARUS |<162 cm            |NA             | 0.0979027| 0.0740373| 0.1217681|
|0-24 months |PROBIT        |BELARUS |[162-167) cm       |NA             | 0.0835702| 0.0528594| 0.1142810|
|0-24 months |SAS-CompFeed  |INDIA   |>=167 cm           |NA             | 0.1306765| 0.0907730| 0.1705800|
|0-24 months |SAS-CompFeed  |INDIA   |<162 cm            |NA             | 0.1254014| 0.0841775| 0.1666253|
|0-24 months |SAS-CompFeed  |INDIA   |[162-167) cm       |NA             | 0.1523790| 0.1059857| 0.1987723|
|0-24 months |SAS-FoodSuppl |INDIA   |>=167 cm           |NA             | 0.1457911| 0.0769877| 0.2145945|
|0-24 months |SAS-FoodSuppl |INDIA   |<162 cm            |NA             | 0.1914413| 0.1310254| 0.2518572|
|0-24 months |SAS-FoodSuppl |INDIA   |[162-167) cm       |NA             | 0.1561151| 0.0923242| 0.2199061|


### Parameter: E(Y)


|agecat      |studyid       |country |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:-------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |Keneba        |GAMBIA  |NA                 |NA             | 0.1903777| 0.1728714| 0.2078839|
|0-24 months |PROBIT        |BELARUS |NA                 |NA             | 0.0873415| 0.0532447| 0.1214382|
|0-24 months |SAS-CompFeed  |INDIA   |NA                 |NA             | 0.1363128| 0.1083079| 0.1643178|
|0-24 months |SAS-FoodSuppl |INDIA   |NA                 |NA             | 0.1679198| 0.1311966| 0.2046430|


### Parameter: RR


|agecat      |studyid       |country |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:-------------|:-------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |Keneba        |GAMBIA  |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |Keneba        |GAMBIA  |<162 cm            |>=167 cm       | 1.4963470| 1.1129382| 2.011841|
|0-24 months |Keneba        |GAMBIA  |[162-167) cm       |>=167 cm       | 0.9389235| 0.7516040| 1.172928|
|0-24 months |PROBIT        |BELARUS |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT        |BELARUS |<162 cm            |>=167 cm       | 1.1234908| 0.7715795| 1.635906|
|0-24 months |PROBIT        |BELARUS |[162-167) cm       |>=167 cm       | 0.9590172| 0.6660335| 1.380883|
|0-24 months |SAS-CompFeed  |INDIA   |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed  |INDIA   |<162 cm            |>=167 cm       | 0.9596323| 0.6086986| 1.512890|
|0-24 months |SAS-CompFeed  |INDIA   |[162-167) cm       |>=167 cm       | 1.1660781| 0.7883882| 1.724706|
|0-24 months |SAS-FoodSuppl |INDIA   |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl |INDIA   |<162 cm            |>=167 cm       | 1.3131210| 0.7450364| 2.314366|
|0-24 months |SAS-FoodSuppl |INDIA   |[162-167) cm       |>=167 cm       | 1.0708141| 0.5737654| 1.998452|


### Parameter: PAR


|agecat      |studyid       |country |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:-------------|:-------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |Keneba        |GAMBIA  |>=167 cm           |NA             | 0.0004814| -0.0132598| 0.0142226|
|0-24 months |PROBIT        |BELARUS |>=167 cm           |NA             | 0.0001999| -0.0013891| 0.0017890|
|0-24 months |SAS-CompFeed  |INDIA   |>=167 cm           |NA             | 0.0056364| -0.0212301| 0.0325028|
|0-24 months |SAS-FoodSuppl |INDIA   |>=167 cm           |NA             | 0.0221287| -0.0383286| 0.0825860|


### Parameter: PAF


|agecat      |studyid       |country |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:-------------|:-------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |Keneba        |GAMBIA  |>=167 cm           |NA             | 0.0025287| -0.0723286| 0.0721604|
|0-24 months |PROBIT        |BELARUS |>=167 cm           |NA             | 0.0022891| -0.0163754| 0.0206110|
|0-24 months |SAS-CompFeed  |INDIA   |>=167 cm           |NA             | 0.0413487| -0.1782904| 0.2200460|
|0-24 months |SAS-FoodSuppl |INDIA   |>=167 cm           |NA             | 0.1317815| -0.3134851| 0.4261043|
