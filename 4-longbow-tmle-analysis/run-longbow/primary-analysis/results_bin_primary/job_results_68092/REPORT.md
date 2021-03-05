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

|agecat      |studyid       |country   |fhtcm        | pers_wast| n_cell|     n|
|:-----------|:-------------|:---------|:------------|---------:|------:|-----:|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm     |         0|     55|   424|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm     |         1|      1|   424|
|0-24 months |COHORTS       |GUATEMALA |<162 cm      |         0|    237|   424|
|0-24 months |COHORTS       |GUATEMALA |<162 cm      |         1|     12|   424|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm |         0|    116|   424|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm |         1|      3|   424|
|0-24 months |Keneba        |GAMBIA    |>=167 cm     |         0|   1038|  1720|
|0-24 months |Keneba        |GAMBIA    |>=167 cm     |         1|     69|  1720|
|0-24 months |Keneba        |GAMBIA    |<162 cm      |         0|    112|  1720|
|0-24 months |Keneba        |GAMBIA    |<162 cm      |         1|     12|  1720|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm |         0|    466|  1720|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm |         1|     23|  1720|
|0-24 months |PROBIT        |BELARUS   |>=167 cm     |         0|  11650| 12524|
|0-24 months |PROBIT        |BELARUS   |>=167 cm     |         1|     82| 12524|
|0-24 months |PROBIT        |BELARUS   |<162 cm      |         0|    165| 12524|
|0-24 months |PROBIT        |BELARUS   |<162 cm      |         1|      3| 12524|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm |         0|    619| 12524|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm |         1|      5| 12524|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |         0|    358|   824|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |         1|     27|   824|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm      |         0|    179|   824|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm      |         1|     15|   824|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |         0|    222|   824|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |         1|     23|   824|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |         0|     89|   370|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |         1|     11|   370|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |         0|    118|   370|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |         1|     34|   370|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |         0|    100|   370|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |         1|     18|   370|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS

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
![](/tmp/90bfea4a-9e61-4324-8912-4c7263df7343/155bf3fe-55ff-4634-979b-24016fb83256/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/90bfea4a-9e61-4324-8912-4c7263df7343/155bf3fe-55ff-4634-979b-24016fb83256/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/90bfea4a-9e61-4324-8912-4c7263df7343/155bf3fe-55ff-4634-979b-24016fb83256/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/90bfea4a-9e61-4324-8912-4c7263df7343/155bf3fe-55ff-4634-979b-24016fb83256/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid       |country |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:-------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |Keneba        |GAMBIA  |>=167 cm           |NA             | 0.0632469| 0.0489304| 0.0775633|
|0-24 months |Keneba        |GAMBIA  |<162 cm            |NA             | 0.0818301| 0.0283952| 0.1352649|
|0-24 months |Keneba        |GAMBIA  |[162-167) cm       |NA             | 0.0474417| 0.0285413| 0.0663422|
|0-24 months |SAS-CompFeed  |INDIA   |>=167 cm           |NA             | 0.0789386| 0.0288172| 0.1290600|
|0-24 months |SAS-CompFeed  |INDIA   |<162 cm            |NA             | 0.0722919| 0.0545102| 0.0900736|
|0-24 months |SAS-CompFeed  |INDIA   |[162-167) cm       |NA             | 0.0837014| 0.0637281| 0.1036746|
|0-24 months |SAS-FoodSuppl |INDIA   |>=167 cm           |NA             | 0.1138590| 0.0508167| 0.1769013|
|0-24 months |SAS-FoodSuppl |INDIA   |<162 cm            |NA             | 0.2203978| 0.1545269| 0.2862686|
|0-24 months |SAS-FoodSuppl |INDIA   |[162-167) cm       |NA             | 0.1513581| 0.0872528| 0.2154634|


### Parameter: E(Y)


|agecat      |studyid       |country |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:-------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |Keneba        |GAMBIA  |NA                 |NA             | 0.0604651| 0.0491978| 0.0717324|
|0-24 months |SAS-CompFeed  |INDIA   |NA                 |NA             | 0.0788835| 0.0568416| 0.1009254|
|0-24 months |SAS-FoodSuppl |INDIA   |NA                 |NA             | 0.1702703| 0.1319196| 0.2086209|


### Parameter: RR


|agecat      |studyid       |country |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:-------------|:-------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |Keneba        |GAMBIA  |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |Keneba        |GAMBIA  |<162 cm            |>=167 cm       | 1.2938204| 0.6481709| 2.582608|
|0-24 months |Keneba        |GAMBIA  |[162-167) cm       |>=167 cm       | 0.7501042| 0.4742233| 1.186480|
|0-24 months |SAS-CompFeed  |INDIA   |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed  |INDIA   |<162 cm            |>=167 cm       | 0.9157992| 0.4502393| 1.862761|
|0-24 months |SAS-CompFeed  |INDIA   |[162-167) cm       |>=167 cm       | 1.0603357| 0.5209083| 2.158368|
|0-24 months |SAS-FoodSuppl |INDIA   |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl |INDIA   |<162 cm            |>=167 cm       | 1.9357077| 1.0321475| 3.630261|
|0-24 months |SAS-FoodSuppl |INDIA   |[162-167) cm       |>=167 cm       | 1.3293469| 0.6619706| 2.669549|


### Parameter: PAR


|agecat      |studyid       |country |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:-------------|:-------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |Keneba        |GAMBIA  |>=167 cm           |NA             | -0.0027817| -0.0111407| 0.0055772|
|0-24 months |SAS-CompFeed  |INDIA   |>=167 cm           |NA             | -0.0000551| -0.0311953| 0.0310852|
|0-24 months |SAS-FoodSuppl |INDIA   |>=167 cm           |NA             |  0.0564113| -0.0016387| 0.1144612|


### Parameter: PAF


|agecat      |studyid       |country |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:-------------|:-------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |Keneba        |GAMBIA  |>=167 cm           |NA             | -0.0460057| -0.1936822| 0.0834011|
|0-24 months |SAS-CompFeed  |INDIA   |>=167 cm           |NA             | -0.0006982| -0.4844362| 0.3254026|
|0-24 months |SAS-FoodSuppl |INDIA   |>=167 cm           |NA             |  0.3313042| -0.1027715| 0.5945179|
