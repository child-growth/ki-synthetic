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

|agecat      |studyid       |country   |fhtcm        | ever_wasted| n_cell|     n|
|:-----------|:-------------|:---------|:------------|-----------:|------:|-----:|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm     |           0|     54|   495|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm     |           1|      9|   495|
|0-24 months |COHORTS       |GUATEMALA |<162 cm      |           0|    224|   495|
|0-24 months |COHORTS       |GUATEMALA |<162 cm      |           1|     69|   495|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm |           0|    105|   495|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm |           1|     34|   495|
|0-24 months |Keneba        |GAMBIA    |>=167 cm     |           0|    674|  1933|
|0-24 months |Keneba        |GAMBIA    |>=167 cm     |           1|    574|  1933|
|0-24 months |Keneba        |GAMBIA    |<162 cm      |           0|     69|  1933|
|0-24 months |Keneba        |GAMBIA    |<162 cm      |           1|     63|  1933|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm |           0|    291|  1933|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm |           1|    262|  1933|
|0-24 months |PROBIT        |BELARUS   |>=167 cm     |           0|   8475| 12537|
|0-24 months |PROBIT        |BELARUS   |>=167 cm     |           1|   3269| 12537|
|0-24 months |PROBIT        |BELARUS   |<162 cm      |           0|    115| 12537|
|0-24 months |PROBIT        |BELARUS   |<162 cm      |           1|     53| 12537|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm |           0|    454| 12537|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm |           1|    171| 12537|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |           0|    255|   895|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |           1|    152|   895|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm      |           0|    130|   895|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm      |           1|     96|   895|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |           0|    145|   895|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |           1|    117|   895|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |           0|     53|   399|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |           1|     53|   399|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |           0|     75|   399|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |           1|     88|   399|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |           0|     83|   399|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |           1|     47|   399|
|0-6 months  |COHORTS       |GUATEMALA |>=167 cm     |           0|     44|   334|
|0-6 months  |COHORTS       |GUATEMALA |>=167 cm     |           1|      4|   334|
|0-6 months  |COHORTS       |GUATEMALA |<162 cm      |           0|    170|   334|
|0-6 months  |COHORTS       |GUATEMALA |<162 cm      |           1|     25|   334|
|0-6 months  |COHORTS       |GUATEMALA |[162-167) cm |           0|     76|   334|
|0-6 months  |COHORTS       |GUATEMALA |[162-167) cm |           1|     15|   334|
|0-6 months  |Keneba        |GAMBIA    |>=167 cm     |           0|    799|  1725|
|0-6 months  |Keneba        |GAMBIA    |>=167 cm     |           1|    317|  1725|
|0-6 months  |Keneba        |GAMBIA    |<162 cm      |           0|     80|  1725|
|0-6 months  |Keneba        |GAMBIA    |<162 cm      |           1|     43|  1725|
|0-6 months  |Keneba        |GAMBIA    |[162-167) cm |           0|    361|  1725|
|0-6 months  |Keneba        |GAMBIA    |[162-167) cm |           1|    125|  1725|
|0-6 months  |PROBIT        |BELARUS   |>=167 cm     |           0|   8540| 12537|
|0-6 months  |PROBIT        |BELARUS   |>=167 cm     |           1|   3204| 12537|
|0-6 months  |PROBIT        |BELARUS   |<162 cm      |           0|    118| 12537|
|0-6 months  |PROBIT        |BELARUS   |<162 cm      |           1|     50| 12537|
|0-6 months  |PROBIT        |BELARUS   |[162-167) cm |           0|    456| 12537|
|0-6 months  |PROBIT        |BELARUS   |[162-167) cm |           1|    169| 12537|
|0-6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |           0|    335|   888|
|0-6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |           1|     72|   888|
|0-6 months  |SAS-CompFeed  |INDIA     |<162 cm      |           0|    183|   888|
|0-6 months  |SAS-CompFeed  |INDIA     |<162 cm      |           1|     40|   888|
|0-6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |           0|    200|   888|
|0-6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |           1|     58|   888|
|0-6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |           0|     85|   399|
|0-6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |           1|     21|   399|
|0-6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |           0|    130|   399|
|0-6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |           1|     33|   399|
|0-6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |           0|    112|   399|
|0-6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |           1|     18|   399|
|6-24 months |COHORTS       |GUATEMALA |>=167 cm     |           0|     57|   489|
|6-24 months |COHORTS       |GUATEMALA |>=167 cm     |           1|      6|   489|
|6-24 months |COHORTS       |GUATEMALA |<162 cm      |           0|    240|   489|
|6-24 months |COHORTS       |GUATEMALA |<162 cm      |           1|     48|   489|
|6-24 months |COHORTS       |GUATEMALA |[162-167) cm |           0|    117|   489|
|6-24 months |COHORTS       |GUATEMALA |[162-167) cm |           1|     21|   489|
|6-24 months |Keneba        |GAMBIA    |>=167 cm     |           0|    791|  1851|
|6-24 months |Keneba        |GAMBIA    |>=167 cm     |           1|    395|  1851|
|6-24 months |Keneba        |GAMBIA    |<162 cm      |           0|     93|  1851|
|6-24 months |Keneba        |GAMBIA    |<162 cm      |           1|     38|  1851|
|6-24 months |Keneba        |GAMBIA    |[162-167) cm |           0|    347|  1851|
|6-24 months |Keneba        |GAMBIA    |[162-167) cm |           1|    187|  1851|
|6-24 months |PROBIT        |BELARUS   |>=167 cm     |           0|  11636| 12530|
|6-24 months |PROBIT        |BELARUS   |>=167 cm     |           1|    102| 12530|
|6-24 months |PROBIT        |BELARUS   |<162 cm      |           0|    164| 12530|
|6-24 months |PROBIT        |BELARUS   |<162 cm      |           1|      4| 12530|
|6-24 months |PROBIT        |BELARUS   |[162-167) cm |           0|    621| 12530|
|6-24 months |PROBIT        |BELARUS   |[162-167) cm |           1|      3| 12530|
|6-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |           0|    275|   836|
|6-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |           1|    113|   836|
|6-24 months |SAS-CompFeed  |INDIA     |<162 cm      |           0|    133|   836|
|6-24 months |SAS-CompFeed  |INDIA     |<162 cm      |           1|     67|   836|
|6-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |           0|    165|   836|
|6-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |           1|     83|   836|
|6-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |           0|     66|   392|
|6-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |           1|     39|   392|
|6-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |           0|     96|   392|
|6-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |           1|     63|   392|
|6-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |           0|     92|   392|
|6-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |           1|     36|   392|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS

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

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/c7e9e924-f5db-4f1f-8f4b-c6e34043c18c/c58a3c68-fbe5-427d-8483-4b62a3c4012b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c7e9e924-f5db-4f1f-8f4b-c6e34043c18c/c58a3c68-fbe5-427d-8483-4b62a3c4012b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c7e9e924-f5db-4f1f-8f4b-c6e34043c18c/c58a3c68-fbe5-427d-8483-4b62a3c4012b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c7e9e924-f5db-4f1f-8f4b-c6e34043c18c/c58a3c68-fbe5-427d-8483-4b62a3c4012b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid       |country   |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:---------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm           |NA             | 0.1428571| 0.0563614| 0.2293528|
|0-24 months |COHORTS       |GUATEMALA |<162 cm            |NA             | 0.2354949| 0.1868615| 0.2841282|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm       |NA             | 0.2446043| 0.1730725| 0.3161361|
|0-24 months |Keneba        |GAMBIA    |>=167 cm           |NA             | 0.4584908| 0.4301080| 0.4868736|
|0-24 months |Keneba        |GAMBIA    |<162 cm            |NA             | 0.4984904| 0.4117630| 0.5852178|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm       |NA             | 0.4720725| 0.4286673| 0.5154777|
|0-24 months |PROBIT        |BELARUS   |>=167 cm           |NA             | 0.2775132| 0.2142360| 0.3407905|
|0-24 months |PROBIT        |BELARUS   |<162 cm            |NA             | 0.3401032| 0.3095252| 0.3706813|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm       |NA             | 0.2720750| 0.2039877| 0.3401624|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm           |NA             | 0.3805118| 0.3172491| 0.4437744|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm            |NA             | 0.4041524| 0.2695138| 0.5387910|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm       |NA             | 0.4501385| 0.3689067| 0.5313703|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm           |NA             | 0.4997495| 0.4035434| 0.5959557|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm            |NA             | 0.5405575| 0.4632612| 0.6178538|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm       |NA             | 0.3655898| 0.2817065| 0.4494730|
|0-6 months  |Keneba        |GAMBIA    |>=167 cm           |NA             | 0.2839430| 0.2569060| 0.3109801|
|0-6 months  |Keneba        |GAMBIA    |<162 cm            |NA             | 0.3537177| 0.2664190| 0.4410165|
|0-6 months  |Keneba        |GAMBIA    |[162-167) cm       |NA             | 0.2566567| 0.2162251| 0.2970883|
|0-6 months  |PROBIT        |BELARUS   |>=167 cm           |NA             | 0.2719983| 0.2085041| 0.3354924|
|0-6 months  |PROBIT        |BELARUS   |<162 cm            |NA             | 0.3160524| 0.2857710| 0.3463337|
|0-6 months  |PROBIT        |BELARUS   |[162-167) cm       |NA             | 0.2678572| 0.2007301| 0.3349843|
|0-6 months  |SAS-CompFeed  |INDIA     |>=167 cm           |NA             | 0.1765934| 0.1410786| 0.2121081|
|0-6 months  |SAS-CompFeed  |INDIA     |<162 cm            |NA             | 0.1751496| 0.1222201| 0.2280790|
|0-6 months  |SAS-CompFeed  |INDIA     |[162-167) cm       |NA             | 0.2309799| 0.1408743| 0.3210856|
|0-6 months  |SAS-FoodSuppl |INDIA     |>=167 cm           |NA             | 0.1982841| 0.1215239| 0.2750443|
|0-6 months  |SAS-FoodSuppl |INDIA     |<162 cm            |NA             | 0.2013488| 0.1394389| 0.2632586|
|0-6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm       |NA             | 0.1384500| 0.0786623| 0.1982377|
|6-24 months |COHORTS       |GUATEMALA |>=167 cm           |NA             | 0.0952381| 0.0226785| 0.1677977|
|6-24 months |COHORTS       |GUATEMALA |<162 cm            |NA             | 0.1666667| 0.1235813| 0.2097521|
|6-24 months |COHORTS       |GUATEMALA |[162-167) cm       |NA             | 0.1521739| 0.0921842| 0.2121636|
|6-24 months |Keneba        |GAMBIA    |>=167 cm           |NA             | 0.3349038| 0.3071935| 0.3626142|
|6-24 months |Keneba        |GAMBIA    |<162 cm            |NA             | 0.3314525| 0.2481502| 0.4147548|
|6-24 months |Keneba        |GAMBIA    |[162-167) cm       |NA             | 0.3489162| 0.3066214| 0.3912110|
|6-24 months |SAS-CompFeed  |INDIA     |>=167 cm           |NA             | 0.2984793| 0.2390642| 0.3578945|
|6-24 months |SAS-CompFeed  |INDIA     |<162 cm            |NA             | 0.3205662| 0.1918933| 0.4492390|
|6-24 months |SAS-CompFeed  |INDIA     |[162-167) cm       |NA             | 0.3317322| 0.2742776| 0.3891868|
|6-24 months |SAS-FoodSuppl |INDIA     |>=167 cm           |NA             | 0.3771164| 0.2831666| 0.4710661|
|6-24 months |SAS-FoodSuppl |INDIA     |<162 cm            |NA             | 0.3982752| 0.3218966| 0.4746539|
|6-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm       |NA             | 0.2839638| 0.2056606| 0.3622669|


