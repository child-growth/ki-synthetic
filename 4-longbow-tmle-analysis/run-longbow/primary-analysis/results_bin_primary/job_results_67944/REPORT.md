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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* W_parity
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_W_parity
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid        |country      |cleanck | ever_stunted| n_cell|   n|
|:--------------------------|:--------------|:------------|:-------|------------:|------:|---:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |1       |            0|     21| 296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |1       |            1|    121| 296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |0       |            0|      7| 296|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |0       |            1|    147| 296|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |1       |            0|      8| 517|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |1       |            1|      2| 517|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |0       |            0|    215| 517|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |0       |            1|    292| 517|
|0-24 months (no birth st.) |IRC            |INDIA        |1       |            0|     94| 352|
|0-24 months (no birth st.) |IRC            |INDIA        |1       |            1|    114| 352|
|0-24 months (no birth st.) |IRC            |INDIA        |0       |            0|     49| 352|
|0-24 months (no birth st.) |IRC            |INDIA        |0       |            1|     95| 352|
|0-24 months (no birth st.) |MAL-ED         |PERU         |1       |            0|      1|   2|
|0-24 months (no birth st.) |MAL-ED         |PERU         |1       |            1|      0|   2|
|0-24 months (no birth st.) |MAL-ED         |PERU         |0       |            0|      0|   2|
|0-24 months (no birth st.) |MAL-ED         |PERU         |0       |            1|      1|   2|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |1       |            0|      0|   1|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |1       |            1|      0|   1|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |0       |            0|      1|   1|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |0       |            1|      0|   1|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |1       |            0|    199| 498|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |1       |            1|    115| 498|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |0       |            0|    119| 498|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |0       |            1|     65| 498|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |1       |            0|    340| 633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |1       |            1|    180| 633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |0       |            0|     55| 633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |0       |            1|     58| 633|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |1       |            0|     96| 292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |1       |            1|     45| 292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |0       |            0|     84| 292|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |0       |            1|     67| 292|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |1       |            0|     10| 517|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |1       |            1|      0| 517|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |0       |            0|    416| 517|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |0       |            1|     91| 517|
|0-6 months (no birth st.)  |IRC            |INDIA        |1       |            0|    143| 352|
|0-6 months (no birth st.)  |IRC            |INDIA        |1       |            1|     65| 352|
|0-6 months (no birth st.)  |IRC            |INDIA        |0       |            0|     87| 352|
|0-6 months (no birth st.)  |IRC            |INDIA        |0       |            1|     57| 352|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |1       |            0|      1|   2|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |1       |            1|      0|   2|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |0       |            0|      0|   2|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |0       |            1|      1|   2|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |1       |            0|      0|   1|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |1       |            1|      0|   1|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |0       |            0|      1|   1|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |0       |            1|      0|   1|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |1       |            0|    262| 498|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |1       |            1|     52| 498|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |0       |            0|    150| 498|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |0       |            1|     34| 498|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |1       |            0|    446| 633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |1       |            1|     74| 633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |0       |            0|     86| 633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |0       |            1|     27| 633|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA

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




# Results Detail

