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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
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

|agecat      |studyid        |country                      |nchldlt5 | pers_wast| n_cell|     n|
|:-----------|:--------------|:----------------------------|:--------|---------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1        |         0|    488|  1639|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1        |         1|     62|  1639|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+       |         0|    958|  1639|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+       |         1|    131|  1639|
|0-24 months |IRC            |INDIA                        |1        |         0|     79|   410|
|0-24 months |IRC            |INDIA                        |1        |         1|     10|   410|
|0-24 months |IRC            |INDIA                        |2+       |         0|    283|   410|
|0-24 months |IRC            |INDIA                        |2+       |         1|     38|   410|
|0-24 months |JiVitA-3       |BANGLADESH                   |1        |         0|   9569| 15793|
|0-24 months |JiVitA-3       |BANGLADESH                   |1        |         1|    596| 15793|
|0-24 months |JiVitA-3       |BANGLADESH                   |2+       |         0|   5327| 15793|
|0-24 months |JiVitA-3       |BANGLADESH                   |2+       |         1|    301| 15793|
|0-24 months |LCNI-5         |MALAWI                       |1        |         0|    337|   711|
|0-24 months |LCNI-5         |MALAWI                       |1        |         1|      4|   711|
|0-24 months |LCNI-5         |MALAWI                       |2+       |         0|    368|   711|
|0-24 months |LCNI-5         |MALAWI                       |2+       |         1|      2|   711|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1        |         0|    504|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1        |         1|     16|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2+       |         0|    200|   730|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2+       |         1|     10|   730|
|0-24 months |PROVIDE        |BANGLADESH                   |1        |         0|    460|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |1        |         1|     10|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |2+       |         0|    166|   641|
|0-24 months |PROVIDE        |BANGLADESH                   |2+       |         1|      5|   641|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1        |         0|   1440|  2157|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1        |         1|     38|  2157|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+       |         0|    659|  2157|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+       |         1|     20|  2157|


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI

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
![](/tmp/3ac3994c-3b79-45b8-9088-6d67e9d1806d/51944a2d-2ab1-4d05-8c12-b48994f7ec17/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3ac3994c-3b79-45b8-9088-6d67e9d1806d/51944a2d-2ab1-4d05-8c12-b48994f7ec17/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3ac3994c-3b79-45b8-9088-6d67e9d1806d/51944a2d-2ab1-4d05-8c12-b48994f7ec17/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3ac3994c-3b79-45b8-9088-6d67e9d1806d/51944a2d-2ab1-4d05-8c12-b48994f7ec17/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             | 0.1120091| 0.0718315| 0.1521867|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+                 |NA             | 0.1184738| 0.0869422| 0.1500053|
|0-24 months |IRC            |INDIA                        |1                  |NA             | 0.1055092| 0.0447665| 0.1662519|
|0-24 months |IRC            |INDIA                        |2+                 |NA             | 0.1190191| 0.0833462| 0.1546920|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.0566684| 0.0508292| 0.0625075|
|0-24 months |JiVitA-3       |BANGLADESH                   |2+                 |NA             | 0.0506354| 0.0427066| 0.0585641|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.0311395| 0.0162262| 0.0460528|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2+                 |NA             | 0.0475027| 0.0190079| 0.0759975|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.0212766| 0.0082203| 0.0343329|
|0-24 months |PROVIDE        |BANGLADESH                   |2+                 |NA             | 0.0292398| 0.0039682| 0.0545113|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.0261441| 0.0180717| 0.0342166|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+                 |NA             | 0.0285380| 0.0158503| 0.0412257|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.1177547| 0.0931926| 0.1423168|
|0-24 months |IRC            |INDIA                        |NA                 |NA             | 0.1170732| 0.0859146| 0.1482317|
|0-24 months |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0567973| 0.0526805| 0.0609141|
|0-24 months |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.0356164| 0.0221630| 0.0490699|
|0-24 months |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.0234009| 0.0116889| 0.0351130|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0268892| 0.0200612| 0.0337172|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |2+                 |1              | 1.0577156| 0.6911240| 1.618758|
|0-24 months |IRC            |INDIA                        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |IRC            |INDIA                        |2+                 |1              | 1.1280444| 0.5894338| 2.158825|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3       |BANGLADESH                   |2+                 |1              | 0.8935382| 0.7441044| 1.072982|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto     |BANGLADESH                   |2+                 |1              | 1.5254808| 0.7098839| 3.278130|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROVIDE        |BANGLADESH                   |2+                 |1              | 1.3742690| 0.4761342| 3.966561|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |2+                 |1              | 1.0915624| 0.6356956| 1.874338|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             | 0.0057456| -0.0284515| 0.0399427|
|0-24 months |IRC            |INDIA                        |1                  |NA             | 0.0115639| -0.0426923| 0.0658202|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.0001289| -0.0036482| 0.0039061|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.0044770| -0.0048415| 0.0137954|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.0021243| -0.0054689| 0.0097175|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.0007450| -0.0039926| 0.0054827|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             | 0.0487930| -0.2897649| 0.2984809|
|0-24 months |IRC            |INDIA                        |1                  |NA             | 0.0987753| -0.5054881| 0.4605032|
|0-24 months |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.0022700| -0.0665149| 0.0666186|
|0-24 months |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.1256991| -0.1734701| 0.3485970|
|0-24 months |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.0907801| -0.2947917| 0.3615338|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.0277081| -0.1651148| 0.1886194|