### Parameter: E(Y)


|agecat      |studyid       |country   |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:---------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS       |GUATEMALA |NA                 |NA             | 0.2262626| 0.1893659| 0.2631594|
|0-24 months |Keneba        |GAMBIA    |NA                 |NA             | 0.4650802| 0.4428393| 0.4873211|
|0-24 months |PROBIT        |BELARUS   |NA                 |NA             | 0.2786153| 0.2162965| 0.3409341|
|0-24 months |SAS-CompFeed  |INDIA     |NA                 |NA             | 0.4078212| 0.3382171| 0.4774254|
|0-24 months |SAS-FoodSuppl |INDIA     |NA                 |NA             | 0.4711779| 0.4221376| 0.5202183|
|0-6 months  |Keneba        |GAMBIA    |NA                 |NA             | 0.2811594| 0.2599381| 0.3023807|
|0-6 months  |PROBIT        |BELARUS   |NA                 |NA             | 0.2730318| 0.2104272| 0.3356364|
|0-6 months  |SAS-CompFeed  |INDIA     |NA                 |NA             | 0.1914414| 0.1418556| 0.2410273|
|0-6 months  |SAS-FoodSuppl |INDIA     |NA                 |NA             | 0.1804511| 0.1426701| 0.2182322|
|6-24 months |COHORTS       |GUATEMALA |NA                 |NA             | 0.1533742| 0.1214029| 0.1853455|
|6-24 months |Keneba        |GAMBIA    |NA                 |NA             | 0.3349541| 0.3134470| 0.3564611|
|6-24 months |SAS-CompFeed  |INDIA     |NA                 |NA             | 0.3145933| 0.2482331| 0.3809535|
|6-24 months |SAS-FoodSuppl |INDIA     |NA                 |NA             | 0.3520408| 0.3047006| 0.3993810|


