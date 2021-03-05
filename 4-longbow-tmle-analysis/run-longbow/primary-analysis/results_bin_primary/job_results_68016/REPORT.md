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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid    |country      |hfoodsec             | ever_swasted| n_cell|     n|
|:-----------|:----------|:------------|:--------------------|------------:|------:|-----:|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |            0|    348|   663|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |            1|    123|   663|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |            0|     82|   663|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |            1|     23|   663|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |            0|     65|   663|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |            1|     22|   663|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |            0|   8193| 17375|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |            1|    503| 17375|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |            0|   5404| 17375|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |            1|    380| 17375|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |            0|   2662| 17375|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |            1|    233| 17375|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |            0|   2580|  5399|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |            1|    169|  5399|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |            0|   1818|  5399|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |            1|    130|  5399|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |            0|    660|  5399|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |            1|     42|  5399|
|0-24 months |MAL-ED     |BANGLADESH   |Food Secure          |            0|    146|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Food Secure          |            1|     15|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |            0|      4|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |            1|      0|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |            0|     26|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |            1|      3|   194|
|0-24 months |MAL-ED     |BRAZIL       |Food Secure          |            0|      3|   129|
|0-24 months |MAL-ED     |BRAZIL       |Food Secure          |            1|      0|   129|
|0-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |            0|     11|   129|
|0-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |            1|      0|   129|
|0-24 months |MAL-ED     |BRAZIL       |Food Insecure        |            0|    113|   129|
|0-24 months |MAL-ED     |BRAZIL       |Food Insecure        |            1|      2|   129|
|0-24 months |MAL-ED     |INDIA        |Food Secure          |            0|    170|   212|
|0-24 months |MAL-ED     |INDIA        |Food Secure          |            1|     20|   212|
|0-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |            0|      3|   212|
|0-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |            1|      2|   212|
|0-24 months |MAL-ED     |INDIA        |Food Insecure        |            0|     16|   212|
|0-24 months |MAL-ED     |INDIA        |Food Insecure        |            1|      1|   212|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |            0|     92|   128|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |            1|      2|   128|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |            0|     14|   128|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |            1|      1|   128|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |            0|     18|   128|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |            1|      1|   128|
|0-24 months |MAL-ED     |PERU         |Food Secure          |            0|     26|   113|
|0-24 months |MAL-ED     |PERU         |Food Secure          |            1|      1|   113|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |            0|     29|   113|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |            1|      0|   113|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |            0|     55|   113|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |            1|      2|   113|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |            0|    125|   233|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |            1|      7|   233|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |            0|     18|   233|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |            1|      1|   233|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |            0|     76|   233|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |            1|      6|   233|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |            0|     83|   624|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |            1|     11|   624|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |            0|    408|   624|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |            1|     80|   624|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |            0|     34|   624|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |            1|      8|   624|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |            0|    409|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |            1|     44|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |            0|    202|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |            1|     17|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |            0|     81|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |            1|      5|   758|


The following strata were considered:

* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA

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




# Results Detail