## Results Plots
![](/tmp/b5168f96-1307-46d5-bf70-eec7a9d28772/a476b948-9417-41b8-9856-a3952af61893/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b5168f96-1307-46d5-bf70-eec7a9d28772/a476b948-9417-41b8-9856-a3952af61893/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b5168f96-1307-46d5-bf70-eec7a9d28772/a476b948-9417-41b8-9856-a3952af61893/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b5168f96-1307-46d5-bf70-eec7a9d28772/a476b948-9417-41b8-9856-a3952af61893/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                     |studyid        |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:--------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA      |1                  |NA             | 0.8521127| 0.7936266| 0.9105988|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA      |0                  |NA             | 0.9545455| 0.9215913| 0.9874996|
|0-24 months (no birth st.) |IRC            |INDIA      |1                  |NA             | 0.5526793| 0.4824504| 0.6229082|
|0-24 months (no birth st.) |IRC            |INDIA      |0                  |NA             | 0.6443340| 0.5593536| 0.7293145|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH |1                  |NA             | 0.3721522| 0.3156332| 0.4286711|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH |0                  |NA             | 0.3581239| 0.2806858| 0.4355621|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH |1                  |NA             | 0.3492742| 0.3082108| 0.3903375|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH |0                  |NA             | 0.4854944| 0.3892193| 0.5817695|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA      |1                  |NA             | 0.3046431| 0.2276001| 0.3816861|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA      |0                  |NA             | 0.4448920| 0.3622651| 0.5275190|
|0-6 months (no birth st.)  |IRC            |INDIA      |1                  |NA             | 0.3176734| 0.2513255| 0.3840213|
|0-6 months (no birth st.)  |IRC            |INDIA      |0                  |NA             | 0.3764065| 0.2903278| 0.4624852|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH |1                  |NA             | 0.1699065| 0.1274415| 0.2123715|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH |0                  |NA             | 0.1794212| 0.1214009| 0.2374415|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH |1                  |NA             | 0.1462688| 0.1154638| 0.1770739|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH |0                  |NA             | 0.2033332| 0.1288319| 0.2778344|


### Parameter: E(Y)


|agecat                     |studyid        |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:--------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA      |NA                 |NA             | 0.9054054| 0.8720096| 0.9388012|
|0-24 months (no birth st.) |IRC            |INDIA      |NA                 |NA             | 0.5937500| 0.5423701| 0.6451299|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH |NA                 |NA             | 0.3614458| 0.3192090| 0.4036825|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH |NA                 |NA             | 0.3759874| 0.3382238| 0.4137509|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA      |NA                 |NA             | 0.3835616| 0.3276935| 0.4394298|
|0-6 months (no birth st.)  |IRC            |INDIA      |NA                 |NA             | 0.3465909| 0.2968062| 0.3963756|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH |NA                 |NA             | 0.1726908| 0.1394601| 0.2059214|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH |NA                 |NA             | 0.1595577| 0.1310079| 0.1881074|


### Parameter: RR


|agecat                     |studyid        |country    |intervention_level |baseline_level | estimate|  ci_lower| ci_upper|
|:--------------------------|:--------------|:----------|:------------------|:--------------|--------:|---------:|--------:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA      |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA      |0                  |1              | 1.120210| 1.0373678| 1.209669|
|0-24 months (no birth st.) |IRC            |INDIA      |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |IRC            |INDIA      |0                  |1              | 1.165837| 0.9713882| 1.399210|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH |0                  |1              | 0.962305| 0.7396866| 1.251923|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH |0                  |1              | 1.390009| 1.1036596| 1.750654|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA      |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA      |0                  |1              | 1.460371| 1.0674566| 1.997912|
|0-6 months (no birth st.)  |IRC            |INDIA      |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |IRC            |INDIA      |0                  |1              | 1.184885| 0.8697606| 1.614183|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH |0                  |1              | 1.055999| 0.7024960| 1.587390|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH |0                  |1              | 1.390133| 0.9125052| 2.117763|


### Parameter: PAR


|agecat                     |studyid        |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:--------------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA      |1                  |NA             |  0.0532927|  0.0178815| 0.0887039|
|0-24 months (no birth st.) |IRC            |INDIA      |1                  |NA             |  0.0410707| -0.0055459| 0.0876873|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH |1                  |NA             | -0.0107064| -0.0475403| 0.0261276|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH |1                  |NA             |  0.0267132|  0.0078338| 0.0455926|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA      |1                  |NA             |  0.0789186|  0.0194582| 0.1383789|
|0-6 months (no birth st.)  |IRC            |INDIA      |1                  |NA             |  0.0289175| -0.0173826| 0.0752176|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH |1                  |NA             |  0.0027843| -0.0243265| 0.0298950|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH |1                  |NA             |  0.0132888| -0.0023512| 0.0289288|


### Parameter: PAF


|agecat                     |studyid        |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:--------------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA      |1                  |NA             |  0.0588606|  0.0178699| 0.0981405|
|0-24 months (no birth st.) |IRC            |INDIA      |1                  |NA             |  0.0691717| -0.0131559| 0.1448095|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH |1                  |NA             | -0.0296210| -0.1367410| 0.0674046|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH |1                  |NA             |  0.0710481|  0.0194270| 0.1199517|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA      |1                  |NA             |  0.2057519|  0.0350009| 0.3462895|
|0-6 months (no birth st.)  |IRC            |INDIA      |1                  |NA             |  0.0834342| -0.0603385| 0.2077126|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH |1                  |NA             |  0.0161228| -0.1540489| 0.1612017|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH |1                  |NA             |  0.0832853| -0.0193695| 0.1756024|