### Parameter: RR


|agecat      |studyid       |country   |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:---------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS       |GUATEMALA |<162 cm            |>=167 cm       | 1.6484642| 0.8694655| 3.1254076|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm       |>=167 cm       | 1.7122302| 0.8740675| 3.3541258|
|0-24 months |Keneba        |GAMBIA    |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |Keneba        |GAMBIA    |<162 cm            |>=167 cm       | 1.0872419| 0.9039965| 1.3076322|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm       |>=167 cm       | 1.0296226| 0.9217546| 1.1501138|
|0-24 months |PROBIT        |BELARUS   |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROBIT        |BELARUS   |<162 cm            |>=167 cm       | 1.2255389| 0.9863991| 1.5226550|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm       |>=167 cm       | 0.9804039| 0.8492330| 1.1318352|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm            |>=167 cm       | 1.0621286| 0.7535928| 1.4969849|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm       |>=167 cm       | 1.1829819| 0.9989582| 1.4009057|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm            |>=167 cm       | 1.0816568| 0.8505738| 1.3755203|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm       |>=167 cm       | 0.7315460| 0.5420227| 0.9873377|
|0-6 months  |Keneba        |GAMBIA    |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |Keneba        |GAMBIA    |<162 cm            |>=167 cm       | 1.2457349| 0.9563403| 1.6227021|
|0-6 months  |Keneba        |GAMBIA    |[162-167) cm       |>=167 cm       | 0.9039021| 0.7521618| 1.0862544|
|0-6 months  |PROBIT        |BELARUS   |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |PROBIT        |BELARUS   |<162 cm            |>=167 cm       | 1.1619646| 0.9297615| 1.4521593|
|0-6 months  |PROBIT        |BELARUS   |[162-167) cm       |>=167 cm       | 0.9847753| 0.8534636| 1.1362903|
|0-6 months  |SAS-CompFeed  |INDIA     |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |SAS-CompFeed  |INDIA     |<162 cm            |>=167 cm       | 0.9918241| 0.7733251| 1.2720588|
|0-6 months  |SAS-CompFeed  |INDIA     |[162-167) cm       |>=167 cm       | 1.3079763| 0.9630636| 1.7764163|
|0-6 months  |SAS-FoodSuppl |INDIA     |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |SAS-FoodSuppl |INDIA     |<162 cm            |>=167 cm       | 1.0154558| 0.6196525| 1.6640787|
|0-6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm       |>=167 cm       | 0.6982404| 0.3907710| 1.2476351|
|6-24 months |COHORTS       |GUATEMALA |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS       |GUATEMALA |<162 cm            |>=167 cm       | 1.7500000| 0.7827645| 3.9124155|
|6-24 months |COHORTS       |GUATEMALA |[162-167) cm       |>=167 cm       | 1.5978261| 0.6776121| 3.7677131|
|6-24 months |Keneba        |GAMBIA    |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |Keneba        |GAMBIA    |<162 cm            |>=167 cm       | 0.9896946| 0.7597061| 1.2893083|
|6-24 months |Keneba        |GAMBIA    |[162-167) cm       |>=167 cm       | 1.0418401| 0.8998755| 1.2062011|
|6-24 months |SAS-CompFeed  |INDIA     |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |SAS-CompFeed  |INDIA     |<162 cm            |>=167 cm       | 1.0739979| 0.7920102| 1.4563847|
|6-24 months |SAS-CompFeed  |INDIA     |[162-167) cm       |>=167 cm       | 1.1114077| 0.9642508| 1.2810226|
|6-24 months |SAS-FoodSuppl |INDIA     |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |SAS-FoodSuppl |INDIA     |<162 cm            |>=167 cm       | 1.0561071| 0.7709564| 1.4467254|
|6-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm       |>=167 cm       | 0.7529871| 0.5192120| 1.0920194|