## Results Plots
![](/tmp/fd8eed65-6720-47db-9d1b-341847f3cda4/4d06c305-427b-4611-9875-f60df911cd6c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fd8eed65-6720-47db-9d1b-341847f3cda4/4d06c305-427b-4611-9875-f60df911cd6c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fd8eed65-6720-47db-9d1b-341847f3cda4/4d06c305-427b-4611-9875-f60df911cd6c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fd8eed65-6720-47db-9d1b-341847f3cda4/4d06c305-427b-4611-9875-f60df911cd6c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid    |country    |intervention_level   |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:----------|:----------|:--------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal  |NEPAL      |Food Secure          |NA             | 0.2619192| 0.2219480| 0.3018904|
|0-24 months |GMS-Nepal  |NEPAL      |Mildly Food Insecure |NA             | 0.2034078| 0.1250925| 0.2817232|
|0-24 months |GMS-Nepal  |NEPAL      |Food Insecure        |NA             | 0.2668966| 0.1710052| 0.3627879|
|0-24 months |JiVitA-3   |BANGLADESH |Food Secure          |NA             | 0.0622482| 0.0552314| 0.0692650|
|0-24 months |JiVitA-3   |BANGLADESH |Mildly Food Insecure |NA             | 0.0632733| 0.0557310| 0.0708155|
|0-24 months |JiVitA-3   |BANGLADESH |Food Insecure        |NA             | 0.0675089| 0.0565021| 0.0785157|
|0-24 months |JiVitA-4   |BANGLADESH |Food Secure          |NA             | 0.0614113| 0.0517129| 0.0711097|
|0-24 months |JiVitA-4   |BANGLADESH |Mildly Food Insecure |NA             | 0.0670434| 0.0548897| 0.0791972|
|0-24 months |JiVitA-4   |BANGLADESH |Food Insecure        |NA             | 0.0603353| 0.0408885| 0.0797821|
|0-24 months |NIH-Birth  |BANGLADESH |Food Secure          |NA             | 0.1170213| 0.0519874| 0.1820552|
|0-24 months |NIH-Birth  |BANGLADESH |Mildly Food Insecure |NA             | 0.1639344| 0.1310612| 0.1968076|
|0-24 months |NIH-Birth  |BANGLADESH |Food Insecure        |NA             | 0.1904762| 0.0716241| 0.3093283|
|0-24 months |NIH-Crypto |BANGLADESH |Food Secure          |NA             | 0.0971302| 0.0698420| 0.1244185|
|0-24 months |NIH-Crypto |BANGLADESH |Mildly Food Insecure |NA             | 0.0776256| 0.0421631| 0.1130880|
|0-24 months |NIH-Crypto |BANGLADESH |Food Insecure        |NA             | 0.0581395| 0.0086499| 0.1076292|


### Parameter: E(Y)


|agecat      |studyid    |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:----------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal  |NEPAL      |NA                 |NA             | 0.2533937| 0.2202605| 0.2865268|
|0-24 months |JiVitA-3   |BANGLADESH |NA                 |NA             | 0.0642302| 0.0601218| 0.0683386|
|0-24 months |JiVitA-4   |BANGLADESH |NA                 |NA             | 0.0631598| 0.0562585| 0.0700612|
|0-24 months |NIH-Birth  |BANGLADESH |NA                 |NA             | 0.1586538| 0.1299648| 0.1873429|
|0-24 months |NIH-Crypto |BANGLADESH |NA                 |NA             | 0.0870712| 0.0669870| 0.1071555|


### Parameter: RR


|agecat      |studyid    |country    |intervention_level   |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:----------|:----------|:--------------------|:--------------|---------:|---------:|--------:|
|0-24 months |GMS-Nepal  |NEPAL      |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal  |NEPAL      |Mildly Food Insecure |Food Secure    | 0.7766053| 0.5133280| 1.174913|
|0-24 months |GMS-Nepal  |NEPAL      |Food Insecure        |Food Secure    | 1.0190033| 0.6895169| 1.505935|
|0-24 months |JiVitA-3   |BANGLADESH |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3   |BANGLADESH |Mildly Food Insecure |Food Secure    | 1.0164681| 0.8630994| 1.197090|
|0-24 months |JiVitA-3   |BANGLADESH |Food Insecure        |Food Secure    | 1.0845126| 0.8911265| 1.319866|
|0-24 months |JiVitA-4   |BANGLADESH |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4   |BANGLADESH |Mildly Food Insecure |Food Secure    | 1.0917119| 0.8522757| 1.398415|
|0-24 months |JiVitA-4   |BANGLADESH |Food Insecure        |Food Secure    | 0.9824782| 0.6914628| 1.395973|
|0-24 months |NIH-Birth  |BANGLADESH |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth  |BANGLADESH |Mildly Food Insecure |Food Secure    | 1.4008942| 0.7759210| 2.529258|
|0-24 months |NIH-Birth  |BANGLADESH |Food Insecure        |Food Secure    | 1.6277056| 0.7058100| 3.753738|
|0-24 months |NIH-Crypto |BANGLADESH |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto |BANGLADESH |Mildly Food Insecure |Food Secure    | 0.7991905| 0.4674468| 1.366370|
|0-24 months |NIH-Crypto |BANGLADESH |Food Insecure        |Food Secure    | 0.5985729| 0.2442425| 1.466942|


### Parameter: PAR


|agecat      |studyid    |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:----------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |GMS-Nepal  |NEPAL      |Food Secure        |NA             | -0.0085255| -0.0296694| 0.0126183|
|0-24 months |JiVitA-3   |BANGLADESH |Food Secure        |NA             |  0.0019821| -0.0036349| 0.0075990|
|0-24 months |JiVitA-4   |BANGLADESH |Food Secure        |NA             |  0.0017485| -0.0052116| 0.0087087|
|0-24 months |NIH-Birth  |BANGLADESH |Food Secure        |NA             |  0.0416326| -0.0198347| 0.1030999|
|0-24 months |NIH-Crypto |BANGLADESH |Food Secure        |NA             | -0.0100590| -0.0261209| 0.0060029|


### Parameter: PAF


|agecat      |studyid    |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:----------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |GMS-Nepal  |NEPAL      |Food Secure        |NA             | -0.0336455| -0.1204946| 0.0464720|
|0-24 months |JiVitA-3   |BANGLADESH |Food Secure        |NA             |  0.0308586| -0.0607200| 0.1145306|
|0-24 months |JiVitA-4   |BANGLADESH |Food Secure        |NA             |  0.0276844| -0.0889783| 0.1318491|
|0-24 months |NIH-Birth  |BANGLADESH |Food Secure        |NA             |  0.2624113| -0.2436437| 0.5625459|
|0-24 months |NIH-Crypto |BANGLADESH |Food Secure        |NA             | -0.1155261| -0.3143298| 0.0532068|