### Parameter: PAR


|agecat      |studyid       |country   |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:-------------|:---------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm           |NA             |  0.0834055|  0.0001079| 0.1667031|
|0-24 months |Keneba        |GAMBIA    |>=167 cm           |NA             |  0.0065894| -0.0107292| 0.0239080|
|0-24 months |PROBIT        |BELARUS   |>=167 cm           |NA             |  0.0011021| -0.0013485| 0.0035526|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm           |NA             |  0.0273095| -0.0262819| 0.0809008|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm           |NA             | -0.0285716| -0.1111204| 0.0539772|
|0-6 months  |Keneba        |GAMBIA    |>=167 cm           |NA             | -0.0027836| -0.0190909| 0.0135237|
|0-6 months  |PROBIT        |BELARUS   |>=167 cm           |NA             |  0.0010336| -0.0012895| 0.0033566|
|0-6 months  |SAS-CompFeed  |INDIA     |>=167 cm           |NA             |  0.0148481| -0.0140780| 0.0437741|
|0-6 months  |SAS-FoodSuppl |INDIA     |>=167 cm           |NA             | -0.0178330| -0.0830525| 0.0473865|
|6-24 months |COHORTS       |GUATEMALA |>=167 cm           |NA             |  0.0581361| -0.0120811| 0.1283534|
|6-24 months |Keneba        |GAMBIA    |>=167 cm           |NA             |  0.0000503| -0.0170100| 0.0171105|
|6-24 months |SAS-CompFeed  |INDIA     |>=167 cm           |NA             |  0.0161140| -0.0127008| 0.0449287|
|6-24 months |SAS-FoodSuppl |INDIA     |>=167 cm           |NA             | -0.0250755| -0.1051745| 0.0550234|


### Parameter: PAF


|agecat      |studyid       |country   |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:-------------|:---------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm           |NA             |  0.3686224| -0.1255915| 0.6458417|
|0-24 months |Keneba        |GAMBIA    |>=167 cm           |NA             |  0.0141682| -0.0237983| 0.0507269|
|0-24 months |PROBIT        |BELARUS   |>=167 cm           |NA             |  0.0039555| -0.0052503| 0.0130770|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm           |NA             |  0.0669643| -0.0680638| 0.1849217|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm           |NA             | -0.0606387| -0.2512362| 0.1009256|
|0-6 months  |Keneba        |GAMBIA    |>=167 cm           |NA             | -0.0099004| -0.0695869| 0.0464553|
|0-6 months  |PROBIT        |BELARUS   |>=167 cm           |NA             |  0.0037855| -0.0051180| 0.0126100|
|0-6 months  |SAS-CompFeed  |INDIA     |>=167 cm           |NA             |  0.0775593| -0.0708126| 0.2053728|
|0-6 months  |SAS-FoodSuppl |INDIA     |>=167 cm           |NA             | -0.0988245| -0.5263703| 0.2089631|
|6-24 months |COHORTS       |GUATEMALA |>=167 cm           |NA             |  0.3790476| -0.2868794| 0.7003745|
|6-24 months |Keneba        |GAMBIA    |>=167 cm           |NA             |  0.0001501| -0.0521028| 0.0498077|
|6-24 months |SAS-CompFeed  |INDIA     |>=167 cm           |NA             |  0.0512216| -0.0402399| 0.1346414|
|6-24 months |SAS-FoodSuppl |INDIA     |>=167 cm           |NA             | -0.0712291| -0.3247098| 0.1337486|
